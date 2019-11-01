Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E7AEBF42
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 09:36:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ix6bWFtvlQKJOfDCxhNwQ0fEnEQcflxqHezhxFIFdXo=; b=W/J7bhKppkJDLy
	uPlIXHrrjv+BAVCZrYls/Hpi1TR5A2Ns3ZtfisWL+f5rlozw7SCpEReoxUA0nAZ0myJKaFpZpYdFu
	JMt3Q3ZKi9s1ApWOYv/ihly39Stx5C/e/kJqIxdEKvS6dji4x+yWjZ2UYQa7H8IQ7DWGuGVKw+Ffc
	zqjeRj4YTq+3/w3GiTvvyHDGCKBLe5SHV0OdAvxVit2fGWmKnDZY+ke89+Hd2jIcRAyoZdnX+Lthf
	nPsYOaoTbaVluq2r5KkBkzOfZGFhrb7Cmazh77AEvMhUg2z6vs1Fc9aawL+6oV1sAA/JfTMq9ccu7
	MueZ0ljtsmKozXdq23+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSQ4-0005GU-T1; Fri, 01 Nov 2019 08:36:32 +0000
Received: from mail-eopbgr10085.outbound.protection.outlook.com ([40.107.1.85]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSPo-00058h-8q
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 08:36:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QzpLIIqyzaPrMCWDoT5KwEWdbKSseVzs9geuVKxCr6rYl8JFCrGHyQ94GITJWssV+pjg1jrWQVNhvvmy+2GWcV4KdB1LJTNtMqAZofLkklfKc1Kh6xkoMWFF0ZbKSTuCGo0h5tMTp7F8ylNerBa9V4xrWOQ9KAU0QM2cCDaVtmiImnxDVAoHS995Zmb2xv2QtZse82b2fTkixXzzjen8zDLmxekFGATzhOoASanWGMh+7jmYtWp4zLGkMaMEZQAO79CwEyPI7XMaw/hMRLXpLttSamJ6xK3hcnMr88SowzZ8hpXcIfqGbwZttgU+D0PdGwp9OvV11WmfxVHFxNE3uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bAAg9dFVN/hX6j9VmFpFYPcEXVUs2FlkWHkAN5a3ToY=;
 b=PWiy+GiJ4JdSewMGfHw/fyqxsOJTho+JO1w7TNVhl4BlX8NIyExRf5dIVfhdt0qV95RAoGK/NI4NavVRMiLaflsU+R8djhK6sZczyZkuDVhkHtkDmTytTEr0v+XIdAvVFFtdFMra4M8nh4DL1wD4oKJy2Hy3GDmrNWqa0qXH/u5PtV97z+ousgEDs/G0icywnOALWKsBmiQhA35ny+pzJ51IcBfKZ+fMsVQ/xQTcOh0Wqfoi1Tm5rpH6NznUupZ+X7M/BNRoqWZ9uSv/i0yt5uAAOf27KctQtrUiKIM9hVTcGxj+5nkYXTU++6mkajl/5ZhoNxLcHlWAuQxVoT8jZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bAAg9dFVN/hX6j9VmFpFYPcEXVUs2FlkWHkAN5a3ToY=;
 b=TUP8ZngKZwN9HUSbrhkmeoLz3875V1FhxZH0/zUuzRRFUHrONH6/8IMrviReNuMdrxNwx3ORmIcxOkcg4KaODGy7nE1oRDY+Iyzz7kFxKQOFnT3vGj8y9QVCFmAM9MHQVUDvjvzJjpvH5/FpAJV+OpBFS+6nro35gyQLGJHcY2w=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5948.eurprd04.prod.outlook.com (20.178.106.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Fri, 1 Nov 2019 08:36:14 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679%3]) with mapi id 15.20.2367.031; Fri, 1 Nov 2019
 08:36:13 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "will@kernel.org" <will@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: [PATCH V3 2/4] bindings: perf: imx-ddr: Add new compatible string
Thread-Topic: [PATCH V3 2/4] bindings: perf: imx-ddr: Add new compatible string
Thread-Index: AQHVkI9rvl+5igGDNkCOwe4G0+1kpg==
Date: Fri, 1 Nov 2019 08:36:13 +0000
Message-ID: <20191101083317.29510-2-qiangqing.zhang@nxp.com>
References: <20191101083317.29510-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20191101083317.29510-1-qiangqing.zhang@nxp.com>
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
x-ms-office365-filtering-correlation-id: 851f5384-7e2c-4b6a-c308-08d75ea68dda
x-ms-traffictypediagnostic: DB7PR04MB5948:|DB7PR04MB5948:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5948846792E267E7DE3314E0E6620@DB7PR04MB5948.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1122;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(136003)(396003)(39860400002)(346002)(189003)(199004)(54534003)(478600001)(2201001)(66946007)(26005)(11346002)(4326008)(3846002)(25786009)(186003)(5660300002)(486006)(2616005)(476003)(7736002)(4744005)(54906003)(110136005)(86362001)(2906002)(256004)(6512007)(71190400001)(2501003)(8676002)(66446008)(52116002)(81166006)(66556008)(8936002)(316002)(446003)(36756003)(6436002)(305945005)(50226002)(66476007)(64756008)(6486002)(14454004)(1076003)(76176011)(102836004)(99286004)(386003)(66066001)(71200400001)(6506007)(6116002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5948;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3VkAmBLFyzahBs2WVkuZBj9wWT2rfKFfFOv+fmyajAYtPvqvYusw3hVo2t/whOGPEbYvSh+FqaSvQF7RAlWgH85tXzyQqt41U/wSvOFwTjS6OvBVP20BL+wKiNXISMl+WMAIaAO2SSqY93jXeiV8TwtEDcNEm6MtB5QJ4nKTHciIwk4m2cF1CS6sB/DWaCl/CdrD91OTA3Q9A6Iyi+2r1aEzWzhP0DvKN4rgfYtuc5eiqQ4B2kIdFCNcff1JpFotR1ZKt2UM/RBFqUWlQoR9L8kUdWOtFpXXFsNaEYaaH4rd6VEfDV/pnnfhDYtkHcmce2wEzK4Ve5+MntKaIgQjFbuG+jRQxwt3aV8OypMyXnt294NWQAVrNxeBTD6273vum+sHYOid82A+VgP1p9SugiXy06Ff64AREF/9KmBBv9ulFvEULgTAJGF2liMLcJBe
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 851f5384-7e2c-4b6a-c308-08d75ea68dda
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 08:36:13.7898 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bGjybtydiGrJt0ZUJjsTFtAqj5AKxfYnaAjALiZUdJ8WiLOj4Eq/uEn1nroTjzM7hMVLU2k7+gbsU8Twk0G58A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5948
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_013616_309123_A75B18F8 
X-CRM114-Status: UNSURE (   9.43  )
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

Add new compatible string for i.MX8MPlus DDR PMU core.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
ChangeLog:
V1->V2:
	* new add in V2.
V2->V3:
	* none.
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
