Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C721C2164
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 01:51:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQu6YmejPXODib6GoAyovZYGzx9Xf/gYW/rw/5eq3JQ=; b=aWlN0WjfnzTiv0
	LBdGysKMze9vdIkE7+cMiAueK9+qfmUmoBmuvFFUgLOqKwbVWCPT9YOXqK5PHuHs/i0o/9moKQpBI
	UArc7GCtIMPP1oRYoO4gWdNQat4G1910DO/iroP0xDL89rdXJ0u91JtuKdEe4wZnMOw2buWKttBa0
	mBIrj55CTQ6s6lsVxQtx66CeyBZFpNTfR1dcnpgbBt2VRYG3JropQl3YE8VcFu5PtLy96sSZiNFLI
	vcdk14Nf5LZR1QxMKdOsyYbygtr3M0mabrA5P+X4OhkQ/KI8/U/+AfVMxzHqYy3eeJoM1ZW77Zz59
	QjFV5E2u6a45wzjeRt3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUfRD-00075s-EK; Fri, 01 May 2020 23:51:23 +0000
Received: from mail-mw2nam12olkn2032.outbound.protection.outlook.com
 ([40.92.23.32] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUfR4-00074F-Us
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 23:51:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I639gnG1KE1bUR0cxSLdpZ+fxlf4O4TmkNgclvzpbK2+Ck3VjZFLaRHw+/jD4gO0wv2ReXFM6vu+Zkj71SME18lD8mItOr365luN3Lrq9evhVg9tSPqUuvC04sjPguKACK5FHGhy0jNpTkvmRi5kBkKqUDxUqMu1iTQ+NojjaepJ8giJDideyuWFMRH8Wo9JeFXHIjGbHLZzCJvtDR9zrC2NbtkawadXGPvv9x3Bq+DghjY2zeGl/JyrUonXQdOhy6BDImYNvwpOSjYXlOokarIc+4JaJRmSiRVs8xr6dS4FIPnkPwvbyKaUUJaeVR96EDQpv22bIqSN8Ybb+HTsUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CQPOA1QD9GTVHUlU+BUHXvxBpBudTQ+4UbWWmc0Qg+M=;
 b=Dyhg6tFQR7XIyx+ZclR5PJ+JEd3EivA2WYUgYKc1076HpY75GDXl+u0N087Sh+aT2AkpMsR0dk5aGgbpERjKcThRUVgu7Nar7a6/Jbfr/TVAWNZr6FFASRFjrwlFDKYE/LkaaQUQkauKrc5OBiEwW4rureK4cc4Yl64bhCbBDaMS5Ge0dloTMiOOWUfW+Kxo42b1O2KALCRmOqZ/Cf8krXelkycTmrWtG4pDDydlR9VLLCieWACB0IG0fdvKOUI+zLnyQncPXleUiYhtTxpQT+ZCkhxLuQfoQ707/ybL37FWwpbMt0tg5W6zd2/uzZb2oxJmO0uTrf8TXATbU0aUoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM12FT056.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::49) by
 DM6NAM12HT168.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::131)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12; Fri, 1 May
 2020 23:51:13 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc64::46) by DM6NAM12FT056.mail.protection.outlook.com
 (2a01:111:e400:fc64::460) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12 via Frontend
 Transport; Fri, 1 May 2020 23:51:13 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:1365E61CB772CCAB1694D4B7488D5CE67D868E2AA1B95A8E57CA286429737748;
 UpperCasedChecksum:2E3433D890EE56A4368986C1AD1CF85DD99A31F933CA35E321977A5028A45848;
 SizeAsReceived:7855; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2958.027; Fri, 1 May 2020
 23:51:13 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 01/18] ARM: dts: s5pv210: Add helper define for sleep gpio
 config
Date: Fri,  1 May 2020 16:50:02 -0700
Message-ID: <BN6PR04MB0660BFEF9B4A618BBA90AD10A3AB0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501235019.24022-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <20200501235019.24022-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0058.namprd17.prod.outlook.com
 (2603:10b6:300:93::20) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200501235019.24022-2-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 MWHPR17CA0058.namprd17.prod.outlook.com (2603:10b6:300:93::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Fri, 1 May 2020 23:51:11 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200501235019.24022-2-xc-racer2@live.ca>
X-TMN: [5ErvH9+B7c99eb+NHFblKfuuucl9T/Q/VcoitdFfIUIIlu1Bzt3MiCDnuZUxvBAi]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: d1fa2f23-81e2-44f3-2e63-08d7ee2a876a
X-MS-TrafficTypeDiagnostic: DM6NAM12HT168:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OscV43Ds18JhVX9Aeq1gZ7Gtbqm4XjN9kcs1XjkwcT0Ue7D9ubHHw/aOwCL7/GOZOYKYSFIYgCHjwcuwsu4oC5PUUpBpuRJ/X9D6RnYAh3bl+rz7bsAsZaO8QWFrlOZpGaITZ4EHey9rVZqR1gz8eVMlu/cQQQinNdeh0YD9x693OalQx6RuhGf4haeya0anY1hi/AXWOGgcBu3XMr4q3Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: hfhD4BdXrA9R281TbuIqXSXgBWDwdMxYP4PvbSAjObW0ELOOhLYDeX594MroBCWB9v9NY9mcL6bAmvEh7L6FqXr7ZtKFrJIa9DG5hbgVT9qbrkcKDV8Wgu630v8gh54dVxsinn141rRo44BfzCdb3bzvtb7NdjjTJf5/fkG9x4LRZ7ABMGvy+lT2NAa3y3ZMGp/87Ft5pqdhPm4Vp8xY7g==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1fa2f23-81e2-44f3-2e63-08d7ee2a876a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2020 23:51:13.1131 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_165114_994511_AEB3435B 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.23.32 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.23.32 listed in wl.mailspike.net]
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
