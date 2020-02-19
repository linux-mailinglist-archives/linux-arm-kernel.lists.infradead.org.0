Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 557F2163E71
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:06:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n6sFPnO8Lu0NdDdXwch6AVFrKxOmN2qdJOyS97o+cq4=; b=oyZ2mJaW9pZFOz
	CfRmkyZiB/ux+xFgjI2EzabbjRWyF+wQrqjSMDsBYUYiaaG/C295Wm5jPrdhwByyylE4urLAhDvdm
	v6hO8ZAD4kKCSNHFwsEzobKz7vKaMoqB12jeuSVHTOC/AF4u0muBTpTMx5JYor4A/9A4+oc68l66u
	PqFSUN3v05U5loYy4jzEh0BtpOyp61raARa5zJLkFyo+R9OGUH4U+spLLwXL1c6psQI2JvGQfROj3
	s7J5ULzDvF7+ZjCgERek76Bt1q9q9n2Hn6ri4fs7w+i+3eYyppKq+Jii3YqY29tW1mnKmsZ+/hqWu
	KtKeVL3Epj/EwFA2f7mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4KN7-0001GB-17; Wed, 19 Feb 2020 08:06:17 +0000
Received: from mail-ve1eur04hn2083.outbound.protection.outlook.com
 ([52.101.139.83] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KMz-0001F2-0n
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:06:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FYo0n6Wy6dqgUWIQHtnyqDWHyMqBfQVjvcDAQwmgH7Hz83g4TjAgZTgnY7muuayh1klFs1viDcaeVH3b1G5JxGaSauFNUWopQvqEj5HTsasnTz8tO0M5F0wNEGqV3RcuWk79b5MvXX7n6wIIrOXiSCFcz0ODfhfvnc1XVyuaMh3riAOEdUINih0dH+lNUQsqsBQLiUnsi20u+iJA+6pjsGceGtr4qbc4iTo6VKoXHcSVDa/5J9SSeGnuWYXyPg2u6dOq4YSp5T0qcvpYmQi17KOoCyGZxr0rpraJ91gDynO5u+nLoix8LRRrckG260kULx/VqkveSkcwUJCplSvYlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SuWKoZEgoW+a2HA+rdUidaWbzpODUZhz3rJVcjHOlf4=;
 b=gQ6lQsDtPCHKRg0+5n9CQMvMRd8PHSqGwgHMp7Tt8bNhuulahp0EL9J7bZnJAXWTz063gzQRCaRGKPrrTryx2155a7vR+lS1pi3K7AzE38k51evjYhI49H5GMpBlEaEiOYu5bheXRCPRBJouc2PQorHwAPeHcq921hOJM0zoV24NNBgmWp1x+YW+MK8B55Et7nRVSh/+qtd7lBRUPfr3r4IrEnkGmovOdD5VaSIA6sus35B0gwlsIDdW+IwQS56al/DDJJKEf8YIbNImiECbeCqDGtoxyugWDHhVXKP79wIqZR+AdaprEfoNKjdZUWfwJGAjR9rK0Qf0heFp7kiArw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SuWKoZEgoW+a2HA+rdUidaWbzpODUZhz3rJVcjHOlf4=;
 b=ZqrrwEkTg6Leydzu/pId2JKv9mJfMYrIAahRCNH4b4Wsz/oi94qElLgqWrLFK7EQNLdUJd72xQxN3xeHeeWjhGPGE5zfUCs5LWKIA2hEprpdWGdXVnu1noAKYwZXS9qvJ546fZtBdeFbwawUo+wkb/jr1T39sc6jZpbSMyQZSDg=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4132.eurprd04.prod.outlook.com (52.134.94.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 08:06:02 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 08:06:02 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org, viresh.kumar@linaro.org, rjw@rjwysocki.net
Subject: [PATCH v2 00/14] ARM: imx7ulp: add cpufreq using cpufreq-dt
Date: Wed, 19 Feb 2020 15:59:43 +0800
Message-Id: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: HKAPR04CA0013.apcprd04.prod.outlook.com
 (2603:1096:203:d0::23) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HKAPR04CA0013.apcprd04.prod.outlook.com (2603:1096:203:d0::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 08:05:58 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 17a2ec7d-3e6f-429a-09f2-08d7b5128fcc
X-MS-TrafficTypeDiagnostic: AM0PR04MB4132:|AM0PR04MB4132:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4132716BD0CF34D0F69642F788100@AM0PR04MB4132.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:SPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(396003)(376002)(39860400002)(199004)(189003)(9686003)(6666004)(2906002)(6486002)(6512007)(316002)(478600001)(69590400006)(966005)(2616005)(66476007)(8936002)(86362001)(8676002)(36756003)(81156014)(186003)(7416002)(81166006)(52116002)(5660300002)(66946007)(4326008)(6506007)(16526019)(26005)(956004)(66556008)(556354011);
 DIR:OUT; SFP:1501; SCL:5; SRVR:AM0PR04MB4132;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: D99F/l2TMG1Tj1GAQEYcD7aCWlGHLq0phTkGuPcGoWeyX4e78+hh6BlH1ab5xCNDPiaFbeIu87/7PSxERunhTWvBAPNiFRhEkQupXRhALR/ZcjViBz8q9wBdEB1OXdfvd7SHDLtZi2GK7R4fjD43jpUL3TvkGB6CtG5LtR9HUos/4XOIJd4lsK2sOzWBH9XbZCqWBVft/qV96RO9Zv5hqpEc4s0Nc5ZNRss4AK5dwBtFkPacOLkCu90tSYZPinfO2l2MvbO0K1MlyduLWa4aGUFB1iQZ6kfTVaahKjaPoWvSt87eTMmi8ZslBbXmJz7zEza9y6aARaSUnGz9oyJ8wbfoZ7NXGVkkeNmLPAkMBwl3G1ovW6S+HGkiOujf9A8sFmJv5n+AlKO+HEDufofxXe4uYBI+3vbKDFo5ymCSzz1AFHed8JDPKuVi4A1+gaqPutJPNrQ6qWmO60AzgPg7HuVA1uLph3yLkS28V4KsNGLz0NjcrKxkF4teCjpijI807Bc82O9J+2tGIOHou0mzGWJAl3uAAXGnIghoxSqv5LST9qJjaI64IXYfwRo3AV6ms1DQXkTS+qIjG+tt+N0utdDPG+HOLJU2wBL4fUDZDbrVu5B6Rf4/bDS3sLpsVCQj+V801/A0x7NMSpWBNxTECzkZMkBDt0+ghp/01O6hVVOAOAx7cwP/slbliU7A29UmMXc4bpHjVfGdz9/2nNiudgYFPpZ7lZbAhg9vE+QMi8yxffFo38NlnUr6OyCLyvHz4oz08si8fRFkc/bTSFNKiljTahWAGtjvvbzSxoj3cMTTqJ7RVI3YcH4ua1H6FaUaHsWJ0cTd9p4EfPF2ujc7uoWmlVjW236vuajScCQ3Pc+UeTq36DUUfIwvEXBzO3MKQj5mb7mi+W6lzjiS9wVoj6upcoTi3Y4n5V7g3c4/luQ=
X-MS-Exchange-AntiSpam-MessageData: NOuTPX76odbqKRJYiqh0h4QcbJ9ZfInNunWIzYzrg+QZwwPq9bn+W4ouyxyCyhbbGhlXUZ4AK7OUXOJNwWTAMlZzgn9c7MHYB4c9miXYJnpZGFckbjHJ/ej+KeUcz0cbsnZXXtKCToNy5NO9SFj1yQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17a2ec7d-3e6f-429a-09f2-08d7b5128fcc
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 08:06:02.4755 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cTxUOXXIIAixhvzPw3FtdKB8jSWTQbHJOx2fjYoxG7p8BtFUogFwAetcQdeSRJlhcLemJ0C3k48YIPcbDjrXBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_000609_066425_A9C22DD4 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.101.139.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V2:
 Per Stephen's comments, I drop the cpuv2 clk code, and find another
 solution to change ARM clk
 Included get_intermediate/target_intermedate for cpufreq-dt
 Add i.MX7ULP intermedidate implementation.
 Per Fabio's comments, disallow HSRUN when LDO enabled.
 Add dt-bindings and pmc node

V1:
 https://patchwork.kernel.org/patch/11364609/

This patchset aims to use cpufreq-dt for i.MX7ULP to avoid
plaform specific cpufreq driver. i.MX7ULP has some specicial
requirements to change ARM core clock, see patch 11/13,
"cpufreq: imx-cpufreq-dt: support i.MX7ULP"

Patch [1,2]/13: add pmc bindings and node. We need read pmc registers
  to get system info.
Patch [3-6]/13: i.MX7ULP clk pfd/pll code change to make sure to get the
  expected pfd output clk. For RUN/HSRUN clock, we use API
  imx_clk_hw_cpu to make sure RUN or HSRUN could not shutdown clock output.

Patch [7-8]/13: Make sure we could run into HSRUN mode and not when LDO
  enabled.

Patch 9/13: let cpufred-dt could have get_intermediate/target_intermediate
  hooks to allow platform specific freq set.

Patch [10-12]/13: i.MX7ULP cpufreq support

Patch 13/13: Test dts, should not apply.

For rpmsg/vitio part, I have posted patchset, if you wanna rpmsg regulator:
https://patchwork.kernel.org/cover/11390481/

Anson Huang (1):
  clk: imx: Fix division by zero warning on pfdv2

Peng Fan (13):
  dt-bindings: fsl: add i.MX7ULP PMC binding doc
  ARM: dts: imx7ulp: add pmc node
  clk: imx: pfdv2: switch to use determine_rate
  clk: imx: pfdv2: determine best parent rate
  clk: imx: pllv4: use prepare/unprepare
  clk: imx7ulp: make it easy to change ARM core clk
  ARM: imx: imx7ulp: support HSRUN mode
  ARM: imx: cpuidle-imx7ulp: Stop mode disallowed when HSRUN
  cpufreq: dt: Allow platform specific intermediate callbacks
  cpufreq: Add i.MX7ULP to cpufreq-dt-platdev blacklist
  cpufreq: imx-cpufreq-dt: support i.MX7ULP
  ARM: imx7ulp: enable cpufreq
  [Do not Apply] ARM: dts: imx7ulp: add cpu OPP points

 .../bindings/arm/freescale/imx7ulp_pmc.yaml        | 32 +++++++++
 arch/arm/boot/dts/imx7ulp.dtsi                     | 38 ++++++++++
 arch/arm/mach-imx/common.h                         |  1 +
 arch/arm/mach-imx/cpuidle-imx7ulp.c                | 14 +++-
 arch/arm/mach-imx/mach-imx7ulp.c                   |  3 +
 arch/arm/mach-imx/pm-imx7ulp.c                     | 25 +++++++
 drivers/clk/imx/clk-imx7ulp.c                      |  6 +-
 drivers/clk/imx/clk-pfdv2.c                        | 61 +++++++++++-----
 drivers/clk/imx/clk-pllv4.c                        | 12 ++--
 drivers/cpufreq/cpufreq-dt-platdev.c               |  1 +
 drivers/cpufreq/cpufreq-dt.c                       |  4 ++
 drivers/cpufreq/cpufreq-dt.h                       |  4 ++
 drivers/cpufreq/imx-cpufreq-dt.c                   | 83 +++++++++++++++++++++-
 include/dt-bindings/clock/imx7ulp-clock.h          |  5 +-
 14 files changed, 257 insertions(+), 32 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
