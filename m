Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C37D3D9461
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 16:54:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=v3xx6erWP/KY3/R1lH6TGjMGDEobG9zP4GgjKwy4o68=; b=Kk7y5b3wyPFUqJ
	B3NcBTSvlvdyl+Th/ZKaMr94jeKipt1himzIE0uQ1x/RJyXTF8+hGMqWXP9tWMX7M2ZEkXTT06I1D
	9Y3z2GUiyCO++mrlPjRv0U7++TzgjlHifNDw1jXk7SqKZg/ksoDV1o5xlIkS/To9Fh1XOWjXsjoGp
	EfO7edGi2nfLvHrztoa5iwjna0FtLrly9bmXSyZSmez9NuxYnKOK6ELPMs+TaOe07KhedxlfQVy5z
	fhApiVbnvmdHPOtIuTGz/OGlLBqxhsKixYLpZxNtiyH7bQkQqtvo1FI9A7T6pLJ66tszgp/7M96l1
	EQhsupYiYCa7wS26PHtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkh6-0002ok-7K; Wed, 16 Oct 2019 14:54:32 +0000
Received: from mail-eopbgr130050.outbound.protection.outlook.com
 ([40.107.13.50] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKkgs-0002nq-1l
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 14:54:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KAhzv3cBnwJS8GPitITbe1rDXqfh70/FzfUuXvBqHx7dfGGbzIyGWd6kioUhrxgKgtIqIlrn/cCctJVBMjahBe8YEAh2N4jMLMQvdACNNDlfpuxWAZnCPLLrLYeDyLTtc6L1kcCdjAQp/rrt3XI32dMku8f++aPOAy2t59ltfM9Ll/nPn3IFwkrDOjj7fw9Mgm+ciLjQMTXhoi84+29KpxJrrE6fKpS6UVHMcNUd6g3VJy/ohUl2BT6ebJ/7EB1grv1pVwrFKa94iB7PGz9AZpT4Owl5VtDik2KW/RM0oaTh5/dOsm3xSooBt39+NSa8DtQBYtL8K/ku4La+Yg85NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B7xY2qTlUkOZ0GIt1piKGZRU7xdQTlq8EWnuIn6zbhs=;
 b=lFsjzMyOFY5aP2iFtnV1Vf/y251lN/vHu0uVygRnWSYiFbZdtDtQPgngNpi9fRGUQTT+dcmpxhPRYqRM/OjhFgaGPyar70qx/dL0l+4yZeSHbLnl2j4Pu9GZG55qKUqV7gb5utq47wRB6vwyU8jujv64xPtFnA/cjD1x8e+yHt9rIwy/+cZjUgXanSe6r1oh49sLy4lcPRkUOzsWHP/X9haST4KT1D8RuMtbbwwVAg4vgvZzRRGECrd5CPNwtDhKyPtr4rCwKBpQOp3cXAhcNXjsme7Ep4rscklreSOH9zYaeT8uaz6H5OiEW60F5B3CUhrM/trMuauM/zF3VzcP2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B7xY2qTlUkOZ0GIt1piKGZRU7xdQTlq8EWnuIn6zbhs=;
 b=spze4qOd8j24TURUJWpu7tIomAfcAfbr3Xw/ktH7Lwfpukdjb8QNPIgti0668Vj907aDoSNfbIdVMxg+Ztr9sOtrAfZVjWvAevn81eRKZICKxgaKmg45Rg2Ps1bXH2lYIezKpNUxyIdFYxm3G7Pzv/Ye4OykQXydY+bAI/b4nl0=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4109.eurprd04.prod.outlook.com (52.133.15.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 16 Oct 2019 14:54:12 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58d9:b0f7:b31:c05a]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58d9:b0f7:b31:c05a%7]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 14:54:12 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Angus Ainslie <angus@akkea.ca>
Subject: Re: [RFCv3 3/3] interconnect: imx: Add platform driver for imx8mm
Thread-Topic: [RFCv3 3/3] interconnect: imx: Add platform driver for imx8mm
Thread-Index: AQHVTEWKNFF2Yqu6YU66bS83yX49og==
Date: Wed, 16 Oct 2019 14:54:12 +0000
Message-ID: <VI1PR04MB7023A7ECF8FD6BFA1D8E0F26EE920@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1565088423.git.leonard.crestez@nxp.com>
 <cf265add1502a75c4d6e6261ab1570c665e82c83.1565088423.git.leonard.crestez@nxp.com>
 <a2e09a9b-574f-8410-423e-0b0d8ea5c2ab@posteo.de>
 <VI1PR04MB7023E441FEE0D9288CAC0F44EEAA0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <be41481b-5184-7878-b25e-41b7a1e1b2d5@posteo.de>
 <7c1452f3d8c13aeadcabf7807049092c@akkea.ca>
 <VI1PR04MB70231CD1535CBCB699F045D4EE930@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <68e456574e2072740f41fac8c9c2377b@akkea.ca>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 79d59e76-800c-4e34-c306-08d75248b540
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR04MB4109:|VI1PR04MB4109:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4109FDF55319C0261746CFACEE920@VI1PR04MB4109.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(346002)(136003)(396003)(376002)(199004)(189003)(305945005)(9686003)(186003)(55016002)(71200400001)(6916009)(7736002)(26005)(6436002)(33656002)(71190400001)(53546011)(6506007)(6246003)(446003)(102836004)(7416002)(8936002)(2906002)(14454004)(86362001)(52536014)(66476007)(66066001)(66446008)(64756008)(66556008)(76116006)(74316002)(478600001)(7696005)(4326008)(66946007)(99286004)(4001150100001)(486006)(91956017)(14444005)(229853002)(256004)(81166006)(81156014)(476003)(8676002)(3846002)(76176011)(54906003)(316002)(5660300002)(44832011)(6116002)(25786009)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4109;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MiriHFKvWkG7tOXwJjaHfbvliqsSwcpVpjyucP4F2n0dGrUYKINUXzrsyJ/Ovnm+hVOjj592zb1U1OBiUXcPYjYyKbihpbPuIv8PnxsZ+ynJ4VX4Vc2UPNkxCaTkBM04umZwtXQqiym3j5FbMrEO97IsbwEPCEv5/ewo3I0VwrguDTWN+ZP/QjSK/IMhMgaqsu0wrXqxkPisS7xESbELWeuVU5qZ5IHaW+oIl7iEoBQxrHw1L2rELiVBWOu9PyjwDvclVVL06EntKKNzFvgmYFM2f94j074PI6QcUzwQIZyfxqftrvWYB8YWkxINddRhgtWZbQfLkZ+0yGk76AB2RLavr1GC8iZ5cMMFi4G+xl9VTe5JV6iUmQ/b2srl20G416oTzFJu4HbLYvGcyb/8ps+XZgEQMwuTjMcT5Jb3aws=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79d59e76-800c-4e34-c306-08d75248b540
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 14:54:12.5758 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cPufE3yRPtCnMTDsyci4jhsK6CBBBiEXmjDvdwyboysPbgb1WEdRrjJrdNtPMy6PY64HN88/hZSTE4hWniKIhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_075418_351075_40D83FDC 
X-CRM114-Status: GOOD (  23.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-pm-owner@vger.kernel.org" <linux-pm-owner@vger.kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>, Anson Huang <anson.huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16.10.2019 17:09, Angus Ainslie wrote:
> On 2019-10-15 07:05, Leonard Crestez wrote:
>> On 10.10.2019 17:43, Angus Ainslie wrote:
>>>
>>> I've integrated your u-boot and ATF on our board and I have a couple
>>> of questions. Our board is running imx8mq B0 (Rev 2.0) silicon.
>>>
>>> It looks like this line limits the training frequencies to 800 MHz and
>>> 166 MHz
>>
>> Yes! This is due to a hardware errata which was solved in B1: DRAM pll
>> can't be disabled. This means that instead of 25/100/800 freqs are
>> 166/800, and this requires code changes.
>>
>>> Does 100 MHz and 25 MHz not work on B0 ?
>>
>> No, lower rates require dram clk from a composite slice (dram_alt_root)
>>
>>> I added the ddrc_and noc opp as well as the 166MHz opp
>>>
>>> I also added the interconnects ( do we need them on imx8mq ? )
>>
>> The interconnect stuff is not required to switch dram frequency, it's
>> for device to make minimum bandwidth requests. It an additional feature
>> on top.
>>
>> As a hack I configured FEC to do so but a saner example would be to
>> request bandwidth based on display resolution and color depth.
>>
>>> I had to add a hack as the PM QoS was limiting the bus speed to 399MHz,
>>> if you have any ideas why that would be appreciated.
>>
>> You probably need to set ethernet down (which is awkward) or better
>> just drop the interconnect properties and test using the devfreq userspace
>> governor.
>>
>>> The driver is probing
>>>
>>> [   12.136537] bus: 'platform': driver_probe_device: matched device
>>> 3d400000.dram-controller with driver imx-ddrc-devfrq
>>> [   12.147259] bus: 'platform': really_probe: probing driver
>>> imx-ddrc-devfreq with device 3d400000.dram-controller
>>> [   12.157382] imx-ddrc-devfreq 3d400000.dram-controller: no pinctrl
>>> handle
>>> [   12.164197] arm_smcc rate 0 800000000
>>> [   12.167880] arm_smcc rate 1 166750000
>>> [   12.171778] of: _opp_add_static_v2: turbo:0 rate:25000000 uv:0
>>> uvmin:0 uvmax:0 latency:0
>>> [   12.179994] of: _opp_add_static_v2: turbo:0 rate:100000000 uv:0
>>> uvmin:0 uvmax:0 latency:0
>>> [   12.188311] of: _opp_add_static_v2: turbo:0 rate:166750000 uv:0
>>> uvmin:0 uvmax:0 latency:0
>>> [   12.196606] of: _opp_add_static_v2: turbo:0 rate:800000000 uv:0
>>> uvmin:0 uvmax:0 latency:0
>>> [   12.204930] imx-ddrc-devfreq 3d400000.dram-controller: events from
>>> pmu imx8_ddr0
>>> [   12.212403] Added freq 0 25000000
>>> [   12.215742] Added freq 1 100000000
>>> [   12.219177] Added freq 2 166750000
>>> [   12.222648] Added freq 3 800000000
>>> [   12.226105] device: 'devfreq0': device_add
>>> [   12.230287] PM: Adding info for No Bus:devfreq0
>>> [   12.234864] driver: 'imx-ddrc-devfreq': driver_bound: bound to
>>> device
>>> '3d400000.dram-controller'
>>> [   12.243699] bus: 'platform': really_probe: bound device
>>> 3d400000.dram-controller to driver imx-ddrc-devfreq
>>>
>>> Add seems to run correctly until it tries to adjust the clock to
>>> 166MHz
>>>
>>> [   19.555482] ddrc checking rate 800000000 166750000
>>> [   19.555489] ddrc checking rate 166750000 166750000
>>> [   19.560442] bus: 'usb-serial': really_probe: bound device ttyUSB0
>>> to
>>> driver option1
>>> [   19.568751] imx-ddrc-devfreq 3d400000.dram-controller: ddrc about
>>> to
>>> change freq 800000000 to 166750000
>>>
>>> And the board hangs there. Any ideas on how to get past this ?
>>
>> Please try this ATF patch:
> 
> Ok applied this to the tree we're using
> 
>> I tested switching on imx8mq-evk with B0 SoC but a few additional
>> changes are required in kernel to support switching between rates which
>> are both backed by PLL:
>>
>> * Mark the PLL CLK_GET_RATE_NOCACHE
> 
> Is this what you meant ?
> 
> diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
> index 2813884f69c1..e5f50cf8a264 100644
> --- a/drivers/clk/imx/clk-imx8mq.c
> +++ b/drivers/clk/imx/clk-imx8mq.c
> @@ -345,7 +345,7 @@ static int imx8mq_clocks_probe(struct
> platform_device *pdev)
>           clks[IMX8MQ_SYS1_PLL_OUT] = imx_clk_sccg_pll("sys1_pll_out",
> sys1_pll_out_sels, ARRAY_SIZE(sys1_pll_out_sels), 0, 0, 0, base + 0x30,
> CLK_IS_CRITICAL);
>           clks[IMX8MQ_SYS2_PLL_OUT] = imx_clk_sccg_pll("sys2_pll_out",
> sys2_pll_out_sels, ARRAY_SIZE(sys2_pll_out_sels), 0, 0, 1, base + 0x3c,
> CLK_IS_CRITICAL);
>           clks[IMX8MQ_SYS3_PLL_OUT] = imx_clk_sccg_pll("sys3_pll_out",
> sys3_pll_out_sels, ARRAY_SIZE(sys3_pll_out_sels), 0, 0, 1, base + 0x48,
> CLK_IS_CRITICAL);
> -       clks[IMX8MQ_DRAM_PLL_OUT] = imx_clk_sccg_pll("dram_pll_out",
> dram_pll_out_sels, ARRAY_SIZE(dram_pll_out_sels), 0, 0, 0, base + 0x60,
> CLK_IS_CRITICAL);
> +       clks[IMX8MQ_DRAM_PLL_OUT] = imx_clk_sccg_pll("dram_pll_out",
> dram_pll_out_sels, ARRAY_SIZE(dram_pll_out_sels), 0, 0, 0, base + 0x60,
> CLK_IS_CRITICAL|CLK_GET_RATE_NOCACHE);

Yes.

>> * Set the rate to 166935483 exactly (to match clk_get_rate)
> 
> Okay I hacked that in
> 
> diff --git a/drivers/devfreq/imx-ddrc.c b/drivers/devfreq/imx-ddrc.c
> index 4eed6f50bb8d..a832768a865f 100644
> --- a/drivers/devfreq/imx-ddrc.c
> +++ b/drivers/devfreq/imx-ddrc.c
> @@ -436,6 +436,10 @@ static int imx_ddrc_init_freq_info(struct device
> *dev)
>                           return -ENODEV;
>                   }
> 
> +               /* B0 hack */
> +               if ( freq->rate == 166750000 )
> +                       freq->rate = 166935483;
> +inserting 
>                   pr_err( "arm_smcc rate %d %lu\n", index, freq->rate );
>           }

A nicer solution would be to keep imx_ddrc_freq.rate in MT/s as reported 
by firmware and divide by 25000 in imx_ddrc_find_freq instead.

> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -211,7 +211,7 @@
>                           opp-hz = /bits/ 64 <100000000>;
>                   };
>                   opp-166M {
> -                       opp-hz = /bits/ 64 <166750000>;
> +                       opp-hz = /bits/ 64 <166935483>;
>                   };
>                   opp-800M {
>                           opp-hz = /bits/ 64 <800000000>;

Yes, this is the precise clock rate in Hz.

>> * Make the rounding in imx-ddrc more generous.
> 
> Sorry I don't understand what you mean by this

I meant to make imx_ddrc_find_freq find 667 MT/s for an OPP of 166935483:

         /*
          * Firmware reports values in MT/s, so we round-down from Hz
          * Rounding is extra generous to ensure a match.
          */
         rate = DIV_ROUND_CLOSEST(rate, 250000);
         for (i = 0; i < priv->freq_count; ++i) {
                 struct imx_ddrc_freq *freq = &priv->freq_table[i];
                 if (freq->rate == rate ||
                                 freq->rate + 1 == rate ||
                                 freq->rate - 1 == rate)
                         return freq;
         }

But your B0 hack above should also work.

> Adding the other changes the board no longer hangs when trying to change
> frequencies but it also doesn't seem to actually change the frequency.
> 
> [    3.076426] ddrc checking rate 800000000 166935483
> [    3.081290] ddrc checking rate 166935483 166935483
> [    3.086225] imx-ddrc-devfreq 3d400000.dram-controller: ddrc about to
> change freq 800000000 to 166935483
> [    3.086891] imx-ddrc-devfreq 3d400000.dram-controller: ddrc changed
> freq 800000000 to 166935483
> 
> root@pureos:~# cat /sys/class/devfreq/devfreq0/cur_freq
> 800000000
> root@pureos:~# cat /sys/class/devfreq/devfreq0/target_freq
> 166935483

The target_freq value is from clk_get_rate(dram_core) but it is 
dram_core's parent which gets updated. It seems that a clk mux ignores 
CLK_GET_RATE_NOCACHE on the parent.

An update can be forced by adding `clk_get_rate(new_dram_core_parent);` 
at the end of imx_ddrc_set_freq.

You should also be able to check by looking at clk_summary or
/sys/kernel/debug/clk/dram_core_clk/clk_rate
/sys/kernel/debug/clk/dram_pll_out/clk_rate

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
