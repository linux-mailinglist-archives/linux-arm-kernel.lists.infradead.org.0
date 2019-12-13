Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B71A911E611
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 16:05:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pR0Fb2ymfIR2qnluu00H4WVw5efmrtlKFYeZNR3TMlM=; b=fKC3IxWOJJZYDv
	90clhpUDalWbg0wiRb4gbn/JrFpTnEN0I5RJrZhIfpdTpFOybaAbQ5DRvhSVExLa7rjomiVQvWF5l
	0D2WEvuBh2VYAMspN1unrzdE+bZeKrdS9mjjXknThlQwufAQ4xxvCOx4l2X5aPGjfYUDD3lVC5Cyc
	hKyj/C+GjOE1JQgNaYbrQSAmGU3HcL90PJzijJrBdGfDJNhAJjDCIEcsyR2FWo+5AAkvnNe0Qhitx
	5DRcIvCB/otCGb6MkKB0y118Wg+SLcHovq2lV+mcTAGGsdP0ed1HCgm1KWiSFvPWegs47nSa6jnJa
	98W5we+Z/zSSxjAwdjUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifmVn-0007Qg-0b; Fri, 13 Dec 2019 15:05:47 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifmVF-0007Cl-Sm
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 15:05:15 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 3s87HGeRyJ3cdUsyo8jIMOXNtMXWUzz+OrDdM/5jAbKKxZbcSJcw/zIsfLUHU74W4cfgeXDWiP
 1VxMcupZbkqszZX7Ha8ysXN/1gKrqqDyU7yim0hOoZPKYrxsQBZrBbvHLopRsNzWks+jgmAcwK
 f6p2+zx7GpKGm7tKHlaiwQ1ki0hQVkQC8gYFk/sYyT4UriRrzClVGCD12kTo7vh7uegYdC0xjY
 Psn4/Jd4Kael0JBtw1A4GpmVu6ziynoHnhcEaS58gL5MFoUcRNt/ajIoWKzK1disdEP51XOCLb
 7SA=
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="59718051"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Dec 2019 08:05:12 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Dec 2019 08:05:11 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 13 Dec 2019 08:05:07 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <sam@ravnborg.org>, <bbrezillon@kernel.org>, <airlied@linux.ie>,
 <daniel@ffwll.ch>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <ludovic.desroches@microchip.com>,
 <lee.jones@linaro.org>
Subject: [PATCH v2 1/6] drm: atmel-hlcdc: use double rate for pixel clock only
 if supported
Date: Fri, 13 Dec 2019 17:04:51 +0200
Message-ID: <1576249496-4849-2-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576249496-4849-1-git-send-email-claudiu.beznea@microchip.com>
References: <1576249496-4849-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_070514_427468_80E4BEB4 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Doubled system clock should be used as pixel cock source only if this
is supported. This is emphasized by the value of
atmel_hlcdc_crtc::dc::desc::fixed_clksrc.

Fixes: a6eca2abdd42 ("drm: atmel-hlcdc: add config option for clock selection")
Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
index f2e73e6d46b8..5040ed8d0871 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
@@ -95,14 +95,14 @@ static void atmel_hlcdc_crtc_mode_set_nofb(struct drm_crtc *c)
 		     (adj->crtc_hdisplay - 1) |
 		     ((adj->crtc_vdisplay - 1) << 16));
 
+	prate = clk_get_rate(crtc->dc->hlcdc->sys_clk);
+	mode_rate = adj->crtc_clock * 1000;
 	if (!crtc->dc->desc->fixed_clksrc) {
+		prate *= 2;
 		cfg |= ATMEL_HLCDC_CLKSEL;
 		mask |= ATMEL_HLCDC_CLKSEL;
 	}
 
-	prate = 2 * clk_get_rate(crtc->dc->hlcdc->sys_clk);
-	mode_rate = adj->crtc_clock * 1000;
-
 	div = DIV_ROUND_UP(prate, mode_rate);
 	if (div < 2) {
 		div = 2;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
