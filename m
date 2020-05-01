Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B91681C21B5
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 01:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p1l9ck7IIT4iedHYp7AJllRoLxg4VS5t1JQ8TfZyCGM=; b=dS0r7CU9MhV35a
	gQ+mT/4oY7BxYKljsgWcWgOY2Xv/Jq+1CsQdTw0cf/N3aaK/VmdPme2cOzneovlhGeav8CKG/AMSs
	7ncU06qR0SWLx5dw9SL9jCli5MyA3+o3P5gZZWV8aDEyT/a6RXGq6FQMGSsy16kzvkrHsKLsKW1zD
	3q7mgCWIAKyvnvjoDFU2JxiTeoLtojaCyhruqCgLKmAdzx+t518Jg+5fhGQoDWAjrVVVloxUxm7UN
	1HzboomsRxdFeks0RQM8E9EtSHcpkyDzwN1AiM/S1tpVMTSdiNuFGoymDEB8Pu+MeiIksApxi3VRq
	2D45KiesFcEASBoeSSQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUfW9-0005cj-7f; Fri, 01 May 2020 23:56:29 +0000
Received: from mail-dm6nam12olkn2034.outbound.protection.outlook.com
 ([40.92.22.34] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUfRV-0007dB-6b
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 23:51:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D7n7Lf5ZakJX2GtI0n6fdMzi2F/HPHaimjuHM1TKguI/9uCqHEOplejPmKghlLLqHN4f4MjZR0iVnMhDlBseKYOW5E+B8+5IW7/2Wxr6XTpdVSeK7fpyZt5KIIizLj2XvvoEThq0kf9wSlfdhYGbzNj6TXGrS+dnwgSXW4sGO+g8IFcRSsdfDMeuujZNPa4ex6ksRQO24VML+sz3SyuSqa4l/EdNcihc2wwqKRY+Kmo0jUVkXj2/d/qKzKDo1adKMjw5HCrDl7LhvxoJwShbVKLYyUuDYJCH9TSIxwS5Pkt0BavuWMuceRM80DMFV9xmc14Jmb/aUse1knN7oLmsSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=30FnPkQg6MgHAbbFYq87y7gvAN61SyA8Xl8JPg7VkOY=;
 b=JRE0JMLJRz9Rg1uSiryPWD1EZf7Uu1cJJbZTOBE8GgeUUM2en2xEbSr7DmdGbcwnUtXBMDFppYH6F/AOMjh9c7ddX5dAMLUuxh+zggUfy/E6JxTSNQg9vyTZxCr3YzgHNvtknqtQ2ViivUCg7oBBpJe7QoeFEw8sFXRvMITPfFxbqQoL/ohCWGkeQLc4RV4LyiUV9fySNYMxEsEiNhUwlry6buSW0l1gKCQXpOtKCtRNf8InI7ApqmMIkbWvHC6sHJPNu4EJTRyXMctlVyr39fiRLsduCdceM3HobywBI3Agw9Pq7VidwRLoXfCVDh26hdzC2HSpD0PAB8UqJLarqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM12FT056.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::4a) by
 DM6NAM12HT116.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::100)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12; Fri, 1 May
 2020 23:51:39 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc64::46) by DM6NAM12FT056.mail.protection.outlook.com
 (2a01:111:e400:fc64::460) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12 via Frontend
 Transport; Fri, 1 May 2020 23:51:39 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:AAB324946AA5C1EBD9434508F358AA077D7074415FE73BA7917102E560B8AE74;
 UpperCasedChecksum:663DFCD72C8516DD1BBF132ECEAB848832FA9617645C1D1EB46B7ADDA33D836C;
 SizeAsReceived:7857; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2958.027; Fri, 1 May 2020
 23:51:39 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 17/18] ARM: dts: s5pv210: Set MAX8998 GPIO pulls on aries
Date: Fri,  1 May 2020 16:50:18 -0700
Message-ID: <BN6PR04MB06605369BD22EC1C110587FEA3AB0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501235019.24022-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <20200501235019.24022-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0058.namprd17.prod.outlook.com
 (2603:10b6:300:93::20) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200501235019.24022-18-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 MWHPR17CA0058.namprd17.prod.outlook.com (2603:10b6:300:93::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Fri, 1 May 2020 23:51:38 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200501235019.24022-18-xc-racer2@live.ca>
X-TMN: [MVlAceRo7UQK6MuBisHS/Zu7Di8HvT1aOJnZyko44z2ZAYO4NwHYSkImlEU86drv]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: f1984402-c916-45e0-7be2-08d7ee2a975d
X-MS-TrafficTypeDiagnostic: DM6NAM12HT116:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UszKo8/PRi6Ldlwg2/VXCVu1XtMhz5qy6IvS8kRa6+kZbXIj0aMSrUcaG/4aSWtMTxQFQB4kZCGRfs9bBO5no0+UPtlY1ciqxxlfrkTDQSGA4H20GGM/SJmk31fDwIUamDwTpMuOunQvd4edJmKx3ORFSQKx9n1gQmIrujrqUfMAXLBZgKo8uE7BhLvOpKGKK+0ydlNJMnREmjAr87SH9g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: lD1teSLpFnVRuwbc5ySzad+2XtKmnS4bSJZuFr14Ny9s+i04yfHGqmDMvO8RpgzkROdgdXz6LXDdv0LjFqoLZItL5uzf1AzSWxRjLrVulgN9TlZrxBvI8P26LKGnpGXZXo1WxteryZnY1ICjIoBNvGajEddTyNDWpkStgoPRBkYn0ySXzospUkNE5doHCkESU+dUcW/DqSN12BcDmNQ77w==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1984402-c916-45e0-7be2-08d7ee2a975d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2020 23:51:39.5626 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_165141_263265_590BFC0C 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.22.34 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.22.34 listed in wl.mailspike.net]
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

Make sure that the GPIOs are configured correctly
for the interrupt (otherwise it won't fire) and disable the
pulls on the DVS GPIOs which are outputs.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 arch/arm/boot/dts/s5pv210-aries.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/s5pv210-aries.dtsi b/arch/arm/boot/dts/s5pv210-aries.dtsi
index 0bd65401ec65..cf858029292e 100644
--- a/arch/arm/boot/dts/s5pv210-aries.dtsi
+++ b/arch/arm/boot/dts/s5pv210-aries.dtsi
@@ -169,6 +169,9 @@
 			max8998,pmic-buck2-dvs-gpio = <&gph0 5 GPIO_ACTIVE_HIGH>;
 			max8998,pmic-buck2-dvs-voltage = <1100000>, <1000000>;
 
+			pinctrl-names = "default";
+			pinctrl-0 = <&pmic_dvs_pins &pmic_irq>;
+
 			regulators {
 				ldo2_reg: LDO2 {
 					regulator-name = "VALIVE_1.2V";
@@ -617,6 +620,21 @@
 		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
 	};
 
+	pmic_dvs_pins: pmic-dvs-pins {
+		samsung,pins = "gph0-3", "gph0-4", "gph0-5";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
+		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
+		samsung,pin-val = <0>;
+	};
+
+	pmic_irq: pmic-irq {
+		samsung,pins = "gph0-7";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_F>;
+		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
+	};
+
 	wifi_host_wake: wifi-host-wake {
 		samsung,pins = "gph2-4";
 		samsung,pin-function = <EXYNOS_PIN_FUNC_INPUT>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
