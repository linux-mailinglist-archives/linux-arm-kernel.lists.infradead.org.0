Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A89F1F25DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:34:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e7+zVPo4FAIeaCAvpVJVu8DI0Y9nlCGj4fW+9NCzRxw=; b=iD4/wNsHo43qtP
	Nl2XL8NJESZp3W0gC833qChjEV4t+42MNt6TMJNdvsV6SIYv3tFHdHfyYooqimmBiKZjuOAACHcsX
	48oqDZlChBLUDI+qIBEbCVOU8WsvJiqyRiU6xCFMgldH7eFtDHNd6UVrU/R3uU15MYATCrjyH0ayr
	DlcqYW2Ouzs0CrBnv2FMJM9F6B4uA30meBv02C5Op7nGayHlE7E4L1oHUmFw6G3k4YRxfK769ySst
	P+XMT+sQNbA7TwVE5CBWw0bb4Ut3eqMXTRbvDaj9VC73js++UWslB337C3eCKrDTm0tWKqsuP1zbE
	mKcSPL8+Nz9U02hr9CUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRHW-0000WW-BJ; Mon, 08 Jun 2020 23:34:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR22-0004mA-53
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:18:21 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 64B6E20872;
 Mon,  8 Jun 2020 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658297;
 bh=2ZPjej86uWTbLn4JuUOXaDIYjHQwrcYDh8zvLp7nqxA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=r5pLLdMr5V1BY6o4CYK/Lm869JZMWnufo46j9/GM41sLyjGRegaNDyw8XCaWotltq
 nlKEWEzEnEhHiCclqt3AnztWEQQ2Tuip5BYCA+9Pz1VJah3XtDysGJsti58gdtLzme
 t7oaPYIrTd9sB+5NZvoTMPyufTdZjqgl8f+5Sq/M=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 300/606] ARM: uaccess: fix DACR mismatch with
 nested exceptions
Date: Mon,  8 Jun 2020 19:07:05 -0400
Message-Id: <20200608231211.3363633-300-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161818_640248_E53C9C72 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sasha Levin <sashal@kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>,
 Tomas Paukrt <tomas.paukrt@advantech.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

[ Upstream commit 71f8af1110101facfad68989ff91f88f8e2c3e22 ]

Tomas Paukrt reports that his SAM9X60 based system (ARM926, ARMv5TJ)
fails to fix up alignment faults, eventually resulting in a kernel
oops.

The problem occurs when using CONFIG_CPU_USE_DOMAINS with commit
e6978e4bf181 ("ARM: save and reset the address limit when entering an
exception").  This is because the address limit is set back to
TASK_SIZE on exception entry, and, although it is restored on exception
exit, the domain register is not.

Hence, this sequence can occur:

  interrupt
    pt_regs->addr_limit = addr_limit		// USER_DS
    addr_limit = USER_DS
    alignment exception
    __probe_kernel_read()
      old_fs = get_fs()				// USER_DS
      set_fs(KERNEL_DS)
        addr_limit = KERNEL_DS
        dacr.kernel = DOMAIN_MANAGER
        interrupt
          pt_regs->addr_limit = addr_limit	// KERNEL_DS
          addr_limit = USER_DS
          alignment exception
          __probe_kernel_read()
            old_fs = get_fs()			// USER_DS
            set_fs(KERNEL_DS)
              addr_limit = KERNEL_DS
              dacr.kernel = DOMAIN_MANAGER
            ...
            set_fs(old_fs)
              addr_limit = USER_DS
              dacr.kernel = DOMAIN_CLIENT
          ...
          addr_limit = pt_regs->addr_limit	// KERNEL_DS
        interrupt returns

At this point, addr_limit is correctly restored to KERNEL_DS for
__probe_kernel_read() to continue execution, but dacr.kernel is not,
it has been reset by the set_fs(old_fs) to DOMAIN_CLIENT.

This would not have happened prior to the mentioned commit, because
addr_limit would remain KERNEL_DS, so get_fs() would have returned
KERNEL_DS, and so would correctly nest.

This commit fixes the problem by also saving the DACR on exception
entry if either CONFIG_CPU_SW_DOMAIN_PAN or CONFIG_CPU_USE_DOMAINS are
enabled, and resetting the DACR appropriately on exception entry to
match addr_limit and PAN settings.

Fixes: e6978e4bf181 ("ARM: save and reset the address limit when entering an exception")
Reported-by: Tomas Paukrt <tomas.paukrt@advantech.cz>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/include/asm/uaccess-asm.h | 25 ++++++++++++++++++++-----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/arch/arm/include/asm/uaccess-asm.h b/arch/arm/include/asm/uaccess-asm.h
index e46468b91eaa..907571fd05c6 100644
--- a/arch/arm/include/asm/uaccess-asm.h
+++ b/arch/arm/include/asm/uaccess-asm.h
@@ -67,15 +67,21 @@
 #endif
 	.endm
 
-#ifdef CONFIG_CPU_SW_DOMAIN_PAN
+#if defined(CONFIG_CPU_SW_DOMAIN_PAN) || defined(CONFIG_CPU_USE_DOMAINS)
 #define DACR(x...)	x
 #else
 #define DACR(x...)
 #endif
 
 	/*
-	 * Save the address limit on entry to a privileged exception and
-	 * if using PAN, save and disable usermode access.
+	 * Save the address limit on entry to a privileged exception.
+	 *
+	 * If we are using the DACR for kernel access by the user accessors
+	 * (CONFIG_CPU_USE_DOMAINS=y), always reset the DACR kernel domain
+	 * back to client mode, whether or not \disable is set.
+	 *
+	 * If we are using SW PAN, set the DACR user domain to no access
+	 * if \disable is set.
 	 */
 	.macro	uaccess_entry, tsk, tmp0, tmp1, tmp2, disable
 	ldr	\tmp1, [\tsk, #TI_ADDR_LIMIT]
@@ -84,8 +90,17 @@
  DACR(	mrc	p15, 0, \tmp0, c3, c0, 0)
  DACR(	str	\tmp0, [sp, #SVC_DACR])
 	str	\tmp1, [sp, #SVC_ADDR_LIMIT]
-	.if \disable
-	uaccess_disable \tmp0
+	.if \disable && IS_ENABLED(CONFIG_CPU_SW_DOMAIN_PAN)
+	/* kernel=client, user=no access */
+	mov	\tmp2, #DACR_UACCESS_DISABLE
+	mcr	p15, 0, \tmp2, c3, c0, 0
+	instr_sync
+	.elseif IS_ENABLED(CONFIG_CPU_USE_DOMAINS)
+	/* kernel=client */
+	bic	\tmp2, \tmp0, #domain_mask(DOMAIN_KERNEL)
+	orr	\tmp2, \tmp2, #domain_val(DOMAIN_KERNEL, DOMAIN_CLIENT)
+	mcr	p15, 0, \tmp2, c3, c0, 0
+	instr_sync
 	.endif
 	.endm
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
