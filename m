Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F931BD918
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 12:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VqvcJH5uIqgbPwpNsnusgEFbifTQ3U16eppcEAJq6ds=; b=dbJI9yn8oP4sos
	53CFmwbKDcZ+xBEV36EUDQc1sANFPqZQ0KUPuk+XPC+dKQG+uVbNFn83lECQWvQBERNl4kAjcZk5B
	p5GPvt2IXXjE+jFXmu7QpqTNKh4mQh6YJWInZhl3pkbAJRSHZzXCKH03YL0r/AhvgnlYZNPtiSsZF
	8bMZgugrhQ4vdC/yXKbPRTkqSfwc/yAqRF3o3BVfSTSsshXWcA9iX9WISbpJNALB53xeBIjXR6xjY
	nU+a0l2lQ+YJIXVRO7A2b3Y0KyqMqXDDWenZew70HwUcxY8EgQLoO6Gg0BmRK5FuEKw1pHf0looLi
	7//9ZpIlGlz8zGK5Y5wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTjeg-0005oY-Se; Wed, 29 Apr 2020 10:09:26 +0000
Received: from mail-am6eur05on2050.outbound.protection.outlook.com
 ([40.107.22.50] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTjeU-0005nd-TZ
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 10:09:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BWn2z936aNg80UCW3Lra2N4NL1eIlp8AIcUPdD5hhB1PjE7wDkz3ZQxtEK88NNUSwPhgPnVU3ZV5QYQSyMwoteWeQgA4VC1w6xY7XzniupHNa0ZjOv/5BeLPJv8nnbFv/f2DXr5J8j7xCAPuq8KKP2SCLRxfU0eCng02NsxoXj12k5JfNm0I6yqzwbw5iCMNTbcqR/nnckQ5W1qyefr4BqYA5pJgMhrWnhVYIBLpRk83km4/BxtnGCSrCkTbQobI2LvJs/l9G9yQ7YSQ+h6+zDfctutp7jHZFcSpafU6iBjQz5IO1hJ+alny7q4CUa76coQ9053SbhsJDVS7TpvdJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Btrju7mTfPpAUft/YhgqT08pFUm3sGRrvHZTUmb9O4=;
 b=KFUSY0gzrxrVUHGiWIsNjKHlijrsLICIZ9VpwwRln70fZUX6kgVkPcMtT/HGJw48dYewkrSbkLqXO5kQuAHiJLZxBIgWhJsR2FNTmbY4+U61Q2DFBK0B6y72ftMS9VrRJAYgzSHVOUFeAXBAgTBFyqcXO7YiKcQOJJ/diXuPFiCQWH/Ci2ov9Xfwvz5HviaubxzLuOuaoyZCyb9GO6zyUX/XN0HGM3HOAQbibf1wJTMlLQHOcAuqZwi8wPSgrOA9F1FZnw2B2a5c2F2O83wPowFCKa2WapQkRbURgeF/N+Kau1gUUCWT+dksi/TYXHX5GHEbnGwWML8CegLserX+AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Btrju7mTfPpAUft/YhgqT08pFUm3sGRrvHZTUmb9O4=;
 b=V/9tfaqRoll/mRW27QS08DvOtBhUbzfIlBdaxBY/IpuZQOg/+VtFPZVUIZJEE6FPi3TLS6/xPpRGaiZwgDohSqkIQw3y/uzkQ+f0CDkATop14pwRzqnvbmlcVl0xz3WRQ6t9w+bkQvmQeMcD3tTPv8zQguH2wbj1+jVfgtnHJXE=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from HE1PR0402MB2745.eurprd04.prod.outlook.com (2603:10a6:3:d7::12)
 by HE1PR0402MB3340.eurprd04.prod.outlook.com (2603:10a6:7:81::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Wed, 29 Apr
 2020 10:09:12 +0000
Received: from HE1PR0402MB2745.eurprd04.prod.outlook.com
 ([fe80::e802:dffa:63bb:2e3d]) by HE1PR0402MB2745.eurprd04.prod.outlook.com
 ([fe80::e802:dffa:63bb:2e3d%10]) with mapi id 15.20.2937.028; Wed, 29 Apr
 2020 10:09:12 +0000
From: fugang.duan@nxp.com
To: robh+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH 1/1] arm64: dts: imx8mp: add "fsl,
 imx6sx-fec" compatible string
Date: Wed, 29 Apr 2020 18:04:14 +0800
Message-Id: <1588154654-13684-1-git-send-email-fugang.duan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR06CA0185.apcprd06.prod.outlook.com (2603:1096:4:1::17)
 To HE1PR0402MB2745.eurprd04.prod.outlook.com
 (2603:10a6:3:d7::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from b38611.ap.freescale.net (119.31.174.66) by
 SG2PR06CA0185.apcprd06.prod.outlook.com (2603:1096:4:1::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2958.19 via Frontend Transport; Wed, 29 Apr 2020 10:09:08 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5df26dc8-85eb-4510-397f-08d7ec255d16
X-MS-TrafficTypeDiagnostic: HE1PR0402MB3340:|HE1PR0402MB3340:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <HE1PR0402MB334056F40CBACDFAAA4334DDFFAD0@HE1PR0402MB3340.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:949;
X-Forefront-PRVS: 03883BD916
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1PR0402MB2745.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(366004)(39860400002)(136003)(346002)(396003)(478600001)(9686003)(6512007)(5660300002)(16526019)(36756003)(6506007)(186003)(956004)(8676002)(2616005)(316002)(66946007)(2906002)(6486002)(86362001)(8936002)(4744005)(26005)(4326008)(66476007)(66556008)(52116002)(6666004)(32563001)(142933001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BlhyfKOY24NmlzmPmliy9vsyCOmDpOHWVbXRyR1ZlyrWOuPhVdaDEAaWlqzpqFj3dweDAzKB5LplTnVxAD+KAOsOE7+nxpSLHxlI7uaFrWZhLoboM+4VX07D2/7jU5ZgpRGWcVQhOg2OzifsXqCeiSP3gG19gH+yTLLFHtuPpeoLSf11Jo7XnyLHzX2anl2ngTCjZ2BqZp+2YYMnCo62QaQQd+LzIPlMu9TorUqeqogJWK9cdBQIwkmKERqmLTWbb2rVBjPRO/PpkGrfMxNBsT4VvltWL0QWThMT+t7bxKVN6JGGm8+2BZNVkCoSgmN1n7ccgp4T6q8jfhW5TJ7HS4F1u+HpHinNXupTSskiviCweKLkZ6eM1kpB9roVDelNNjVqd8wMbY+NVcRB9FDMLB+m009alBQCrwTxtLNyR4+AP4BSuDjHrXWhmcf//mXp6s0dfWnUtYCczYsjDezqs2MHzyoervmJ+9BagoBeFkseBED/9n6PRjAy7bVrl2yeYU8QKaq1AaG+xdPAgaYzFQ==
X-MS-Exchange-AntiSpam-MessageData: o6QdV5nSxwrt9tAjSvPEuVMsi+lmHKyj3hY2SmxAuBGchbynQrEtsSSETFZDGrnRMI5hKvYt34ShYuwqctpyIYyRBxl4joVNBOV6R+VBTF8O6TP0d4PwhKRQ9IeaP7yHdNRlIFbbpwLu+IvTGqrr6wA3lYROIF4wCcLpcP3zknzAGwGHPSSn39qW1D/IkbP63VPhxsYHen9zglecOU5lOFyDmizD8MKuodU91U1pQ9eJGW1jbs0s+tzODpwLutznBYx8GkOUMidkyHQepnD3+DNTPBTYqkNFSXAxxT6d+cDiwoZ43L9z4EYS0RG9n/KE3yh2I189UoUze/O24Ml5MgKVLW003u+R15EGJ2rvoN4MwuVVxK6B8hG+glioA4opssAtzGY3t0/tYOlSIcBsctqE3QW2Q5vC0QU4LBujB9B5D19UIoGT22jR5vnzkKLuLLduZt0U2v+tWUHT6uuOE+FB86vS4zIywco7qj35aehSa1G4CASKaHEPuRl+VIu9k5z+iimJlXKb3Wv3l5s5lV/Je8zATVy2CvzpSFoXqtfzZbosAe9Q2u6yUd0eFwD/mPsQetjsiSCgSgEQhD47kWSbG9akpTc7pDa4ir3cg9tcxajwc7wkQkS47IToPTeB1kCfTXuW4FyExNpR+kmlgf74GQBsFZGxwRHfcFcWsmO5M+BebASKqrOsutXHJAni6VPLNIVIzh+sPZPIbFuYmubBnKVwq8nLZMpJ4o4X5Ulfwqrc/iWcphppI9h11Wto1mGxb0R1E3eTveQtfcl2yG26bBSXT8YHMRGd9w0g+xM=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5df26dc8-85eb-4510-397f-08d7ec255d16
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2020 10:09:12.0145 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: auLYe492ZV/m6UFsRqkZwdhVawXc+KmCq5GGumkt79ZMsYmCkNZaddiWY3SYRHxaMj8eqBSwSHP03ifhPPjsig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0402MB3340
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_030914_959750_6CA6D596 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.50 listed in wl.mailspike.net]
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, fugang.duan@nxp.com,
 Anson.Huang@nxp.com, linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fugang Duan <fugang.duan@nxp.com>

Add "fsl,imx6sx-fec" compatible string for fec node, then
i.MX8MP EVK ethernet function can work now.

Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 9b1616e59d58..b5df957c5063 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -615,7 +615,7 @@
 			};
 
 			fec: ethernet@30be0000 {
-				compatible = "fsl,imx8mp-fec", "fsl,imx8mq-fec";
+				compatible = "fsl,imx8mp-fec", "fsl,imx8mq-fec", "fsl,imx6sx-fec";
 				reg = <0x30be0000 0x10000>;
 				interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
