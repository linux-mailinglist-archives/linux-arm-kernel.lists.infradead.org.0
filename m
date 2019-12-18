Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B47124B63
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 16:17:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=GVnQid9mBAx5L/RiROAin2NzCcL2VgxahLNmPYNSsKE=; b=RiKcMNC9K8073T
	3zOWD5yMz1RUF8mWXBoe5eoZ2364NnLPJ0zc6BjCNqhh2s1xuSdYn9m5MN8uc3mR0il4t6QWplOH5
	KKKsHfokA7UA77YEUyeabTIAAATlWRanP94v1LIJjlgU4NLqRhLgHmZ4BnlxKtcsXsm03XZpWWZD6
	0Knjz2HOZaffZ7g//y29/HQmHMzppZ1SUzWVPfaEx8r3ZoyknEoUVP8y4VyDbQNsc6gEkeQlLWnD9
	2WdJRj9nFrNmmugrrESMvtO5DYg/j5geXKYTg2gFdazhBNBuzAuWmDoDEjDBJCVTG354AMz8GNfvm
	XLSgLRQvgL9Rowsf3QeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihb4E-0003Sy-GP; Wed, 18 Dec 2019 15:16:50 +0000
Received: from mail-db5eur01on060e.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::60e]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihb41-0003SH-3L
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 15:16:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T3aHOKAA65y/Vzvu9Vg7n4mEQu/1aJof5pD+U0qzorMAu9Z8NyzjMscvlfzrM9msc3ntdLflnTplhktgC+3iJEeysNo6+842GHNhPsHN67rTSa9+n5nnfFxFWx4U7avBTULuh+6aA381aEhR+0Q6WlKrVIoe62xCb9KpyHsHIIRprVKyvIwFSF3lrfkoDiMAYGogGTtJAzi6MjFcRuEsJjbrPbxPiyzyB/elSrDsp95lATgoMrelFqkaKNvDFV4nVhCoeXy5AqJWxhqrsgGgzrxLHQ/Ir6tzwgisrSAQJZ4iSJQHUE+LaBydgYFjcwYHedjQOklJTyEa0mQCBEYAvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DjLb1UkcxbFXKoMkYjdWULaugUZuv2tdgS+eMiN6ZHE=;
 b=Kr2224qWZKqN0NUcvb7WZ+dSTJjwUDjCFynhePjSws4QWsVy/xTtC+JJT15isROh6BGn4ljW2uLqTYWjHpRAq4fwhtm+7gwiBgfSjfSeGEp2b+95MR+JBaijgjIrIRSUPbOV3RV6TO7v2El3Rw7jYbsmVRBsM7DwuiMGHctT+60Sm9yoFtu7vyCJ9mCsZJuLMGotbTaSm1PnZqKfQXWIFufP96NuuJawTQUNjd4je/l2XIU8LsNyOvfMpiOG6iyeB37UiZzt86PVb2IV4O2c2vwvg42HI+Bknd8rsuZUVe2p4mb+GNqM+tiFAOcDuvRReetNF1fU5N0OjGuk6QVMKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DjLb1UkcxbFXKoMkYjdWULaugUZuv2tdgS+eMiN6ZHE=;
 b=boR98jZhTVGAqm9MSvbXJ4Q9tDreqfGu46TnMb+5cNhVoY8g4aDEvNGaI36stu213W+gB3YrapYG/VRh1uOo7S/1Wg+2KLmc1twEMjsKAmhTjWYG7N8OqUyPCoWX7R7dxKqCBW8G7Tlr1rPDIn4Rdr2FN9SENYSbJ1kaLQQgIR8=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5088.eurprd04.prod.outlook.com (20.177.50.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Wed, 18 Dec 2019 15:16:31 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2559.012; Wed, 18 Dec 2019
 15:16:31 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Adam Ford <aford173@gmail.com>, Jacky Bai <ping.bai@nxp.com>
Subject: Re: [PATCH v7 0/5] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
Thread-Topic: [PATCH v7 0/5] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
Thread-Index: AQHVoX4nPagdJ4eJVUSp7HmX0gzdZg==
Date: Wed, 18 Dec 2019 15:16:31 +0000
Message-ID: <VI1PR04MB70235951BC137515BDD2FDC7EE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1574458460.git.leonard.crestez@nxp.com>
 <CAHCN7xKNwit8ueUO0OkebfYh=4hsL7_+DRWEbn2dEt0H322W4w@mail.gmail.com>
 <VI1PR04MB70231CA0E3C4574211518359EE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <CAHCN7xJNy0z2hvWbM3UhLni5ruS+sCLeBH8BKiYexe3Sp=6Q0w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 05e0c1d9-121f-4760-8b6e-08d783cd4300
x-ms-traffictypediagnostic: VI1PR04MB5088:|VI1PR04MB5088:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB508814979321F75DF86E12A8EE530@VI1PR04MB5088.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(396003)(366004)(346002)(189003)(199004)(66946007)(478600001)(66446008)(64756008)(4326008)(66476007)(66556008)(186003)(76116006)(91956017)(316002)(9686003)(2906002)(86362001)(7416002)(54906003)(71200400001)(55016002)(110136005)(52536014)(81156014)(53546011)(81166006)(7696005)(8676002)(6506007)(33656002)(966005)(5660300002)(6636002)(44832011)(26005)(8936002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5088;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uTNe3onRwr8mntau+5rV50+0PjkcRkvzWXCOcROfiBaEbLTwlmSf89tInYpDF0GGJzC1/yDPSHwTP16pIaiWXl4yHhpXAs+3OAvlkJQDNnQrRnBxPBXcxWKm6V5Q/dYzju0cKS3a+p+oflJ4PphWNC4y+8ImGTd03p/CFc4dRoZtKPhU30PTPaJuU029rtshaqEof5UbawdYweIXGv+AiVWK/mVSaN5OqbDnUqYoHJ7dL4gSxft27PHrorqLt0YMtU7zSE6oJa65gVZ2/64RUdeiIQwnvSNsL6a5lY7sZEQT/z/gRv9+FqzJvlqLn5dNOxh6bae6xsEJwjmOPqwbqFRARa9HQu5evgcs3RL9l0gS+1cOzlsQAVzSHf7Tcm7yTaMcNTNuxAAdxhfbgfDa1Dpe2Dk2CADX1eqWHFzsV6Rh9nknW5gs6Ll8h+danH5OcYofWBV0B2XS/DXFn426oGpZhgQ+gUEe3X/65vimt5YSKEg+9/KBF+xXEBKRZnuFKpUSq0WU46pXu39xvSwOjw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05e0c1d9-121f-4760-8b6e-08d783cd4300
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 15:16:31.0444 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nJgE2uQ4dt0EWoEzHD6zfXz+ACQuzs/ZY/pHzBM40fpMibr+IcCpTkZvgxWpqnH5Q1GjYHUSk083dAT8djYb7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_071637_147432_8FCC888D 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:60e listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, linux-clk <linux-clk@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 devicetree <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Matthias Kaehlcke <mka@chromium.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18.12.2019 17:05, Adam Ford wrote:
> On Wed, Dec 18, 2019 at 8:44 AM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>>
>> On 18.12.2019 15:35, Adam Ford wrote:
>>> On Fri, Nov 22, 2019 at 3:45 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>>>>
>>>> This adds support for dynamic scaling of the DDR Controller (ddrc)
>>>> present on i.MX8M series chips. Actual frequency switching is
>>>> implemented inside TF-A, this driver wraps the SMC calls and
>>>> synchronizes the clk tree.
>>>>
>>>> DRAM frequency switching requires clock manipulation but during this operation
>>>> DRAM itself is briefly inaccessible so this operation is performed a SMC call
>>>> to by TF-A which runs from a SRAM area. Upon returning to linux the clock tree
>>>> is updated to correspond to hardware configuration.
>>>>
>>>> This is handled via CLK_GET_RATE_NO_CACHE for dividers but muxes are handled
>>>> manually: the driver will prepare/enable the new parents ahead of switching (so
>>>> that the expected roots are enabled) and afterwards it will call clk_set_parent
>>>> to ensure the parents in clock framework are up-to-date.
>>>>
>>>> This series is useful standalone and roughly similar to devfreq drivers for
>>>> tegra and rockchip.
>>>>
>>>> Running at lower dram rates saves power but can affect the functionality of
>>>> other blocks in the chip (display, vpu etc). Support for in-kernel constraints
>>>> will some separately.
>>>>
>>>> This series has no dependencies outside linux-next. The driver depends
>>>> on features from the NXP branch of TF-A and will cleanly fail to probe
>>>> on mainline. There are also plans to upstream dram dvfs in TF-A.
>>>>
>>>> Leonard Crestez (5):
>>>>     clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram clocks
>>>>     clk: imx: Mark dram pll on 8mm and 8mn with CLK_GET_RATE_NOCACHE
>>>>     dt-bindings: memory: Add bindings for imx8m ddr controller
>>>>     PM / devfreq: Add dynamic scaling for imx8m ddr controller
>>>>     arm64: dts: imx8m: Add ddr controller nodes
>>>>
>>>>    .../memory-controllers/fsl/imx8m-ddrc.yaml    |  72 +++
>>>>    arch/arm64/boot/dts/freescale/imx8mm-evk.dts  |  18 +
>>>>    arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  10 +
>>>>    .../boot/dts/freescale/imx8mn-ddr4-evk.dts    |  18 +
>>>>    arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  10 +
>>>>    arch/arm64/boot/dts/freescale/imx8mq-evk.dts  |  24 +
>>>>    arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  10 +
>>>>    drivers/clk/imx/clk-imx8mm.c                  |  11 +-
>>>>    drivers/clk/imx/clk-imx8mn.c                  |  12 +-
>>>>    drivers/clk/imx/clk-imx8mq.c                  |  12 +-
>>>>    drivers/clk/imx/clk-pll14xx.c                 |   7 +
>>>>    drivers/clk/imx/clk.h                         |   1 +
>>>>    drivers/devfreq/Kconfig                       |   9 +
>>>
>>> Since there is a Kconfig change, should there me a defconfig change?
>>
>> Yes, you need to enable CONFIG_ARM_IMX8M_DDRC_DEVFREQ in order to test
>> this. Enabling as "m" should work.
> 
> I enabled it as 'm' but I was more curious to know if we should push
> this upstream with the rest of the series.

I skipped enabling because it's very experimental; maybe after imx 
interconnect is also enabled?

>>>>    drivers/devfreq/Makefile                      |   1 +
>>>>    drivers/devfreq/imx8m-ddrc.c                  | 465 ++++++++++++++++++
>>>>    15 files changed, 670 insertions(+), 10 deletions(-)
>>>>    create mode 100644 Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
>>>>    create mode 100644 drivers/devfreq/imx8m-ddrc.c
>>>
>>> I applied the whole series against 5.5-rc1 and I am trying to test it.
>>> I know the 4.14 kernel NXP posted on Code Aurora is capable to
>>> lowering the DDRC controller to 25MHz on the 8MM when the video is
>>> off.  Since there is no video support yet for the 8MM, I was expecting
>>> to see the DDRC clock to be at or around 25MHz.
>>>
>>> Using debug FS, I can see the dram core clock is still running at
>>> 750MHz, and measuring power, it shows something consistent with what I
>>> see on the Code Aurora kernel with video turned on and the clock at
>>> 750MHz.
>>>
>>> Is there some way to get the dram_core_clk to drop to 25MHz to see
>>> some power reduction?  The same commands used in the Yocto build don't
>>> apply here since we don't have video.
>>
>> Current upstream driver just keeps current frequency by default. Try the
>> following:
>>
>> cd /sys/class/devfreq/devices/devfreq0
> 
> can't cd to /sys/class/devfreq/devices/devfreq0: No such file or directory
> 
> I did some checking and I found:
>      imx8m-ddrc-devfreq 3d400000.memory-controller: failed to init
> firmware freq info: -19
> 
> Was there some prerequisite patches I needed to apply before your series?

You need a recent version of TF-A from nxp ( upstream). Try this:

https://source.codeaurora.org/external/imx/imx-atf/log/?h=imx_4.19.35_1.1.0

Or this: 
https://github.com/cdleonard/arm-trusted-firmware/commits/imx_2.0.y_busfreq

Support on upstream ATF is not yet available

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
