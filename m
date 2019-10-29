Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F391E81D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 08:07:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4WPWFrWhcx7sSiNoti0V2culGNJr0dxDPTDmCgfpIY=; b=step3VeFiP89vH
	ZubnZtpRSaq/vXQuVgpJHb38CbVXM0dg3SIGU2grm+VqriyypTQlUEuCOc/1hPjjkcL7dZqAbuLxz
	6iA0q2V/SoZvvX5Y4GyEaV9Jlai/iGF0q/hL0goleXLMPL4Z5jrjYYA5+A5WPpK1No7no/4YzMT2q
	fd8FTy1Mkle9L4Q18A/3vLPf/jvw3iZGXMXVwzQ5p3mZZ/uLMgsgiv/BZeq+edL9z1mleWxhKrBOf
	GZx4odjWAoGHPXanUDnik8xB5dFapacfWnVd+JS2JK/JRD35w9j8TpK7q0xcFj3YOUFwZKi9hs7F6
	8jlsk7PbLnia0MnhEJQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPLb2-0005pa-Ls; Tue, 29 Oct 2019 07:07:16 +0000
Received: from mail-eopbgr50079.outbound.protection.outlook.com ([40.107.5.79]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPLaE-0005Hb-Js
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 07:06:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UVZ61rBLFrERWhCKC90AWCvb7NqNA5Mx9hN6Nj9XBg4LoXTKFZnO53gXmAX/0LQiyjjFBN2wwXSr2WmqbxBLEL3p+pzQoDZ1sC7/u7TfSYPa1DN0DQFwlruxdn11hEWbxn8IgH3gH1XNX9u/4R5YUANkSUtLNX2e6JCQLg924gMVf/F75gPZwStiIwQ7ifWilJCyzbRgaWEzIYVoowBNalMUf8AZXTTWSmlLqCTkRg63Ide3yVkwLPmJQrEOsGy1lWmJ2S/eY9KEpZJJOICw4RjSKnG8gabI10oBZ5faDkwWtzWOISSsgeeUjage9GE4HnND9VCVtsTHesXRPBJtfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CcpLH3iAPQjAOZvvd+FxNUcf5gkzXmZvwakQ4ohGKl8=;
 b=Fg0yQk12kEtmS2AFf3eyjZ1L0VxIXVi4XxsOmNpej2EQEbP6bEF2qwDnUNiU81SvNeKSdoc2q0VXfynsm5zIdt72MndjeOqmz3B9MD0vmSnEbUPknGcfiLPCVLKpAx+PKeyH5+4sQhP3zc2I4sKRxtsfMKUdGQDe6fqrEmBZypUk7aOEsA+ssFJndcr0a5IGQ8Cp2sDHwC1c3QyF5hOiQatAV/kgF0aWT7PHVAjt8gai5hHrDUasmLmYFGJ2AZHNUQxxfZ6Fh8qZN0rHDVqM75Ts67PCDNvbYZ+FGrEaptOjwbTYeLF+CofeN0gp/InXvQjCN6sPdvFfaRSqvU+7mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CcpLH3iAPQjAOZvvd+FxNUcf5gkzXmZvwakQ4ohGKl8=;
 b=NVo6clKv6u5PyOCRX+ZRVlN/zfxu8YdlEQHd52uV7QADV6R82zTu8fsj/Cuopd1c8a/rB1OaUvqY42GwRXwMuLaGE36anqyFmPFoERgODedFxWfpZbB+9U8+AqU7k0KOsUwd7JwOz0JaGq6aurhJ/DUh8F3Em1Q1+iaSdnWX588=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4218.eurprd04.prod.outlook.com (52.135.128.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Tue, 29 Oct 2019 07:06:22 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679%3]) with mapi id 15.20.2367.031; Tue, 29 Oct 2019
 07:06:22 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "will@kernel.org" <will@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: [PATCH V2 4/4] perf/imx_ddr: Add driver for DDR PMU in i.MX8MPlus
Thread-Topic: [PATCH V2 4/4] perf/imx_ddr: Add driver for DDR PMU in i.MX8MPlus
Thread-Index: AQHVjide84vD/BcrHk2lDkxxx9KwzA==
Date: Tue, 29 Oct 2019 07:06:22 +0000
Message-ID: <20191029070314.16719-4-qiangqing.zhang@nxp.com>
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
x-ms-office365-filtering-correlation-id: 34a8242b-8743-4050-3907-08d75c3e813d
x-ms-traffictypediagnostic: DB7PR04MB4218:|DB7PR04MB4218:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4218DC4BEE7A268420030077E6610@DB7PR04MB4218.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1091;
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
x-microsoft-antispam-message-info: 0s+WyfHNUv+vNs7rFG/aRoswzwdQIkrYJ0yzDQ67j1ky2u9f6fZKOW5A8R8TPQQEHs6QohrR8voMpDqSDB2xbkBgayLt/lurAQofLI1lwlPNPiGrc7ELDy82w580BuFW6VsywuvSrFsNw+dKDunIAIQD4CQ81t5JuNDzLy1BTJ6WVhWmgxzvEAzcLyoizydpjovy7u+r5xH7Xi/CJ3XDyjVKFO/IUZB8ivDv9S/CeCCE4RmxmqV7hbVA1PqRHYYMfxvWWRXc83jEGh9ol+uhmhZLIBQ9M8PLqcpCbLT1HuuB2eIqBqzE/tqLEw7bcBmvcwKlngWjIyS/IY4CnJPcRUFa/lPD8LY3DqSwzpAG8BWoF4/8xxvvL7wPDEsgtO9qE/SMkCWLQ9Ud+9iLosHnI9JU7zj4nagsMTXwx1S1d8hvNuVYYAESD/D39Y0+L8HJ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34a8242b-8743-4050-3907-08d75c3e813d
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 07:06:22.5613 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9Vevbi/deugU0tr80fPdEE0fwzTbNtEpgXzY31q9rmcyMW+Ya1UMCBiNdXY5L5D51xE2T3r0JE22+I4TGhSQMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_000626_714867_A1476F66 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.79 listed in list.dnswl.org]
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

Add driver for DDR PMU in i.MX8MPlus.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
ChangeLog:
V1->V2:
	* new add in V2.
---
 drivers/perf/fsl_imx8_ddr_perf.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index 17c817d89222..2f7bf74a2eec 100644
--- a/drivers/perf/fsl_imx8_ddr_perf.c
+++ b/drivers/perf/fsl_imx8_ddr_perf.c
@@ -58,9 +58,14 @@ static const struct fsl_ddr_devtype_data imx8m_devtype_data = {
 	.quirks = DDR_CAP_AXI_ID_FILTER,
 };
 
+static const struct fsl_ddr_devtype_data imx8mp_devtype_data = {
+	.quirks = DDR_CAP_AXI_ID_FILTER | DDR_CAP_AXI_ID_FILTER_ENHANCED,
+};
+
 static const struct of_device_id imx_ddr_pmu_dt_ids[] = {
 	{ .compatible = "fsl,imx8-ddr-pmu", .data = &imx8_devtype_data},
 	{ .compatible = "fsl,imx8m-ddr-pmu", .data = &imx8m_devtype_data},
+	{ .compatible = "fsl,imx8mp-ddr-pmu", .data = &imx8mp_devtype_data},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, imx_ddr_pmu_dt_ids);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
