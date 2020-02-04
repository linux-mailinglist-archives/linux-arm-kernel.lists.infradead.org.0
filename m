Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9551015196A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 12:13:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xempZLZS5C075Abx26wOV2bd8XZrRtewrpW2ek7npqI=; b=joi9Ca/RpxR+iF
	bWBBecosO8BHt9TtlAfb2XIFOxSpJSfERk4B7q6SX0Nda+xGM7SshjI0h+vOPkn3zfizlOOShAjuG
	5ypRRbi2J3byvrWAAliaIQpTVecQ9xVETqFyEgUCBRmmViFFN2MZwjMI0A0/yFxsoCTqMVTOvNUbd
	7iIwWLEegPMMry3nMmrAgIjZ6mPDPzMHo+f3X8FfqZH8azSs1TLDpFjv2z9Q+Z/tYirazkzRPTfMG
	YZsr7xHVT+rL0LJ1yKXFCKK0R2ZdsJdJ0pXrdvIUJMaenjqcPFV7FkgApyDt2TAuB41yaX/jXpSly
	iMUfdcWJIoQI2gRI1LOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyw9T-0008Ud-7K; Tue, 04 Feb 2020 11:13:55 +0000
Received: from mail-am6eur05hn2221.outbound.protection.outlook.com
 ([52.101.152.221] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyw7z-0006lr-1l
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 11:12:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ar6YWqfSGLPSNEjM1p+FbljuMDrDwHO/Ye8Qs1fwh33nCGXkMC8TLXVFzTisDFna7yx66/wssPCKRbDng5Z6mzXDV5YmWNwCxzffMKSFAlh7z/aRbFmToLTTUfDl8kIO56mVVPBEw//rPKeYXe6UPjK9WfnQR21MPNOzEt5K6dfcUdlRMTfMC0GrKaFZIIvvtcrFEtX/MszVJwiMJWUyFJjZFdRrLhPl21JVQXe6VUs1FbYt14x2JzQY7CmPkXhfT4uYIye3GEAA5mtL5W23vSIH1B4kWH2wp9SruYcjiyf3OAD7Dy5e434wR4IVF/hlM5Gs72jFyljND/ZT+NlBWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CUCoHMSFxJiedQeYoEdkRr1AMKQSAXA6/V6g9ICwsOs=;
 b=LG0CP7C/Sx1woXADcK+XMC2FBcJK6mlr2xOPkUR+BGUz1v2hsTJn4a6DwQL8wH5a+2hTYx/eaXm+PySHBHc5ShWAvTzyMdm2extIrh64rA4XLo4a5jSLTiR8gNAwref14iPQcDaivsa7SObgUUr9CLIvzkrV6vFi+wc73sVfi4424nhGupExYqemLx3aREYmcWFDU+golahpMm2D8WmhMJqnwqJx63qn+Y8qDx0C5hbSyNHAIZKiVJm2OgMNsphMAtoPV9GHjzpy/U8fGcah8aOxHz3OORjRAQNzt3NOWbWQ117HL76jCjcABUVGBLqDnf/urs6JEvFCfPJhKLKA2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CUCoHMSFxJiedQeYoEdkRr1AMKQSAXA6/V6g9ICwsOs=;
 b=M1wU5S9RKRo1QkoFpfo9cykqE5SupitKnGnbOfoyaFR2rabO/U59bqXQtNrceqBRAmf1rikNmV2snUZqZ/v+bDbcZsUEd6r8l4Xq7KdKi+PL4zKAJGXYrA466Kw/aIA4453jGcBjp8A3F8P6UfA/Afa4Mhqhvg8KpDkD34eKWQg=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB5632.eurprd05.prod.outlook.com (20.178.120.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.27; Tue, 4 Feb 2020 11:12:06 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52%7]) with mapi id 15.20.2686.031; Tue, 4 Feb 2020
 11:12:06 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: devicetree@vger.kernel.org
Subject: [PATCH 4/6] ARM: imx_v6_v7_defconfig: Enable TOUCHSCREEN_ATMEL_MXT
Date: Tue,  4 Feb 2020 13:11:49 +0200
Message-Id: <20200204111151.3426090-5-oleksandr.suvorov@toradex.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200204111151.3426090-1-oleksandr.suvorov@toradex.com>
References: <20200204111151.3426090-1-oleksandr.suvorov@toradex.com>
X-ClientProxiedBy: PR0P264CA0051.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1d::15) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
MIME-Version: 1.0
Received: from localhost (194.105.145.90) by
 PR0P264CA0051.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1d::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.34 via Frontend Transport; Tue, 4 Feb 2020 11:12:05 +0000
X-Mailer: git-send-email 2.24.1
X-Originating-IP: [194.105.145.90]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4c7c14d3-60a6-441b-5ceb-08d7a96311ab
X-MS-TrafficTypeDiagnostic: VI1PR05MB5632:|VI1PR05MB5632:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB56324216D08F1E9CC22AAD22F9030@VI1PR05MB5632.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:862;
X-Forefront-PRVS: 03030B9493
X-Forefront-Antispam-Report: SFV:SPM;
 SFS:(10019020)(4636009)(39840400004)(366004)(136003)(396003)(376002)(346002)(189003)(199004)(1076003)(86362001)(4744005)(36756003)(5660300002)(4326008)(6666004)(44832011)(316002)(6486002)(52116002)(6496006)(54906003)(16526019)(186003)(26005)(956004)(2616005)(478600001)(66556008)(66476007)(6916009)(7416002)(66946007)(2906002)(8936002)(81156014)(8676002)(81166006)(23200700001);
 DIR:OUT; SFP:1501; SCL:5; SRVR:VI1PR05MB5632;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; CAT:OSPM; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Jv4aaOiuXak//+JhDZKV59ngkZ4GAC/IgIE+tInqdonLGkVs6DvuKDgQe0osGlIpNe79yV5UHYQnGSn7FXrROJNz1gjKXVBvHNXEH/IGnGJ159ZZKtFkbQlgnwsz4Pb/fz5dTCiU0GJArtc18godoEmMxzkluMh7srYechVXHuFgEBU8g4KPlatsDtyGb5JVuIDj5N7qlJndFETlIRGJcZJMDlymkXeE6Fa/keAJRIrK281tl9tLFpzukva31FHFdRWiWS45mF0r9QvlkRUjUQDN/eDQuEEM9uR7IDChycyDV5Qutx3W3b9XQE1m6QbbFoACT9OIlJ38fnaCAyMwERLD3JRSkMytVdtVNrefsOH+kW3zFbnM2O8XfemV1Mbjmm75kL4eZoIkl9L8f9hQF02GK7CNu+Vr1OTztqsFtS7LOY7Q6nL965VNOaXKxjHOYGUNL5Z4WjcWTTQPZ5xxZNzusbKIVU+AhGCCRfiX32LHt19nuHy4MIF/kPlbUlsC07mQmKl2/HovDoawG7MaDzg4zICSkkFxGpZLrNrG5Rtsp1LWyOUgk0xeK4grXmG4kLTFXa2F1QHa5aX4DoslXELCfnDKwvWgTS499cPSIdRssRkhKu06FQHSjOdrE2U9KLdz+8m/3wob8+ALNMCFBYzFWL6mrkf2zynisbRj+px9XVlhwpv4H8jaCt7EgEWUU7LwdSRxx+nt39RnVVxbvJwcfAO0Vg2rXaDmAwfeeH6lYMLhzTt3LNyG/awnAXJvE0aYHgjroD/Xoq6EO5PSLw==
X-MS-Exchange-AntiSpam-MessageData: TErrA5umbhZTt4VTyGEak9zNbTNlnQ5/bQexyQDNRM3XySc1vPDs5I+oJRCgobWGCDLcqoCWmNVs14AkkyDs3TdWYH4KjxSQZt7VUkm9ViTNqAUhsfeMciD7nzp4yAeDKE5eJb7iN0KLKrexWUBheA==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c7c14d3-60a6-441b-5ceb-08d7a96311ab
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2020 11:12:06.0853 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nW0LrwliUGgXOIcdnBWQCs6pq7Ld6m8Jv9r7m/1GZCX4HxyoFeKQNx8CsX0+tSsWxJ9J75rreCytuJcC6L38PORTLXQFqxPMd2xPyn3bO9U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5632
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_031223_171796_525A5D8C 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.101.152.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Igor Opaniuk <igor.opaniuk@toradex.com>, Anson Huang <Anson.Huang@nxp.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Shawn Guo <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Adam Ford <aford173@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Toradex iMX6/iMX7-based modules and boards support LCDs
with an MicroChip ATMXT1066T2 touchscreen controller.

This patch enables the TOUCHSCREEN_ATMEL_MXT which supports
MXT-series controllers, including the ATMXT1066T2.

Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
---

 arch/arm/configs/imx_v6_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index 8f216a599735..7cf452ddaa0a 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -179,6 +179,7 @@ CONFIG_MOUSE_PS2=m
 CONFIG_MOUSE_PS2_ELANTECH=y
 CONFIG_INPUT_TOUCHSCREEN=y
 CONFIG_TOUCHSCREEN_ADS7846=y
+CONFIG_TOUCHSCREEN_ATMEL_MXT=y
 CONFIG_TOUCHSCREEN_DA9052=y
 CONFIG_TOUCHSCREEN_EGALAX=y
 CONFIG_TOUCHSCREEN_GOODIX=y
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
