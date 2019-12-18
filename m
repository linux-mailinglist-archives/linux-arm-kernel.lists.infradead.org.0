Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6910F1246DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 13:29:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M9MzqtaQRP8XyX5lFCGX1QzfmEE8Ove1WgIYI9MHuxY=; b=Is7vp1bbiIFg3c
	x5+O6wxRBcEMmu9eZM5rLbJ1dMVxPQxpgXXZuhmIWwt6ngqLTrzOsLNye2DT98A/bTcPZU6Blu89m
	8FwGWCWX58OPv3wPlNpfrrt3EJIQa2N+9UZx91n48Rmzq8r2bOkNxb0ljJXLMRhZrbX1H+LVLSxM8
	RE0Px9Zf13GmguEFSOfJ4R08akuNkcSMSFGAO6V8WI7NkhD405PYSwVW0gst3KsyFw4tM+xO492f+
	L4iuKhAufysXN5lc0ZWCuoPmCspV0H+DVDPB65O3q+WGzkDN/nq466H/QVa1pk3MaCK2trp5zCHqw
	23hziH0rtfjpolOTOF2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihYSB-0002RW-Gp; Wed, 18 Dec 2019 12:29:23 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihYRV-0001uJ-S0
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 12:28:43 +0000
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
IronPort-SDR: emFiBOWYIrmnf/4kpiGRMvdDL6OzBw6TtX1fnN+BDDgjwS5OOKnsG/7Bn6pG2FFYkzHziU0Dn5
 jzxaNSoiS62/oXH55Gsc3g4Ohq+LAsGRK+CVKjwm7ohPJk8leg7xkbkTrhkQYZALlmMnRCm+mV
 R25oSgvzFctN7icZZX6Of/SFpoc3kl19FWB3bkl9dwq0zom+tcbjkl2LzgrtKMd4Kgiyo70wsq
 FG2vUWQL4NxHvcvbKJ3cqm0dcGMcAxeq5qM0sYPn+NFbyYFcd+7N083zTaajmnafU80yFM9PLk
 UFM=
X-IronPort-AV: E=Sophos;i="5.69,329,1571727600"; d="scan'208";a="60203839"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Dec 2019 05:28:41 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Dec 2019 05:28:40 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 18 Dec 2019 05:28:38 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <boris.brezillon@bootlin.com>, <airlied@linux.ie>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <lee.jones@linaro.org>, <sam@ravnborg.org>
Subject: [PATCH v3 2/6] drm: atmel-hlcdc: enable clock before configuring
 timing engine
Date: Wed, 18 Dec 2019 14:28:25 +0200
Message-ID: <1576672109-22707-3-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576672109-22707-1-git-send-email-claudiu.beznea@microchip.com>
References: <1576672109-22707-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_042841_935005_56B8DCA0 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>, peda@axentia.se,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changing pixel clock source without having this clock source enabled
will block the timing engine and the next operations after (in this case
setting ATMEL_HLCDC_CFG(5) settings in atmel_hlcdc_crtc_mode_set_nofb()
will fail). It is recomended (although in datasheet this is not present)
to actually enabled pixel clock source before doing any changes on timing
enginge (only SAM9X60 datasheet specifies that the peripheral clock and
pixel clock must be enabled before using LCD controller).

Fixes: 1a396789f65a ("drm: add Atmel HLCDC Display Controller support")
Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
index 5040ed8d0871..721fa88bf71d 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
@@ -73,7 +73,11 @@ static void atmel_hlcdc_crtc_mode_set_nofb(struct drm_crtc *c)
 	unsigned long prate;
 	unsigned int mask = ATMEL_HLCDC_CLKDIV_MASK | ATMEL_HLCDC_CLKPOL;
 	unsigned int cfg = 0;
-	int div;
+	int div, ret;
+
+	ret = clk_prepare_enable(crtc->dc->hlcdc->sys_clk);
+	if (ret)
+		return;
 
 	vm.vfront_porch = adj->crtc_vsync_start - adj->crtc_vdisplay;
 	vm.vback_porch = adj->crtc_vtotal - adj->crtc_vsync_end;
@@ -147,6 +151,8 @@ static void atmel_hlcdc_crtc_mode_set_nofb(struct drm_crtc *c)
 			   ATMEL_HLCDC_VSPSU | ATMEL_HLCDC_VSPHO |
 			   ATMEL_HLCDC_GUARDTIME_MASK | ATMEL_HLCDC_MODE_MASK,
 			   cfg);
+
+	clk_disable_unprepare(crtc->dc->hlcdc->sys_clk);
 }
 
 static enum drm_mode_status
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
