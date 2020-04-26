Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A15CD1B9307
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 20:39:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dcLH29i5k2VBlPmjCv5OrYpIzymxFvKMFpXdUie9iW4=; b=eviIO0tVr4Y6e9
	wpPTOZ1iKXIqRY/vz+eAbulWDBkADyEQo1YQqqC7geelWkUy66HYikU3BrVDjMlmOuN9FVf8DLhyX
	JBfDd0vNRFQll6ONKuj47Bf21wg0Mz1aQM0eymhW+dTpFIN+hHTpsT4h1AoiUAqzuZ7i1G8OzhzoV
	lh+/B0D2ZviP6Tut9SEDZQxxwLJD3bUapD4aXqyozMSjPTu9RsDxKgPnUqVFirvXcHCX7JIAtnQIp
	YI8uyoWeTiC6l23Dvf7dTZhRYQZ491fMYA7PTA/doMNRmy2d3UT6U22VW/X2udst08ckYcDijoVVx
	A8c7vBGo3wMvAscP/Gzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSmBE-0007oN-8T; Sun, 26 Apr 2020 18:39:04 +0000
Received: from mail-co1nam11olkn2079.outbound.protection.outlook.com
 ([40.92.18.79] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSm8w-000648-Mo
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 18:36:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bmUQePHa302rqBAWeQAwp1OIsKGVS2twnUdn5vhBnbS9kPNvoPIwWrf/1EWpdhoEzbU6YFunKTGWfPJ4IAR1tLhIUkWpnGjEm4RRcm6kuSBZz8eEQ3OxhOuzPxp8ipn6/IzUHRPR621VUeGvk2ajW15k6SLVkIqz137F1VLyjGlyuBSiOZ9GnffnAIBnP6d1gGEYQQNAmLY4ILaA1L9V7cm9zil94BglLsynCRlzrx4UXaJvXJcUyyojRAo8hJcJLObFNxSEx1V3mEdxHfJhVf02nnzhg0BwXRYP++JEb9Xz8+cYkKm86nHwfV1sVL5IdatlQFrvZIUTYVJilUTwNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VGNu/3xbaNpxsSVgC38hQUUTNLQvJatNnd7VJDjZmo8=;
 b=kAwGX+rZ1gAWckNQzLhaHDNXRRPNaoqkXMp/H7Jvty2jCMKplfRdBkHq7nwoxHZ/68d/3ve6cH5XcEZmPMBArLBYDuPAdO99mQS7/JmSiA5/CdJWn5TPhcZvH8+4VPkhVfHQQW/1CN8Q8Eyywyl0ozSFbj1xc9VBuReEKaR4yauTYhmGg6IURBMDFABH076BZvPb/QOk5S1rQmHyIFOggJw2v54Y/t6BgHyNjgNZj7QV6HEMR/juo8CnIRauWgPC9q05jHp2sBMSIa31xyzCcBJLVHqZHNIyhVauhBqkSifbJW/+pvuDKlvSgkXghrh/mDW07riKfZd+qhbAJ+peDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from CO1NAM11FT036.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:3861::43) by
 CO1NAM11HT216.eop-nam11.prod.protection.outlook.com (2a01:111:e400:3861::194)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 18:36:41 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:3861::41) by CO1NAM11FT036.mail.protection.outlook.com
 (2a01:111:e400:3861::124) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 18:36:41 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:0FAA18BFDF6FEF50702D1810A579857AC1D3B97FC5E888D4DD16731D088FF30B;
 UpperCasedChecksum:94698D7E4028FF6EDA7CE0C44A1CEE41E6917A84E305466176DECDF2D878ED5A;
 SizeAsReceived:7817; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 18:36:41 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 08/13] arm: dts: s5pv210: aries: Disable pull for vibrator ena
 GPIO
Date: Sun, 26 Apr 2020 11:35:59 -0700
Message-ID: <BN6PR04MB06608D9568CCAD70636186E4A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426183604.28494-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
X-ClientProxiedBy: CO2PR05CA0096.namprd05.prod.outlook.com
 (2603:10b6:104:1::22) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200426183604.28494-9-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 CO2PR05CA0096.namprd05.prod.outlook.com (2603:10b6:104:1::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.7 via Frontend Transport; Sun, 26 Apr 2020 18:36:39 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200426183604.28494-9-xc-racer2@live.ca>
X-TMN: [eL/F/hsHCqqUua+uKmFk550XRqm0dZAYKLj5vRIBTGBKZ+oIY6U7YS+U/JMR3aqh]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 350e0e33-029d-4bc0-741d-08d7ea10c2b1
X-MS-TrafficTypeDiagnostic: CO1NAM11HT216:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G1ynnP0il1ar7GiZTSBJjovVRK7t3MCkFr8u6BuObsn+Hqj6efBmcRnebmhMGjoXN+irHSiRLHrCV5b9MRAg9H9wX4Q945I4opdjfMpU3Qmo3I5sA8FL49SiyeOuk6cjMAXchN9dJTeO2ylRXLmJJ4mds7aLg63t7/BaPMF2+7idVM59zy5lfBG8gp4ia4gfCUzXlbeI90VjSNfrj+4L9g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: JcEHELp7K/VZt5WCr8t7lYl8nlOfql8QlszdlcOx78QyRZyK5jC0fHIm7q8b0TlffFEBq0px4Acj5emlYmWzPnWbFEVDVsscRhNW8Nx3bHGE0VFYHTPeN79otJXGvpar5yqQ6hRDTGS0N2dwiB+Q7imNSyK6E/XngHrEHmC9YhFy2iIUf2admG2qtRKvF0jwDysAzH6VZt0sz13yZqETPQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 350e0e33-029d-4bc0-741d-08d7ea10c2b1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 18:36:40.9757 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM11HT216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_113642_755575_D070EACD 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.18.79 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.18.79 listed in wl.mailspike.net]
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

The enable GPIO for the fixed vibrator regulator shouldn't be
pulled in one direction or the other.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 arch/arm/boot/dts/s5pv210-aries.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/s5pv210-aries.dtsi b/arch/arm/boot/dts/s5pv210-aries.dtsi
index 12575d64aa06..f30bdcb9c083 100644
--- a/arch/arm/boot/dts/s5pv210-aries.dtsi
+++ b/arch/arm/boot/dts/s5pv210-aries.dtsi
@@ -52,6 +52,9 @@
 		regulator-name = "vibrator-en";
 		enable-active-high;
 		gpio = <&gpj1 1 GPIO_ACTIVE_HIGH>;
+
+		pinctrl-names = "default";
+		pinctr-0 = <&vibrator_ena>;
 	};
 
 	touchkey_vdd: regulator-fixed-1 {
@@ -642,6 +645,12 @@
 		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
 	};
 
+	vibrator_ena: vibrator-ena {
+		samsung,pins = "gpj1-1";
+		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
+	};
+
 	touchkey_i2c_pins: touchkey-i2c-pins {
 		samsung,pins = "gpj3-0", "gpj3-1";
 		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
