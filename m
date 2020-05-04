Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A3E1C3B5C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVa2LAAbD3U8WPaKSwjfFEe9N5ajC15M3Du4jZAL6f8=; b=Z6H+Z757nyG+Dp
	xWfbQcNuAgKY+G60jA8+lJMS64TWmuabYmWwA+i9ygnz/ku5aDy3ks26VuX/5R5oKG2tQG8JnvYH0
	udKgz7cgHwsZlJimvkfIQfnmt9sOjlg3HUiHr4izAjPJloJ/hXdsnOuwTfrLON/ZqF5QjL73r4kq5
	BSkk50708oIaSclakM4fr/UCKcONQUAgje2pmDIYAhLLqqbRrXZu7ME6TrjSojlskviJ/hGeOX5qH
	hTk53dJRpaLm0sDaKht//3Hb962xuHal2CqmTcjpvnMgzS30HHfRHGDp2rm55s6cQ2fiU9LsXqFjZ
	hrVElOidUSkbYdH5BEyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVbFv-0006rn-09; Mon, 04 May 2020 13:35:35 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVbFl-0006r9-2Z
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 13:35:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CEK6soI9hOzDXxMeYoZIwnw8wq+iCrPVuXY+g63CMwQ=; b=RDwMCNVz1O3E7+C7okcVIbn3c2
 QwWxKqh0WtNaBrjLJ3VXq2wDQ+/4DJdA5wVt4DNpfYv6Zev2yVBBL3TzPpcUpRgHQNhX5enRU8m9C
 97iTTCK3hWbPyTk2NvC5KZlrrh8K7CBdX+JsKyBpgJBTm7HfBm7U2s8AfWTYj7DByEjjNEMqhxd9J
 7GGRy8SluWPhgKCmyvr2mQhjpuwVb1OnlWbri4NDokPYJOhtoW0D0FnKzN6bSpUorST6mcwkojtuC
 8nBs8Pe4pi2LIEmne6tykr/cNE6OB2GjzZf9OM/QswndwAdb9qeLW+CP1vZ9hulWoKfW6itxAtRVM
 UzRobN/Q==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:56550 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jVbFX-0004tl-MP; Mon, 04 May 2020 14:35:11 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jVbFW-00076k-84; Mon, 04 May 2020 14:35:10 +0100
In-Reply-To: <20200504133435.GD1551@shell.armlinux.org.uk>
References: <20200504133435.GD1551@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org,
 Tomas Paukrt <tomas.paukrt@advantech.cz>
Subject: [PATCH 3/3] ARM: uaccess: fix DACR mismatch with nested exceptions
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1jVbFW-00076k-84@rmk-PC.armlinux.org.uk>
Date: Mon, 04 May 2020 14:35:10 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_063525_462738_6CB9CDDC 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Will Deacon <will@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
