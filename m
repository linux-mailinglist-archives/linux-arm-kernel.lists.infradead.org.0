Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED2AF07E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:12:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Hju49O6hkzctOFeoim+LviA0NGLnwvtcIguP0bAZt+Q=; b=GZtt8iCrsYMMlO3iGVWGOkp4LE
	RosGYKEB1/EjAJ4TX1FIAaP+Rb9m/YHQQma7Q7Bct7Edv1k0X7cWwp+BtEHwEin8Hu/nJy0iUGRo1
	9r1K31LUI+74pCZYpElGTyzPPoeDOUtikUGw+kIKkpRFV2yACU1xT4W7ETjN30p9jSAKjAuwEglBT
	h34msHIvQV+UiQzwi1rUaE1WBaqXQPnGK71DSZW3beAaiaKYknlsPpsOKh9a3bL/N3t2lBHqQ60Fy
	vCtlIKWbau/QZzAmXNTKuKAQYho2TToNsNVx59pT23hsv7I2rhXfKY+7IMah/2IcAOW10WQK0d8t9
	TJCwLZkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS67x-0004WE-Tn; Tue, 05 Nov 2019 21:12:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5x2-0008S6-4q
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:01:23 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 453ED21D7C;
 Tue,  5 Nov 2019 21:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987679;
 bh=9RbwEi9PmzueJ7iaJKjmaxls7U5aMrWSfV8G8fs5JIA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G3f7oZUmCzutDmvaXuCWy6yNVbPDvD1nIALmMpkg0VdGreJXl8p6YX2DW+0bJNQyz
 eXlQdGOL1Ft7dksBW/ESYLw0hL+dhxWsEuGwFB93KWzyoVRvkr460xd4J3nVZTpzhA
 MaAfCgO8h2VtCswx3/TQY8HL08WfId5ynYSJI0gU=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 49/53] ARM: clean up per-processor check_bugs
 method call
Date: Tue,  5 Nov 2019 21:58:42 +0100
Message-Id: <20191105205846.1394-50-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_130120_337946_06C84264 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Sasha Levin <sashal@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Tony Lindgren <tony@atomide.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 "David A . Long" <dave.long@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit 945aceb1db8885d3a35790cf2e810f681db52756 upstream.

Call the per-processor type check_bugs() method in the same way as we
do other per-processor functions - move the "processor." detail into
proc-fns.h.

Reviewed-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: David A. Long <dave.long@linaro.org>
Reviewed-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/include/asm/proc-fns.h | 1 +
 arch/arm/kernel/bugs.c          | 4 ++--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/proc-fns.h b/arch/arm/include/asm/proc-fns.h
index f379f5f849a9..19939e88efca 100644
--- a/arch/arm/include/asm/proc-fns.h
+++ b/arch/arm/include/asm/proc-fns.h
@@ -99,6 +99,7 @@ extern void cpu_do_suspend(void *);
 extern void cpu_do_resume(void *);
 #else
 #define cpu_proc_init			processor._proc_init
+#define cpu_check_bugs			processor.check_bugs
 #define cpu_proc_fin			processor._proc_fin
 #define cpu_reset			processor.reset
 #define cpu_do_idle			processor._do_idle
diff --git a/arch/arm/kernel/bugs.c b/arch/arm/kernel/bugs.c
index 7be511310191..d41d3598e5e5 100644
--- a/arch/arm/kernel/bugs.c
+++ b/arch/arm/kernel/bugs.c
@@ -6,8 +6,8 @@
 void check_other_bugs(void)
 {
 #ifdef MULTI_CPU
-	if (processor.check_bugs)
-		processor.check_bugs();
+	if (cpu_check_bugs)
+		cpu_check_bugs();
 #endif
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
