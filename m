Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F3818C0CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 20:52:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9UwVzboaF5DUWg+1ZaZYR7gys1DbVZrZr1chKIjJsv4=; b=fidD41NohDx5gm
	Pr1egnb6FCxWsvVJDfkytmKrLVNeYDSk+VgU67mkxmoRB680LVTxuw6xb8srbvCLl5KJfAsWDSHti
	GXFKTv6rT5MsQuH4o8L9ILVPjBrv6/Sa7rw9MXEh9Rf5ikg4EhqIEbFnIjaJYqJO9THtsRyiMeQCD
	p0Q63oupTfzZp1mDHIpc9CFwhUEjffQ67qVDBZr7no+KN17C1viVJ3ihAtfPtiuuPRThqEL4uGSuO
	3uR9oaVjr7/zhQzdqX80DVxhmvmSty84ghu2XsJF7H1I8pZTHT91cBPHjOYeRZGcaiWtjCCkALTsS
	HT3my/kh0ADUHvYeFmBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF1DM-0002rF-Jf; Thu, 19 Mar 2020 19:52:24 +0000
Received: from mail-eopbgr80054.outbound.protection.outlook.com ([40.107.8.54]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF1Cm-0002IB-RZ
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 19:51:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ni5ktaZi01JxaQqHnu9Thd2Sd4Ln880Q2v5JnByqyso4VirLQPeSzaSch5z0pseeKqACNwc1qOWCXJFfowsANNY6O8bIK+xB6TDK9LhoDqBccMeDVBHQbRGQAaa7Jbgqjfae4geiK+X6HV81SWLd8duhWfTf0ysrthZ83Cj5khQUh6bER1XCNnOr1xCM5fGCmCBlMTHBZic7UwJGcRtiaC87mWMKPWXvzNlts5aT4oBIQeCdcosjvP8IZXp6tSpQMyZKfgxkzwPKskYHbxsIYfIOdf0kse02pWc+7Cgiz7ORhJA7mTkqc5cwm3AukLBrMtPxtjUMVyI7xaRcqr6rZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n50d34UAFoD31TdOb/UenHzu6OWlJmOwhnhtBlo5j5c=;
 b=aQ7wOpMAKSppJMfD4Sw76UPSN8utueUb73sg7oqI+Xyi866fSvs8lj9LPDJI900e9YXyzi1GT9tI2ja3PikzmgF1lb5GO4v5T0+W5Hjh0dPnLPhreRQIAoThrt6epksLgY13RtO+TMSh0QN4gCIxMB8TDXUlaO1rEXdMzbPwnacGnaAqeqcd1qx16sR2n8Tcu469f1INb5cMsENQ1rCUsvneppsF26h8XS1rfk7dc2ZM/80v1CVmR4BJaCacw3/tLZINwgobCycJED4O44fDhA68cZJgYjHSNCQVwwBMlISZ1W2svYo0jPQOCHwIi/PaKG3f+ke9dfTwvj1OS3TSuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n50d34UAFoD31TdOb/UenHzu6OWlJmOwhnhtBlo5j5c=;
 b=e49anRXzTBKqN6ztwelhcYsRyMjA9sEaZS4EA3dW7Fr0No0TUBE5LEoQ/4Se/QfK0igQhItTI7uMk0RPstqZWLur+SrJHAjJQD/P7D8yJxdURdP3ZHQUMsYKahraGZyPbdN8fMlrg8IjT5TaWxI4JsshvTiBh81WBGVZCH71a58=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@oss.nxp.com; 
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB3486.eurprd04.prod.outlook.com (52.134.4.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13; Thu, 19 Mar 2020 19:51:44 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0%7]) with mapi id 15.20.2835.017; Thu, 19 Mar 2020
 19:51:44 +0000
From: Daniel Baluta <daniel.baluta@oss.nxp.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org
Subject: [PATCH 1/5] ASoC: SOF: imx8: Fix randbuild error
Date: Thu, 19 Mar 2020 21:49:53 +0200
Message-Id: <20200319194957.9569-2-daniel.baluta@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319194957.9569-1-daniel.baluta@oss.nxp.com>
References: <20200319194957.9569-1-daniel.baluta@oss.nxp.com>
X-ClientProxiedBy: AM0PR07CA0031.eurprd07.prod.outlook.com
 (2603:10a6:208:ac::44) To VI1PR0402MB3839.eurprd04.prod.outlook.com
 (2603:10a6:803:21::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-103.ro-buh02.nxp.com (89.37.124.34) by
 AM0PR07CA0031.eurprd07.prod.outlook.com (2603:10a6:208:ac::44) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.12 via Frontend Transport; Thu, 19 Mar 2020 19:51:42 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f957147d-3441-440c-a2ba-08d7cc3ef384
X-MS-TrafficTypeDiagnostic: VI1PR0402MB3486:|VI1PR0402MB3486:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB34868FAD67FD17A51BBA8B10B8F40@VI1PR0402MB3486.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:923;
X-Forefront-PRVS: 0347410860
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(396003)(136003)(376002)(199004)(81156014)(8676002)(8936002)(1076003)(81166006)(186003)(26005)(956004)(4326008)(16526019)(2616005)(478600001)(6506007)(316002)(6666004)(2906002)(44832011)(86362001)(66946007)(7416002)(66476007)(6486002)(52116002)(66556008)(6512007)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3486;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UFyBHcu9dd4CiE72t3GNwG7fJ/6VFokN6nqxMxwEneEXZTvQt1gmGyz46/FD9FSg9fYTOy0T7nPYCYAisgSHF/wC2cbaGnKA2jMeKcxCXC3+K+5BGQmLwRPyuY1O8pbjFV/+yzDunU0yaVr0t2ObYAAzLqsBAbvxubAh94slTNztjQJB5mzwYrhM4GbMeosubNKsaUrIplxb9OOFnktgw+KXnzYCRWgbj84/hbUsDRWdDJD3/3Jo3i+bifNTD66thlzgwW9SBLJsptPdUVi4UcfS/8x02iJQMMtPDxjsw+p+md0Ck4G3zkfGu++mx6dHrzzyQgJKrwXbONSYH9oRT5XCZzd1YftXrXAKfqKIykzfoKniDEl347L7pumxv+rGC4P61R/gdO7YnD4r8qQHymSKCfut7o5OaW1FDynqFfRYXE1E3XVa9fvCuRS1cfaT
X-MS-Exchange-AntiSpam-MessageData: vi7EBYL36xqYDDDACuuTJlu+6OsSXOuZS22cgQmxRtgA68QAcFhdCGApyKzQpxaa1FA6FGqpLYRhMRK/rJMmwET38Abda7OxPNfS08+VRxwHKEglxIGAnEhbhExoPJ63vFN8y994309ptQigcZ6Xfg==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f957147d-3441-440c-a2ba-08d7cc3ef384
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 19:51:44.5227 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kK4AyjF2d1B91MX/pRAfUA4zh65uiCBg5vX12VWfUbo4re8CH3+0OcAtMJV/sN+xfEm8azOC/cQf+AD4fM36XQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3486
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_125148_896399_4B11F293 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 daniel.baluta@gmail.com, Daniel Baluta <daniel.baluta@nxp.com>,
 kai.vehmanen@linux.intel.com, festevam@gmail.com, s.hauer@pengutronix.de,
 yuehaibing@huawei.com, pierre-louis.bossart@linux.intel.com, krzk@kernel.org,
 ranjani.sridharan@linux.intel.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, alsa-devel@alsa-project.org, shawnguo@kernel.org,
 linux-kernel@vger.kernel.org, sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: YueHaibing <yuehaibing@huawei.com>

when do randconfig like this:
CONFIG_SND_SOC_SOF_IMX8_SUPPORT=y
CONFIG_SND_SOC_SOF_IMX8=y
CONFIG_SND_SOC_SOF_OF=y
CONFIG_IMX_DSP=m
CONFIG_IMX_SCU=y

there is a link error:

sound/soc/sof/imx/imx8.o: In function 'imx8_send_msg':
imx8.c:(.text+0x380): undefined reference to 'imx_dsp_ring_doorbell'

Select IMX_DSP in SND_SOC_SOF_IMX8_SUPPORT to fix this

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: f9ad75468453 ("ASoC: SOF: imx: fix reverse CONFIG_SND_SOC_SOF_OF dependency")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 sound/soc/sof/imx/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
index bae4f7bf5f75..812749064ca8 100644
--- a/sound/soc/sof/imx/Kconfig
+++ b/sound/soc/sof/imx/Kconfig
@@ -14,7 +14,7 @@ if SND_SOC_SOF_IMX_TOPLEVEL
 config SND_SOC_SOF_IMX8_SUPPORT
 	bool "SOF support for i.MX8"
 	depends on IMX_SCU
-	depends on IMX_DSP
+	select IMX_DSP
 	help
 	  This adds support for Sound Open Firmware for NXP i.MX8 platforms
 	  Say Y if you have such a device.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
