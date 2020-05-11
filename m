Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B53F1CD50A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 11:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7K8qrkFDPQvmgVvjm0Onkw4m4RfPzYWh4/eu5zvaow=; b=vDKsAA0fb+dhni
	IjaVc+5WirfvcloW8VB+AnYELcgLrt1dTkqYsbAYgkjprukZLyWrEEHvZ+8Hmwh6e/VesWv+fP21S
	uUe9Kr4ot2yZc64J8ZO3gdeXFFofJk6WcX5ZmarSX3kcH09T6Q2ByZquUY2xA7/1ATZWeFonwyHbc
	ddAHT1EMQ70+MjcIGLIt8kKDvNHXREHMyK9ZcDMSxYoyEODq7fAqVJSMXADWiKZLinGJbkxKDunBg
	vgiVAnlfMpl176hSDtxjx/Dm+CcWdNSXdU8AhHvAifn2UadE01ps2JGsmr47yfDRGZiF8HsgZrOxN
	6d4/e8lR4dsCs5PXfYJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4nt-0002Yq-H6; Mon, 11 May 2020 09:32:53 +0000
Received: from mail-eopbgr00074.outbound.protection.outlook.com ([40.107.0.74]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4nR-0002Ny-DS
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 09:32:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bUBJ58iZjzLg55Tli4Flz0T9jFTjxJtaalpZOVxirPQK8v/pQBUbcYGaRjKt09L4NZKLK366SIIPvShl7mr30KZlkPbEZpovFa5hYmes3jven2AdPQQMt00jv0CpafkEf8CZf6r7r3SLilZabn+3qmELLKRXFNTt6Sl3qf+nVJxL+9OVigRiFjZtSlRTTV9j9HmgU7tRP36hiX5LptJ56BgwpMbXDXt3my44IlfZZ/VBrE/0TnUxxx4njQKS2QITlogoaWCveHhSNoLAYZVKPDjkeRhfRZ2kdLI4vhgrwFo8801Vow6KH28CfNFcp3gkps6TDe8ohoQLFLhSmMRMgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wl64sj8Lt5Fs5c04EiCMqJ8wORSQcVqx7AMW+mwbu+s=;
 b=lXeMbvgCAayo54vyxF1cntY9cL0230SgRC9ABOKACKlp3o5/uOopeDPeXQfbxuUVJftvWD6RIaUl6L9eecKLDc+Q2uEAk6OaKzcU2kJR5XRT4FbBd1yj4Vj+UfeDy4Gku2l5l81ToguQhLtpaDHJnbM2ZD1CLQe8ajWN7wk4UEuW/0QXMzXLDC6NIJc51LBAfCr0wuS/McEoQET8leRXHwyo+XTzUNDHaN+9k9cLetUBD6+9UWjiyfh/s7nYLQEZo7+cktAU3PwCMShZ7qLm6AD9MBdtfj8z66ADFQDPeELaQ3NsF38Hz+rmPOyz7Frak7gWh1e40cwcsQpey0mubg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wl64sj8Lt5Fs5c04EiCMqJ8wORSQcVqx7AMW+mwbu+s=;
 b=DQt7h2VSbAT8SDTWxz2gcC6nxTQrkeseZDWcSbt/qVulDhZ+7lWjsB02GRlDvDUt0YoaMm9anztfWMfTBo6O2ASUws7Jf1wkTwuoKz1XOR0ejRKAkwcBRMMJxUunvrGHYAgEirLfm0OS5c0W8FwmoTCvp/pjxlnJm1usMM8REDk=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6637.eurprd04.prod.outlook.com (2603:10a6:803:126::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.33; Mon, 11 May
 2020 09:32:24 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 09:32:24 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, robh+dt@kernel.org, festevam@gmail.com,
 dan.j.williams@intel.com, mark.rutland@arm.com, catalin.marinas@arm.com
Subject: [PATCH v7 RESEND 01/13] Revert "ARM: dts: imx6q: Use correct SDMA
 script for SPI5 core"
Date: Tue, 12 May 2020 01:32:24 +0800
Message-Id: <1589218356-17475-2-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR06CA0141.apcprd06.prod.outlook.com
 (2603:1096:1:1f::19) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR06CA0141.apcprd06.prod.outlook.com (2603:1096:1:1f::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2979.27 via Frontend Transport; Mon, 11 May 2020 09:32:19 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 7c32cd4a-2217-450f-7039-08d7f58e3625
X-MS-TrafficTypeDiagnostic: VE1PR04MB6637:|VE1PR04MB6637:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6637263E78A6837288D9AD9889A10@VE1PR04MB6637.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:660;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DLKXtMXxMztKqzNhsya3EMOpZbd15xTwCoK6vSqdkVfjoHpt+je8PtU05uYy80Ad1pZEucXzDTR0iEZz+MhrZjvq795F0ftzuJRfaxQA+8dk1OJjJOLCxqQeY9FBQgk6t9wJ0mZeUBidTkdzfcoljwMH0BiiJ0C2ODQi2Gx/JNSPGMUf810HzeKVnqKNYO/cgSrb7+MFeNMggyFlFlFlFcYgbMzcAQ+TBy/TIYd/G2ioAIhAlf/0XQhECXp++9VgfUkNI+vlM4ZqmrhkKEOXQw8IAh0tR8Z4D3j7Pv9+3n1bwRmQ3gy3JsXn7bi+qniw1pKl/psh4ib3r131IOE4PAoSZJC8QXTlX8uS8ma3Csri7MG7Dh9dfev/QdjIYc8tFPGf+dTwmJ9CVCoJwgHFNcqXnMt5qhdBpP2ZZFFSkDlV6/c9MXTomIXcC8cBfEMKHzolrDmeuGZy5lfJAW8qmCqMD3blRifJk09o93PTDYvh2vOEmEYfzfHaJI4LG6Vl5k1IpP2lNTvjQeXpJ5k7SsB38jZRVP6HfI6AQKe8cy7KNSKJ/kXSErORLTEWItINtcwEcntuiC3kP/274+1EKVL9cNWQXflZfWz6hY5Jh2lmzR1e6It1hL4OgiHAlzoC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(376002)(346002)(396003)(366004)(33430700001)(8936002)(26005)(52116002)(6506007)(16526019)(2616005)(186003)(956004)(6666004)(6512007)(7416002)(5660300002)(2906002)(4326008)(6486002)(33440700001)(66476007)(8676002)(66946007)(66556008)(478600001)(86362001)(316002)(36756003)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 3FLvKC9txymVDcCGdsdV97Gqvb+L+0WNvblF6naBgq/TV2jGBUyhc7l31dttCssaiNCxjOgdZ2eG5JGT5eaiKQJYiy+5L5rBjqKaMG1jfKJaUq044AJCaNIUhX/nQRFJg+CIbOJB8NSqfNqj3hIsaaJNrjs9v1uTRv/VBOEc47R4gBsEQP6V+oWX67J6KEijADseAOGf7iBrhA3yMKLxBVPPGScF+MGLV3R9zdL+srxF4EAXvrQSZ3SSdUjpET4k1gT4OddTsHuTAaa07VJdgsOypN9W0g+gKUeUmV30koPF+oneUvxcVbcIvOHZKNSjf9O7qNDEgBooAGRNPfKeTXqc88+fm3hT8ZSjw67FGniPaQJiJlaW9XbSMnyBkaIPgXE9N/BgYEUES6DUiuukz3zNVxPq4dmtsyOSTXUyB0Po0vrXGC1vSH0DWwHtd9HeqhiXTYktiNSLdFmbuhd19gRGNGQ/TFRqhuMuVqNHimg=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c32cd4a-2217-450f-7039-08d7f58e3625
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 09:32:24.2636 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: brJ/qTy4V2uVrLfC5cRo9EQ0AP04hqx7a9/J390pnWK3t0476RXN+sLbfyPfYTsIFBicztYac8ZZSVrXpnIxzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_023225_452922_FA084011 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.74 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, martin.fuzzey@flowbird.group,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

  There are two ways for SDMA accessing SPBA devices: one is SDMA->AIPS
->SPBA(masterA port), another is SDMA->SPBA(masterC port). Please refer
to the 'Figure 58-1. i.MX 6Dual/6Quad SPBA connectivity' of i.mx6DQ
Reference Manual. SDMA provide the corresponding app_2_mcu/mcu_2_app and
shp_2_mcu/mcu_2_shp script for such two options. So both AIPS and SPBA
scripts should keep the same behaviour, the issue only caught in AIPS
script sounds not solide.
  The issue is more likely as the ecspi errata
ERR009165(http://www.nxp.com/docs/en/errata/IMX6DQCE.pdf):
eCSPI: TXFIFO empty flag glitch can cause the current FIFO transfer to
       be sent twice
So revert commit 'df07101e1c4a' firstly.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 arch/arm/boot/dts/imx6q.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6q.dtsi b/arch/arm/boot/dts/imx6q.dtsi
index 78a4d64..afdd9eb 100644
--- a/arch/arm/boot/dts/imx6q.dtsi
+++ b/arch/arm/boot/dts/imx6q.dtsi
@@ -177,7 +177,7 @@
 					clocks = <&clks IMX6Q_CLK_ECSPI5>,
 						 <&clks IMX6Q_CLK_ECSPI5>;
 					clock-names = "ipg", "per";
-					dmas = <&sdma 11 8 1>, <&sdma 12 8 2>;
+					dmas = <&sdma 11 7 1>, <&sdma 12 7 2>;
 					dma-names = "rx", "tx";
 					status = "disabled";
 				};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
