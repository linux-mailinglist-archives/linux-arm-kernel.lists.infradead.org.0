Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C48B2424E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:00:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=78a4AiEJ9yn1BEIsM7ZmAPTssj7leVLH/fnagnbt/F0=; b=tYUZ0kSm2eqL19
	hZS9e4VJOmuDTr+6XqaVlQsiXaZCYabpxXoq2pr9UgzHM6cuSYQFxHz2qnV9H5Whoo2FMFXpwol2Y
	iRBPKKJDlqg8kra6D36Rv/1JLTWWJvm7Tph3yJHwo44UPhsNCbuJN0TkV1FOm19dpBZsOzkaM7c/g
	IgHPOPOg4Jy+4Y/MekeqBioPkED918CQMeMzHF5YHrl0WW9fpgP3q1ppvB2OeZOK6ZjVIGJtZUGHB
	korljnq38o03Df6BCltTHRHAV35bFz7RSHn69upyRUnJ40vXfM8aquyR/3I+AQXpeavsB8I9FW+Bh
	XT/VZVPwD6A/MRVYRNLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1vz-0003nQ-T2; Wed, 12 Jun 2019 12:00:55 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1vn-0003cK-9j
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:00:45 +0000
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
X-IronPort-AV: E=Sophos;i="5.63,365,1557212400"; d="scan'208";a="37199916"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Jun 2019 05:00:41 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 12 Jun 2019 05:00:35 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 12 Jun 2019 05:00:35 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3YuRnxTs0RDJUJXBj9wsuq+Sa1JvkAORhgjlpvlf3M8=;
 b=kE2abQcrQHD/FgxdrMx5md0ndL1r1e3/S8pHhHYfsR3PY8971Gw7zBrbOzkaKg1X9OYGSClg0r0wKHhEnOIFJczAs8L8EPC6VB3pzxvAbZ3Wo2LuRGFlIFfl+QcK9I+2+ubOs6fOWH/4AqrI+2Shd9L4JFZW/x0yaGZJbi77EQI=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1497.namprd11.prod.outlook.com (10.172.38.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Wed, 12 Jun 2019 12:00:34 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::2807:f606:3b7c:cce9]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::2807:f606:3b7c:cce9%9]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 12:00:34 +0000
From: <Eugen.Hristev@microchip.com>
To: <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <sakari.ailus@iki.fi>
Subject: [PATCH v6 2/3] media: atmel: atmel-sama5d2-isc: fixed checkpatch
 warnings
Thread-Topic: [PATCH v6 2/3] media: atmel: atmel-sama5d2-isc: fixed checkpatch
 warnings
Thread-Index: AQHVIRZwiWhlUaIZ7EGWGzm1FQXXQw==
Date: Wed, 12 Jun 2019 12:00:34 +0000
Message-ID: <1560340575-21021-2-git-send-email-eugen.hristev@microchip.com>
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
x-ms-office365-filtering-correlation-id: 49fb159e-7033-428d-f551-08d6ef2d92eb
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1497; 
x-ms-traffictypediagnostic: DM5PR11MB1497:
x-microsoft-antispam-prvs: <DM5PR11MB1497F4772FA80BDB214546C3E8EC0@DM5PR11MB1497.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39860400002)(396003)(136003)(366004)(51234002)(189003)(199004)(66476007)(26005)(73956011)(66946007)(66446008)(66556008)(53936002)(64756008)(107886003)(4326008)(5660300002)(110136005)(316002)(6486002)(14444005)(71200400001)(25786009)(99286004)(256004)(2501003)(66066001)(476003)(6512007)(6506007)(71190400001)(86362001)(6436002)(2906002)(52116002)(6116002)(446003)(386003)(11346002)(186003)(2616005)(3846002)(36756003)(2201001)(486006)(72206003)(102836004)(478600001)(68736007)(8676002)(14454004)(50226002)(81156014)(81166006)(8936002)(305945005)(7736002)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1497;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fdR+WV8AEVP8oQX82nG9tJ06LlfFJ4y+5Py8TQTY9Hq43Z7PHAGH+eFos0dCAnfvNDJgu8Tja/2DloxiMCe2mdrtDdKRYtapJPEP+86moYofg/hRDdLeVplqFS2BxsoArq8rTUZRjEfSeC3ewlIWK/rcuDg/IsVjmw1FY8Mb6SEUb1UJYo+9VRv4gxJdaZisd6y3oqsiAoScKsQsutVWXRFCLtv/p0WObdEBdmgrDQL+zL/YaDCQTFm3aY8HZdwc2aBGv3uabrHH1e3zwN5a+RAM0w3vlXjZfK/8YtqkSspmhyhpxKnSIwEtydRt1H5hpxgVKDxb4q1+HKq3b7yDD2a09WaZnYUE7FRGD47900CH/mqI1Gwq6ET/s0+HXLRKM06/YosD4uE9AcpoQxLLwVnIG96bhJPIyzrQF2f1F8k=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 49fb159e-7033-428d-f551-08d6ef2d92eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 12:00:34.0370 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eugen.hristev@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1497
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_050043_460702_0510B604 
X-CRM114-Status: GOOD (  13.91  )
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

Checkpatch complaining that locks do not have comments,
unaligned code and macro reuse of same argument in to_isc_clk.
Fixed them by renaming, realigning and adding struct comments

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>
---

Changes in v5, v6:
- none

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
