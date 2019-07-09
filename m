Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6763638BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 17:35:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qGBVVLNZWH4pLk6wzDAVAHALei0S2a6qrL1N34LpYPQ=; b=YZKvsaNXO50QxW
	HoXs7DY+zqovSb+4lmHxTi//kF4oo6bo8wMLMtoNbvzoRZl4DsWc33PWeUoE5KYEMQ01Q3f6svMqZ
	UGxqKTncBuZT3Gfeahl+sbU5uMLTNLaDAtuCOc5pxlTIs5C5SQad/eRd7NUfz+yjtFvrzk4TjItb+
	O069avDnsN5YHzktuKREG4K5HSdKms5cS93k5minSZ+Kk3TJQWXoViwpaiErfrjE1aNeFKBXey8Gw
	0VWsVqsXzIL2k+XAlDYGxg9KekJY7ZrXoPqra5IpX+xZq+RxnyuPv7W/PPo8Hz+tt5IZy816DLFqB
	8eARzod62UcFqx1xkf1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hks9a-0006co-RZ; Tue, 09 Jul 2019 15:35:38 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hks9K-0006aw-U6
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 15:35:25 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Joshua.Henderson@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Joshua.Henderson@microchip.com";
 x-sender="Joshua.Henderson@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Joshua.Henderson@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Joshua.Henderson@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: k73VEKjPVQ7elR9L+HFBMp4PZdQ++W4HylrHJvD40VJhzhIfH64jt5ApTrXTaNsRUBU1QXWeRU
 lfwIH1u/1cOIdX+p+CCG8mvWFZvH3GmxUrdTu/WWamkcjUb31iGyjGV7ZB7pz+8OsSr60s56nJ
 YRWkucZT3c2CyLj61msidMkUBzI/b6Je9xGBI+Ef4vogan+yVtfsBf3KYzwnnUhQGFBD8Kp81g
 BTRz3uSfMRVBQIywCUI+e+6NS4FsR+jZkbs0+5PGbBCOVhIjw1HG9YDx5B213KRqrtTNKa87Po
 EeI=
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="42015352"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jul 2019 08:35:15 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 9 Jul 2019 08:35:15 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 9 Jul 2019 08:35:14 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lhx64/kt1EPO29AOpPoX5HrQ1mdPrjVrcvtbOT88JiE=;
 b=r+6UMSl3MbDaqZckpjEhLf6InorgCGtAyKhGinOKP1mTKfzMVsJa9mtkTo5un/iqJkz7cf5hVWDohbDzHmrGMD448YS41319/MT7jL2RWDIm+1GqKijdHJbiaIwJvpeux81kYVGMg7KrrL6r2gjDOH9fjLKC9oHcq8N9CHboxDQ=
Received: from MWHPR1101MB2079.namprd11.prod.outlook.com (10.174.96.9) by
 MWHPR1101MB2255.namprd11.prod.outlook.com (10.174.101.151) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Tue, 9 Jul 2019 15:35:12 +0000
Received: from MWHPR1101MB2079.namprd11.prod.outlook.com
 ([fe80::7408:6501:d238:63cd]) by MWHPR1101MB2079.namprd11.prod.outlook.com
 ([fe80::7408:6501:d238:63cd%9]) with mapi id 15.20.2052.019; Tue, 9 Jul 2019
 15:35:12 +0000
From: <Joshua.Henderson@microchip.com>
To: <boris.brezillon@free-electrons.com>, <airlied@linux.ie>,
 <Nicolas.Ferre@microchip.com>, <alexandre.belloni@free-electrons.com>
Subject: [PATCH] drm/atmel-hlcdc: set layer REP bit to enable replication logic
Thread-Topic: [PATCH] drm/atmel-hlcdc: set layer REP bit to enable replication
 logic
Thread-Index: AQHVNmvlXoLVjRxOEE2KayDJ7WC1cA==
Date: Tue, 9 Jul 2019 15:35:12 +0000
Message-ID: <1562686509-8747-1-git-send-email-joshua.henderson@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0082.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::23) To MWHPR1101MB2079.namprd11.prod.outlook.com
 (2603:10b6:301:50::9)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [198.175.253.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ffc36d22-1cf5-434d-3d8f-08d70483085e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR1101MB2255; 
x-ms-traffictypediagnostic: MWHPR1101MB2255:
x-microsoft-antispam-prvs: <MWHPR1101MB22553B0BEC02A649EEFE9C379BF10@MWHPR1101MB2255.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(136003)(396003)(366004)(189003)(199004)(6506007)(478600001)(110136005)(81166006)(81156014)(54906003)(386003)(14444005)(256004)(6486002)(6512007)(6436002)(476003)(53936002)(72206003)(8936002)(52116002)(26005)(8676002)(316002)(102836004)(4326008)(36756003)(186003)(5660300002)(66446008)(66476007)(73956011)(66946007)(4744005)(66556008)(6116002)(305945005)(64756008)(3846002)(7736002)(68736007)(486006)(66066001)(99286004)(14454004)(71190400001)(71200400001)(2906002)(86362001)(50226002)(25786009)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR1101MB2255;
 H:MWHPR1101MB2079.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jaU/+ij4cMDBDUmyxbZPODO9nRFbGFTvjoX/ruJRDqym0MAcX8ysUVjPHMz0uiY5pBEE5Nsto1/5/zIYllEoQQjPZs4v0NBfrc7Qw7+Og1LJIgbftKcE43XrSGPmn1FfYfcpwxoKi/0zNSIAPSgGlnSOCYnJKt8MRcnmPUOIkNZusXfgsVt+cY5k2DNUDvNmKeAncxaUenFTmQYmxk5K2FloQyyW+tg06NSJTGEy2eafjJY4N/+6dNotBnadq4WUvcbRq7kG/UW8Y23zgrH3DBIfJsj1AirSyO27SV5qpooV8llXp/6TKJAsDnV8HwzuwKCZnkXTpXsvpZq4dKPXQHXkio3ft+Ns0kMWArhc844BsV12p+clZQOhCfsvFRJi4DD1vcoYtZgUQPihpV0ftLy7hzAfAQs/A3DXS28+AwU=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ffc36d22-1cf5-434d-3d8f-08d70483085e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 15:35:12.5786 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joshua.henderson@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2255
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_083523_093599_0E11EEF5 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This bit enables replication logic to expand an RGB color less than 24
bits, to 24 bits, which is used internally for all formats.  Otherwise,
the least significant bits are always set to zero and the color may not
be what is expected.

Signed-off-by: Joshua Henderson <joshua.henderson@microchip.com>
---
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
index eb7c4cf..6f6cf61 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
@@ -389,7 +389,7 @@ atmel_hlcdc_plane_update_general_settings(struct atmel_hlcdc_plane *plane,
 	atmel_hlcdc_layer_write_cfg(&plane->layer, ATMEL_HLCDC_LAYER_DMA_CFG,
 				    cfg);
 
-	cfg = ATMEL_HLCDC_LAYER_DMA;
+	cfg = ATMEL_HLCDC_LAYER_DMA | ATMEL_HLCDC_LAYER_REP;
 
 	if (plane->base.type != DRM_PLANE_TYPE_PRIMARY) {
 		cfg |= ATMEL_HLCDC_LAYER_OVR | ATMEL_HLCDC_LAYER_ITER2BL |
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
