Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE0C42335
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7NYDIDXaQ5hfNtTzK4EIC7n7pApU9nSg8PQJE1iN1zQ=; b=Rx/l6h6OQAjJnq
	uf5ZbHetRfkB6HVekKE86VelrpqAJSy5ARmbb1Kq5w9xSEOW7mchk71cJ8UnjPq7CvLec7z9hCuNy
	oWF3yyX0DxU4SD6p4NgVPjAPq2Kb2hcAFENsvv+EyzX/V9V3oLDByyFEEimIzAoEPx/SZROQnuAID
	8wWfexIN0EtYs3RUdMG7TjDIhfpoLk7nmHUIiWDMFvURtmPvUq5JNbFrF6l8vjQ83tW6cDOkjDknr
	XzaOVwkQEqj8nnjmcPRMxwxf1PqAI9Lu05HT8nmtpfvQyBq1Pa47N2oz3wdnEvphc9pQeA2iNmJ3/
	hJfe84BlFBEHtd9QyTZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb10Z-0000Cw-PI; Wed, 12 Jun 2019 11:01:35 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb10M-0000B6-R4
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:01:24 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,365,1557212400"; d="scan'208";a="35527222"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Jun 2019 04:01:19 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 12 Jun 2019 04:01:18 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 12 Jun 2019 04:01:18 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8l90ZqAjLuZ3F/yUQfh/uxTH/5T8+xFw17ieWhNatCI=;
 b=YnwuBYZlr5rzcLOSEQzrcD9A+9/kA1FJIcgMpwF1JLgAJvSpX+vP5qALyjvWdQJUhFtJv/WixwfSl3nU4OLg2Ukcpn4ToLUCRmY4UGbJmfryV+t+HLkQtzXtXXN0aSORqi7GfAv4FSMo24KHVmkd1oLWUtiWbh61k4x/gBkFSRc=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1818.namprd11.prod.outlook.com (10.175.92.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Wed, 12 Jun 2019 11:01:16 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::2807:f606:3b7c:cce9]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::2807:f606:3b7c:cce9%9]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 11:01:15 +0000
From: <Eugen.Hristev@microchip.com>
To: <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <sakari.ailus@iki.fi>
Subject: [PATCH v5 3/3] media: atmel: atmel-isc: fix and cleanup potential bugs
Thread-Topic: [PATCH v5 3/3] media: atmel: atmel-isc: fix and cleanup
 potential bugs
Thread-Index: AQHVIQ4nAXoA9SEVe0C/kbFc5jT6cg==
Date: Wed, 12 Jun 2019 11:01:15 +0000
Message-ID: <1560336983-16843-3-git-send-email-eugen.hristev@microchip.com>
References: <1560336983-16843-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1560336983-16843-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: ro-RO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P18901CA0014.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:801::24) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bf01dd5d-7c49-42a5-73a3-08d6ef254a11
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1818; 
x-ms-traffictypediagnostic: DM5PR11MB1818:
x-microsoft-antispam-prvs: <DM5PR11MB181823DDF617462B3C61B5F9E8EC0@DM5PR11MB1818.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(376002)(366004)(39860400002)(346002)(189003)(199004)(66066001)(14444005)(14454004)(316002)(2201001)(68736007)(305945005)(53936002)(3846002)(2906002)(66556008)(86362001)(256004)(73956011)(5660300002)(71190400001)(7736002)(71200400001)(186003)(110136005)(478600001)(6512007)(476003)(11346002)(6486002)(81166006)(81156014)(8936002)(446003)(6436002)(2501003)(8676002)(66946007)(6506007)(76176011)(486006)(52116002)(2616005)(4326008)(72206003)(36756003)(102836004)(99286004)(386003)(26005)(6116002)(66476007)(50226002)(66446008)(64756008)(107886003)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1818;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: oULTkQKvkzuX5iX3A0+1+2U8Cc693hXQK8CHEZI9XemoXcX4G+VwkYKPjAuT9oe9l01LKaEL4Qagl+hzaBaIObZDridjDRrPIJr/K5cmktgBiEXyULaMwKPmI5gq1406RQ8qNkWiIJNUd7r+5UHarXFz2JW8/dYyQo3Kco86szWg3g5tTUdV7FfJBqZhziXEjb2NtazmCKPnkBiVKz4QhIs43sZQrOKxzLRBwcho0rQ7Zf7+rheZkI4YiaYlIg2qiT+d71z6hYrEMr9ZnCdBJO24nox4RV/0Pji7XesQQxmxcql4vLYUIx74+gMOQDez7A7HuT14C4e3rBQjqtthX2f3OHr1Z8WeOkEQn1Pl96YJ8zPzadNx8D3YPwcXxhXmaIdH/2j0NWK2PRCDk/exUYaznG4MwZUyuBN528W8+/M=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bf01dd5d-7c49-42a5-73a3-08d6ef254a11
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 11:01:15.8362 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eugen.hristev@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1818
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_040123_046657_36A381B6 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Changes in v5:
- new patch that fixes issues reviewed by Sakari

 drivers/media/platform/atmel/atmel-isc-base.c    | 28 +++++++++++++++---------
 drivers/media/platform/atmel/atmel-isc.h         |  2 +-
 drivers/media/platform/atmel/atmel-sama5d2-isc.c | 14 +++++++-----
 3 files changed, 28 insertions(+), 16 deletions(-)

diff --git a/drivers/media/platform/atmel/atmel-isc-base.c b/drivers/media/platform/atmel/atmel-isc-base.c
index edfd7e0..678383e 100644
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
@@ -2085,10 +2091,12 @@ static int isc_async_complete(struct v4l2_async_notifier *notifier)
 	if (ret < 0) {
 		v4l2_err(&isc->v4l2_dev,
 			 "video_register_device failed: %d\n", ret);
-		return ret;
+		goto isc_async_complete_err;
 	}
 
-	return 0;
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
