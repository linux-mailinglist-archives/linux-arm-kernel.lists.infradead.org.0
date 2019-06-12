Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A96BA424E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:01:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PglUEWs8GhtdAS1d0/fubVl9fUIRxh8pd4tZwBAZOFo=; b=hkWTUkkMuZstoQ
	RdV0eH4hQKMmYQs8uHOUE9gh07a50HWIbGwd65BS6ODlxyT7Ct+4dtkWE1kXwX6bRx4v0xX+RazRA
	3fWfSqyCi+A12xM00SiPjIpIPcbehCKDk4lLFRl2DbS05/lSVOy1KrlLthKpQM2GFMTN2mGfi81sm
	E/ayDJJCaa8GBzysIhRMOm/xk6g7tzmwSeC1NmLFI3iAV3zS5FgjhjWabNG3n6jNO8KDDEJdYEKV3
	SIVAO+qGp4h+LCnlSStgOV/Wrwwka3cT2E4d46WloA9To9HBCv23hmQOc8jcF2/Xg8w+aWmMGLX7M
	k2r+AGdcYwS1lfs8GvUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1wF-0003xJ-0Z; Wed, 12 Jun 2019 12:01:11 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1vp-0003cK-6X
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:00:46 +0000
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
X-IronPort-AV: E=Sophos;i="5.63,365,1557212400"; d="scan'208";a="37199917"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Jun 2019 05:00:41 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 12 Jun 2019 05:00:36 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 12 Jun 2019 05:00:36 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ymny9NBtiK/EPtbaDdnmHlxTqlmp8mEJ1x+ebnttbFY=;
 b=s8PXeq+J7NYarSioYVFYbWgZD40mzg5TTeGsTG6uTveV0DPbAuLF/OUW2vBFqUT4vS5F9VS2/y/BRueZbqvVoq+AHjE2Bm+tiE5z7nFE0EwxrVfmaZbRLDkJwNmV3Rr6l4yE2CIp3Py8FQFFMesGtiGgvMKOnZKDhrVVxrKMXYo=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1497.namprd11.prod.outlook.com (10.172.38.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Wed, 12 Jun 2019 12:00:36 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::2807:f606:3b7c:cce9]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::2807:f606:3b7c:cce9%9]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 12:00:36 +0000
From: <Eugen.Hristev@microchip.com>
To: <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <sakari.ailus@iki.fi>
Subject: [PATCH v6 3/3] media: atmel: atmel-isc: fix and cleanup potential bugs
Thread-Topic: [PATCH v6 3/3] media: atmel: atmel-isc: fix and cleanup
 potential bugs
Thread-Index: AQHVIRZxGvQ1XJ/T2EmZQJVIjLN7ag==
Date: Wed, 12 Jun 2019 12:00:35 +0000
Message-ID: <1560340575-21021-3-git-send-email-eugen.hristev@microchip.com>
References: <1560340575-21021-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1560340575-21021-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: ro-RO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR03CA0065.eurprd03.prod.outlook.com
 (2603:10a6:803:50::36) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e5379ad7-c010-49ba-6df1-08d6ef2d9417
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1497; 
x-ms-traffictypediagnostic: DM5PR11MB1497:
x-microsoft-antispam-prvs: <DM5PR11MB149712950AF85B6D4EC02D27E8EC0@DM5PR11MB1497.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39860400002)(396003)(136003)(366004)(189003)(199004)(66476007)(26005)(73956011)(66946007)(66446008)(66556008)(53936002)(64756008)(107886003)(4326008)(5660300002)(110136005)(316002)(6486002)(14444005)(71200400001)(25786009)(99286004)(256004)(2501003)(66066001)(476003)(6512007)(6506007)(71190400001)(86362001)(6436002)(2906002)(52116002)(6116002)(446003)(386003)(11346002)(186003)(2616005)(3846002)(36756003)(2201001)(486006)(72206003)(102836004)(478600001)(68736007)(8676002)(14454004)(50226002)(81156014)(81166006)(8936002)(305945005)(7736002)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1497;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Axz2O2xJ2thiWJd8gfW1gcK+Enktyv4sR0Zws/aXC8vgkM6DkyDWUWRy/THr1dSXLbyFKSNZhKsn7JKDxugSpD2bHK6DZe8rL3727yNcVynA3NN0YjQ82BKfB9rMbtQF/5mgpsrBu1g0GfiMZbem2Fe+YscG7C8x6D0VBQZmsKdLo9eKTVE8fTZP4XeM/WKoA6zcVYK3cDincvvvchf2Borr29brIA8IGIGi2xZwcn+qI3Xm8jVmX+mCE+66qwU92EMIiDAgE6bD5C5yTQWAPh7hAMCpmguM4q4+xkjdywhX9TDRh/MQeiCTCX9LCjsrFkjD07DLT5xVcxPaH+iHxjYCNbRInMjvoS/RfOdarpSgAag+HnH9BNEy4MD8+xwlmmjEtn+sBKOvIwr0VIOl8UTH8jOlYsR1CanFPNs//Kc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e5379ad7-c010-49ba-6df1-08d6ef2d9417
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 12:00:36.1047 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eugen.hristev@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1497
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_050045_351748_5EED4D8E 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Fixed issues that can lead to potential bugs.
Cleanup order in the driver
Taking into consideration std control creation can fail
mutex_destroy call
changing controller_formats with const specifier
some cosmetic cleanups

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
Changes in v6:
- added back "return 0" line which was deleted

Changes in v5:
- new patch that fixes issues reviewed by Sakari

 drivers/media/platform/atmel/atmel-isc-base.c    | 28 ++++++++++++++++--------
 drivers/media/platform/atmel/atmel-isc.h         |  2 +-
 drivers/media/platform/atmel/atmel-sama5d2-isc.c | 14 +++++++-----
 3 files changed, 29 insertions(+), 15 deletions(-)

diff --git a/drivers/media/platform/atmel/atmel-isc-base.c b/drivers/media/platform/atmel/atmel-isc-base.c
index edfd7e0..eb1f5d4 100644
--- a/drivers/media/platform/atmel/atmel-isc-base.c
+++ b/drivers/media/platform/atmel/atmel-isc-base.c
@@ -45,7 +45,7 @@ MODULE_PARM_DESC(sensor_preferred,
 		 "Sensor is preferred to output the specified format (1-on 0-off), default 1");
 
 /* This is a list of the formats that the ISC can *output* */
-struct isc_format controller_formats[] = {
+const struct isc_format controller_formats[] = {
 	{
 		.fourcc		= V4L2_PIX_FMT_ARGB444,
 	},
@@ -231,7 +231,7 @@ static inline void isc_update_awb_ctrls(struct isc_device *isc)
 
 static inline void isc_reset_awb_ctrls(struct isc_device *isc)
 {
-	int c;
+	unsigned int c;
 
 	for (c = ISC_HIS_CFG_MODE_GR; c <= ISC_HIS_CFG_MODE_B; c++) {
 		/* gains have a fixed point at 9 decimals */
@@ -1456,7 +1456,7 @@ static int isc_enum_frameintervals(struct file *file, void *fh,
 		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
 	};
 	int ret = -EINVAL;
-	int i;
+	unsigned int i;
 
 	for (i = 0; i < isc->num_user_formats; i++)
 		if (isc->user_formats[i]->fourcc == fival->pixel_format)
@@ -1883,6 +1883,12 @@ static int isc_ctrl_init(struct isc_device *isc)
 	isc->do_wb_ctrl = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_DO_WHITE_BALANCE,
 					    0, 0, 0, 0);
 
+	if (!isc->do_wb_ctrl) {
+		ret = hdl->error;
+		v4l2_ctrl_handler_free(hdl);
+		return ret;
+	}
+
 	v4l2_ctrl_activate(isc->do_wb_ctrl, false);
 
 	v4l2_ctrl_handler_setup(hdl);
@@ -2010,7 +2016,7 @@ static int isc_async_complete(struct v4l2_async_notifier *notifier)
 					      struct isc_device, v4l2_dev);
 	struct video_device *vdev = &isc->video_dev;
 	struct vb2_queue *q = &isc->vb2_vidq;
-	int ret;
+	int ret = 0;
 
 	INIT_WORK(&isc->awb_work, isc_awb_work);
 
@@ -2041,7 +2047,7 @@ static int isc_async_complete(struct v4l2_async_notifier *notifier)
 	if (ret < 0) {
 		v4l2_err(&isc->v4l2_dev,
 			 "vb2_queue_init() failed: %d\n", ret);
-		return ret;
+		goto isc_async_complete_err;
 	}
 
 	/* Init video dma queues */
@@ -2053,19 +2059,19 @@ static int isc_async_complete(struct v4l2_async_notifier *notifier)
 	if (ret < 0) {
 		v4l2_err(&isc->v4l2_dev,
 			 "Init format failed: %d\n", ret);
-		return ret;
+		goto isc_async_complete_err;
 	}
 
 	ret = isc_set_default_fmt(isc);
 	if (ret) {
 		v4l2_err(&isc->v4l2_dev, "Could not set default format\n");
-		return ret;
+		goto isc_async_complete_err;
 	}
 
 	ret = isc_ctrl_init(isc);
 	if (ret) {
 		v4l2_err(&isc->v4l2_dev, "Init isc ctrols failed: %d\n", ret);
-		return ret;
+		goto isc_async_complete_err;
 	}
 
 	/* Register video device */
@@ -2085,10 +2091,14 @@ static int isc_async_complete(struct v4l2_async_notifier *notifier)
 	if (ret < 0) {
 		v4l2_err(&isc->v4l2_dev,
 			 "video_register_device failed: %d\n", ret);
-		return ret;
+		goto isc_async_complete_err;
 	}
 
 	return 0;
+
+isc_async_complete_err:
+	mutex_destroy(&isc->lock);
+	return ret;
 }
 
 const struct v4l2_async_notifier_operations isc_async_ops = {
diff --git a/drivers/media/platform/atmel/atmel-isc.h b/drivers/media/platform/atmel/atmel-isc.h
index 5be5b09..f5f5932 100644
--- a/drivers/media/platform/atmel/atmel-isc.h
+++ b/drivers/media/platform/atmel/atmel-isc.h
@@ -235,7 +235,7 @@ extern unsigned int debug;
 extern unsigned int sensor_preferred;
 
 extern struct isc_format formats_list[];
-extern struct isc_format controller_formats[];
+extern const struct isc_format controller_formats[];
 extern const u32 isc_gamma_table[GAMMA_MAX + 1][GAMMA_ENTRIES];
 extern const struct regmap_config isc_regmap_config;
 extern const struct v4l2_async_notifier_operations isc_async_ops;
diff --git a/drivers/media/platform/atmel/atmel-sama5d2-isc.c b/drivers/media/platform/atmel/atmel-sama5d2-isc.c
index 127e79c..266df14 100644
--- a/drivers/media/platform/atmel/atmel-sama5d2-isc.c
+++ b/drivers/media/platform/atmel/atmel-sama5d2-isc.c
@@ -122,8 +122,7 @@ static int isc_parse_dt(struct device *dev, struct isc_device *isc)
 					ISC_PFE_CFG0_CCIR656;
 
 		subdev_entity->asd->match_type = V4L2_ASYNC_MATCH_FWNODE;
-		subdev_entity->asd->match.fwnode =
-			of_fwnode_handle(rem);
+		subdev_entity->asd->match.fwnode = of_fwnode_handle(rem);
 		list_add_tail(&subdev_entity->list, &isc->subdev_entities);
 	}
 
@@ -282,13 +281,14 @@ static int atmel_isc_remove(struct platform_device *pdev)
 	struct isc_device *isc = platform_get_drvdata(pdev);
 
 	pm_runtime_disable(&pdev->dev);
-	clk_disable_unprepare(isc->ispck);
-	clk_disable_unprepare(isc->hclock);
 
 	isc_subdev_cleanup(isc);
 
 	v4l2_device_unregister(&isc->v4l2_dev);
 
+	clk_disable_unprepare(isc->ispck);
+	clk_disable_unprepare(isc->hclock);
+
 	isc_clk_cleanup(isc);
 
 	return 0;
@@ -313,7 +313,11 @@ static int __maybe_unused isc_runtime_resume(struct device *dev)
 	if (ret)
 		return ret;
 
-	return clk_prepare_enable(isc->ispck);
+	ret = clk_prepare_enable(isc->ispck);
+	if (ret)
+		clk_disable_unprepare(isc->hclock);
+
+	return ret;
 }
 
 static const struct dev_pm_ops atmel_isc_dev_pm_ops = {
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
