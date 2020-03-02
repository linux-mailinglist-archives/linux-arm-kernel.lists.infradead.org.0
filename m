Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E15B2175192
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 02:41:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7xd8N67EPYEmD6QYbWgkOx+j02Dc+royuWjvs52ON8=; b=OW+VgJASW5hi7u
	zlACvWhA0+4SwrQ1zSRo8Tz0hivfEmeCQzcuGNkAvQhCtW7QKdGEodVNLgs4JfYvDS2ywNhbH6WRc
	ozaWSy8hjdkgjfIPmkRc9Gtvayuwemk4zD7UcN0GbiMqYeYtm9HkL4r14hR9gqabljFygClR+qblK
	fiKXOrNBjFUY03+gP3kbJZ9CC3KYnYCDFT0ib9gEurEeCqpTrde9TVZzBGphn14Is+qV/J93XfCRR
	A2qGJxkF3DRCiO5L/L16pvGCyvSy43VtKbw6p+6lLV4nrD7Ecksn3ssbviRv359frelBVB/IdO6hm
	r4hhPGC/y7Im/DsHQhfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8a4Z-0007Qf-QM; Mon, 02 Mar 2020 01:40:43 +0000
Received: from mail-am6eur05hn2220.outbound.protection.outlook.com
 ([52.101.152.220] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8a4R-0007Pr-O9
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 01:40:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TEFXFI3T6NA6HuRGn5S1Eakpa5JF+36ldj5CHmV9qdrdMfWgoizJuUs+YZS8iP9UZjf68MKeyz5A5dgAkFKP/e0BvcqQR5YLXpLSsKY6gXhjoq6sJ2ALEUExdVBRigTdBIi9pprJbJdWH3anFk6Ys2xv1vmObrimVw74TpmEA6pMVnFBrynUSfKSK1k9KJdNHKorFJjwIpzCZ2bsULYK8xtgebJG+VX+fhc9FYkdqEIUxNfxyapb22IW2s/AdnYNpImv55HUZI15zCxa7lmJZIRHCcWlmdwyvIP6fPMDLJQ/cgE5BmIbQPHZcmhylvqm2+J87aSn1B56VmM1h03ecg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2ImO1cOZ65sfQgsppZIv20tIPoNepj2SbWDg9LSRoko=;
 b=ociKTbaDFasUlyAbxEyKaSto5pw5QVvxqZKCW2RL9ON4nxPuXSCY4yi1H1fopzzFwOxZ1YSqG2Ssxf02fLlU/6wIW3gcc7rZJo9X/8A6TZaBYbRQMxOPOBOLSOY28ONIA09knc96lOUNADxDEUNXLodGjcHB3ayfnCcLlg64dfD/G+gC6jz66EbOwZqBbw7JZn6oh/K8Zr9W7UHU5VA5hke7wuz1oczh0xvMq19087DSooZDjQ/zttEQ9BkVRiERK458KB41nwBBy+uXNAIwewI2KNharfNQtCVpyT9eM/o/rzCjCca3K9cAeXE0HzItCNISsbi5bwaejW2/zBPTqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2ImO1cOZ65sfQgsppZIv20tIPoNepj2SbWDg9LSRoko=;
 b=HOLsZRjuq4u6AaQ5uYu0adWB602+5j86uuoWjIQkND4ThpRCHetm6tU66fyOyt7kb9P3uyckCsB8aZAuDI1C1RLOSi+A9MGed8tssBR/jQEmjZY/31gmqxy/D+YHs7e/kpg/w3tx+bcNYoN0NTHfYAt8pwwEv8ZE2P4//MhiqDk=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4308.eurprd04.prod.outlook.com (52.134.91.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.16; Mon, 2 Mar 2020 01:40:31 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 01:40:31 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "viresh.kumar@linaro.org"
 <viresh.kumar@linaro.org>, "rjw@rjwysocki.net" <rjw@rjwysocki.net>
Subject: RE: [PATCH v2 00/14] ARM: imx7ulp: add cpufreq using cpufreq-dt
Thread-Topic: [PATCH v2 00/14] ARM: imx7ulp: add cpufreq using cpufreq-dt
Thread-Index: AQHV5vtt9q1uPmk0BESPnzoSAIGwTqg0mA0A
Date: Mon, 2 Mar 2020 01:40:30 +0000
Message-ID: <AM0PR04MB4481FF78BB300729E59D6D8C88E70@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6e3729ab-59e9-42d1-60c3-08d7be4ab19f
x-ms-traffictypediagnostic: AM0PR04MB4308:|AM0PR04MB4308:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB43083DB35792FD11BBF26DBB88E70@AM0PR04MB4308.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:SPM;
 SFS:(10009020)(4636009)(366004)(396003)(346002)(136003)(39860400002)(376002)(189003)(199004)(5660300002)(186003)(44832011)(6506007)(2906002)(966005)(478600001)(26005)(86362001)(33656002)(7416002)(71200400001)(81166006)(81156014)(8936002)(110136005)(54906003)(316002)(4326008)(8676002)(52536014)(7696005)(64756008)(76116006)(55016002)(66476007)(9686003)(66446008)(66556008)(66946007)(556354011);
 DIR:OUT; SFP:1501; SCL:5; SRVR:AM0PR04MB4308;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dbOwP8GLFO1jyv51v4oaViT7XsfvmQ+ZW3aHcvz2S2GyiI6/UNWN6S0WfZB2nkyn+vde03dsFEIiECJ5Hfhg193lYhoVZS8rQjsQLEx/cNtXVDqSiCbrnkxaDGRdlTkNI2xlkpyzbeMHKG4m75T1krJ7b53b/WgyrXAfZGDr9uxaYVSbpRaJ2IQhj6VX/vXDEBOOPcL4zt1rt4Rb4Q9XhYSd4HSjGKUNNP1Sf6ydHv0CjIeY5511ELMaFGNANNqyaITgo6ywt9h1CUrQ3vig5kXbq2VdbYsZNcQN62OdOpGeX/A2thY/IFGXqC64UuOZzZtY/neFpNdAAhVBp8vUZSBA5uvSK3TcO6cIJ6DX8VAIJMeHjetGVYoOHbpot/cCN7burKkIudtE0GfagUnPptvmlcvyFEapWkcsjUOWp+SIfZnxaHbOIsj9cuS/e+K5/0J628DjeGlV7AXwpE4oZ/Ih35oFyRVbINZ0x7qUeZkEIgvGEF0ub4i545IPZu+T42lQJSDreagcmksSitqj4tNXUg3xmcWAzrHoDE2QUWanK86u7YvMzu2+HSk4aY059ZqNh3IQciP1WQOemTPQ1FGpgxkGQqMjLNzyCXByDh51fUJ8Ua5VZqiY4783FkTW0zkgTjKJ/8KSsmCHMv3OAn5bJY+v8KTXX+0quoLlquVs9ht73MFw+9gQ/opF3TQVoLulERHEYP9AFsTxQhzbpLwlgXT88BPJyDNe2nVDoQhQXV/dq665ZGMGa96QndXGEmsRi+G8okLv65jQ+gkWQTcYYwB3TSMntANzbhf1KJChLSHr6q2XY0li4iBZNI6PcJY0B/+7VvNfqDGYWZoeBUC9YesHJ6eD0tXnZaZmBWo=
x-ms-exchange-antispam-messagedata: 7kb8+dX0+z1dHySLn5TGA3RuhjUYQifKAFu/0RH9psKV5IJ7B1QxzoC7bsfkFdvGu9M7JJiO+YURvbm9Q+aA+TEVK/AEOs1Qgu0dVkeoxSn5JDfw0+QuYuGyhO3KI3JeHsEzeSzSbSfEXSoRoGp33w==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e3729ab-59e9-42d1-60c3-08d7be4ab19f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 01:40:31.1784 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ep0PvzWrN4X1ARWuMvrJo1jw9vUFVzUyJPL6ytmh58CiI7IGN4khPGtSCOtbjYmZyh3bq6QROPdBlT6r2lMJgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4308
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_174035_882683_3C266281 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.101.152.220 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

> Subject: [PATCH v2 00/14] ARM: imx7ulp: add cpufreq using cpufreq-dt

Is it possible for you to pick up patch 1~8, 12? Or any comments?

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> V2:
>  Per Stephen's comments, I drop the cpuv2 clk code, and find another
> solution to change ARM clk  Included get_intermediate/target_intermedate
> for cpufreq-dt  Add i.MX7ULP intermedidate implementation.
>  Per Fabio's comments, disallow HSRUN when LDO enabled.
>  Add dt-bindings and pmc node
> 
> V1:
>  https://patchwork.kernel.org/patch/11364609/
> 
> This patchset aims to use cpufreq-dt for i.MX7ULP to avoid plaform specific
> cpufreq driver. i.MX7ULP has some specicial requirements to change ARM
> core clock, see patch 11/13,
> "cpufreq: imx-cpufreq-dt: support i.MX7ULP"
> 
> Patch [1,2]/13: add pmc bindings and node. We need read pmc registers
>   to get system info.
> Patch [3-6]/13: i.MX7ULP clk pfd/pll code change to make sure to get the
>   expected pfd output clk. For RUN/HSRUN clock, we use API
>   imx_clk_hw_cpu to make sure RUN or HSRUN could not shutdown clock
> output.
> 
> Patch [7-8]/13: Make sure we could run into HSRUN mode and not when LDO
>   enabled.
> 
> Patch 9/13: let cpufred-dt could have get_intermediate/target_intermediate
>   hooks to allow platform specific freq set.
> 
> Patch [10-12]/13: i.MX7ULP cpufreq support
> 
> Patch 13/13: Test dts, should not apply.
> 
> For rpmsg/vitio part, I have posted patchset, if you wanna rpmsg regulator:
> https://patchwork.kernel.org/cover/11390481/
> 
> Anson Huang (1):
>   clk: imx: Fix division by zero warning on pfdv2
> 
> Peng Fan (13):
>   dt-bindings: fsl: add i.MX7ULP PMC binding doc
>   ARM: dts: imx7ulp: add pmc node
>   clk: imx: pfdv2: switch to use determine_rate
>   clk: imx: pfdv2: determine best parent rate
>   clk: imx: pllv4: use prepare/unprepare
>   clk: imx7ulp: make it easy to change ARM core clk
>   ARM: imx: imx7ulp: support HSRUN mode
>   ARM: imx: cpuidle-imx7ulp: Stop mode disallowed when HSRUN
>   cpufreq: dt: Allow platform specific intermediate callbacks
>   cpufreq: Add i.MX7ULP to cpufreq-dt-platdev blacklist
>   cpufreq: imx-cpufreq-dt: support i.MX7ULP
>   ARM: imx7ulp: enable cpufreq
>   [Do not Apply] ARM: dts: imx7ulp: add cpu OPP points
> 
>  .../bindings/arm/freescale/imx7ulp_pmc.yaml        | 32 +++++++++
>  arch/arm/boot/dts/imx7ulp.dtsi                     | 38 ++++++++++
>  arch/arm/mach-imx/common.h                         |  1 +
>  arch/arm/mach-imx/cpuidle-imx7ulp.c                | 14 +++-
>  arch/arm/mach-imx/mach-imx7ulp.c                   |  3 +
>  arch/arm/mach-imx/pm-imx7ulp.c                     | 25 +++++++
>  drivers/clk/imx/clk-imx7ulp.c                      |  6 +-
>  drivers/clk/imx/clk-pfdv2.c                        | 61
> +++++++++++-----
>  drivers/clk/imx/clk-pllv4.c                        | 12 ++--
>  drivers/cpufreq/cpufreq-dt-platdev.c               |  1 +
>  drivers/cpufreq/cpufreq-dt.c                       |  4 ++
>  drivers/cpufreq/cpufreq-dt.h                       |  4 ++
>  drivers/cpufreq/imx-cpufreq-dt.c                   | 83
> +++++++++++++++++++++-
>  include/dt-bindings/clock/imx7ulp-clock.h          |  5 +-
>  14 files changed, 257 insertions(+), 32 deletions(-)  create mode 100644
> Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml
> 
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
