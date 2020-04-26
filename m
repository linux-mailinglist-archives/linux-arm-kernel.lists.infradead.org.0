Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 305511B92E7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 20:37:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQu6YmejPXODib6GoAyovZYGzx9Xf/gYW/rw/5eq3JQ=; b=lknAP3260i50Qb
	i3byTz7AL5ULpIZnkRGXN12Tu5XBnIBIiFYe8J2XsjubzRkdU0IZf3lClrMzRb7oJI7ABGaUUW2+Z
	PzkDrXMKKanrAYeIXf111j8WdjxDegwkGBQKqoHkNgf2a68Y6/Uv/lHYo9k2AhgtvrV1945VSR8xr
	O3RsD+nh6VMrdC1kd0sX89et2LMLOZqEhvhCQ3v5htnkdvC72cMhG+Z3NhoBlKAhKmYf923Ks7K5o
	0ZW89QtpOzQ0vMb912NzYZykdyysb/WWzdm1C37tGbRz771LFv9og9wqTQhHtc186wojvVJknrfYm
	ULKD+7+kwywFpUfsb9qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSm8z-0005vL-Hl; Sun, 26 Apr 2020 18:36:45 +0000
Received: from mail-co1nam11olkn2017.outbound.protection.outlook.com
 ([40.92.18.17] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSm8k-0005tl-Ju
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 18:36:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QB30yC2WjZ/VQd3/vwbpaNZEm9qasyOl3/ayUMEe0q6OxPcjZIH3zlu4CbGGLTnQJltiU/I5vg+/nvGHlhFLCAxy/jeVyDV0OW3Cm4vO4BYr7qh7jpcLFriK6nfj7sdxBuyY8B8ROU4Jr7tkqhHsk7Y3uKwreOkroNxlqfKRmY3MRGML4VLfyVyKOfRltOrZf2aSHOzfpx6iZ+uaFdX19J1VnhkB4KBhIy833QaZt3az0TCZtDFUmwOYRpktzaVMZlv02/noIcw/n8RzZRHgX/8Qhx7SfjRStWHul2CWgVa+kBvyi4Pca4xOmEBP/fW85HPYeOeeSrAoFuPUjlKIJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CQPOA1QD9GTVHUlU+BUHXvxBpBudTQ+4UbWWmc0Qg+M=;
 b=SC2Dw3hzKf1HZjP2IwXL8rVkRXKMSGx/Ks6oiF+PAYXTPg7cPtaaMQRSEMBTDWNzoO1ehxwLnoH6VaNtEwZtos4PXEg9HaSGrQW+D8sW/4+y0MI1w/e5pObRwX5FFhOUqhqyXM4MQclZVyZYqjvWVbKTutzIixMkIeikNXvrsg/e6MXerUz1hBA8CPZUboo0qYISHOmRHy1q8wqM1lZS069cu+2mpPkbnJSdz3o5aoMPNKKIDz0EhMRDtNP359WyvcR948avBlQ6KOAFxmvf09DD+UihcBelvQvGX0H5cZZM/hWQwIIIb72YLMkE3y6HX6I3rcI9z5p1VPyLthEPwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from CO1NAM11FT036.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:3861::53) by
 CO1NAM11HT030.eop-nam11.prod.protection.outlook.com (2a01:111:e400:3861::136)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 18:36:25 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:3861::41) by CO1NAM11FT036.mail.protection.outlook.com
 (2a01:111:e400:3861::124) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 18:36:25 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:E01E34F719E0316BD58CC9781BA07AFDB707C4524EA80084F3CD0E5697A8F625;
 UpperCasedChecksum:60ECD18AB8EBF18EE2D5DCA52688EF124A1DD4F6798AD3B5287099079BB7A8E2;
 SizeAsReceived:7829; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 18:36:25 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 01/13] arm: dts: s5pv210: Add helper define for sleep gpio
 config
Date: Sun, 26 Apr 2020 11:35:52 -0700
Message-ID: <BN6PR04MB0660C858441E09A44992F5E8A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426183604.28494-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
X-ClientProxiedBy: CO2PR05CA0096.namprd05.prod.outlook.com
 (2603:10b6:104:1::22) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200426183604.28494-2-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 CO2PR05CA0096.namprd05.prod.outlook.com (2603:10b6:104:1::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.7 via Frontend Transport; Sun, 26 Apr 2020 18:36:23 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200426183604.28494-2-xc-racer2@live.ca>
X-TMN: [buK8LiGiln34NSFlZ/t83sGSBv6ZpHHnbAVI40Z8qEJP93THUGl8zLbzcNBiT8pw]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 879d1e1c-43a6-4f5e-8db7-08d7ea10b94f
X-MS-TrafficTypeDiagnostic: CO1NAM11HT030:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EwW48xF3I+Sngj9nLygkrlWkSfGJtkZbxSxNVgvd6Sz7Oaw8yoiTl9sSn6LOESX7LWRDtO/l9QWXsa93voeMQUPwnEJdWK0v1kXfaVtNHKM4KVk2tJP41j11wpNpw1Z2kjoVagop2JtlGruKmBwgXfu1KPW04iUqnSWt2S+uwt8crMFksqTnnCpoY9q26JdeDk79Om1fBBC6XAGny14VtQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: zgu4v/O/pYS8/CMLF4u3Vc7zkdhmmYM4lmaApDbX1s4/M65UurapyWQK7hgOM1EgvNIUmqR4yQxkVOaCw+FlL4CF6aDzZ5O2trlaJS9cO6DMc9xK3SCp0qkRI28PERKTcGKu4t8XBGF553DQd0noBA9ndmBe7nxkVC+TMYBqE5UTzQG6Z5akXi9e5IJ5wTWOhmJ0ORcxPFzffA27NhRjew==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 879d1e1c-43a6-4f5e-8db7-08d7ea10b94f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 18:36:25.1926 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM11HT030
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_113630_651324_CE2C2C04 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.18.17 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
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

To simplify writing of sleep gpio configs, add a common helper
similar to what is present for other Samsung CPUs.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 arch/arm/boot/dts/s5pv210-pinctrl.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/s5pv210-pinctrl.dtsi b/arch/arm/boot/dts/s5pv210-pinctrl.dtsi
index 7f0c9d447871..609f323d0805 100644
--- a/arch/arm/boot/dts/s5pv210-pinctrl.dtsi
+++ b/arch/arm/boot/dts/s5pv210-pinctrl.dtsi
@@ -18,6 +18,13 @@
 
 #include <dt-bindings/pinctrl/samsung.h>
 
+#define PIN_SLP(_pin, _mode, _pull)					\
+	_pin {								\
+		samsung,pins = #_pin;					\
+		samsung,pin-con-pdn = <EXYNOS_PIN_PDN_ ##_mode>;	\
+		samsung,pin-pud-pdn = <S3C64XX_PIN_PULL_ ##_pull>;	\
+	}
+
 &pinctrl0 {
 	gpa0: gpa0 {
 		gpio-controller;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
