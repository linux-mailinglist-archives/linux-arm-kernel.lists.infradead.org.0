Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 651901C21B2
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 01:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ied4Hz68PxQv10KtpY9yXGH3z1ONsRvw7EWnJZo6bIY=; b=inE6YOtm6asNgL
	Xrs7g53FlasKvXDxMKbal6jpUYoJMbdWvNc9TFIDOJIDjJ8FRa2qKRSk2YZ2Lfl72cSY4lIIdjjca
	jbE2ObU9zPTyQFt4EVOt1YiT2ojUfEr4fw6z4Ej0Blto5WaILLNoI11zMdkmWPOpqZ7nh/v+xXtFi
	d1tYLfEUbL7cVeuQxyIbqpuTtQN8M3Q7eoXN8u2lxFJbLIYcPt3gRUYFLNWYABTOnT5mGWy2fdaHK
	aX9ZGruLj6444/tp1PjCZUwWeaFh7ELtWGyA8PUklayoib3stzzp47Fm3fzFdhs0qt0/mub1veTKk
	BkwDjjxz0BG8qBU/6OLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUfVG-0004sR-3O; Fri, 01 May 2020 23:55:34 +0000
Received: from mail-dm6nam12olkn2018.outbound.protection.outlook.com
 ([40.92.22.18] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUfRP-0007Xi-AX
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 23:51:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XTGa7nCeIG4/JlaGq1Tl6ctoem0OryOj/gWYSZfV4Ooslz8E1/8gPYForOW+tAHLZnjsRp00NxaRYlPqUPCJ+inXZGiJUoQMXQ2bttAANHVvR23hp6YkoaN4mYT8kDk6okJwQQVzzSEL07KRQ8tG0+n/C0XDc+WJDH9gnMtHCsbrvxDAb66eOK7XEdXc/xC9jGlD0C4SUwnSyULw+VIE5L96g71tQKUxXl7axHOOFL59DCp+v9Bk+SWRvUFr7b1OjvV2EKCL/Cip6l9fRObvTXpJNndZYbazPSB+2qFEp9s3ZBEXT6wJkIEXxAPFmxLuuEe7SS73lkwFkS59oTzn0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cgdsQHvzkLGsRuhYROf4sTojFixwdNIsWagrfzfwR7E=;
 b=D3UAwg9Cmx65wCx17KbDz5Ck1pXDdK+GHiCK2gdFRePaq0e7N7TgKtB8KJ/cNiUPanWIZOvQD6f8YoPOafKgaiw5VMZI9uVaYwC5pvqv7irJuX+93XjO4g16BFiTUUFAQjWZjvi0i807mmC3PnYDESt3RdkfRB0Q5aGARtIML3wsVPjr4nop1Q+3A0vX1n1wvneIZC1J6i9iovQ02oX70UUh+1cDWkTNMp7L3+yd9vLgIMzzwF+jZsl053Th2NblOEPGJmfporIde5VNe+fzJD79ye0GWp5QVghxpUQEmW3fZD0QAvCuYtwHg59nbsVjhEKcf0VhsMCsjF/pTvIXOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM12FT056.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::4d) by
 DM6NAM12HT118.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::126)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12; Fri, 1 May
 2020 23:51:33 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc64::46) by DM6NAM12FT056.mail.protection.outlook.com
 (2a01:111:e400:fc64::460) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12 via Frontend
 Transport; Fri, 1 May 2020 23:51:33 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:C66D8254CD5D15C498F8638EB97EF85EA76AC070D9FBD59916DEC013149543E9;
 UpperCasedChecksum:0D38F596013E77A39B35A53E0ECFDAA96FFABA7A163E7C4BE89BF2E8C5DDDC99;
 SizeAsReceived:7842; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2958.027; Fri, 1 May 2020
 23:51:33 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 13/18] ARM: dts: s5pv210: Add an ADC node
Date: Fri,  1 May 2020 16:50:14 -0700
Message-ID: <BN6PR04MB06609B8C5A80A74F25A73710A3AB0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501235019.24022-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <20200501235019.24022-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0058.namprd17.prod.outlook.com
 (2603:10b6:300:93::20) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200501235019.24022-14-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 MWHPR17CA0058.namprd17.prod.outlook.com (2603:10b6:300:93::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Fri, 1 May 2020 23:51:31 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200501235019.24022-14-xc-racer2@live.ca>
X-TMN: [4gIaQpeN+CxbKgL4N4l7flQZSh2PZJWC/edP+PY3K7njFD82l1NcQNvFXeGGFOAq]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 891b1a9a-4511-4c83-83ab-08d7ee2a9399
X-MS-TrafficTypeDiagnostic: DM6NAM12HT118:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K2P+9ZIo0Zd6gFlTOFraIGmRgpZIQM1R2ZorIp1wqx01hJLulXgv4kn30rr0NtlzxXkPKiP32RGc2NebnSfv+IxK5XvCvQe6vHYm0tIHdIXTmqd8FXWbf8U30bmxyflDms4az8cFNXxUbQ55PcjUUi6MwLYrNlXgvMrDU3dZr1A5SRqDgnTh1jrRmBNE909Z1vB9FDw1TNElxERm0DxWZA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: 9jZvuYHhfaax6iM5gdPpiz1E09rg85wAHqs+9zNR+cYYcC2XVXJhbqxTWhPIYBoTJw0DCxOjDFWl6vN7JZL31T6ghq7JA5OAnSVBP1UyDZwYohCBZbVzstdwlwjuHiAl1JHf4FkT0dDcxZIcelwv6yXto5e+LeSuOIFez6PgSIeu6UED0k49kPJbxitsPPk5MM1C8dRl+ralKU1RUcTlXw==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 891b1a9a-4511-4c83-83ab-08d7ee2a9399
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2020 23:51:33.3721 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_165135_491106_EB6F0A4C 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.22.18 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.22.18 listed in wl.mailspike.net]
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

The exynos-adc driver now supports the S5PV210, so add the DT
node so that devices can use it.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>

---
Changes from v1
- Adjust node name to match reg address
---
 arch/arm/boot/dts/s5pv210.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5pv210.dtsi
index 2ad642f51fd9..30a0c39a310f 100644
--- a/arch/arm/boot/dts/s5pv210.dtsi
+++ b/arch/arm/boot/dts/s5pv210.dtsi
@@ -159,6 +159,18 @@
 			};
 		};
 
+		adc: adc@e1700000 {
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
