Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 232481246E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 13:30:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3JIvLPlufiweTnv59+qz/VAMzFcX+QbwDYCDPpIgQ3w=; b=ot/0bZgxDFmqym
	w4DBbzgqvP+4lQoUDH6v+yzMEg70WhLfHu4GOicfENZ/fNnfEtRQwWr9qD1anDO+6suMMXkzmLrIx
	qD419hZ3D9KTsDnOcKhHPTrXRnPgeppu6SwqFYHMUA7DwSFsVpFepiWusSMh//RCTTt9jiiIY+jZc
	KbJDpXIkPRRoO/i+x4Q1YU2hQc5e1U+vKjs+yYn3mUcSyNz+GNgPc3VPSv6D9Y7nxIs9uQ0tGpec1
	qDKx117WavVQYVZdm27Arhrcv+SnoY7FnUC7MbAjP7iSj3thrvvvDM1Mh95FSgngE+y6dTFl0Mptk
	6+0ADZlHcN8Bd/OGck2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihYT0-00038a-Cn; Wed, 18 Dec 2019 12:30:14 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihYRf-00026J-6h
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 12:28:52 +0000
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
IronPort-SDR: U9hU6pqmFglDqTB49NyfT9OQHC4wabt5L0zcCZvf7mxvPaxHedDFrr/ctjlGLAtw/sb7PW9ipM
 9JHMMBr1FqPjc4TV3znSnQsh8xjoqnr2vZDiLzMV+eFqmyT0fPU8oMveLwEU3++2gqbrWk+AJ2
 iTqfoTmr6xLsaXI905eRu6eX2b4v3rT4QLpaXfMqb0WY+Iiq29MJ1QxnIG/O3ypEfbasEY1125
 tMz46s4IJXR8UwbgWPTaAygDamwkcMydz2E73grmOAvFQoOkgaU5KoiPd4fSZrVaeZ1ggHstGE
 RC4=
X-IronPort-AV: E=Sophos;i="5.69,329,1571727600"; d="scan'208";a="60203851"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Dec 2019 05:28:50 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Dec 2019 05:28:50 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 18 Dec 2019 05:28:47 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <boris.brezillon@bootlin.com>, <airlied@linux.ie>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <lee.jones@linaro.org>, <sam@ravnborg.org>
Subject: [PATCH v3 5/6] drm: atmel-hlcdc: prefer a lower pixel-clock than
 requested
Date: Wed, 18 Dec 2019 14:28:28 +0200
Message-ID: <1576672109-22707-6-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576672109-22707-1-git-send-email-claudiu.beznea@microchip.com>
References: <1576672109-22707-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_042851_293572_40C8042C 
X-CRM114-Status: UNSURE (   9.91  )
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
Cc: linux-arm-kernel@lists.infradead.org, peda@axentia.se,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peter Rosin <peda@axentia.se>

The intention was to only select a higher pixel-clock rate than the
requested, if a slight overclocking would result in a rate significantly
closer to the requested rate than if the conservative lower pixel-clock
rate is selected. The fixed patch has the logic the other way around and
actually prefers the higher frequency. Fix that.

Fixes: f6f7ad323461 ("drm/atmel-hlcdc: allow selecting a higher pixel-clock than requested")
Reported-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Tested-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Signed-off-by: Peter Rosin <peda@axentia.se>
---
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
index 721fa88bf71d..10985134ce0b 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
@@ -121,8 +121,8 @@ static void atmel_hlcdc_crtc_mode_set_nofb(struct drm_crtc *c)
 		int div_low = prate / mode_rate;
 
 		if (div_low >= 2 &&
-		    ((prate / div_low - mode_rate) <
-		     10 * (mode_rate - prate / div)))
+		    (10 * (prate / div_low - mode_rate) <
+		     (mode_rate - prate / div)))
 			/*
 			 * At least 10 times better when using a higher
 			 * frequency than requested, instead of a lower.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
