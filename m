Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B9242D6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 19:26:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sK+6NDb2cL2sbhh4qylrzDk5sSRIJKCpBOAgiHY8KJo=; b=Y8lH29C2nAp/e7
	1bqxonth8BKRMTukz958BReMT5j15Ee0iW8pf8lVdDK1oaWQgfGSQwBj2EgGMz34JscldvdssxaAG
	N3uFaU4fjgnMBK6v1qvy11NPQVrdk0RSfdIQ0oHo8W+PJmCZb//R78umil7KKWuLGrFVUMdvUQw/g
	o8JtRG0ukAMGN6nCRz4xBVFcUvRONEuUToudalQL4EhB5JztF12eAPF0+Wt4wi+Rgb5CR2bKNAtNh
	kK6WFGHQQv0OpEvVKq1v+l4ArrrqKIGH4chp1DwvGFbtD4L3+fSwNCvQGDII78syQu/j1xCaKI3kS
	emSZq11koXx5e4QepJaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb719-0005YM-40; Wed, 12 Jun 2019 17:26:35 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb70v-0005XM-RH
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 17:26:23 +0000
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
X-IronPort-AV: E=Sophos;i="5.63,366,1557212400"; d="scan'208";a="38684018"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Jun 2019 10:24:58 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex04.mchp-main.com (10.10.87.151) with ShadowRedundancy id
 15.1.1713.5; Wed, 12 Jun 2019 17:23:35 +0000
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex04.mchp-main.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 10 Jun 2019 00:33:22 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 10 Jun 2019 00:33:22 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nT/RvVOS7HfJX2mL2DWOBOc9Y3YwqCH10I3oKmMPLFg=;
 b=iWjKQPuzh+1OnHuzGq4a+p03oE4pJV32+/M3K0SI82oB621G55DpS7h7ENQDxbvrrSSbWre0i0IArAbV1Q5MQakzVtLdCJwkkcKT6GIiSpksNu2ue2r4vqEqxLbGeMmFYRHD9hWMRZR07eYBfosDNwx/6K3IgMr8teDIZHDFyRk=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0057.namprd11.prod.outlook.com (10.164.155.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Mon, 10 Jun 2019 07:33:19 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::2807:f606:3b7c:cce9]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::2807:f606:3b7c:cce9%9]) with mapi id 15.20.1965.017; Mon, 10 Jun 2019
 07:33:19 +0000
From: <Eugen.Hristev@microchip.com>
To: <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <sakari.ailus@iki.fi>
Subject: [PATCH v4 2/2] media: atmel: atmel-sama5d2-isc: fixed checkpatch
 warnings
Thread-Topic: [PATCH v4 2/2] media: atmel: atmel-sama5d2-isc: fixed checkpatch
 warnings
Thread-Index: AQHVH17GIKx4fa+Jn0q5K1bk3HE+OQ==
Date: Mon, 10 Jun 2019 07:33:19 +0000
Message-ID: <1560151741-2574-2-git-send-email-eugen.hristev@microchip.com>
References: <1560151741-2574-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1560151741-2574-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: ro-RO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0901CA0102.eurprd09.prod.outlook.com
 (2603:10a6:800:7e::28) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f878d904-1722-4c5c-47b8-08d6ed75e8d8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB0057; 
x-ms-traffictypediagnostic: DM5PR11MB0057:
x-microsoft-antispam-prvs: <DM5PR11MB005799BE2C50005B25D9091DE8130@DM5PR11MB0057.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0064B3273C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(366004)(136003)(396003)(376002)(51234002)(199004)(189003)(86362001)(3846002)(486006)(107886003)(2201001)(6436002)(14444005)(25786009)(6512007)(102836004)(6116002)(6506007)(386003)(256004)(66066001)(8676002)(110136005)(81166006)(476003)(6486002)(81156014)(76176011)(53936002)(316002)(64756008)(66446008)(72206003)(478600001)(11346002)(8936002)(99286004)(26005)(66556008)(446003)(66476007)(66946007)(2616005)(73956011)(4326008)(71190400001)(52116002)(2906002)(36756003)(71200400001)(50226002)(305945005)(2501003)(68736007)(186003)(7736002)(5660300002)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB0057;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 30LeaC8cXljPF6E2dyac45o9pStcdWc/zcbZU7aQKM21hGnfWyRwpx7bOhfTGgwWuQOEl6VWIY/sVVpJ5VY6cu95wDwcbEvNoB7t21pQ+6ZbBHdXNx8D1+ORrYoGKARKgaucZ8/tNWYi2/lwbM6vg2igHkudsnhlcV5CIPTqlxBi7ISx6aARjCKKGlG8kgdlbRVrHjkTZmrggXv2B2Yud95/AxGMpdv6VKZXAKvemFKTgr9k3T+UiD4DAFEXGbEwWnq3d4yZnjHtHSzb8h4eYOhTBXjZwWizsFL7MtQWyclS/gkUMue4RKIMXiQaVDoTi9G9zSFrYBOtL2ltbx47AMr0QyjHSLsAwCrFeGxUXBrSBD515oQL0E3LwLK1c14/89cR9ff5ig2Cbl6z5g+sshWvDgmH5iiAAohQLJT30Yc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f878d904-1722-4c5c-47b8-08d6ed75e8d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 07:33:19.6261 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eugen.hristev@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_102622_025031_291D3EEC 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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

Checkpatch complaining that locks do not have comments,
unaligned code and macro reuse of same argument in to_isc_clk.
Fixed them by renaming, realigning and adding struct comments

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
Changes in v4:
- s/sync/serialize as requested by Sakari

Changes in v3:
- new patch, addresses the checkpatch issues that Hans asked to fix


 drivers/media/platform/atmel/atmel-isc.h         | 51 +++++++++++++++++++++---
 drivers/media/platform/atmel/atmel-sama5d2-isc.c |  4 +-
 2 files changed, 48 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/atmel/atmel-isc.h b/drivers/media/platform/atmel/atmel-isc.h
index f633e10..5be5b09 100644
--- a/drivers/media/platform/atmel/atmel-isc.h
+++ b/drivers/media/platform/atmel/atmel-isc.h
@@ -24,14 +24,14 @@ struct isc_clk {
 	struct clk_hw   hw;
 	struct clk      *clk;
 	struct regmap   *regmap;
-	spinlock_t	lock;
+	spinlock_t	lock;	/* serialize access to clock registers */
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
+ * @dma_queue_lock:	lock to serialize the dma buffer queue
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
+ * @lock:		lock for serializing userspace file operations
+ *			with ISC operations
+ * @awb_lock:		lock for serializing awb work queue operations
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
+	spinlock_t		dma_queue_lock; /* serialize access to dma queue */
 	struct list_head	dma_queue;
 	struct isc_buffer	*cur_frm;
 	unsigned int		sequence;
@@ -175,8 +216,8 @@ struct isc_device {
 	struct v4l2_ctrl	*do_wb_ctrl;
 	struct work_struct	awb_work;
 
-	struct mutex		lock;
-	spinlock_t		awb_lock;
+	struct mutex		lock; /* serialize access to file operations */
+	spinlock_t		awb_lock; /* serialize access to DMA buffers from awb work queue */
 
 	struct regmap_field	*pipeline[ISC_PIPE_LINE_NODE_NUM];
 
diff --git a/drivers/media/platform/atmel/atmel-sama5d2-isc.c b/drivers/media/platform/atmel/atmel-sama5d2-isc.c
index 93fb839..127e79c 100644
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
