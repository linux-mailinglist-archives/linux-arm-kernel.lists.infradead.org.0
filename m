Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE38716F8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 13:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LfofG1mdqBx9m9ILSfn101ghl/njryEESPmmaJ+oBVs=; b=uqgmS7dNdGNfon
	URbV5caS0lcJEnE6FkOa62yRDQo8JIviZX8NiH41R7E6/V58z4bfn8qrNvhBM/2AS8FP7JHUGU5o1
	fG0YuklMWOD7jBww9GUMmFhk4stkVGB0VTcy09pSJOLEQSbhyxNYdP0VsW1lb0F9uQ3Lcjb635Mel
	vW6z3XZoggnfkvhbC51aSZSZLJqEZ3LbXZNiDb4A4QOFjH4cd26i74+eWeBED6rXmurGMqXLzeMRg
	AJpzhtZyidFhzr7+O0CPvjIWEOUdtQss7wGfNQo1GqMB7fAilg2KJETkLb/H440GO6JcLOPbNTuyF
	4RNYk5BTs6cp+hU+Dfbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpsyI-0000mS-9O; Tue, 23 Jul 2019 11:28:42 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpsxy-0000kw-Fr
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 11:28:23 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 12B0C81A0;
 Tue, 23 Jul 2019 11:28:45 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 1/8] ARM: OMAP2+: Fix missing SYSC_HAS_RESET_STATUS for dra7
 epwmss
Date: Tue, 23 Jul 2019 04:28:04 -0700
Message-Id: <20190723112811.44381-2-tony@atomide.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190723112811.44381-1-tony@atomide.com>
References: <20190723112811.44381-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_042822_572183_C1F06015 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Keerthy <j-keerthy@ti.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TRM says PWMSS_SYSCONFIG bit for SOFTRESET changes to zero when
reset is completed. Let's configure it as otherwise we get warnings
on boot when we check the data against dts provided data. Eventually
the legacy platform data will be just dropped, but let's fix the
warning first.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/omap_hwmod_7xx_data.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap2/omap_hwmod_7xx_data.c b/arch/arm/mach-omap2/omap_hwmod_7xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_7xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_7xx_data.c
@@ -379,7 +379,8 @@ static struct omap_hwmod dra7xx_dcan2_hwmod = {
 static struct omap_hwmod_class_sysconfig dra7xx_epwmss_sysc = {
 	.rev_offs	= 0x0,
 	.sysc_offs	= 0x4,
-	.sysc_flags	= SYSC_HAS_SIDLEMODE | SYSC_HAS_SOFTRESET,
+	.sysc_flags	= SYSC_HAS_SIDLEMODE | SYSC_HAS_SOFTRESET |
+			  SYSC_HAS_RESET_STATUS,
 	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART),
 	.sysc_fields	= &omap_hwmod_sysc_type2,
 };
-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
