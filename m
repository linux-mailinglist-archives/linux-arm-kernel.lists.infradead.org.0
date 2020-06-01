Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 300791E9BA5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 04:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGdDPMtCe6woz4lLiy2eM7lh9hOq6kWKW0GFFDyIH/M=; b=A1rAa2IgRahSZs
	sHoQn2Luqs1Q8Y15BcJ+wC7PYmvel53zepJ4lVPa9QcQ1PLtQ6Fc1utaMfhDUD7+vnC7Ymm1outnL
	v5z1YLVePzq16E7S/c3JuiqBMHqw4dLXYATh/mOUrLJO5i3JpYwKqRC6jKfkFgcTjqxS7CN/+XstE
	9eBRM9mjMcL4rLDN9EuKvEA+3N9weAprVvn7VurkiX0nnysW7NAAMUOTKcGyDsXQ9Tu3GcWqzRXfN
	c1mszemGFUynEy8dgjR1VmB4/e/ERLy3E2M6jpa0XBX8HKRhoiAGrpmMuYWCSlShJwC95nQvK/Pqd
	UnZ3J/spW1p0Fs8SMCrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfa1f-0003GN-LM; Mon, 01 Jun 2020 02:18:07 +0000
Received: from mail-eopbgr140057.outbound.protection.outlook.com
 ([40.107.14.57] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfa0i-0002gF-Tg
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 02:17:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CsS3LtLFDUvVkHLMeQhR3tEZuj1TSCVVtkw5S6nBHqL2RxAeNcxurKL8kk6MoEpvFc0qvDfwb7fKDJM2Br99R1GKz8hBdDraQwKQhvINJnU3JLZKGH+/sXRHbmAYmS9p2XwvVuUjcOmLkSdJ6QeNPbjYbkk+RmWcHZ2CUjSTpoNmBck/Og2QJwwjALzAGN5Pm/x9LiAkMutkYvGwcDOoreDo/SetTVwZnduR4pX1mFBFPICFHRwx+cG2e1jf0mHAtobQNHWcDSHULEvFGlE+5gOlyIKosibyjQ0JtYwmE8R9aZvE10wJEx3/eOqxnIwGOSQc1Q54cJn2yizB6s9alg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xrTmuuoq14giV56JF650aYj9KIXJVdCdksumOEy1rSo=;
 b=TBlScKPSOzD64gYT7Ow6dyyUupBsSh9h7gApuZyHolXO2UnGYQUKA7PzNQZbJdghL/2lANm17MC7DVU34WlnfXybknFD6lLstsRfrdVBiicN3iQDi0gDKpTN8g+vnHrQT+13bK9YlWZUGKPvy53BS+CI8iCZ5k3vp5H5scOdf2Y3ZN2Xgo7J3p2ylwJls46ZHt32aAPEzJIVaukWVEEFCGM3qLgwk13w9yCPZNeeqTl7qkx4xl0x5bPwtNUxVFX+/0R6QZAmk3vT1LzNhzBhJ83Kf0EBTFEqDhmfV4st6fMzVtGH06JW38v30VKBwy2OcEbvVgDaOgfQ12zUZuu2Cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xrTmuuoq14giV56JF650aYj9KIXJVdCdksumOEy1rSo=;
 b=KmkEfssRCVjL/n1tL0RQavslsLtR40afa8vRTtkencvFFoG3uu/pcCdkIHYgeE+sEtPzqyCAgxJoo4N6IkB0JrvHx7Pa/2G8h9ZzQAK6423jduuuTBw/SiHz+4pBvwYw0CvpGM/1hezJjDc1Ae6bcnus8zSDSHYwp9SlUW5cW9k=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2744.eurprd04.prod.outlook.com (2603:10a6:4:94::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Mon, 1 Jun
 2020 02:17:05 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3045.022; Mon, 1 Jun 2020
 02:17:05 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, fabio.estevam@nxp.com, kernel@pengutronix.de,
 aisheng.dong@nxp.com
Subject: [PATCH 3/3] arm64: dts: imx8qxp: Add ethernet alias
Date: Mon,  1 Jun 2020 10:06:20 +0800
Message-Id: <1590977180-9957-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590977180-9957-1-git-send-email-peng.fan@nxp.com>
References: <1590977180-9957-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR06CA0157.apcprd06.prod.outlook.com
 (2603:1096:1:1e::11) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0157.apcprd06.prod.outlook.com (2603:1096:1:1e::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3045.17 via Frontend Transport; Mon, 1 Jun 2020 02:17:01 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 14aa449d-08ed-4c29-1c06-08d805d1e0a4
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2744:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2744F8DEB2B474E441B0DA7D888A0@DB6PR0402MB2744.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1443;
X-Forefront-PRVS: 0421BF7135
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d1ZyDq2qj35zw5yM4HCTgyMJPCzf2Cd/B1F4cv9KQwuts7qycaTcpHEYaIWKxjVboLf6rTrzpS7vj3ajyet1Zq8PdLppac8PEDvd5vymrtONYMqSVMo0Ptct0u/9+lWLj8/PbUhIZKHAtH125232oiYJrMiTJDpiPcp32X3RRVrh8caTc1KtLKU5UKIj60eoFI02WV7A/FSv0DNw3TBay+qooLBIR4oGxQM5DvJsYRPdjyV7GKMInQoU4cR0K6XzmRmXJ1HTzWbYx+twF9FWgwn2YvnTY13fPHHH9cVbx+NlLvSi4Xecy1LsotL3KFmOSRUwOZueo6a5/jWZ64uKaU9ykEVQ4Hd3oarnp89Gj+1z57LYvbTVbYjaUx9Fw14SnyEKm3+erpJ/JczhzHU6JTmJ3eIwF1J4DB16ASb+/Cg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(136003)(346002)(396003)(39860400002)(26005)(316002)(52116002)(6666004)(186003)(16526019)(6506007)(8676002)(6512007)(9686003)(478600001)(6486002)(8936002)(4326008)(69590400007)(2906002)(36756003)(66946007)(66476007)(66556008)(2616005)(956004)(86362001)(4744005)(5660300002)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: PU3+vbhDjOcKz+9pv7I5YoM4G34JYrUylPWdkrqt8qsd7Ft140fuiC2WStK+I2iUACwna+MSnNk1kpDRcMdlwafHrqNmm4ZBrh7auLI560PU+doyY8Hz5uoIbHDyChYHM1ETsqxSUxWY6Hxsq/cJOtH+r+seJdtmFAEwLh+BC6MzJQr72RytDdM6a7vl6+F71D/oG3X/FgwyB1u6fPXgp37FeG3sH/WQcmaK1GN+4oxmACA6FD/ZdTl8pUe2COVSy37rQOaxxt2K3ViBtTM5DGg2HPNx22sMdeEA3SOKecXeR6EHun8A4lxEtsx6sMlGhy2xQBKXPx6jwhAbhFmaN2J3YnJu/ccsqhXgOKGYx3F4TG5LhMlA6Fo0fAkxO9MV1K0hI8kGX3E4snKj8exDbxrcB+nV+ZDpacRLooTwPO+OxLU2EIvphBemrkqaS0O1HbsqteteTQ8LAEp/bHeQ9caV9l6OajkNnlYSNaMkbHo=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14aa449d-08ed-4c29-1c06-08d805d1e0a4
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2020 02:17:05.1858 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aXXhD/OBNJREeRdC/bAmUqX42tV3UyHDl8l5kVCWrXQWahgYLq+596RQUsT5dvhBoylEWYNvzGZBghl3VrCnsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2744
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_191708_984732_A0ADE9C9 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.57 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add ethernet alias, so bootloader code can use this to find the
primary ethernet device, and set the MAC address.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 8ce997110cd6..ff6368af7d39 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -23,6 +23,8 @@
 		i2c1 = &adma_i2c1;
 		i2c2 = &adma_i2c2;
 		i2c3 = &adma_i2c3;
+		ethernet0 = &fec1;
+		ethernet1 = &fec2;
 		gpio0 = &lsio_gpio0;
 		gpio1 = &lsio_gpio1;
 		gpio2 = &lsio_gpio2;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
