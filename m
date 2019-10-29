Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0B4E81CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 08:06:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g5fnwxAVAiPIzG6VgPCIJZ2citMPHq6T4zHZhSzx2JA=; b=kIC3/y9xd9h6l1
	YVyzPQyV+dzWLs2hQa/V+Qz4nxjizqPvN35uy8Phph3CJZM9yC5hVF6POKfx1Eag9bFP/tKFrVatB
	CGtDZy1MkfmR5n80nkrSSE/jf9svzwj54fdq6JWgiCQAYd3GOBw/nkxuw3V9kZWpw6cJ8BnLXQhg4
	GJIcAHRtz3bFbwmFTRrn3MSZuS4BJ3Ye+5RLyYEByfv0zJBpuLUzA6zLbzjEbVB/kEeSySWuW+g39
	Gm2tvBBrPfVJe+mbUcV9ZCb0rqpkIyYWvjNTnn6CqLwJJDiYkWXjCSk/8X/xobyA6PeHQ0TRbqWlM
	ehQTNh5JodEBnHdsUhmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPLaJ-0005Am-9Z; Tue, 29 Oct 2019 07:06:31 +0000
Received: from mail-eopbgr50044.outbound.protection.outlook.com ([40.107.5.44]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPLa3-0005AA-MO
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 07:06:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FKpFtmaF38CB9pwyCw60/fN/P77DRV5jydQtUu5KdjKy9vR2rw04PbzW6/UulmDmT4I8pvk4TTwqRj6dPYRRG8+EwbFGLBrYo2AWOZRq+0V+RboRaCvFqUnHiKapaU95CR/apEvvXWSuhkHEMbLAZjZWty+7aalEQwhCoB9VeiB40ee7Zn7oZlFn9DzEgC0V+U4IYWLSNGyaQaun2O8z+LZmhve8Af5SHnB0B3WSM8cH0f1RNzd7OZedHoCrYJJ2SI0jp1MqnG8JIFDGWkcmYNRgjfIRRPPNAscsaLHVAgzydqPS4lP2c7pQ63wyLCDgTYWWQFRz2/35ZP8TXlCAPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fv9DIGwq/wpFiu11ehQ/7kTNUDJ4l760XJNDYmobGl8=;
 b=HKtfieA5nzPVPN39FN3+9BIBT0OaljzwOi+r/wGoOXuw9UUaBtwYqRVkF4B54X8KLN1AUOojPtJhHhgLWLMFtXpIlACVMUvNrWS3Vx1rXCZXfCmMmHXV1Yy9Vy17MJdLq5cm7twjekBwWLsVi+jw2Ppme9DPUb8wOTL+W97mTrixMl0au4Ftusu4CvhmmRux3HeANOLWkzstwtVYdHZ3civ2dTiIsbrijh5l2lnaTbwoNRVqlfFjJlMkrNCUfBD66qe27RCs6WpVPKAJ0K93xdbnWf7UJkxSouvmQDPIkrMd6Sq1RU1otBlEre8rTEh3gn0i8VF1zfyGj/iHGT+JOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fv9DIGwq/wpFiu11ehQ/7kTNUDJ4l760XJNDYmobGl8=;
 b=HjaOPb1tcA/xlKTCRUqaFkhijcqHMtoXJLZtMFpPqdg0NG7AUP9Z1pl8XbfWVJYVUmLxG7lr2FAuw+JOe+OWLYtHhCaYXxCKqNRCfGVbUyXCo+FoDgKth52Vis9Aqmmeje6vMs1jdfabY4XHcHxw9q8DLl8oZSu0fQkitaTD+mU=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4218.eurprd04.prod.outlook.com (52.135.128.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Tue, 29 Oct 2019 07:06:12 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679%3]) with mapi id 15.20.2367.031; Tue, 29 Oct 2019
 07:06:12 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "will@kernel.org" <will@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: [PATCH V2 1/4] docs/perf: Add explanation for
 DDR_CAP_AXI_ID_FILTER_ENHANCED quirk
Thread-Topic: [PATCH V2 1/4] docs/perf: Add explanation for
 DDR_CAP_AXI_ID_FILTER_ENHANCED quirk
Thread-Index: AQHVjidYUN4624ydXUufacyI1IW9CQ==
Date: Tue, 29 Oct 2019 07:06:12 +0000
Message-ID: <20191029070314.16719-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR03CA0120.apcprd03.prod.outlook.com
 (2603:1096:4:91::24) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7488da21-cf8b-435f-4fce-08d75c3e7b37
x-ms-traffictypediagnostic: DB7PR04MB4218:|DB7PR04MB4218:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB42186CA2E4F07DFAA897FC46E6610@DB7PR04MB4218.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(136003)(346002)(376002)(396003)(189003)(199004)(54534003)(6506007)(3846002)(386003)(6116002)(66446008)(26005)(186003)(86362001)(102836004)(316002)(71200400001)(486006)(52116002)(2906002)(110136005)(71190400001)(54906003)(2201001)(14454004)(8676002)(4326008)(81156014)(81166006)(6512007)(2501003)(66066001)(1076003)(478600001)(36756003)(8936002)(66946007)(64756008)(66476007)(66556008)(305945005)(7736002)(5660300002)(25786009)(50226002)(6436002)(2616005)(99286004)(476003)(256004)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4218;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 64B+UcidGe8VL2yo28JRpUd26sFKVFbS3Dp9nuK/b2NzPj32F/cYzESxRY2q0djQBFtWEDvO/FXu+bntk6aFrQBeyOftbKu7hW8QJZ06UYeAG4WRvQp8XHsx/Dh4q7uxaWzuvKBSPpaIxZy98eBqeJcDfYtNeYKZ03/zsc7bW7zYvyoNt9cP0mFGaxJ0LAHOVOtAi+/CBz9mkOm3cYugFOGvifM3g7Pw/PGNcaZzBcc9GVJPKBVLjymPeDZatyuQKr69A+xwXa70hbBajXjy8AItVUGQfaDKMxRmO5MQHrar/ffBOutNS1IAqeOBsHQxaKdjSRRTUhP7WAYf3j6rtHAxHOVPZv2actaNV7Id6IjWyAJpwGLlDhSjeGhcIVAgd9hLzzZ/tRJeQZlek94jQ6B7emkfqqoESoR878p0o8o3d3/ksOfFVUQWSdXUta2P
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7488da21-cf8b-435f-4fce-08d75c3e7b37
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 07:06:12.4732 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zIry659g1rCUzqB039aGrGtdWaludHIFTXi3g8vjYDvnTsBlEavtEIf2AEkkNcu7EuTdFmP5ZHwMKQJfCnc8ww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_000615_735484_044F4486 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.44 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Frank Li <frank.li@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Joakim Zhang <qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add explanation for DDR_CAP_AXI_ID_FILTER_ENHANCED quirk.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
ChangeLog:
V1->V2:
	* improve the context a bit.
---
 Documentation/admin-guide/perf/imx-ddr.rst | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/admin-guide/perf/imx-ddr.rst b/Documentation/admin-guide/perf/imx-ddr.rst
index 517a205abad6..b971df3117ba 100644
--- a/Documentation/admin-guide/perf/imx-ddr.rst
+++ b/Documentation/admin-guide/perf/imx-ddr.rst
@@ -50,3 +50,12 @@ in the driver.
   axi_id to monitor a specific id, rather than having to specify axi_mask.
   e.g.::
         perf stat -a -e imx8_ddr0/axid-read,axi_id=0x12/ cmd, which will monitor ARID=0x12
+
+* With DDR_CAP_AXI_ID_FILTER_ENHANCED quirk.
+  This is the extension of DDR_CAP_AXI_ID_FILTER quirk which is only support getting
+  bursts from DDR transaction, i.e. only can get DDR read or write requests. You
+  need select both DDR_CAP_AXI_ID_FILTER and DDR_CAP_AXI_ID_FILTER_ENHANCED quirks
+  together if HW supports enhanced filter. Enhanced filter means that it can count
+  bursts and bytes from DDR transaction at the same time as it implement another
+  set of data counters. DDR PMU driver always return bytes for enhanced filter as
+  it is more meaningful for users.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
