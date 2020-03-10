Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B736717EF52
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 04:33:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wFMP5n3xW7vBFQNfjedQk4qkEz252fRup7aFFSO+sU8=; b=sf26kvLP6h5ETQ
	ax6S7aVieDSxblGx4sF3uH2K8Qs6lTyicp5s979v7PiVPG3RtCyiSpSNADpMn1rqxb9mansqnS7Ob
	g1nauG5Hk4zOFfoBCQUhQCHlqJJFeh6ZMauldMEHlLnPLcuW2Yserpm/qwPMVu36WqH8i3gdVHNPt
	0EIXUKOknvgnWMys4JsmgHJL71ibQO7yXnkfmBmjWkNDbsYHWnm21oSX58YagrdVqSaPGo5qR+rFW
	8KOajkwC3kzcghINq8pAmcT5/jetBZTvZHKIaaVkoSI30G/bph8WDf1+oLIwwJiitZBnKR814mX2R
	PIY/eAUp+w1mhLDD4I6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBVeC-0004S1-Ht; Tue, 10 Mar 2020 03:33:36 +0000
Received: from mail-vi1eur04on061a.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::61a]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBVc7-0001WK-V4
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 03:31:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lM8UAxwiJi18NVm1R50rjAaCkJn6Wu6K6DEgVitp5+i6zXb/KuBZr3ciWzsrx6dow3Uuy2aq4VjN+BntwTK4g829GbCdHhSjJbwdkM1d31MM3wChEApzNySyla4dvQbUbQ9WZ1e9EbaZhABAtcW+GA5oqby4w6xMVsx/tc1aS94iUKGasm2hsz/spEVOf82dIR9HdOv090k+4UEDfYk5rNfLY1C0GjW43CwCycKtzpU4x0KuRAjLEuQEUSkOPWkMagFxUjRcMzo23RXzUMxSZNiSxEuZMp7jVxDnL25Qo/gkMWcPUmSY4Z7/nqT57FjJqb3YuK7lsjrIOZu1X86Kdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=COyJZDdTIpbeJCEdtC6xsGEVAIySJtZ5Mg0pEtYsFCM=;
 b=X5IAkqt0EUK91j7gSs8Gh/1x1wK5lrZ933F7ZLc9NotOkJ+qymLsSjKJrlgo2ONPmFBcUIszagMNBhWtrs4l7N85zGPb0QlkkJHOzE6f3U7CjxBTnUqKoFFbtD+83H3zEP6j+MzvnXmKYvnRRsB2QA8goW1V70uF7OG/ji6o86MAR9Nz/62OqSmAAin4CWqzXkHM3aOKq/f9FbjyrrP2MoeNBUW5mY/RHH+YxzSbiAwMP0RGShS8balxwd+VheRW9Mk4snu30nNl1/pnBtvWnGLUDKqw2R2pAelLq8zmsg+XydQUi/RONkinaMOMW6j8+0PfviqG5Ei7QutAj0jO+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=COyJZDdTIpbeJCEdtC6xsGEVAIySJtZ5Mg0pEtYsFCM=;
 b=D6cO1x15XboGfqRYJyuZAI2ouAOxANDJeMnyeBfhmAl5x9dV8viPO2gdkiLn0qudh2pVf06ucdf74epkHTB7CEva0oOU1/wlOw2Q2iT4q2vEd+IvhdXfNbeiTElXfUdi1urkm2o8/fiDD2mOXcwnNX1m00V49R80VhTVfaDD1Z8=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6621.eurprd04.prod.outlook.com (20.179.234.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Tue, 10 Mar 2020 03:31:22 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 03:31:22 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, broonie@kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, dan.j.williams@intel.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, l.stach@pengutronix.de,
 martin.fuzzey@flowbird.group
Subject: [RESEND v6 08/13] spi: imx: add new i.mx6ul compatible name in
 binding doc
Date: Tue, 10 Mar 2020 19:31:57 +0800
Message-Id: <1583839922-22699-9-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
References: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR06CA0241.apcprd06.prod.outlook.com
 (2603:1096:4:ac::25) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR06CA0241.apcprd06.prod.outlook.com (2603:1096:4:ac::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2793.15 via Frontend Transport; Tue, 10 Mar 2020 03:31:17 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c59e6515-3e4c-4cdd-478e-08d7c4a3815f
X-MS-TrafficTypeDiagnostic: VE1PR04MB6621:|VE1PR04MB6621:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6621501B987629394358119C89FF0@VE1PR04MB6621.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-Forefront-PRVS: 033857D0BD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(366004)(376002)(396003)(199004)(189003)(4326008)(8936002)(6666004)(8676002)(81156014)(81166006)(2906002)(5660300002)(2616005)(7416002)(36756003)(66556008)(66946007)(6506007)(52116002)(316002)(956004)(26005)(478600001)(16526019)(186003)(66476007)(86362001)(6486002)(6512007)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6621;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iUt4pL/Rr5RkYnzXY/E8N2I5cPUmHlVlg5diGBB98BZ8d5aumR4NP4jDV8ngVjxMuYt6lQCVmwaWdrSPYzQq9CbLFJPmtQnCzRj6Eh+siDlP6lfymD73sv5arOvxhQvoEEbrJ/J4EPItc3kCBm6WQliybCRtX08ZlEkVGxgt/i2JLgCuNAfxq2nvnANGIM1Qb5tH2TXQC+cf4soC/oxXglEooLuycarRx2rgZKl8Z/6NrV0GGE//7EysqMXg62UjHrvbslpAFUzO6ik/XdlzProhtsBv7GSiGzqllXH521x7PV1kbMh6VHWI+JfAKewNL2YP9PyTIBDt1D653lE0bI/WiFfiFV/TdBV0N1332ZyMNLfhJq+a5EY8S/iOeTYCb9fTnvut7JuMyLeFh6dXkNui3BCgnz2l97cEBUONXJUJSnMUvOaUzOMIsp5514bf/dwnT32ZDJTEmz+jbdGxCx3I1TVux4K2tqVSitipJFlietQxHuP7/ttJUv/Dn0pV
X-MS-Exchange-AntiSpam-MessageData: M7hYccxc4iPi16Nak6NMs/WOzrA8Wx00RvN9EIsHNYwhWjGESzhLmE7MlNh+ful403S86jIcGBWyqssK/1sR4kYstBL99XYKXA4A5mT68ZEG60ofsYpq5qnGm3aydHwSxlCTgvj4S0AkwnSPmdn+Xg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c59e6515-3e4c-4cdd-478e-08d7c4a3815f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2020 03:31:22.8721 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qImS3Rh+ogyKqFHue+bFMxfUNN6/58Mye8zvrykNefYBIKVUDJbL21T6YkSZvvtuykr+RwNkw9DjuK7RmANTnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6621
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_203128_090029_3578112B 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:61a listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ERR009165 fixed from i.mx6ul, add its compatible name in binding doc.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Mark Brown <broonie@kernel.org>
---
 Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt b/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
index 33bc58f..0a529ba 100644
--- a/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
+++ b/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
@@ -10,6 +10,7 @@ Required properties:
   - "fsl,imx35-cspi" for SPI compatible with the one integrated on i.MX35
   - "fsl,imx51-ecspi" for SPI compatible with the one integrated on i.MX51
   - "fsl,imx53-ecspi" for SPI compatible with the one integrated on i.MX53 and later Soc
+  - "fsl,imx6ul-ecspi" for SPI compatible with the one integrated on i.MX6UL and later Soc
   - "fsl,imx8mq-ecspi" for SPI compatible with the one integrated on i.MX8MQ
   - "fsl,imx8mm-ecspi" for SPI compatible with the one integrated on i.MX8MM
   - "fsl,imx8mn-ecspi" for SPI compatible with the one integrated on i.MX8MN
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
