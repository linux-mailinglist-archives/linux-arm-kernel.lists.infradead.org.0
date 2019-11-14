Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEFAFC0FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 08:50:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ihS0VzmHEbnYFHPHH0kzcTyax8Sjng6/KFBDV7EM35g=; b=WSY9hy/7HJZyKj
	Z3g3G9txmunc4rCy+lofbYe4lU2NOgo4hKqQz27+KeNpAvV6GJvHc/jVcvSbSry+CgSoqtOV9fYLX
	LPdhcAS0AaJR8CIQvnXGUnzfaAwpBxkGThCiUzGD1mu6rxowg5DH8smHG9Wk4qJnVCsDpImH3Ra+d
	iFRUoy2J4YoRlUt3Xl1ocKY4kmhvMXz2F5lboAdjJl3uBElQ2UXx5BUdoQOh6EAxJ7LWj/HZjMphH
	wr/IKQfCSOVwwAbwSpXYh4vaRFWGC6XiaZaePZNXZbLRJx4Bo4Eywa6EOH1q94AVkOM5QnK3WEpUz
	H4cHcIR6EmJMHR1Hua9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV9u1-0000Cv-6O; Thu, 14 Nov 2019 07:50:53 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV9tq-0000Bz-Fq
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 07:50:47 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Owecmpr5ZBnGkcRSS6k1W63lYWM8pHMj70dyv/eeWKlk7mdUcQSFfD89f8VXoHrzIZlrxf/tN7
 3MyqLEmUamA+w+wCf5ZM0TFLXavuM2MrnoVp4S2OOIEbe2v4T+GG/uWJ6YkXU6soGCBdbKvX7O
 MV2sxyBjgwyzyqFjIrP6Z7ZCOEmJm7UCy3Lq/lmRiRxXwyzB5Jpkckd/HmuGkdloscnQJwkuHV
 HkPQVtScztZf0kZtvFw8x5QDYvjndwigwD1MJT2WM7LHjL4dxrz4MGmVkCebX22eQJuH0B0aF5
 YG8=
X-IronPort-AV: E=Sophos;i="5.68,302,1569308400"; d="scan'208";a="57039722"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Nov 2019 00:50:38 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 Nov 2019 00:50:28 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 14 Nov 2019 00:50:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=epgM8w7cvyt/exr4nX9Dob7As7ZPYAvmCcpBpeV9Oz6SslCF7xr1iZ/vuPd1vzQqdaUJe0RRazYnrnIAc8MjKqSSkkP9yPwilBc4ZHrktv7WQNYKJUBQFfGJ/Y7PRvH50Bcfvt6wQpZ2b6eMH3FDAgjjl5dJrHZQZgOW0RD86de9rVCx+LKKSupjXD/8pUHU4ddVAQ/crhosKQn+S4Cwtmj4KCUbJAIlJMWgPFNv+uSjVVQqbfDbECSNdI/quOrJd4EFTPiDSYbXmSwqgcnkNDiSF0hbN+87LXdQZerDP8My46s4eAEpkY2KEdVDrP5o7AYOwYx5dDJvADOcIiyyjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HajUuUOQC3QKQSCrMGWDVooSR9xQ2364XlEm4/j/zm0=;
 b=PiPVIcP5hedQqX1MQANU7nrzLdZXmh30lAI/Ape2HTeJBInvqMfM9UI7CSGpzC/4HHBm43oNbyw1PEs8/cZYltSvcRx1Niy0DwG66oFyQgx5BVGgv8c6tHJNS2aa6LFcA3+Fo8paKIlrILkfcWSm+aThgZueiioGoM8cgEGaR1em3ntviMl36so35Impg/O4AHUCGCspkKkxKnjKNHLsY2LNM2rQxEx1Dc52M/LWEkAXgcHUMzD1t5bScfiNa+niPGRzfJGClguNeKQq4rd5R9w0FcsgVXisIQbTTsRdolBL+ynNZLa/AaksDH/HpPvQRTzSHnuFXpBrBD8pVWbSOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HajUuUOQC3QKQSCrMGWDVooSR9xQ2364XlEm4/j/zm0=;
 b=ZQSxugLLLiLWyHfHLZ9uzB9LwVCKIVMVfwMRvLfyMtGy0H3X679UcVtsdIU4398hVwLyohObk0g+Y/kOC2P+wTybpQeOCwj5Mpmj8ZJ5iuKmXyiv8GgjEX5FV3bYbsGSscO9TQtjjl0Rz13Ul/t2UcOtaK0QlymDNdqAntONGdg=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1675.namprd11.prod.outlook.com (10.172.38.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.22; Thu, 14 Nov 2019 07:50:24 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8%4]) with mapi id 15.20.2430.027; Thu, 14 Nov 2019
 07:50:24 +0000
From: <Eugen.Hristev@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-media@vger.kernel.org>,
 <hverkuil@xs4all.nl>, <laurent.pinchart@ideasonboard.com>,
 <niklas.soderlund@ragnatech.se>, <jacopo@jmondi.org>
Subject: [RFC][PATCH] media: atmel: atmel-isc-base: expose white balance as
 v4l2 controls
Thread-Topic: [RFC][PATCH] media: atmel: atmel-isc-base: expose white balance
 as v4l2 controls
Thread-Index: AQHVmsAsnOQvsdkr4EC7oo14b7Mywg==
Date: Thu, 14 Nov 2019 07:50:24 +0000
Message-ID: <1573717799-12666-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0101CA0066.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::34) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 80dc5e11-ed95-4c12-8bb1-08d768d74e9a
x-ms-traffictypediagnostic: DM5PR11MB1675:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB16750CDDEBA8DA7AD034C845E8710@DM5PR11MB1675.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 02213C82F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(366004)(346002)(376002)(136003)(189003)(199004)(107886003)(5660300002)(316002)(6512007)(14444005)(2501003)(256004)(478600001)(30864003)(305945005)(66066001)(110136005)(14454004)(2906002)(3846002)(7736002)(486006)(6486002)(86362001)(2616005)(81156014)(26005)(186003)(476003)(2201001)(386003)(102836004)(25786009)(6116002)(6506007)(71190400001)(71200400001)(99286004)(36756003)(64756008)(81166006)(8676002)(6436002)(66556008)(52116002)(66946007)(66446008)(4326008)(50226002)(66476007)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1675;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iMH7hAuW7etiPfGJ+Ju7KpK/JGJzYg0R5dx6GmdHECwIypl9hUkUyZ80NL52fX1FR7d921gpmh4ze7McM9kFmrtsmpkDFfYnH+ry4EbJ6RoLtn0BJAcHeFeYDFm1O4jpeHJx5pmUgnS+NqORSMRAqREeaLG/BqyhJMK859mM2WzXqk12Lfcvrc98IZ3sn+AjTgM1PMF15w7D/Ff8/I+rG4Ua0v6nkVOzsBOw/VfbMRjyVPzYstLkgF8iCFch9Vh5C4xw4OkED/oJj1YkAcVfVqJE9HsAdpJ1SveYw/+bNOp9o5CIy9+xnZIBN+KGqbEK2GXc8u5JlMbVK5QVlHn8IsOqnu6buPm4Y3Mb7hGAdsM7tVy3I+gK3RRlxlHjIg/jON3wf0bW5PkztMdsw2IxUGtRLm2eQkVlLpXbJbcwBOAQPnXVEgKIMd9hrGwjIndk
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 80dc5e11-ed95-4c12-8bb1-08d768d74e9a
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2019 07:50:24.6131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k5XJvOE5PVlqcHBw3AWNsGoPOsPa83rjt4kvC9NRWxeawLBCPVACmHxgBxRhUhfd+n/dva49Twoefo1j5qMyZddVE4LX0LyHNuSN4WuwQxc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1675
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_235042_673208_C9105F49 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

This exposes the white balance configuration of the ISC as v4l2 controls
into userspace.
There are 8 controls available:
4 gain controls , sliders, for each of the BAYER components: R, B, GR, GB.
These gains are multipliers for each component, in format unsigned 0:4:9 with
a default value of 512 (1.0 multiplier).
4 offset controls, sliders, for each of the BAYER components: R, B, GR, GB.
These offsets are added/substracted from each component, in format signed
1:12:0 with a default value of 0 (+/- 0)

To expose this to userspace, added 8 custom controls, in an auto cluster.

To summarize the functionality:
The auto cluster switch is the auto white balance control, and it works
like this:
AWB ==1 : autowhitebalance is on, the do_white_balance button is inactive,
the gains/offsets are inactive, but volatile and readable.
Thus, the results of the whitebalance algorithm are available to userspace to
read at any time.
AWB ==0: autowhitebalance is off, cluster is in manual mode, user can configure
the gain/offsets directly. More than that, if the do_white_balance button is
pressed, the driver will perform one-time-adjustment, (preferably with color
checker card) and the userspace can read again the new values.

With this feature, the userspace can save the coefficients and reinstall them
for example after reboot or reprobing the driver.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---

Hi,

I admit this code can be optimized better for readability and size, but, I want
to get a first opinion from people more experienced in v4l2, to see if this
looks good or not.

Thanks !
Eugen

 drivers/media/platform/atmel/atmel-isc-base.c | 283 +++++++++++++++++++++++---
 drivers/media/platform/atmel/atmel-isc.h      |  32 ++-
 2 files changed, 286 insertions(+), 29 deletions(-)

diff --git a/drivers/media/platform/atmel/atmel-isc-base.c b/drivers/media/platform/atmel/atmel-isc-base.c
index c1c776b..74916fd 100644
--- a/drivers/media/platform/atmel/atmel-isc-base.c
+++ b/drivers/media/platform/atmel/atmel-isc-base.c
@@ -211,10 +211,36 @@ const u32 isc_gamma_table[GAMMA_MAX + 1][GAMMA_ENTRIES] = {
 #define ISC_IS_FORMAT_RAW(mbus_code) \
 	(((mbus_code) & 0xf000) == 0x3000)
 
+static inline void isc_update_v4l2_ctrls(struct isc_device *isc)
+{
+	struct isc_ctrls *ctrls = &isc->ctrls;
+
+	/* In here we set the v4l2 controls w.r.t. our pipeline config */
+	v4l2_ctrl_s_ctrl(isc->r_bal_ctrl, ctrls->gain[ISC_HIS_CFG_MODE_R]);
+	v4l2_ctrl_s_ctrl(isc->b_bal_ctrl, ctrls->gain[ISC_HIS_CFG_MODE_B]);
+	v4l2_ctrl_s_ctrl(isc->gr_bal_ctrl, ctrls->gain[ISC_HIS_CFG_MODE_GR]);
+	v4l2_ctrl_s_ctrl(isc->gb_bal_ctrl, ctrls->gain[ISC_HIS_CFG_MODE_GB]);
+
+	v4l2_ctrl_s_ctrl(isc->r_off_ctrl,
+		ctrls->offset[ISC_HIS_CFG_MODE_R] == ISC_WB_O_ZERO_VAL ?
+		0 : ctrls->offset[ISC_HIS_CFG_MODE_R]);
+	v4l2_ctrl_s_ctrl(isc->b_off_ctrl,
+		ctrls->offset[ISC_HIS_CFG_MODE_B] == ISC_WB_O_ZERO_VAL ?
+		0 : ctrls->offset[ISC_HIS_CFG_MODE_B]);
+	v4l2_ctrl_s_ctrl(isc->gr_off_ctrl,
+		ctrls->offset[ISC_HIS_CFG_MODE_GR] == ISC_WB_O_ZERO_VAL ?
+		0 : ctrls->offset[ISC_HIS_CFG_MODE_GR]);
+	v4l2_ctrl_s_ctrl(isc->gb_off_ctrl,
+		ctrls->offset[ISC_HIS_CFG_MODE_GB] == ISC_WB_O_ZERO_VAL ?
+		0 : ctrls->offset[ISC_HIS_CFG_MODE_GB]);
+}
+
 static inline void isc_update_awb_ctrls(struct isc_device *isc)
 {
 	struct isc_ctrls *ctrls = &isc->ctrls;
 
+	/* In here we set our actual hw pipeline config */
+
 	regmap_write(isc->regmap, ISC_WB_O_RGR,
 		     (ISC_WB_O_ZERO_VAL - (ctrls->offset[ISC_HIS_CFG_MODE_R])) |
 		     ((ISC_WB_O_ZERO_VAL - ctrls->offset[ISC_HIS_CFG_MODE_GR]) << 16));
@@ -649,11 +675,9 @@ static void isc_set_pipeline(struct isc_device *isc, u32 pipeline)
 
 	bay_cfg = isc->config.sd_format->cfa_baycfg;
 
-	if (ctrls->awb == ISC_WB_NONE)
-		isc_reset_awb_ctrls(isc);
-
 	regmap_write(regmap, ISC_WB_CFG, bay_cfg);
 	isc_update_awb_ctrls(isc);
+	isc_update_v4l2_ctrls(isc);
 
 	regmap_write(regmap, ISC_CFA_CFG, bay_cfg | ISC_CFA_CFG_EITPOL);
 
@@ -1339,6 +1363,7 @@ static int isc_set_fmt(struct isc_device *isc, struct v4l2_format *f)
 	    isc->try_config.sd_format != isc->config.sd_format) {
 		isc->ctrls.hist_stat = HIST_INIT;
 		isc_reset_awb_ctrls(isc);
+		isc_update_v4l2_ctrls(isc);
 	}
 	/* make the try configuration active */
 	isc->config = isc->try_config;
@@ -1758,10 +1783,6 @@ static void isc_awb_work(struct work_struct *w)
 	ctrls->hist_id = hist_id;
 	baysel = isc->config.sd_format->cfa_baycfg << ISC_HIS_CFG_BAYSEL_SHIFT;
 
-	/* if no more auto white balance, reset controls. */
-	if (ctrls->awb == ISC_WB_NONE)
-		isc_reset_awb_ctrls(isc);
-
 	pm_runtime_get_sync(isc->dev);
 
 	/*
@@ -1786,6 +1807,8 @@ static void isc_awb_work(struct work_struct *w)
 		if (ctrls->awb == ISC_WB_ONETIME) {
 			v4l2_info(&isc->v4l2_dev,
 				  "Completed one time white-balance adjustment.\n");
+			/* update the v4l2 controls values */
+			isc_update_v4l2_ctrls(isc);
 			ctrls->awb = ISC_WB_NONE;
 		}
 	}
@@ -1817,6 +1840,27 @@ static int isc_s_ctrl(struct v4l2_ctrl *ctrl)
 	case V4L2_CID_GAMMA:
 		ctrls->gamma_index = ctrl->val;
 		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static const struct v4l2_ctrl_ops isc_ctrl_ops = {
+	.s_ctrl	= isc_s_ctrl,
+};
+
+static int isc_s_awb_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct isc_device *isc = container_of(ctrl->handler,
+					     struct isc_device, ctrls.handler);
+	struct isc_ctrls *ctrls = &isc->ctrls;
+
+	if (ctrl->flags & V4L2_CTRL_FLAG_INACTIVE)
+		return 0;
+
+	switch (ctrl->id) {
 	case V4L2_CID_AUTO_WHITE_BALANCE:
 		if (ctrl->val == 1)
 			ctrls->awb = ISC_WB_AUTO;
@@ -1827,34 +1871,199 @@ static int isc_s_ctrl(struct v4l2_ctrl *ctrl)
 		if (!isc->config.sd_format)
 			break;
 
-		if (ctrls->hist_stat != HIST_ENABLED)
-			isc_reset_awb_ctrls(isc);
+		/* configure the controls with new values from v4l2 */
+		if (ctrl->cluster[ISC_CTRL_R_BAL]->is_new)
+			ctrls->gain[ISC_HIS_CFG_MODE_R] = isc->r_bal_ctrl->val;
+		if (ctrl->cluster[ISC_CTRL_B_BAL]->is_new)
+			ctrls->gain[ISC_HIS_CFG_MODE_B] = isc->b_bal_ctrl->val;
+		if (ctrl->cluster[ISC_CTRL_GR_BAL]->is_new)
+			ctrls->gain[ISC_HIS_CFG_MODE_GR] = isc->gr_bal_ctrl->val;
+		if (ctrl->cluster[ISC_CTRL_GB_BAL]->is_new)
+			ctrls->gain[ISC_HIS_CFG_MODE_GB] = isc->gb_bal_ctrl->val;
+
+		if (ctrl->cluster[ISC_CTRL_R_OFF]->is_new)
+			ctrls->offset[ISC_HIS_CFG_MODE_R] =
+				isc->r_off_ctrl->val ? isc->r_off_ctrl->val : ISC_WB_O_ZERO_VAL;
+		if (ctrl->cluster[ISC_CTRL_B_OFF]->is_new)
+			ctrls->offset[ISC_HIS_CFG_MODE_B] =
+				isc->b_off_ctrl->val ? isc->b_off_ctrl->val : ISC_WB_O_ZERO_VAL;
+		if (ctrl->cluster[ISC_CTRL_GR_OFF]->is_new)
+			ctrls->offset[ISC_HIS_CFG_MODE_GR] =
+				isc->gr_off_ctrl->val ? isc->gr_off_ctrl->val : ISC_WB_O_ZERO_VAL;
+		if (ctrl->cluster[ISC_CTRL_GB_OFF]->is_new)
+			ctrls->offset[ISC_HIS_CFG_MODE_GB] =
+				isc->gb_off_ctrl->val ? isc->gb_off_ctrl->val : ISC_WB_O_ZERO_VAL;
+
+		isc_update_awb_ctrls(isc);
 
-		if (isc->ctrls.awb == ISC_WB_AUTO &&
+		if (vb2_is_streaming(&isc->vb2_vidq)) {
+			/*
+			 * If we are streaming, we can update profile to
+			 * have the new settings in place.
+			 */
+			isc_update_profile(isc);
+		} else {
+			/*
+			 * The auto cluster will activate automatically this
+			 * control. This has to be deactivated when not
+			 * streaming.
+			 */
+			v4l2_ctrl_activate(isc->do_wb_ctrl, false);
+		}
+
+		/* if we have autowhitebalance on, start histogram procedure */
+		if (ctrls->awb == ISC_WB_AUTO &&
 		    vb2_is_streaming(&isc->vb2_vidq) &&
 		    ISC_IS_FORMAT_RAW(isc->config.sd_format->mbus_code))
 			isc_set_histogram(isc, true);
 
-		break;
-	case V4L2_CID_DO_WHITE_BALANCE:
-		/* if AWB is enabled, do nothing */
-		if (ctrls->awb == ISC_WB_AUTO)
-			return 0;
-
-		ctrls->awb = ISC_WB_ONETIME;
-		isc_set_histogram(isc, true);
-		v4l2_dbg(1, debug, &isc->v4l2_dev,
-			 "One time white-balance started.\n");
-		break;
-	default:
-		return -EINVAL;
+		/*
+		 * for one time whitebalance adjustment, check the button,
+		 * if it's pressed, perform the one time operation.
+		 */
+		if (ctrls->awb == ISC_WB_NONE &&
+		    ctrl->cluster[ISC_CTRL_DO_WB]->is_new &&
+		    !(ctrl->cluster[ISC_CTRL_DO_WB]->flags &
+		    V4L2_CTRL_FLAG_INACTIVE)) {
+			ctrls->awb = ISC_WB_ONETIME;
+			isc_set_histogram(isc, true);
+			v4l2_dbg(1, debug, &isc->v4l2_dev,
+				 "One time white-balance started.\n");
+		}
+		return 0;
 	}
+	return 0;
+}
+
+static int isc_g_volatile_awb_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct isc_device *isc = container_of(ctrl->handler,
+					     struct isc_device, ctrls.handler);
+	struct isc_ctrls *ctrls = &isc->ctrls;
 
+	switch (ctrl->id) {
+	case V4L2_CID_AUTO_WHITE_BALANCE:
+		ctrl->cluster[ISC_CTRL_R_BAL]->val = ctrls->gain[ISC_HIS_CFG_MODE_R];
+		ctrl->cluster[ISC_CTRL_B_BAL]->val = ctrls->gain[ISC_HIS_CFG_MODE_B];
+		ctrl->cluster[ISC_CTRL_GR_BAL]->val = ctrls->gain[ISC_HIS_CFG_MODE_GR];
+		ctrl->cluster[ISC_CTRL_GB_BAL]->val = ctrls->gain[ISC_HIS_CFG_MODE_GB];
+
+		ctrl->cluster[ISC_CTRL_R_OFF]->val =
+			(ctrls->offset[ISC_HIS_CFG_MODE_R] ==
+			ISC_WB_O_ZERO_VAL ? 0 : ctrls->offset[ISC_HIS_CFG_MODE_R]);
+		ctrl->cluster[ISC_CTRL_B_OFF]->val =
+			(ctrls->offset[ISC_HIS_CFG_MODE_B] ==
+			ISC_WB_O_ZERO_VAL ? 0 : ctrls->offset[ISC_HIS_CFG_MODE_B]);
+		ctrl->cluster[ISC_CTRL_GR_OFF]->val =
+			(ctrls->offset[ISC_HIS_CFG_MODE_GR] ==
+			ISC_WB_O_ZERO_VAL ? 0 : ctrls->offset[ISC_HIS_CFG_MODE_GR]);
+		ctrl->cluster[ISC_CTRL_GB_OFF]->val =
+			(ctrls->offset[ISC_HIS_CFG_MODE_GB] ==
+			ISC_WB_O_ZERO_VAL ? 0 : ctrls->offset[ISC_HIS_CFG_MODE_GB]);
+		break;
+	};
 	return 0;
 }
 
-static const struct v4l2_ctrl_ops isc_ctrl_ops = {
-	.s_ctrl	= isc_s_ctrl,
+static const struct v4l2_ctrl_ops isc_awb_ops = {
+	.s_ctrl = isc_s_awb_ctrl,
+	.g_volatile_ctrl = isc_g_volatile_awb_ctrl,
+};
+
+static const struct v4l2_ctrl_config isc_r_off_ctrl = {
+	.ops = &isc_awb_ops,
+	.id = ISC_CID_R_OFFSET,
+	.name = "Red Component Offset",
+	.type = V4L2_CTRL_TYPE_INTEGER,
+	.flags = V4L2_CTRL_FLAG_SLIDER,
+	.min = -4095,
+	.max = 4095,
+	.step = 1,
+	.def = 0,
+};
+
+static const struct v4l2_ctrl_config isc_b_off_ctrl = {
+	.ops = &isc_awb_ops,
+	.id = ISC_CID_B_OFFSET,
+	.name = "Blue Component Offset",
+	.type = V4L2_CTRL_TYPE_INTEGER,
+	.flags = V4L2_CTRL_FLAG_SLIDER,
+	.min = -4095,
+	.max = 4095,
+	.step = 1,
+	.def = 0,
+};
+
+static const struct v4l2_ctrl_config isc_gr_off_ctrl = {
+	.ops = &isc_awb_ops,
+	.id = ISC_CID_GR_OFFSET,
+	.name = "Green Red Component Offset",
+	.type = V4L2_CTRL_TYPE_INTEGER,
+	.flags = V4L2_CTRL_FLAG_SLIDER,
+	.min = -4095,
+	.max = 4095,
+	.step = 1,
+	.def = 0,
+};
+
+static const struct v4l2_ctrl_config isc_gb_off_ctrl = {
+	.ops = &isc_awb_ops,
+	.id = ISC_CID_GB_OFFSET,
+	.name = "Green Blue Component Offset",
+	.type = V4L2_CTRL_TYPE_INTEGER,
+	.flags = V4L2_CTRL_FLAG_SLIDER,
+	.min = -4095,
+	.max = 4095,
+	.step = 1,
+	.def = 0,
+};
+
+static const struct v4l2_ctrl_config isc_r_bal_ctrl = {
+	.ops = &isc_awb_ops,
+	.id = ISC_CID_R_BAL,
+	.name = "Red Component Balance",
+	.type = V4L2_CTRL_TYPE_INTEGER,
+	.flags = V4L2_CTRL_FLAG_SLIDER,
+	.min = 0,
+	.max = 8191,
+	.step = 1,
+	.def = 512,
+};
+
+static const struct v4l2_ctrl_config isc_b_bal_ctrl = {
+	.ops = &isc_awb_ops,
+	.id = ISC_CID_B_BAL,
+	.name = "Blue Component Balance",
+	.type = V4L2_CTRL_TYPE_INTEGER,
+	.flags = V4L2_CTRL_FLAG_SLIDER,
+	.min = 0,
+	.max = 8191,
+	.step = 1,
+	.def = 512,
+};
+
+static const struct v4l2_ctrl_config isc_gr_bal_ctrl = {
+	.ops = &isc_awb_ops,
+	.id = ISC_CID_GR_BAL,
+	.name = "Green Red Component Balance",
+	.type = V4L2_CTRL_TYPE_INTEGER,
+	.flags = V4L2_CTRL_FLAG_SLIDER,
+	.min = 0,
+	.max = 8191,
+	.step = 1,
+	.def = 512,
+};
+
+static const struct v4l2_ctrl_config isc_gb_bal_ctrl = {
+	.ops = &isc_awb_ops,
+	.id = ISC_CID_GB_BAL,
+	.name = "Green Blue Component Balance",
+	.type = V4L2_CTRL_TYPE_INTEGER,
+	.flags = V4L2_CTRL_FLAG_SLIDER,
+	.min = 0,
+	.max = 8191,
+	.step = 1,
+	.def = 512,
 };
 
 static int isc_ctrl_init(struct isc_device *isc)
@@ -1867,7 +2076,7 @@ static int isc_ctrl_init(struct isc_device *isc)
 	ctrls->hist_stat = HIST_INIT;
 	isc_reset_awb_ctrls(isc);
 
-	ret = v4l2_ctrl_handler_init(hdl, 5);
+	ret = v4l2_ctrl_handler_init(hdl, 13);
 	if (ret < 0)
 		return ret;
 
@@ -1877,10 +2086,13 @@ static int isc_ctrl_init(struct isc_device *isc)
 	v4l2_ctrl_new_std(hdl, ops, V4L2_CID_BRIGHTNESS, -1024, 1023, 1, 0);
 	v4l2_ctrl_new_std(hdl, ops, V4L2_CID_CONTRAST, -2048, 2047, 1, 256);
 	v4l2_ctrl_new_std(hdl, ops, V4L2_CID_GAMMA, 0, GAMMA_MAX, 1, 2);
-	v4l2_ctrl_new_std(hdl, ops, V4L2_CID_AUTO_WHITE_BALANCE, 0, 1, 1, 1);
+	isc->awb_ctrl = v4l2_ctrl_new_std(hdl, &isc_awb_ops,
+					  V4L2_CID_AUTO_WHITE_BALANCE,
+					  0, 1, 1, 1);
 
 	/* do_white_balance is a button, so min,max,step,default are ignored */
-	isc->do_wb_ctrl = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_DO_WHITE_BALANCE,
+	isc->do_wb_ctrl = v4l2_ctrl_new_std(hdl, &isc_awb_ops,
+					    V4L2_CID_DO_WHITE_BALANCE,
 					    0, 0, 0, 0);
 
 	if (!isc->do_wb_ctrl) {
@@ -1891,6 +2103,21 @@ static int isc_ctrl_init(struct isc_device *isc)
 
 	v4l2_ctrl_activate(isc->do_wb_ctrl, false);
 
+	isc->r_bal_ctrl = v4l2_ctrl_new_custom(hdl, &isc_r_bal_ctrl, NULL);
+	isc->b_bal_ctrl = v4l2_ctrl_new_custom(hdl, &isc_b_bal_ctrl, NULL);
+	isc->gr_bal_ctrl = v4l2_ctrl_new_custom(hdl, &isc_gr_bal_ctrl, NULL);
+	isc->gb_bal_ctrl = v4l2_ctrl_new_custom(hdl, &isc_gb_bal_ctrl, NULL);
+	isc->r_off_ctrl = v4l2_ctrl_new_custom(hdl, &isc_r_off_ctrl, NULL);
+	isc->b_off_ctrl = v4l2_ctrl_new_custom(hdl, &isc_b_off_ctrl, NULL);
+	isc->gr_off_ctrl = v4l2_ctrl_new_custom(hdl, &isc_gr_off_ctrl, NULL);
+	isc->gb_off_ctrl = v4l2_ctrl_new_custom(hdl, &isc_gb_off_ctrl, NULL);
+
+	/*
+	 * The cluster is in auto mode with autowhitebalance enabled
+	 * and manual mode otherwise.
+	 */
+	v4l2_ctrl_auto_cluster(10, &isc->awb_ctrl, 0, true);
+
 	v4l2_ctrl_handler_setup(hdl);
 
 	return 0;
diff --git a/drivers/media/platform/atmel/atmel-isc.h b/drivers/media/platform/atmel/atmel-isc.h
index bfaed2f..23adb4e 100644
--- a/drivers/media/platform/atmel/atmel-isc.h
+++ b/drivers/media/platform/atmel/atmel-isc.h
@@ -213,7 +213,6 @@ struct isc_device {
 	struct fmt_config	try_config;
 
 	struct isc_ctrls	ctrls;
-	struct v4l2_ctrl	*do_wb_ctrl;
 	struct work_struct	awb_work;
 
 	struct mutex		lock; /* serialize access to file operations */
@@ -223,6 +222,28 @@ struct isc_device {
 
 	struct isc_subdev_entity	*current_subdev;
 	struct list_head		subdev_entities;
+
+	struct {
+#define ISC_CTRL_DO_WB 1
+#define ISC_CTRL_R_BAL 2
+#define ISC_CTRL_B_BAL 3
+#define ISC_CTRL_GR_BAL 4
+#define ISC_CTRL_GB_BAL 5
+#define ISC_CTRL_R_OFF 6
+#define ISC_CTRL_B_OFF 7
+#define ISC_CTRL_GR_OFF 8
+#define ISC_CTRL_GB_OFF 9
+		struct v4l2_ctrl	*awb_ctrl;
+		struct v4l2_ctrl	*do_wb_ctrl;
+		struct v4l2_ctrl	*r_bal_ctrl;
+		struct v4l2_ctrl	*b_bal_ctrl;
+		struct v4l2_ctrl	*gr_bal_ctrl;
+		struct v4l2_ctrl	*gb_bal_ctrl;
+		struct v4l2_ctrl	*r_off_ctrl;
+		struct v4l2_ctrl	*b_off_ctrl;
+		struct v4l2_ctrl	*gr_off_ctrl;
+		struct v4l2_ctrl	*gb_off_ctrl;
+	};
 };
 
 #define GAMMA_MAX	2
@@ -242,4 +263,13 @@ int isc_clk_init(struct isc_device *isc);
 void isc_subdev_cleanup(struct isc_device *isc);
 void isc_clk_cleanup(struct isc_device *isc);
 
+#define ISC_CID_R_BAL			(V4L2_CID_CAMERA_CLASS_BASE + 1000)
+#define ISC_CID_B_BAL			(V4L2_CID_CAMERA_CLASS_BASE + 1001)
+#define ISC_CID_GR_BAL			(V4L2_CID_CAMERA_CLASS_BASE + 1002)
+#define ISC_CID_GB_BAL			(V4L2_CID_CAMERA_CLASS_BASE + 1003)
+#define ISC_CID_R_OFFSET		(V4L2_CID_CAMERA_CLASS_BASE + 1004)
+#define ISC_CID_B_OFFSET		(V4L2_CID_CAMERA_CLASS_BASE + 1005)
+#define ISC_CID_GR_OFFSET		(V4L2_CID_CAMERA_CLASS_BASE + 1006)
+#define ISC_CID_GB_OFFSET		(V4L2_CID_CAMERA_CLASS_BASE + 1007)
+
 #endif
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
