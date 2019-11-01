Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1586EBF41
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 09:36:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dYgNsdaCEkcBidajsVo4cfsFnrxFVnXSTm7fXgXEosk=; b=eUfEmeAP/id+rp
	YOBMoI4l64yASfDTFVIwyGoTR7I3x4+yAMYViy9UWvrwmOOHiyWpmQCX0Mlwo/RB66cyR5GZEMf9W
	T7r9KIjGfi/x/KyNmPSoYJDYzOqk5m6KPdMlR93PGM2N19LU49lgUi11LtDUmVGNfyX/gX/i9IcWq
	ZEhQGICoKlLRXhKVwMMIOF5q9QteVnzW9oDhXqPUOxilqycMrO2Za0bPywA+FkZSyCaa2wptoHrMW
	ebCTZZLyvH90YtC86CM0xOCfeCWAgz36xoBb5R0rLxBOym6O3O69tc/PbiAWWnkjg7JCC6w3gKkR4
	9Npm3E1l25zvtlkx1WHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSPu-00059Z-4H; Fri, 01 Nov 2019 08:36:22 +0000
Received: from mail-eopbgr10085.outbound.protection.outlook.com ([40.107.1.85]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSPm-00058h-Cp
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 08:36:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YkNecX0BoeTP4LoytKVUeX6jBL7l2rIDYCZUzjkZ9aq1DQr5UIP8AGCbCopUf7CjABniccbek0qgiGoCfI1JMmo4nn7a96L5Z7phrEGPEEUiP3qQhvaRdaeWmBFzVb0MkN3lu4GsqO81ULFR4gY5zR24EEsQ1Iy3on1Pkjs3uCvMH8G5uAFcfoazPoh37e7hALjldFzsB+XYOkboojyG64zWrXZAQruR9x2EucTu5okcCZ/w5ioL8VHUIw5lgeirY7o91rIZ5oiMjErm0MNtp/OhkEsv4UgFDb4OI57os/Go6p2wqb2tXkzc0cZYBgOdZ2ZJsdiMvgi7x/ZPrx4VMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WL1A5fcxcsaLb327ePmqfW3R4XxlouLMMh5f/CNWngw=;
 b=QCRazVLlFaH36bdNLlxwQii4v7kMYZA91CPGNWhZi2b7M4s2j0udkEhliRpIw476OgHaqAk0vawtb0sRNiv6X6TCRovKFFEraJ2YbadVjebLI+8dZwC1cbus4zm8KqcN2dBXV47Bhr8IPps+TCkW6WwXIJOZnRQU9y8cVaXGtSO+cndCmHmhF2u8/lCPp+KmMPbDso0WPI/QQssjoilwlW7HPqQawqfKyCIGk65R/TrABCe4h/mlDTWepyiPBJ3MlmBbUyO1YepuOOxhC5RiUpiF+IeFh3Q+8xM+jkodAnHUqhEccX7ASv2JCvbuZzUUasP4dPZoLogeYeyBT1MQfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WL1A5fcxcsaLb327ePmqfW3R4XxlouLMMh5f/CNWngw=;
 b=S5ir6G6/0Do9MMarDtqKFyoL8DB7S1BhNeHhrP+TqbqcTweudWVlofBV4vZNTl/qR3ydigRyks1dt0aNS91msZWLnhjwMs8L874BRb5O+jJIb+MWEmnf5BDjW4Pr9Py2X2h42lfEq1bVRAKOGF8u2HTNXGhJz+Ze8iKa5gDMu0U=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5948.eurprd04.prod.outlook.com (20.178.106.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Fri, 1 Nov 2019 08:36:10 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679%3]) with mapi id 15.20.2367.031; Fri, 1 Nov 2019
 08:36:10 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "will@kernel.org" <will@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: [PATCH V3 1/4] docs/perf: Add explanation for
 DDR_CAP_AXI_ID_FILTER_ENHANCED quirk
Thread-Topic: [PATCH V3 1/4] docs/perf: Add explanation for
 DDR_CAP_AXI_ID_FILTER_ENHANCED quirk
Thread-Index: AQHVkI9p4K7tGFD97Ee5sgRPKHNZiQ==
Date: Fri, 1 Nov 2019 08:36:10 +0000
Message-ID: <20191101083317.29510-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18)
 To DB7PR04MB4618.eurprd04.prod.outlook.com (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b1e88953-3c66-4c53-3ef2-08d75ea68bd6
x-ms-traffictypediagnostic: DB7PR04MB5948:|DB7PR04MB5948:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5948F50B4FF681E25916F271E6620@DB7PR04MB5948.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(136003)(396003)(39860400002)(346002)(189003)(199004)(54534003)(478600001)(2201001)(66946007)(26005)(4326008)(3846002)(25786009)(186003)(5660300002)(486006)(2616005)(476003)(7736002)(54906003)(110136005)(86362001)(2906002)(256004)(6512007)(71190400001)(2501003)(8676002)(66446008)(52116002)(81166006)(66556008)(8936002)(316002)(36756003)(6436002)(305945005)(50226002)(66476007)(64756008)(6486002)(14454004)(1076003)(102836004)(99286004)(386003)(66066001)(71200400001)(6506007)(6116002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5948;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JWLzngMmrcIPLHoKT4iOiBZoubbjufJZQlJn97pX+iwxwaskXVYBOohbwI4mSYbeY9QXt5hci21XMEstAaeB/DkunAt+0pLyC6mwmZURzZr4TrnDsTbGO4F/5fltRZ04c2kJPzqx7cBjO49EBuJeYpPGWtsYNWCkN8siO5dfwbOa3MMV8o1g1bHzVA7SBjC90Bo5pmlODW0g5RJ0xsU68rRvBiXI+E0PEN8iFfFP6b2emE0lZjqAx2JFG3dEQai5y3vxzlxSkaXg63t+HSi5bSkTcL44IEfBwMkNNpOyJRqx9EOsBQCzwx1/YW3ojAcilW4GGAsPcQ/FAi3/KohVHtCpDO7LNZ0xdE+7bHQK5gqbCoiWqwj63H7RfGPoM7xdPLtZiFB5M56yw8QBdr1uVtfF7UqT+rGxWmFJQ2xGNMK0zPWUnHOEmkZn9rs1KcuQ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1e88953-3c66-4c53-3ef2-08d75ea68bd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 08:36:10.4417 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mx4RKo01LgGqKmdCk4oGFbBx1hB8vmrr4bOKVO+uOQQE+FbVnjwi0e1+MxParr266W4qmx8I8kAQytiAgn+w/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5948
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_013614_438780_EEE68E8D 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
V2->V3:
	* only need select this enhanced quirk if HW supports.
---
 Documentation/admin-guide/perf/imx-ddr.rst | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/admin-guide/perf/imx-ddr.rst b/Documentation/admin-guide/perf/imx-ddr.rst
index 517a205abad6..d1347928ac39 100644
--- a/Documentation/admin-guide/perf/imx-ddr.rst
+++ b/Documentation/admin-guide/perf/imx-ddr.rst
@@ -50,3 +50,11 @@ in the driver.
   axi_id to monitor a specific id, rather than having to specify axi_mask.
   e.g.::
         perf stat -a -e imx8_ddr0/axid-read,axi_id=0x12/ cmd, which will monitor ARID=0x12
+
+* With DDR_CAP_AXI_ID_FILTER_ENHANCED quirk.
+  This is the extension of DDR_CAP_AXI_ID_FILTER quirk which is only support getting
+  bursts from DDR transaction, i.e. only can get DDR read or write requests. You
+  can select DDR_CAP_AXI_ID_FILTER_ENHANCED quirk if HW supports enhanced filter.
+  Enhanced filter means that it can count bursts and bytes from DDR transaction
+  at the same time as it implements another set of data counters. DDR PMU driver
+  always return bytes for enhanced filter due to it is more meaningful for users.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
