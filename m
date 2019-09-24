Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E481BCC8B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 18:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tuhc/WTRksrrze2tDDmDwrSAEk70Kr007uZ4wCnN2Ng=; b=nud11xaa5VZm41
	GudfgP65jj5n2hGK9bXixrTckyGtnK2vI5QObxdGI3G0R6iCf3DM+SeHB8FjdcJ5J6bogWh3RUM1a
	lzRVoMM8ev4s58Tm17HC+puQFb0jOKLjm9ia5KD1GGGszEZh45HHvhKfs6Mvsmle54usi77BH/6NC
	uUEyB6YgHM0yiHLiEZh2kC8Z5lXoYGsrk2vxBOjBYy0uvOPdhk7bEC3U5uc7MyXvQiX7HGYUqIFsg
	a7yO3Ntmckg/E8fSWYM6MKlcOV5dzM05JBMJIm8quePMQ/PuHddIZe9ds+D1WYQ6Ooz3doAO5fmJ3
	VXhTVlrupBvfbHTjpZzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCnnq-0002cE-Ba; Tue, 24 Sep 2019 16:36:38 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCnna-0002bY-GJ
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 16:36:23 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 2350280E2;
 Tue, 24 Sep 2019 16:36:53 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] ARM: OMAP2+: Fix missing reset done flag for am3 and am43
Date: Tue, 24 Sep 2019 09:36:18 -0700
Message-Id: <20190924163618.25534-1-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_093622_582675_AE844D60 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For ti,sysc-omap4 compatible devices with no sysstatus register, we do have
reset done status available in the SOFTRESET bit that clears when the reset
is done. This is documented for example in am437x TRM for DMTIMER_TIOCP_CFG
register. The am335x TRM just says that SOFTRESET bit value 1 means reset is
ongoing, but it behaves the same way clearing after reset is done.

With the ti-sysc driver handling this automatically based on no sysstatus
register defined, we see warnings if SYSC_HAS_RESET_STATUS is missing in the
legacy platform data:

ti-sysc 48042000.target-module: sysc_flags 00000222 != 00000022
ti-sysc 48044000.target-module: sysc_flags 00000222 != 00000022
ti-sysc 48046000.target-module: sysc_flags 00000222 != 00000022
...

Let's fix these warnings by adding SYSC_HAS_RESET_STATUS. Let's also
remove the useless parentheses while at it.

If it turns out we do have ti,sysc-omap4 compatible devices without a
working SOFTRESET bit we can set up additional quirk handling for it.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c b/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c
@@ -811,7 +811,8 @@ static struct omap_hwmod_class_sysconfig am33xx_timer_sysc = {
 	.rev_offs	= 0x0000,
 	.sysc_offs	= 0x0010,
 	.syss_offs	= 0x0014,
-	.sysc_flags	= (SYSC_HAS_SIDLEMODE | SYSC_HAS_SOFTRESET),
+	.sysc_flags	= SYSC_HAS_SIDLEMODE | SYSC_HAS_SOFTRESET |
+			  SYSC_HAS_RESET_STATUS,
 	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART |
 			  SIDLE_SMART_WKUP),
 	.sysc_fields	= &omap_hwmod_sysc_type2,
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
