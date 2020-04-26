Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B88E1B9309
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 20:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3d237zW4Wg9MrtuT7Ip16COYxoHZdT9MjNvTJmF9D3o=; b=QiZgcl2tSsBymy
	eU46ISfQDVTbo1jveZR0+X9KbjSpUYZp/3qWgl7zpTnfWq44NMnLOt8mq4iy1NZO7ooI/YtWbuIEp
	ehG0Z9xdzYgmMda0UdjwEBHJTYFjndJqu7AxgB38p21462qkFcGwwTYklIzUuIVwBBEhdFb7v/vCU
	QYP85F9U7ZltAIQj2/rVImqqtn9CgxFsfngSG4eQQ2+agRY+DXQMG3Bx55zVeLeDU91Reunh93xiA
	Wmzvi2zSj+je1Kfn+2yfgH4RSJPrUTCO7eboJIRSy3iJXheGuN1YlLrOLILtNnSPcH8I37lpI9M4c
	szZfEHQIcpaGqQUknLPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSmBv-0008TJ-Us; Sun, 26 Apr 2020 18:39:48 +0000
Received: from mail-co1nam11olkn2053.outbound.protection.outlook.com
 ([40.92.18.53] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSm8y-00065S-9t
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 18:36:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cXFxn/GC6iCA597b9HQGWV/5rTZ0OJo4QhhVa2GNKFzjIzts1ltVoqXWtBDr2BFKozn6h3ijAZdjugq8OEarHvLt7YDBxzIs1PtaBUSOvLEUfPRhXNyNNferANYb5WfPi0j5rSxobTx6JMDDBcd7oqU5vW/LBQGcfYPKqwtfiKAhceIoWzS5DCFh2dNQC/L38T0nEFR6qsZGbAMH/PVvndCi/76VTu/TEix5TryHv7PP62DlYnAO+zZWpwsHo2Uhk7E/dN8MtDty81CxVkcPx1Kv0XUdaXCe7XZKxhWmid1heVLZ+4tAFvcF6hpJQ8OyPsrpna4AJam0xntKVqc6sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p6zvREwrSfcQ2mTsahshIeEGoLaFDehzGGiKa1r+zvY=;
 b=Qrmq1WN9LbG41Fm2Xm93BGbF/Yz+FkZQUZT8PCaKvkFJmpM5h6FyiJo0yX3icbYQ8FWLACU6GLwO2CB8InxeqE9nLao1+RYOECAj1uXLdFYNS5r3TSPYJB9cxbVuZU303lXPCQY5vy+386ot/wkFyBlJje0liD/bwByb4xUHTnHEWh2Jyjv12vESlRZIjJDwM/HcEQ0cOVa+LYq/tfb9X2tuxy0KaoYQzZ3RcDv1YIemsAyGPM29K+hPDPsKglHuFX9qnm9LIWrYMxT8NM5B1170CfqN831tkT2V4s5zltbhLqR2HpYOdkRuvvHOeBc8atg1yg7BqVlXE/Wv/KdRmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from CO1NAM11FT036.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:3861::53) by
 CO1NAM11HT028.eop-nam11.prod.protection.outlook.com (2a01:111:e400:3861::249)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 18:36:42 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:3861::41) by CO1NAM11FT036.mail.protection.outlook.com
 (2a01:111:e400:3861::124) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 18:36:42 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:C30222A728FCB00F506623A3DA3398881AD914B8E41EB9698F63970A0F4CB6C9;
 UpperCasedChecksum:F5B3EDDC3FDB3E8DCAB7D9F326048977CF029D0D3A93BD84B6DED6389AD0976E;
 SizeAsReceived:7807; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 18:36:42 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 09/13] arm: dts: s5pv210: Add an ADC node
Date: Sun, 26 Apr 2020 11:36:00 -0700
Message-ID: <BN6PR04MB0660AAB00F5D36E2FEE22DE8A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426183604.28494-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
X-ClientProxiedBy: CO2PR05CA0096.namprd05.prod.outlook.com
 (2603:10b6:104:1::22) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200426183604.28494-10-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 CO2PR05CA0096.namprd05.prod.outlook.com (2603:10b6:104:1::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.7 via Frontend Transport; Sun, 26 Apr 2020 18:36:41 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200426183604.28494-10-xc-racer2@live.ca>
X-TMN: [VRDXn4FcQRU24MAOdrQJp/j/s3d34NttbYCH/Lx7mvI4i8d6RGpOMObhLvhjDZMK]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 65775caf-f194-4dba-c60d-08d7ea10c3b0
X-MS-TrafficTypeDiagnostic: CO1NAM11HT028:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z8R/x7pWGVeNW9b5eTTPvbgtbMgTEqe67OBOuTYKvAXEMStsCP1yJwttKeKqgysfe0OxhsM+mbZeF7/4mrNy6ceW24170Mn1o4xKE5U62PsYcaxj5umq/l0Wzgw1p2TRQJ7nlhWmxXEsgPrfj4iHIRNpRP0FRzo2MAgU/7hc91cWevr0+ntVmibRpuqXh73wqV7O4j/xWKznC8F0CyvNQg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: Zwj/PmcbmHDRG1oQdW9itFAQ9lB0vrSko8q/VxQ/HuXCUC4um487dCISTFkDClb+1puuqGH4iabC3/acpXukJhrsMoXXrGRajrPgWXjMhTtPoT2Sjr1MNLMqxWTOG0tkDuWvurlMQoZ5a8Ue+vVv6Qyn26+ovILtn+2HFYnopVANHNR3cin8H4eEGBANC4HWXjL8lVZ0pbjbiKTgQJR+zg==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65775caf-f194-4dba-c60d-08d7ea10c3b0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 18:36:42.5760 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM11HT028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_113644_352860_C5B6C4B6 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.18.53 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.18.53 listed in wl.mailspike.net]
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
Cc: Jonathan Bakker <xc-racer2@live.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The exynos-adc driver now supports the S5PV210, so add the DT
node so that devices can use it.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 arch/arm/boot/dts/s5pv210.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5pv210.dtsi
index 2ad642f51fd9..b3b6ad2889f9 100644
--- a/arch/arm/boot/dts/s5pv210.dtsi
+++ b/arch/arm/boot/dts/s5pv210.dtsi
@@ -159,6 +159,18 @@
 			};
 		};
 
+		adc: adc@126c0000 {
+			compatible = "samsung,s5pv210-adc";
+			reg = <0xe1700000 0x1000>;
+			interrupt-parent = <&vic2>;
+			interrupts = <23>, <24>;
+			clocks = <&clocks CLK_TSADC>;
+			clock-names = "adc";
+			#io-channel-cells = <1>;
+			io-channel-ranges;
+			status = "disabled";
+		};
+
 		spi0: spi@e1300000 {
 			compatible = "samsung,s5pv210-spi";
 			reg = <0xe1300000 0x1000>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
