Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D89514234F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:01:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGhy5HmnC9535HsodP9Dc7O9EzG+cAqaqtWGvQNxuVs=; b=CY/11E05u8b0AS
	tbWbSHKljPj84GCryMds1eszMpzN7/XeqDEgiYUDt/b/YiB6EmnJBrxDwejtOvOZz1m/t1lSQXzCA
	tvAViKsJKGSdYhtyrAOv4cicxN6qgfT4hC5PYzuG7SLkaRDlZNsOUS7Qc1rNcNPrjASF5CwSjHPZ+
	SdInjK0GS527DZ1u3wyD80efckS6PHOMPXKxrcc3Ds4VzurFsSZvCRVwWcNfF4LUUDZtXpOWxXN+B
	smw2jDjtYouW0PM4Cdw+FBeAZavkKhPdB6iOG4eOEulEr4rHgp6kXEuJ7woBVjHh0qvjb+t4iOG/B
	3Au6hE4sl6MzjRUO1CRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb10t-0000MZ-JA; Wed, 12 Jun 2019 11:01:55 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb10O-0000AT-VN
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:01:26 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,365,1557212400"; d="scan'208";a="34098083"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Jun 2019 04:01:16 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 12 Jun 2019 04:01:15 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 12 Jun 2019 04:01:15 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VNXc0ffetkG/f3/NLmaiKurBlauEMW77VvM8HBkEo9I=;
 b=dpDer3FOWg+hrMOfB+Aeqavecb+ooB9NpfYw3W43T9jScjV6iOgzgNcnYoOLII5p6/mZw00IhsLT6qNtId/2My57snSxwCjikK0vwLHNTbD66iGKzGzX8eIqGJSQ/tjm3LQEBo5hrgKaCPSYxu+OBZAaToAEMPUwzDM5A3WJmX4=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1818.namprd11.prod.outlook.com (10.175.92.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Wed, 12 Jun 2019 11:01:14 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::2807:f606:3b7c:cce9]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::2807:f606:3b7c:cce9%9]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 11:01:14 +0000
From: <Eugen.Hristev@microchip.com>
To: <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <sakari.ailus@iki.fi>
Subject: [PATCH v5 2/3] media: atmel: atmel-sama5d2-isc: fixed checkpatch
 warnings
Thread-Topic: [PATCH v5 2/3] media: atmel: atmel-sama5d2-isc: fixed checkpatch
 warnings
Thread-Index: AQHVIQ4mHp1M8bBCGk67ILJ1Q++zTg==
Date: Wed, 12 Jun 2019 11:01:13 +0000
Message-ID: <1560336983-16843-2-git-send-email-eugen.hristev@microchip.com>
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
x-ms-office365-filtering-correlation-id: b0abadfa-e627-46a7-0666-08d6ef2548ff
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1818; 
x-ms-traffictypediagnostic: DM5PR11MB1818:
x-microsoft-antispam-prvs: <DM5PR11MB18183937BDEBFE108657537AE8EC0@DM5PR11MB1818.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(376002)(366004)(39860400002)(346002)(189003)(199004)(51234002)(66066001)(14444005)(14454004)(316002)(2201001)(68736007)(305945005)(53936002)(3846002)(2906002)(66556008)(86362001)(256004)(73956011)(5660300002)(71190400001)(7736002)(71200400001)(186003)(110136005)(478600001)(6512007)(476003)(11346002)(6486002)(81166006)(81156014)(8936002)(446003)(6436002)(2501003)(8676002)(66946007)(6506007)(76176011)(486006)(52116002)(2616005)(4326008)(72206003)(36756003)(102836004)(99286004)(386003)(26005)(6116002)(66476007)(50226002)(66446008)(64756008)(107886003)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1818;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aFtSgtcGmiNA+rqQIR42Qlno1eWYojSqelod4aS8R4TNyQ6DVoxKAQiXsxbe/K/CON5LR1BwR0D4y81kTtfbE/ieFgGufp5ciIRDh5St+otHEFtFwThn7Ele8e5vJTeNTanN91uzsScY86plF5KntzbUJxE8NF+wIDSjaQgUbkBsxr6C65go4szXBhCdr7ZfrMneDITAwhcInOhsOMb0m4pFLpQyTUy3R2bqhc6RSA7DmUqjrmiVwvRDdt59A3K1N3oOC9YRsfWN23oh3HkXlhZxJiByXCcEDipUlyBtFNn24kQ/j3Y1EbAwrjUmSE6bWoYsK/LGfD73lG+qhiebceF+kEXZ2ZsDhkVkJckToK0DqTLRD+Ney7lMxLjtPc7E1NDQH4PeEFHdTNN1E3b98XaIXCHsX7LP0WYYIxv0chQ=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b0abadfa-e627-46a7-0666-08d6ef2548ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 11:01:13.9977 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eugen.hristev@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1818
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_040125_047626_1503E6FD 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
Changes in v5:
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
