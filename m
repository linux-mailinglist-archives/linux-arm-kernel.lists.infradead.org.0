Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F3F18C0D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 20:52:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lqKcKTDNZr4I7MxXDu0LxGSddLKc0UG7DayCw9Q08Fs=; b=THgdfKIlEgIBgl
	Spw0lMJL94szIxRrYrZYfrFUT6UvNJyerFFLmPvO+Ww+e1fDzrH98v8B3IJ3bRyepdmpIwUY+tMK/
	FdSds1m/GSRG74tIGmp3GKoptxUuwFgID3TMy68WeAeKRT9DyPRlzx+SLvGY/xUgBdFGIHp94At7h
	K6PmZVJxpCm/QdPbX674CFZ+rC7pkH1TlsYO0OLAQFYUGEpEhyd7YMeHp8lnlFdTL8x7lmS4L6t56
	gAQT26vlIFf6aTDY8eEZe1cDlFZBq4F87W0ZULFg2f/asPYfSLdHSO2oifFGBJkMc3B6djhh0NVTa
	MZeh+aGJ2H5+arxJ1zJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF1DX-00037f-I5; Thu, 19 Mar 2020 19:52:35 +0000
Received: from mail-eopbgr80054.outbound.protection.outlook.com ([40.107.8.54]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF1Co-0002IB-Ex
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 19:51:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c9D9wYq9Eub2KplHkUla7283hJLpW6bijlrX6hL5doTVQc45KAMLIg15bkOE+1JMeywnr2UpRN7XW+9XeTViCqLNXUpHj+oyCtK1M+z/MLi/IGmaPzBWMT4ew1yTb1yEsd85zTf3bosIwSGRJ2u2Z40YwidM85rx0oJg5zm697kAZ/t43xlRKWQgbzF8BS0ch4rnUz9VnlOYK2ZR/NXrb3BPucAQxIRlEyPawvMyUjXkyNHXuZD6sELHFx7NBlnec/yql1kmovvwZJlv+g/M/fBXlnu8lvxn5u0Ltpq/ioTA4HYMSEWJQCOsDMM7n1AuU7gyj58ekRfKH6MBEVfImw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s0QTYR+zBU/gPa+yJ0Tvr7AOSy44w97Zi5bWKxRvmcM=;
 b=nMAOdU+obZMnRpTEhVzUWND78XuSO92T4uVdgnNI3r5UsQM8df7S6NrFyptqgKmoNPBs0Lj7/wgmOClDyeJvXR1TJ3tl+bMZgnyxJ/ZcJ0FxiR3JqE4cZWG5tfFdJDQp3EM6FYIIThBL5pGR2Mb6BhGZm+YqHgpE23qnHo7L0AtxA+reX4GLnhcXJU3/iStkrUtccWzPQlzDwj0R6aGGTI56Fw1xPhCIPiHpdg8nCAHQrjezoyGMHWgQhY5ba3yGu4IRu+st322+OuFjUexDIhtv7oZN1og1tA4/rL4CTjhprpWivEkPKcqNVjVzjdQh6avZi5nwtTIjX8ImjaazLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s0QTYR+zBU/gPa+yJ0Tvr7AOSy44w97Zi5bWKxRvmcM=;
 b=mckwreSivnBDYNQztOZJKanuSCLzdbbv1J6pcLaSpSTrNd2WE01AIoWG3CybpLnPsi+aLA6513w949ASv1Zqodbc5VQ2wFjCIfrGEXhsOW6Udeg5cqy4GmKRhnsk+3rwzf7PNUMCXCur80T1QevnAhtLBhKCc6UQgUJhNKL8VCA=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@oss.nxp.com; 
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB3486.eurprd04.prod.outlook.com (52.134.4.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13; Thu, 19 Mar 2020 19:51:46 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0%7]) with mapi id 15.20.2835.017; Thu, 19 Mar 2020
 19:51:46 +0000
From: Daniel Baluta <daniel.baluta@oss.nxp.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org
Subject: [PATCH 2/5] ASoC: SOF: imx: fix undefined reference issue
Date: Thu, 19 Mar 2020 21:49:54 +0200
Message-Id: <20200319194957.9569-3-daniel.baluta@oss.nxp.com>
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
 15.20.2835.12 via Frontend Transport; Thu, 19 Mar 2020 19:51:44 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 229774bf-87d2-417a-5de8-08d7cc3ef4b1
X-MS-TrafficTypeDiagnostic: VI1PR0402MB3486:|VI1PR0402MB3486:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB3486EC278CF9DE7DEC95A62DB8F40@VI1PR0402MB3486.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
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
X-Microsoft-Antispam-Message-Info: 0x3/0y1zVptZ5VA9qcroBbaXRyP/N+MR8+m6i6ByKNImlKPgcYXLSDF472WnW5+4OVM5iafvlHpUF0YIIGI39nPi+coh8cVBQqK0vse5iGKOppUMLsSg5TO+ZZi6k9XbwEcnjf95v2X7eQzUXyaQWjK5S73KgdrB9PQvPmPn0yCea7jVIGRsh96xMflOXPtd3DtSqK80yBHWiEfWlUNBsvhIUrQRv/qB81n/nE29pgFJItUeJPUsMGSuOrZGbopBXJGeN4T+bw/+7K9rjPbAz3fUbjQDTsXoGD6ryXhiDaZ3VARr9rjOSzlVClum00nmy0iyxFq6TGvl+CWMtyqlJyHwxN/t19wBFwxfCBnBVboAQORId3UM74+vNvdOpzPBOgO6r0TIP2ZMoCEWDd8r8zhmiWjDHguCMRR+cV+i/V7SOjN1QdRXNqlZJlGsPngy
X-MS-Exchange-AntiSpam-MessageData: Aui9wGuY8UX14msPUG1ryqGFXXv6DtS5q6rZz/3SZifeGc2OZqwDR6U32XtQScuEYCaUc12a3CCgoZlS+zAWrPWH8sB1yM8ixZQEQcP1k0BadrmsuTcBRce3g52lUHpQg+XyJlPjcJyJmV0Y1v+uqw==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 229774bf-87d2-417a-5de8-08d7cc3ef4b1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 19:51:46.3326 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2APgmY5nfmseak7H65WNXth67KgSbWLI5AIWJoT5QJZnVwT/YHjiFRxepYdKtlccDiCqsT3D9UthU7IQlV+WDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3486
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_125150_536365_C3D06424 
X-CRM114-Status: GOOD (  10.35  )
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

From: Daniel Baluta <daniel.baluta@nxp.com>

make.cross ARCH=mips allyesconfig fails with the following error:

sound/soc/sof/sof-of-dev.o:(.data.sof_of_imx8qxp_desc+0x40): undefined
reference to `sof_imx8x_ops'.

This seems to be a Makefile order issue, solve by using the same
structure as for Intel platforms.

Fixes: f9ad75468453 ("ASoC: SOF: imx: fix reverse CONFIG_SND_SOC_SOF_OF
dependency")
Signed-off-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 sound/soc/sof/imx/Kconfig | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
index 812749064ca8..9586635cf8ab 100644
--- a/sound/soc/sof/imx/Kconfig
+++ b/sound/soc/sof/imx/Kconfig
@@ -11,17 +11,26 @@ config SND_SOC_SOF_IMX_TOPLEVEL
 
 if SND_SOC_SOF_IMX_TOPLEVEL
 
+config SND_SOC_SOF_IMX_OF
+	def_tristate SND_SOC_SOF_OF
+	select SND_SOC_SOF_IMX8 if SND_SOC_SOF_IMX8_SUPPORT
+	help
+	  This option is not user-selectable but automagically handled by
+	  'select' statements at a higher level
+
 config SND_SOC_SOF_IMX8_SUPPORT
 	bool "SOF support for i.MX8"
-	depends on IMX_SCU
-	select IMX_DSP
 	help
 	  This adds support for Sound Open Firmware for NXP i.MX8 platforms
 	  Say Y if you have such a device.
 	  If unsure select "N".
 
 config SND_SOC_SOF_IMX8
-	def_tristate SND_SOC_SOF_OF
-	depends on SND_SOC_SOF_IMX8_SUPPORT
+	tristate
+	depends on IMX_SCU
+	select IMX_DSP
+	help
+	  This option is not user-selectable but automagically handled by
+	  'select' statements at a higher level
 
 endif ## SND_SOC_SOF_IMX_IMX_TOPLEVEL
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
