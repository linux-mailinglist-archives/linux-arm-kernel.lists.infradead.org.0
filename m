Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D36831C21B6
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 01:57:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9qihk56LGxCIytUQ+3KknUNhf8waWKcwLZWcG/yUY6o=; b=J6RjsX65eAzcbd
	XvfbxKzx+6E0N3p5fq1QKe4ziSMCBvbWhUaQgOnerPDoDAx/7fU9D7KSl6W8CkS/HYz2t3aI3HmTT
	50R4DF+PrCrsb6dKWrH2jzeAjlpraJ0vhJxkBKkbBILxEC+la8tzcNN3E4iT7hxVFZ/U2BrqJR+BK
	ecYVD55a8h4nyfju6FkrDkEoNhVINtbmXXG+6kv+xvy887HsAgjHg2t/HFD2LSVj+mFy9HoQ0ku8g
	2pKQOwd/CD8DHNosotSBQCXKO5IuuVD6OxTOUrckF/mzTXRwQuDw6/A0VV32GK/1rAC9F9Jxrwt9S
	WVwZc1Wk+GQ+ujuh1bjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUfWV-0005vG-Nz; Fri, 01 May 2020 23:56:51 +0000
Received: from mail-dm6nam12olkn2051.outbound.protection.outlook.com
 ([40.92.22.51] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUfRW-0007fB-M7
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 23:51:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ciS1YIFugGx1qIUtnhugOatGoeNjxEIJmvzcSR+oDVUbHgmKODMesngg7M+3nVZ096ihOUtcNF7RsBbF+ZfrwzeU6nylHKKS/0ptSLkAAYRlitYjr+VdqUywBXqjAe0wd6PD89t3cITIkmrR2HJqQuB1QkXgbFN7IY1JLhIrdlBMgAWNlr7P7GucUHUCH32JCFWtKZiRfOvne5Zsj6f/NemVhToSBrZLpYmbS3EoQOG1NRFwXn/hpzG/mZ5CPVChdeXEiz14AYBSbpchcvJyBiff+eBpwxKNucdqMVaxhgtxnBmkMFhOr+MEGkFYwlLo08XHNysnHtLjk/LvmSrM1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P5O1LOzz2sPZQKkPD2FEZaAIqrK1URX6n2USXrOZGY4=;
 b=MY1Btq/5Ka/dhqJLd2bPu7ygE+vrT3bVzTeK5LQ8i1uvNcRK6YqMtfEtcgUOfEwMj9HOQuqhbhxx0QiaPigcJeHtdrdT0v6jElS99k62HN2y8tjlKUDeJpLCey45zI4V+KTK8Em5qQs36zcgOYnggBM2QB2WTZCaq8zsBVIffsFR6FJ9VWQY80ShGUyWXrD52xbJvZ5pSBs79p12izbaUHAqc3jGepQin6a6fmD975VnmONBy8j8FYAmisRqPaYC4HJEj/DVQHl/e8WDmrxcso1XnfXS6gHGqO3onPjBBwPDcZLqt68S+c+hJ/kZaHcErzKhEgfx2w8iJfLooOjfTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM12FT056.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::4d) by
 DM6NAM12HT118.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::126)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12; Fri, 1 May
 2020 23:51:41 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc64::46) by DM6NAM12FT056.mail.protection.outlook.com
 (2a01:111:e400:fc64::460) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12 via Frontend
 Transport; Fri, 1 May 2020 23:51:41 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:500BD4FFDDA152933E5711F27EDDA5554E11B0EFC217C2C5FA8EF22AFA9B37A2;
 UpperCasedChecksum:376F5A11BF33F2485363DB9171BA7F4E04697A33EF32E87F25E6AA8627C9E564;
 SizeAsReceived:7853; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2958.027; Fri, 1 May 2020
 23:51:41 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 18/18] ARM: dts: s5pv210: Correct gpi gpio node name
Date: Fri,  1 May 2020 16:50:19 -0700
Message-ID: <BN6PR04MB06608BAC9303ECB0F6118AE3A3AB0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501235019.24022-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <20200501235019.24022-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0058.namprd17.prod.outlook.com
 (2603:10b6:300:93::20) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200501235019.24022-19-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 MWHPR17CA0058.namprd17.prod.outlook.com (2603:10b6:300:93::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Fri, 1 May 2020 23:51:39 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200501235019.24022-19-xc-racer2@live.ca>
X-TMN: [0ZkQ7nAcwNP61UKo6jm5CT6RYSlM87jxE50gKlmG/iNiAVPEIlo/p2aAykdGkuxA]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 45c080d4-55e4-471f-7ec0-08d7ee2a983a
X-MS-TrafficTypeDiagnostic: DM6NAM12HT118:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JepEKslIU/Pr/uwfG2+Y0K/uV9au7rZl+8ShLP7x0rdEdbVKiDnj1hYWWVOE76srjlFlIfKFzUaX5TDTD/zFAOjUS42FxqbYMclrVbz2fNwRYa154VEz9OjI999YCM1zbbqJLqjY6sXQiVE28Iy4MaXzkFzi5sdXVCTtyopAe56zc3sYoOkqLQN8OPcIXt79fT/hYoigJyjsZNR2YsQkIg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: XQuTixmKn6b9MsRaBkt/+ezCRX3fnvFFTqeUwoKzBMasII7EW0kVOBjuksND2SeTj2J5ErRigCcnxRKMgLK1X1zo60EBpDzuEZtZgMMkNrVNsP7Jron9hiCoYkkBsmzACHQ1YI5jpQoY6QszecM8pb20o6gM4V/Q9eiAjqJeKFVExoqr+pSPrEdStDsuPrjWYlalEF7mizBq3x+88ySUAQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45c080d4-55e4-471f-7ec0-08d7ee2a983a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2020 23:51:41.1629 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_165143_340206_DCF796BF 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.22.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.22.51 listed in wl.mailspike.net]
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

The node name was gpgi, but the pinctrl driver was registering the pins
as just gpi and the "samsung,pins" i2s0 pinctrl entries refer to gpi.
The public s5pc110 datasheet also refers to these pins as just gpi,
so let's make sure everything is in sync and rename the node to gpi.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 arch/arm/boot/dts/s5pv210-pinctrl.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/s5pv210-pinctrl.dtsi b/arch/arm/boot/dts/s5pv210-pinctrl.dtsi
index 609f323d0805..5e8b66281f01 100644
--- a/arch/arm/boot/dts/s5pv210-pinctrl.dtsi
+++ b/arch/arm/boot/dts/s5pv210-pinctrl.dtsi
@@ -202,7 +202,7 @@
 		#interrupt-cells = <2>;
 	};
 
-	gpgi: gpgi {
+	gpi: gpi {
 		gpio-controller;
 		#gpio-cells = <2>;
 	};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
