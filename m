Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A840D36D94
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 09:44:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oa0/3ocbYRBTqKbJoii5C11y78L2pWEGjrQrA9faJI8=; b=ZYeEr/AZSXoSCx
	+x8gn1L6nrHU17ROae55phNIjOKQkYyRArlogWgJFMQu2h+FHI6VwZpLZUqoHwM3nxoIPiNTOzIGa
	f+zj7E+y1RBLt9t2TtRyiVihLpKeZeS5RQCtJnLIUfSaxeNGUOnOQbFpDklSOnsOvmmAlMNJRdWYm
	+EshBs1J/fbEkcnyzyE8L8IBH+onxCjMV8T+gdOa5wavj6vjOIq8Wz+z06OWcagdGG9NAHwXQVp3q
	5RFfsYRq5aNNtaCoIw3eMoP9ErFieaerrLQnrxTGIOIrXGyauzG4Jc9O8/nY1Nz2/wOw0q38Bk/Ol
	TPz/Ozo0ldFDtpFwT5JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYn45-0003HE-Bc; Thu, 06 Jun 2019 07:44:01 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYn3v-0003GA-9q
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 07:43:54 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,558,1557212400"; d="scan'208";a="37787026"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Jun 2019 00:43:49 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 6 Jun 2019 00:43:48 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 6 Jun 2019 00:43:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZxUaxfUF16SrrG6LmI5Z40i9ZX7L0zOteUQtVFuPFeI=;
 b=02pCeqF2o2AX5+D7hb3JeXHuZ5szUDRkRc0PRH2LA6+sv1SvJJCzRfxnGNHxuPpc3TsCtBkHq3tiGIgGEmzjzfdRgMRHW18ZhGtNdlf1nKSxRjKB+tNSkXt9/wfqtJHl8mIrgWbp57OcaO7ktw31RTYsX2PnulD9VDyOirweyec=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1628.namprd11.prod.outlook.com (10.172.38.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Thu, 6 Jun 2019 07:43:47 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::2807:f606:3b7c:cce9]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::2807:f606:3b7c:cce9%9]) with mapi id 15.20.1965.011; Thu, 6 Jun 2019
 07:43:47 +0000
From: <Eugen.Hristev@microchip.com>
To: <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 2/2] media: atmel: atmel-sama5d2-isc: fixed checkpatch
 warnings
Thread-Topic: [PATCH v3 2/2] media: atmel: atmel-sama5d2-isc: fixed checkpatch
 warnings
Thread-Index: AQHVHDuT5UCMUNFMLE2y7UE951xenw==
Date: Thu, 6 Jun 2019 07:43:47 +0000
Message-ID: <1559806756-16683-2-git-send-email-eugen.hristev@microchip.com>
References: <1559806756-16683-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1559806756-16683-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: ro-RO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P193CA0001.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:800:bd::11) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 737dfef9-47be-4e3b-73b5-08d6ea52b555
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1628; 
x-ms-traffictypediagnostic: DM5PR11MB1628:
x-microsoft-antispam-prvs: <DM5PR11MB162869A437DD15C3E1A1B3C7E8170@DM5PR11MB1628.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(136003)(376002)(39860400002)(396003)(189003)(199004)(51234002)(26005)(186003)(2906002)(66066001)(316002)(8676002)(86362001)(5660300002)(8936002)(50226002)(81166006)(68736007)(81156014)(72206003)(6116002)(3846002)(446003)(305945005)(7736002)(36756003)(476003)(2616005)(66946007)(66476007)(73956011)(11346002)(66446008)(66556008)(486006)(64756008)(6512007)(107886003)(14444005)(102836004)(110136005)(256004)(99286004)(14454004)(6436002)(2501003)(6486002)(71200400001)(4326008)(71190400001)(25786009)(52116002)(53936002)(76176011)(386003)(2201001)(6506007)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1628;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fuIVOibtO+umRiPxIociwL/fROSV23VELqYabOofHw5FQGusK+3n9pEUDUpkZmnpurgnETqS4GkgeFsTNHOuq/hC7CcUoiE1bhTKvgrp0XCO3nWgGWPv8h8l4KK3H437Rut8vDfwBDLuH79fvUl+kV3mYliPE5qSPad9sgOiZAQ9hr2jcjqYHWu42WtUCQDEKf2VOS+dzKxXFKR9fzmijvYxz6ABlbwlXF2XX3yzFJeYBW3ZgvInXbU47ojmFKYH93IM0xHCIb1EZ86UsFN67zdw7IPWVwPVBaKMkXWYP1Btaw7sZKWEgE/F0J26YmHCkarx8RxkQRImrlze7dFz1HRcWRcUCesSaLZrLjjza1PWrTVOyeA5fjRDdYgtXGhEYlmTx4NzSO1L+MnANbN7lPPgyx2q1djtuZy9on86e5I=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 737dfef9-47be-4e3b-73b5-08d6ea52b555
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 07:43:47.4331 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eugen.hristev@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1628
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_004351_547371_7E5EE0C8 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Checkpatch complaining that locks do not have comments,
unaligned code and macro reuse of same argument in to_isc_clk.
Fixed them by renaming, realigning and adding struct comments

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
Changes in v3:
- new patch, addresses the checkpatch issues that Hans asked to fix

 drivers/media/platform/atmel/atmel-isc.h         | 51 +++++++++++++++++++++---
 drivers/media/platform/atmel/atmel-sama5d2-isc.c |  4 +-
 2 files changed, 48 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/atmel/atmel-isc.h b/drivers/media/platform/atmel/atmel-isc.h
index 0bd5dff..6ff9fa8 100644
--- a/drivers/media/platform/atmel/atmel-isc.h
+++ b/drivers/media/platform/atmel/atmel-isc.h
@@ -24,14 +24,14 @@ struct isc_clk {
 	struct clk_hw   hw;
 	struct clk      *clk;
 	struct regmap   *regmap;
-	spinlock_t	lock;
+	spinlock_t	lock;	/* synchronize access to clock registers */
 	u8		id;
 	u8		parent_id;
 	u32		div;
 	struct device	*dev;
 };
 
-#define to_isc_clk(hw) container_of(hw, struct isc_clk, hw)
+#define to_isc_clk(v) container_of(v, struct isc_clk, hw)
 
 struct isc_buffer {
 	struct vb2_v4l2_buffer  vb;
@@ -146,6 +146,47 @@ struct isc_ctrls {
 
 #define ISC_PIPE_LINE_NODE_NUM	11
 
+/*
+ * struct isc_device - ISC device driver data/config struct
+ * @regmap:		Register map
+ * @hclock:		Hclock clock input (refer datasheet)
+ * @ispck:		iscpck clock (refer datasheet)
+ * @isc_clks:		ISC clocks
+ *
+ * @dev:		Registered device driver
+ * @v4l2_dev:		v4l2 registered device
+ * @video_dev:		registered video device
+ *
+ * @vb2_vidq:		video buffer 2 video queue
+ * @dma_queue_lock:	lock to synchronize the dma buffer queue
+ * @dma_queue:		the queue for dma buffers
+ * @cur_frm:		current isc frame/buffer
+ * @sequence:		current frame number
+ * @stop:		true if isc is not streaming, false if streaming
+ * @comp:		completion reference that signals frame completion
+ *
+ * @fmt:		current v42l format
+ * @user_formats:	list of formats that are supported and agreed with sd
+ * @num_user_formats:	how many formats are in user_formats
+ *
+ * @config:		current ISC format configuration
+ * @try_config:		the current ISC try format , not yet activated
+ *
+ * @ctrls:		holds information about ISC controls
+ * @do_wb_ctrl:		control regarding the DO_WHITE_BALANCE button
+ * @awb_work:		workqueue reference for autowhitebalance histogram
+ *			analysis
+ *
+ * @lock:		lock for synchronizing userspace file operations
+ *			with ISC operations
+ * @awb_lock:		lock for synchronizing awb work queue operations
+ *			with DMA/buffer operations
+ *
+ * @pipeline:		configuration of the ISC pipeline
+ *
+ * @current_subdev:	current subdevice: the sensor
+ * @subdev_entities:	list of subdevice entitites
+ */
 struct isc_device {
 	struct regmap		*regmap;
 	struct clk		*hclock;
@@ -157,7 +198,7 @@ struct isc_device {
 	struct video_device	video_dev;
 
 	struct vb2_queue	vb2_vidq;
-	spinlock_t		dma_queue_lock;
+	spinlock_t		dma_queue_lock; /* sync access to dma queue */
 	struct list_head	dma_queue;
 	struct isc_buffer	*cur_frm;
 	unsigned int		sequence;
@@ -175,8 +216,8 @@ struct isc_device {
 	struct v4l2_ctrl	*do_wb_ctrl;
 	struct work_struct	awb_work;
 
-	struct mutex		lock;
-	spinlock_t		awb_lock;
+	struct mutex		lock; /* sync access to file operations */
+	spinlock_t		awb_lock; /* sync access to DMA buffers from awb work queue */
 
 	struct regmap_field	*pipeline[ISC_PIPE_LINE_NODE_NUM];
 
diff --git a/drivers/media/platform/atmel/atmel-sama5d2-isc.c b/drivers/media/platform/atmel/atmel-sama5d2-isc.c
index 69faaaf..299243f 100644
--- a/drivers/media/platform/atmel/atmel-sama5d2-isc.c
+++ b/drivers/media/platform/atmel/atmel-sama5d2-isc.c
@@ -87,8 +87,8 @@ static int isc_parse_dt(struct device *dev, struct isc_device *isc)
 			break;
 		}
 
-		subdev_entity = devm_kzalloc(dev,
-					  sizeof(*subdev_entity), GFP_KERNEL);
+		subdev_entity = devm_kzalloc(dev, sizeof(*subdev_entity),
+					     GFP_KERNEL);
 		if (!subdev_entity) {
 			of_node_put(rem);
 			ret = -ENOMEM;
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
