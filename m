Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DA71F075E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 17:21:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vdxPBCFQLFIMQVGgIvSas7BEUYtPc77ObYddgMDAvfA=; b=P4bzXscQMs3vRU
	0QEVBlhMbu8W44u7juLvO/EraQaCF+R6qMnby/OaqopRqyne2eFlrFgg574+e1aNZDeY2PzskXB3A
	poCdxjL8Cjk2iRfzOjJh4AdjH8sa4+HEZvNJ+xRCCaBz2eYv/UHmY4Mf5uicOHHsI47ENEAR39M/1
	MUhw/MyTJ79qq4diNbpCea2z80R9f1G80ctyr2mF3sFNaax228jbGxFAu+07GW59cwx5hP5Sb1oQz
	jtp6NyyI11GaejQbdYQl1qcwmf0HLMoHK1vj2HxqRUrgsK60YxiO7UMih/+MoOEkO/R0wp/kY9Z6x
	1QhZqoOvCEdE6rwIcyYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhado-0006H9-Ah; Sat, 06 Jun 2020 15:21:48 +0000
Received: from mail-eopbgr60054.outbound.protection.outlook.com ([40.107.6.54]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhadN-0005vV-SI
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jun 2020 15:21:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OvjRqF84BHhlD4myl9vwMxdZONqzTufRkf1UWeggu1tCpD8tXOpKLwKYUzh9cF5xYoUp3yVLgZl24SShqxDx6/Gb8u8c+rc9pNTIfBW89J6HUSJ9nppooKXGHgyNC7fPfphPH2wIgITORT9/LI7/Ktc137b/6Fjib+Mt/hknnegB7AIxJwKlU3hMU1pX704QbJpqs3SdikX2EIgaF7lsAmapQyyF4NH17GUlSxDv9hbG34mJpOor3bk8X05govJIjWpL1PGtqAFaO9Ug3+g8P7whKcRp74Zj1umyMUESbMWZeoANsc45PtNnD8lMgFpAuz5MpwFTz9C0eaiFnqFArA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0izcWiIsFhbVumJfO4SdrrpucrmDe3nP9In+ncyqnZw=;
 b=bVe8ls7trSVQOexh4uuEzvCrYynoGtjDNvq83qBkVGAr5sQQDxxuni0OqI8zLxcoB9vBkDzGjefLUwU4le220BxWTSzzBpOE6YqEGX098lZNaRlDGiKqfKoSomvYAuYZGQeOUISwfmTHgh9XxCIxmNGciI3CTjL1d5MGWDbA9VXy92eMzoc6+mWnC7RC0rOHnSoKBZE4zLE4OofTqiBNYUDDlSS6Vl80egt76xaxjohxLbXlmViP92yJs/Ww0BYhPADrEilJnQUuUpblYt4jM5CvCVsVO/FNh1eYT77P13Eh6fExS0ih6OrWcrvCnWm9J7flo/OusUE5iXDk0aHYyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0izcWiIsFhbVumJfO4SdrrpucrmDe3nP9In+ncyqnZw=;
 b=CC0v6BP00/VwKEslY95Fyw4GEBJ0ynOZMidq0VaSZiE2YqtvI//QACkUny81BUpiU7mCfA5gro+bg1M4bfLPl4PLxftnEYlS6pU0dOH1VNI5soOVryxLyO6ShNYdMJKR0ir9A18SBdgMfCn7bSX9BX8EE/LmeN/w23/G63HDkiw=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6511.eurprd04.prod.outlook.com (2603:10a6:803:11f::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Sat, 6 Jun
 2020 15:21:17 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3066.019; Sat, 6 Jun 2020
 15:21:17 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v9 RESEND 02/13] Revert "ARM: dts: imx6q: Use correct SDMA
 script for SPI5 core"
Date: Sun,  7 Jun 2020 07:21:06 +0800
Message-Id: <1591485677-20533-3-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591485677-20533-1-git-send-email-yibin.gong@nxp.com>
References: <1591485677-20533-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR04CA0184.apcprd04.prod.outlook.com
 (2603:1096:4:14::22) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR04CA0184.apcprd04.prod.outlook.com (2603:1096:4:14::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.18 via Frontend Transport; Sat, 6 Jun 2020 15:21:11 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: fe764ab3-a5ba-47a4-8490-08d80a2d41cb
X-MS-TrafficTypeDiagnostic: VE1PR04MB6511:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB651156C9C0C3BF31DE05BABC89870@VE1PR04MB6511.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:660;
X-Forefront-PRVS: 04267075BD
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aP3w4PT0yhLwEDpG69hnAfiQlC9h0Plc4Kg6c1BIWarsEp+b3ySFNSFSpjhrh/K8B55aV54tj0m9tI67xkO3gOFpD7dCEYXm3l/YbFqZkhWt3BJ23F72cdkiD6oJNHFe7RjLCUU0zKKG1ORKIr6cb+XlffwHBOeAbJJpwzi+9kTEzuo4o+fTeF00nwWT5o3o9Z4QWuZN4IurMW7VAUJjW8GlHAPvFK6B8r49ec8SKvpNl2/LK8K96jnLqGVihbN9q5EJpW03rmbgiE25afVZwSym4oAhtztghniUBOmAZRTw4r2VFRscVRBqo88i5VGB10dqlTbk1HPmFojaeIArhVJP4Huni4BEe1QbzJPCSnAKAnO79MzBVV9N2C3LFz94dujKrAUy0JemSQ1nAU6yWGBxjccDac/gBseKxkBSGoHVXGrtqcEpcrgYF6HAs6Cgd7MLGMWC9W4mO5K6J4sQsPs57inAU3BHY0E6Rp3g1WE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(136003)(366004)(346002)(39860400002)(376002)(86362001)(5660300002)(66476007)(16526019)(6506007)(66946007)(956004)(6666004)(2616005)(186003)(36756003)(2906002)(7416002)(316002)(66556008)(4326008)(478600001)(52116002)(26005)(6486002)(6512007)(8676002)(83380400001)(8936002)(921003)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 3fnGv0+uYYaRKCw5TCw3oSrtaOOg4olWc9cApIIdyQdkiThECTSIOQ8c0qKjwAoCYW1ldDrifXgMiNT4Cy+aoWjE/0+jORnvcmbewkfpmLUfmHGd7k+dN+B9JbRhL7OhUKfXdRqSiKq7Hzr9hRSg68OG9Bz41yBkPqnJGL4hjW3HluFxYLC1CCtE7obAGi3Dc8vGaTsGYiW66sxiXKIkFIiDGM91v3t4F1H2OQxsZX3RwIXyHu/Z6upbDzkp9Hl6ds57x4idzXKE1zSzWZILQCKiKg9Ixkc53fZvk5F5ZoUAbtHfnheX4XfOhqCz3atIzl2FdyHl6Q7IwamoWEm+d5encaSX8qOkjUGJ5n1DRupI3ftz5O2Z4WDpYKBnnq+vKgNxtqO7ExGxIOso9WEp/FmnU0/gXD649VZC0kxZC5IrYBZeclRIfKsd0LxIcTlp96xeFLStRAEnrUF+0XdzkgQCzw2MiD2bzeaF5jTB0+M=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe764ab3-a5ba-47a4-8490-08d80a2d41cb
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2020 15:21:16.9986 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EcDmcHsUsLqDfBr3zcRviWQN7gC/cLT6OCUdjA9yFbcCF4I5Mt/PPL7Uw03LvesumwjyN5V0TWbzKaVIm3K+0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6511
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_082121_925751_FD5F5163 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.54 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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
Acked-by: Sascha Hauer <s.hauer@pengutronix.de>
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
