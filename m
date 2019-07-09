Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F595632CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 10:22:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UeEegatlqO8j8FOU/RySD/jQdOT83hnT/ihrVesG1zc=; b=AsBrpqRFAb4pxH
	rnfL/h6/D8c21R2DmfVQka2UnrrF5dHw5oYFt2CvV+N6Fy30NoyjJkn4RNvH0OnTaEQdu+zwD1CUr
	JydGhuvdWsrLayoGs8cdLSRu7bwEf8zA2HSZSJgKqIdRgR3PuKYH15anqdRIyJozdVcUWbEOgiDeY
	MYI/8kkMMs4zrCtQ2jOOrD/F7S5uOuvqHnMDJamVEKpukIQggMJ887UlvAX+yKJzQ3l1in84fWkjY
	tHqybZYTvnkKjtDofDaHqiDKzq2KPaneHLy3WCAr+2iorJ6bl76lqiBkdIu85cF53KekHIda2Wswv
	Zb6g5kxWuidJovFw+DlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hklOh-0005ld-2V; Tue, 09 Jul 2019 08:22:47 +0000
Received: from mail-eopbgr60055.outbound.protection.outlook.com ([40.107.6.55]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hklOU-0005lG-Qk
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 08:22:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aFFjx8Bfr95fqxYAYadzrFzzMV8DGJioJm9RQ/xO/pxzqRpJh617EOleAGGjjL9V1Stoqv8zbaTdIO8zE4/OXH6MebtLMuIuEcDY7uGVlDjIWAMlZNpafUYi1xQXQqSU11MU3bnxSejXu/Cbseexo7jtGSdiNWjxvaSTPYrAB0hu+7KhInjrRLKINUzUUe+caWFMa80EmOMJL8zkIw2nZz679ibn2RXZ+rYiC/KtvXKpYmd/5NcNSfZPJYzqCN72kqMAdXh3hrSkqSA4jKAiDnEbFeHzF1EGxyYoeFVXpcDu3VHdVKqA5LzJrfBreY6r0RgTd+ehBrkSMFbIGvFHUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b0VeOYnQJzd+/2ZaGMz39y9y70V69Y7YVJV+39rC1WU=;
 b=CmAzxd13ZyP/Bo7XcEueHl+dMo61VjdK6Oho2vDiU8DyAiDiRE6YNsXY+pNxBkZuxG9wSAwAp6DPP1eblJMyNj5Dn886suOlXoy0090MlWOH3DynWzx+y08eZBCe+fktMKGhbOhMIw3ofmsw7mFeHkUPvEZHmng5AGTUuPa6forofKYxUwugFlzWjJKzRvZhWtjcxNbfHizVmR/yHWL/xtdxDPeC8H4dhqz5eOgOlUilmcv1/t7GnDmmp8LwuPdMKgWYOGgVccqbu/xF5U8tpVXXApGX3ABP+NZY272woR6OqB160PSZm45PCtOQjjUeC6cjgSACHEpjNQmiCPtnlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b0VeOYnQJzd+/2ZaGMz39y9y70V69Y7YVJV+39rC1WU=;
 b=GzifLgaLwt+rSoT4WuEWTwgjCBp/ktWL/wPP2tyXjxHkMBJ+5VLi2rq96Zadlplh5RT6MsHnX95SuMjYyIgv/iirqIPrRhyITPtzN8aqP/i8zhts6p1/zAAiVt24SXVeW70nmHoG08W+RzduvzABv42RsMn+jRRcD81CDdk3NfE=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6050.eurprd04.prod.outlook.com (20.179.32.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.10; Tue, 9 Jul 2019 08:22:30 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47%5]) with mapi id 15.20.2052.020; Tue, 9 Jul 2019
 08:22:30 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sstabellini@kernel.org" <sstabellini@kernel.org>, "linux@armlinux.org.uk"
 <linux@armlinux.org.uk>
Subject: [PATCH] arm: xen: mm: use __GPF_DMA32 for arm64
Thread-Topic: [PATCH] arm: xen: mm: use __GPF_DMA32 for arm64
Thread-Index: AQHVNi9zmpVhxJk2Z0aPUBEkePn3cw==
Date: Tue, 9 Jul 2019 08:22:30 +0000
Message-ID: <20190709083729.11135-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.16.4
x-clientproxiedby: HK0PR01CA0004.apcprd01.prod.exchangelabs.com
 (2603:1096:203:92::16) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9121fe40-b778-47ae-ea76-08d7044695ae
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6050; 
x-ms-traffictypediagnostic: AM0PR04MB6050:
x-microsoft-antispam-prvs: <AM0PR04MB605051BEAB92F04288000EDE88F10@AM0PR04MB6050.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:194;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(396003)(346002)(39860400002)(199004)(189003)(478600001)(7736002)(50226002)(386003)(4326008)(5660300002)(6436002)(6506007)(4744005)(99286004)(2906002)(66066001)(52116002)(54906003)(6486002)(2501003)(8936002)(186003)(26005)(110136005)(14444005)(256004)(305945005)(316002)(102836004)(6512007)(81166006)(81156014)(486006)(25786009)(68736007)(86362001)(6116002)(3846002)(53936002)(8676002)(1076003)(476003)(44832011)(2616005)(73956011)(36756003)(66446008)(66476007)(66556008)(64756008)(71200400001)(14454004)(66946007)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6050;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gdfL97amVfYXLuvxiFtdG8YKtio0ybCCX44aY3h+w3W0ckmOmYG9WW5UBijEnmx7Qv3uJAik2y9m3zVAf3Dh49uYf8e2ax0+DPY7pixHax2DJR0TOq1p2Yk8Sz/kyRS40l0LCqMxvCbwuv3meeKaFKZ6iNxHNoSSjm1Fd5Rch/gDZvgrb39UXGc60D3GQRng2iHSpFALYtQHG6flwkZ9yF2KawuoTwR8I0Mu4foJBYoI8G1JVRnlX7GR/oNHgcKClzRRQzzKR0kkdEWSiVHHycKzECvLtd/a/oFFNHA8o15TvDNzgwc6vQBsv4TBIrMcvxCqkE36S3nLePywz/26Lm3x3Q5s1/eJDYsxKi8JaWh6z+e2FEy/B1kkCriNg4Spq9zpnehdo/RnRT103oqtK3Xkq0nrK304bkjPic/tyLs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9121fe40-b778-47ae-ea76-08d7044695ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 08:22:30.5672 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_012234_941168_364CAEDB 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arm64 shares some code under arch/arm/xen, including mm.c.
However ZONE_DMA is removed by commit
ad67f5a6545("arm64: replace ZONE_DMA with ZONE_DMA32").
So to ARM64, need use __GFP_DMA32.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/xen/mm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
index e1d44b903dfc..a95e76d18bf9 100644
--- a/arch/arm/xen/mm.c
+++ b/arch/arm/xen/mm.c
@@ -27,7 +27,7 @@ unsigned long xen_get_swiotlb_free_pages(unsigned int order)
 
 	for_each_memblock(memory, reg) {
 		if (reg->base < (phys_addr_t)0xffffffff) {
-			flags |= __GFP_DMA;
+			flags |= __GFP_DMA | __GFP_DMA32;
 			break;
 		}
 	}
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
