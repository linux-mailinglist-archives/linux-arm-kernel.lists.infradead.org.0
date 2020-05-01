Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D411C21B3
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 01:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EV1DmmOjrvtgedOMRRYztnaRWoT+IB2DtASs5At0Z28=; b=vBqaZGH10buerj
	IrXa2sl4NY3Dts08ZU217zl+7GhdyMyS80jKdoOL991XswOmkG01pts3MBMSWoqoJ5+dwqphr+Eas
	Sg0zzrp6FKZTEbYoUX1jZOVrOsOk4kae6TciuhA//Hkhn0BCdhmEzsrVGXY2m/v/jn7zW9rTXVYBY
	JEzpbOK9Xm0I8KDsOH/NE+3RITE+2/UB9YDjIFPQbkTHMEscRTgpL7Mbg4mjTRVmy7yF4pHTle1G7
	GRb3O+gGNUBO1EcvcKXsUk60fHen8t14VblpOVUrMh3HjHQ+bNxYAxaO23FlROwY48JBsvo8jm8XD
	4aNUd5jOVhgABlrzekag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUfVa-00057b-MG; Fri, 01 May 2020 23:55:54 +0000
Received: from mail-dm6nam12olkn2012.outbound.protection.outlook.com
 ([40.92.22.12] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUfRT-0007ba-J1
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 23:51:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rkz5DoYW4wbkLPyCYjOTekjr3MCjXvuqgCDohJ69Byntst5dEqRXq/3eSPxxd94TVNHeeKvvqQ+xAOqS184g+RSXTJMkh+yZ4fI7waeylR3ZUUzs8FpRs9KD/KniHbHZsZMRMOxYKcDSh5qrGxRjODuLem6mheGxgBaPmfBzQ9X0j3sWb5Y73HSu44TvsE0ETnoq9Vw1YPL+R7CY9AAI8LtwZnRgc0LgQjMu+6KZpyVnA4vSE7Cwn/G0g4P8lBxSadWQWpp2KQbSn8taXnxgtqUDXiavOS65iB95dHH/SNH+cFWXclhlK0uDRIM0cQWlj1XKcPQX9ioOFLot10M6dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L7ZjxXV6hRTArMKzwUdmWj9mjVn0DHbIyI4io8aPZbY=;
 b=XsPcaMOQvh5nODZppqx7STAoEmTW8b/UrlG7Xc7+00v+05SWa7FRpG7O9Pn3RQ3TGAyfRJTWmrtdwR5wtFx3sAVcuppCScjFpxqZm6JL5K+Y+Pxzz4Nsx2ZCNivxPXjVkzLr0wfqZNmPh9i9Vd2TL12AOGvIK+daXe7nUy2utHtzJ6f6jqq1iJEap0bsNWhqD08eyVjcnUWBtFcCAQ9NyB/MG/iLeT4cvdc8Ior/D17YfoXLQe18qFsRNCF8mScrR1R9J1K9R6dJNtk00X+hH40RRqeVTcDRo9ZcCpgiC9itOPvSMkyMxjYlz1xnA4eu3+nBh+2DfF1IwpMBzRYRuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM12FT056.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::43) by
 DM6NAM12HT052.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::85)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12; Fri, 1 May
 2020 23:51:38 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc64::46) by DM6NAM12FT056.mail.protection.outlook.com
 (2a01:111:e400:fc64::460) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12 via Frontend
 Transport; Fri, 1 May 2020 23:51:38 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:153A132993A5AD49D21AE72C1130A05CFE78ED357966072A317665B00A7C40E6;
 UpperCasedChecksum:597B554E6CAC7BDE018FD5928A0A1465794AC4B716BE6EE4930E2DBEA25D61CF;
 SizeAsReceived:7851; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2958.027; Fri, 1 May 2020
 23:51:38 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 16/18] ARM: dts: s5pv210: Correct FIMC definitions
Date: Fri,  1 May 2020 16:50:17 -0700
Message-ID: <BN6PR04MB0660F32A1A46FAF8CF5A52EBA3AB0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501235019.24022-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <20200501235019.24022-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0058.namprd17.prod.outlook.com
 (2603:10b6:300:93::20) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200501235019.24022-17-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 MWHPR17CA0058.namprd17.prod.outlook.com (2603:10b6:300:93::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Fri, 1 May 2020 23:51:36 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200501235019.24022-17-xc-racer2@live.ca>
X-TMN: [JJyT/8ZrxzfYYwrPn8S28pUPSmHK7BKM1TF1QgzQYWNBx6aL9SxKqEGEVpwVNmdy]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: f758242e-c207-404d-f759-08d7ee2a966a
X-MS-TrafficTypeDiagnostic: DM6NAM12HT052:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8l/oytQJZDS25KlY2sTD7oWP2WIzWAaCUhxivZHIrIcTQDydk6wkqX06u7yewlpOLUxEW5DxPKxsZUEPXQNBgmxSWaxpazq6V0CllfacwTD9SGEqPmJP1YnYWRfFW52MnukB1M2Lq4pbJKCJes5GkAsG87eEAOjlykn2mw8hxHb7kX+wQv93hwNY+yxxaukQMvSjU3hHyd/iMNUFigXLPg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: gz8LJk4jljtAbqrODqA6mab6ykVm2duBElvy1KH0rHF8sPklBtrt6RtYB2m0rcUnv6ApfR0J5nRvGtgH7qIYFuH6ryAcDJWtxhMvofpeIEe841cJtvTHs7bnF4B5/ocXD67i/4l1No/Tf+ohMRhw1q307hH2rrHsdsq1sCZZANYul1vpuOsuDBKyM1PEsVpO6rSvUgFUcVbm0fTqdsCDpg==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f758242e-c207-404d-f759-08d7ee2a966a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2020 23:51:38.0702 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_165139_647057_9F26A0F4 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.22.12 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.22.12 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

The extended mainscaler is only available on FIMC1 and there
are minimum pixel alignments that differ from the default.
Additionally, the cam-if interface is available on all three
while FIMC2 has no rotators.  The lcd-wb interface is supported
on FIMC1.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>

---
Changes from v1
- Replace moved line to where it originally was
---
 arch/arm/boot/dts/s5pv210.dtsi | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5pv210.dtsi
index 30a0c39a310f..1b0ee884e91d 100644
--- a/arch/arm/boot/dts/s5pv210.dtsi
+++ b/arch/arm/boot/dts/s5pv210.dtsi
@@ -626,7 +626,7 @@
 				clock-names = "fimc",
 						"sclk_fimc";
 				samsung,pix-limits = <4224 8192 1920 4224>;
-				samsung,mainscaler-ext;
+				samsung,min-pix-alignment = <16 8>;
 				samsung,cam-if;
 			};
 
@@ -640,8 +640,10 @@
 				clock-names = "fimc",
 						"sclk_fimc";
 				samsung,pix-limits = <4224 8192 1920 4224>;
+				samsung,min-pix-alignment = <1 1>;
 				samsung,mainscaler-ext;
 				samsung,cam-if;
+				samsung,lcd-wb;
 			};
 
 			fimc2: fimc@fb400000 {
@@ -653,9 +655,10 @@
 						<&clocks SCLK_FIMC2>;
 				clock-names = "fimc",
 						"sclk_fimc";
-				samsung,pix-limits = <4224 8192 1920 4224>;
-				samsung,mainscaler-ext;
-				samsung,lcd-wb;
+				samsung,pix-limits = <1920 8192 1280 1920>;
+				samsung,min-pix-alignment = <16 8>;
+				samsung,rotators = <0>;
+				samsung,cam-if;
 			};
 		};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
