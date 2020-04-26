Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5779A1B9303
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 20:38:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqnS3VPmwwOQWLvV2kQqWg9uLnRJQJRsuVL7dm6SoV0=; b=rTEnY/h/zG5Ksn
	Z3jtVGx5vUcGmvAbXRt5hwHXhSmRidwz+u/g9ab/n0Y+d6J/SkcFBtqV29dBPGdFRcLPmwKQTOn4f
	X+yhwZ3jD5bbs67jekPSoyxfkpZPCi02HOZyMikmZTt9GYYnZqvbr1Czgpk6xNAQck+wWT2Evicxx
	Dhz0Ko94oxgyrf9FumkALvyy+hXrIoShB1V6QnhX0sJ0VFmpRCLriHibXmae6INrhuhJlqqlsjkdT
	rG5sNcqvSz5Df92QzV2eAlyVlkGpDIVul8TUiRAEBkfL+njKDe8qa6Ebw8VyVVWJ/5sEiJDLh69Th
	DDSL1LrTj8GbeK3GtI1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSmAR-0006z4-Au; Sun, 26 Apr 2020 18:38:15 +0000
Received: from mail-co1nam11olkn2049.outbound.protection.outlook.com
 ([40.92.18.49] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSm8r-0005wf-9q
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 18:36:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lABNv7ITKSjBckaWzPVx4H3V38gOfBXn1qbRU4l6v3x4iyvHfK/ALw/g+9E6MSPh/xMQWD8c7ils8qBZ9H0c+K7s8jqpaY2nHqQwHBHWfWVVdJHkmHzm2OHXwpOQIzxfqekYNBQEpD9jZNtmz87rjEIYnPq8ka8bKUUTThyUU5TOYdOR+hkG6Yi1AGRLOGJ73ov2U9m/KPfRbGBj9u2QZ2nAoFL4ioPHgVq1FLGshCWoXVrrEr3F/kuGH88CRX7pLm/eN6bPM/P3tRYwy6GGTnN9i0nBqpJFJxQn9+uwASjnGfLS8OTQgcMoOjwHLEBREPRL8TirXorngXDfh1+n/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ADm1QCIora5F5xsI9vKan4SPBQw/v8naL7czrKxd8Rw=;
 b=er09ETFt0waCXiOp/ieYChYQQ+EOT+x4PNaEyJ+i/iY0tG7P47WvVv/QuXdgp+Bm9d3MJEl6X9pVvSJ1wuoG947SqUFtQMv7j5ISq79Xhi8+JVfOo68rq7hfNfQeRLDad/qcdSl/it8UzyKPXqshN8FBgnOCMGpkH5ls/WAFxJJFWCGl0P2UQ8C/DzPywV+Ws+OngNuc4P6N0qaRCnqtvAdZyUzZw8KmgT1mp/PH7batN1YGnvbomScTb5rlOZHvwlJDJAnSJl2uZ30yFOVstv17SCt2LrABtkxwz2uiBBaYpkIErcK2ha1e6SeOZ1q3dIAGxLSjnGOsxPDbKsjkjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from CO1NAM11FT036.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:3861::40) by
 CO1NAM11HT235.eop-nam11.prod.protection.outlook.com (2a01:111:e400:3861::252)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 18:36:33 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:3861::41) by CO1NAM11FT036.mail.protection.outlook.com
 (2a01:111:e400:3861::124) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 18:36:33 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:EA5F9FD55E70672CA3059BFE9FE96795BCA50A2D6DB1471EB5559CEFBCDCE7AE;
 UpperCasedChecksum:686DFADDA5E372A30375280C053A85FAADD06BB4ADCFC3DA1ACC72F6126D59C1;
 SizeAsReceived:7810; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 18:36:32 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 04/13] arm: dts: s5pv210: aries: Set keep-power-in-suspend for
 SDHCI1
Date: Sun, 26 Apr 2020 11:35:55 -0700
Message-ID: <BN6PR04MB0660BEA3352F245D0771576EA3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426183604.28494-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
X-ClientProxiedBy: CO2PR05CA0096.namprd05.prod.outlook.com
 (2603:10b6:104:1::22) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200426183604.28494-5-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 CO2PR05CA0096.namprd05.prod.outlook.com (2603:10b6:104:1::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.7 via Frontend Transport; Sun, 26 Apr 2020 18:36:31 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200426183604.28494-5-xc-racer2@live.ca>
X-TMN: [cFIMDdM5JYMMSsbH+HSgtOPiDl5tze8Q5kLY9mZmgETb+nQEn5vSDYdvAMiXY69u]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: acc0ead9-9e7b-42d5-ac05-08d7ea10be07
X-MS-TrafficTypeDiagnostic: CO1NAM11HT235:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X1pVPzGRGpz+Lqp+0XAojC2sUUr3/g9MsBUdurr6DGUlIcGAIfIexBraHWF+OikAZd+UNdQ5880UPh7ML+B0xP0CJ5m9wCL3lCDYrvh3ayXN+luxUf86eFP1qKCcAhwaXAzLRQ2p+ArGbCgftnMMbDyUm99cKGWpAgIsEskd4yzhFlPiSktP5YDyBhyMiMNCNZ2QfkrnFrXrE/qrQdOnXg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: lj6DxNaJcduvnfRIvlzIIBHx4Zbr3Eo1cTQPwk4Bm2+hnMBFusPFIO64yxRMhpy46wQ67QDDaROKQwe6CXnllGLBKSW64QIkLAn6L+IO4rIgaqwWH2wFUd7ta0e5T5/3iUmnHiOXSEexZrMw5UTFj2b+ME3Faw/ukXdGZ2pFS5LNhTCldAsiUZZHNO7yQf3GkFMCk5FQlQAJGljmbafmWQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: acc0ead9-9e7b-42d5-ac05-08d7ea10be07
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 18:36:32.9412 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM11HT235
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_113637_354762_E92C5EDF 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.18.49 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.18.49 listed in wl.mailspike.net]
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

SDHCI1 is connected to a BCM4329 WiFi/BT chip which requires
power to be kept over suspend.  As the surrounding hardware supports
this, mark it as such.  This fixes wifi after a suspend/resume cycle.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 arch/arm/boot/dts/s5pv210-aries.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/s5pv210-aries.dtsi b/arch/arm/boot/dts/s5pv210-aries.dtsi
index 8ff70b856334..d419b77201f7 100644
--- a/arch/arm/boot/dts/s5pv210-aries.dtsi
+++ b/arch/arm/boot/dts/s5pv210-aries.dtsi
@@ -454,6 +454,7 @@
 	pinctrl-names = "default";
 	cap-sd-highspeed;
 	cap-mmc-highspeed;
+	keep-power-in-suspend;
 
 	mmc-pwrseq = <&wifi_pwrseq>;
 	non-removable;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
