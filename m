Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 524F2E81D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 08:06:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2465HYUt+wIsAZJxo56pxGIalXuc/0KAm49by7qNDc=; b=tgcXC+DZxUQKhg
	iJco9ttD5AdGB/PZaTmMxDUjerdwvPlk4rW56DeZM2f68CZRCTkz60A+RTQJHfUkBZJ2tOew/fR/r
	uT0zgR5AbPxQjGqU2JDauB6Jtz8fBufUv4kAZchRtFAicm2BrullGA7heiytBt2568UCpeo3giAz/
	rxRoNKN+4JVuOd+zJGKCWsTExy/iz2QAMW0GPV03gDEQwlloeorvgc5cWwTmB/r/Xwl5HoIMDFQVe
	m4uNb9kGVYtvhDfQchgz7UXyy19OHrNJJp7Ecjj6J4sT3Z4LJolls9hXFQcMT2DQoEaWX4+xmIOwG
	Wtf4Jy+Kjy9p0WraQfrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPLac-0005N8-KJ; Tue, 29 Oct 2019 07:06:50 +0000
Received: from mail-eopbgr50044.outbound.protection.outlook.com ([40.107.5.44]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPLa5-0005AA-Do
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 07:06:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CTv7Hj4CJttZRJbP0X7HKwWIlylTNRHNJmwPSBEacXfyN+xeS+T29G9q0HW8rknfMkpQ31YltTPLUya9WLmtAv9MD61AajwCK3cx9k+8G9/OPZajyZvP75BiA0mUIevNzSA2+WBruBKyP5N+AXpq0E5slnnurtzBiXntlFWd3vEIPhZ++4a2UPTp5Qw6fJEsvHtZWECIHZQiWW+B0701fRZILzkor5p+yqDa9Rz/Ua8+fbYVXe+nDnaTLQ8CUZlKJ+TtjBhRpXMxDkFrDvONuZLEt88/wnfNnaz50JvPvptqn/JMQNI6iAnYcHTI5A6jfNQwu0Soot/H6ujeALCW1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6E5oITvQL6hYhTrbzL4zUPSbeqjp2+wa4uRRfN+CyLk=;
 b=QXgT2VlgPDrZtTAW3Fhe73cp/KrwUqUWgo18JTrkdVHRjCRMQPqrhWpb2W3KH5OY2DXRtVnv/ZkAoyoVrlFXzlThNjrL2fu1z0ls1hiocTHxdLhigVGwhkzqvhizJiX+HwptRAHVoD77EvCBsIBiPFGEIO4dEELggG5+zldbxt6cA3LzwHv+xj3MB9USiK6l5qbGhS0QgAkSNHvfxZ4gg3SUgsdkInQiMQf8DaGwVN66pQbDc/oznYVUMzZdvEa6auAjs7LYeRExGPkNs49vachJ4PTO75Kw9YK9yg/MX4L0vy9mbCSpQ5JWyCkGi4rdWDvjCqu23qu3ChmLNWVxKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6E5oITvQL6hYhTrbzL4zUPSbeqjp2+wa4uRRfN+CyLk=;
 b=hAUlVGCFkYZ0uSWSHpQH7v9EKrC4ZA64YkfGV/LASJVRhXRd6TBQK1p8BMvNrnKu0uXa/chbGNOcsgI1o+jsBTwSdSXtC4Pp7AByknPhkms+/LHM2hp/M3QMQhOyvROtyV/Ex0kARU3N98rYELsud9YnVRHYyIHpOfE50Vgnpkc=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4218.eurprd04.prod.outlook.com (52.135.128.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Tue, 29 Oct 2019 07:06:16 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679%3]) with mapi id 15.20.2367.031; Tue, 29 Oct 2019
 07:06:16 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "will@kernel.org" <will@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: [PATCH V2 2/4] bindings: perf: imx-ddr: Add new compatible string
Thread-Topic: [PATCH V2 2/4] bindings: perf: imx-ddr: Add new compatible string
Thread-Index: AQHVjida1xihmY3i3ES3OSOWeaC+qA==
Date: Tue, 29 Oct 2019 07:06:15 +0000
Message-ID: <20191029070314.16719-2-qiangqing.zhang@nxp.com>
References: <20191029070314.16719-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20191029070314.16719-1-qiangqing.zhang@nxp.com>
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
x-ms-office365-filtering-correlation-id: db1bfe6e-5c79-4e94-3b32-08d75c3e7d39
x-ms-traffictypediagnostic: DB7PR04MB4218:|DB7PR04MB4218:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4218DEA0C4DD0474FB83EFD3E6610@DB7PR04MB4218.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1122;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(136003)(346002)(376002)(396003)(189003)(199004)(54534003)(6506007)(3846002)(386003)(76176011)(6116002)(66446008)(26005)(186003)(86362001)(102836004)(316002)(71200400001)(486006)(52116002)(2906002)(110136005)(71190400001)(54906003)(2201001)(14454004)(8676002)(4326008)(81156014)(81166006)(446003)(6512007)(2501003)(66066001)(1076003)(478600001)(36756003)(8936002)(66946007)(4744005)(64756008)(66476007)(66556008)(305945005)(7736002)(5660300002)(25786009)(50226002)(6436002)(2616005)(99286004)(476003)(11346002)(256004)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4218;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d+jElQkbI4LyxGr+4AOaaHHlepjwRqktpIRPVFsbwvxqiqMxDVYk/W27Ql0XsYOY47XEzv3FEJsmblS/wO5LhL7GLVPXW5d0ZWm3CCVETsAOzSr6lByRTH5UVUwYshtjF5momjzyvliNLzDSwjQ2M10GsTEemzc6ITjtNRydX8IPerE55g2eBcRyWe7U3fTaMzK8b2YG1xpQ4yu060Bftb+f2pDA1KJ/qklNofKVIsqKR7El5PeqGyO0w62LhPkiYQ5f0efCe7dFaH5mE7UGa7UA5+JJfZ/9u9SkRR0bRQ1k+rtYmrmCeGY7nJ04SNGakRcOftjlTo4LhTP/fkXPXGqR6z39H6btblvyzVEkFskbN3SMNlpvIIufVzn6LIst1jM3IckLUP6lmdnSohBYe8x7PBec0d8+Cd4CVaEysYi4+/Xvykv2Ghh4TzjbTMYe
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db1bfe6e-5c79-4e94-3b32-08d75c3e7d39
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 07:06:15.8882 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sghfyZjfcGr6ZbziIevrOZ5KHeQhIx28uM77I+ARria062A/WLuvWHNN5c+zQ0dKP6c6Fqx81MpnZaCrqShRsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_000617_463595_12E385AE 
X-CRM114-Status: UNSURE (   9.56  )
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

Add new compatible string for i.MX8MPlus DDR PMU core.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
ChangeLog:
V1->V2:
	* new add in V2.
---
 Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
index d77e3f26f9e6..7822a806ea0a 100644
--- a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
+++ b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
@@ -5,6 +5,7 @@ Required properties:
 - compatible: should be one of:
 	"fsl,imx8-ddr-pmu"
 	"fsl,imx8m-ddr-pmu"
+	"fsl,imx8mp-ddr-pmu"
 
 - reg: physical address and size
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
