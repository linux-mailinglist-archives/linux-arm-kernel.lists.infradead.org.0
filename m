Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7509C124D15
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:22:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=nt8z4mrG9k4DCT47CNCvWzaWwSV3TtNJUfZbNSgBC6w=; b=ZGeA4gNBv7YYoJ
	7ESLImBQ/HQ3MlcxW7SfGrQAMTPnhBRy7jt6NbkpDMSQ6+LBPmalCbt96TE37K2KvXbCAbPubggtr
	Ef8R9m7FjIjilkTCquXEnUlm2U1xzSIX1pXHvUa06S0nl/o7C6w/SoOkGWVXuUxUqauG0W3jwYp5B
	tyoY4xNtYLXA6W7MSeGu7h80mpcsIA3zE9af1zYmQCee25ioKPiFnimHoQem7aiu1u/GyjSfTPO+i
	Sd3d2LJQ9xCZllNGm6GcPE8i4Z7wmEzwag/3zhYEUndOwDxUtytnawPoRPHkNnlg3KDqAf+dnzH1g
	6fpvIuZaLgYxtYC2H21g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihc5r-0006Ck-Mx; Wed, 18 Dec 2019 16:22:35 +0000
Received: from mail-eopbgr40046.outbound.protection.outlook.com ([40.107.4.46]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihc5g-0006AJ-VH
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:22:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=clRIXXL0G13Nnuh3UVWQEy1wE9Ys9ILspf7HFrwwSCDg2Z5g2+NJODBvg3ysV+xADyC9vkTIJyurb+nTMrBBPLRy3cu4IzB+DKWuznlgxFWxpe9Ht9lcutmwmrGy49b68w4cu0uA4XIowJUhbqe9VxH6NUASUq1xl0h48tG4YqH7hGUq84N1ZQ7pq84q7zU2g32p3ie7yDW2UT0AyONp+KK18aZughyRXythaJi5TOiHZt+AkOWeYZX9o+u5+AOFYhDwGnSbJiqwwtsLi5gcUX83+OeO/4A9fcHYXWEQ5oXPENBabtmuOlQFKmsuDUq+Jn0LeFJD/TpDKFXfDVvj7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sKdab3p6OxgZ99tL83gL2haeWlKPxNNLswcCH4jOCPI=;
 b=b9XT7tNKXlZxD0xADeS3AHCIeN8BC3XgGPTwstg79wcPPP8BN83inG/ElaeoncL/wZjvqbxfSk9LedFmVD4+dDbr20ymWsCZsVRp0LhAF4Z0rs2iqPRzljYgESFI02gsg1z8Q9m2Ge1066di+Xz4VbCq5UjlHG4SNYc4t0OXGwdmRbR2Net3BkQkNY0LOmybKfx2m0Hm9NMJKV84gjOkMcPJkkMGhtMiyD2whrY+4kwJAUgpTAYYaS2wJFIPjdA8NLq89UU1GzHFrugeGwZbtiW4Rkykz5KmDdtSkpSCkXa+PNzmlQA120Zvvjm0+YZkBDZQK9JFGXpKTZBWP20JhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sKdab3p6OxgZ99tL83gL2haeWlKPxNNLswcCH4jOCPI=;
 b=TkYNmdIx4K96VFR4tSamqdd5gKZYTim8pBN7TsX2bsAtQpT5wf4U/BYvpSdgvo5OIeZ4hCWqljl517Zyd9ldIUAz5lu6dewGtY6mDa43Urlwptf6C+lI3jFjERS3aUsrtgV1gB1Wc8Jp6vyg8rCv+cuiNn2dVBHkVmovRSzzTaw=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5693.eurprd04.prod.outlook.com (20.178.126.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Wed, 18 Dec 2019 16:22:21 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2559.012; Wed, 18 Dec 2019
 16:22:21 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Adam Ford <aford173@gmail.com>, Jacky Bai <ping.bai@nxp.com>
Subject: Re: [PATCH v7 0/5] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
Thread-Topic: [PATCH v7 0/5] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
Thread-Index: AQHVoX4nPagdJ4eJVUSp7HmX0gzdZg==
Date: Wed, 18 Dec 2019 16:22:21 +0000
Message-ID: <VI1PR04MB702379645745FB697033FE6BEE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1574458460.git.leonard.crestez@nxp.com>
 <CAHCN7xKNwit8ueUO0OkebfYh=4hsL7_+DRWEbn2dEt0H322W4w@mail.gmail.com>
 <VI1PR04MB70231CA0E3C4574211518359EE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <CAHCN7xJNy0z2hvWbM3UhLni5ruS+sCLeBH8BKiYexe3Sp=6Q0w@mail.gmail.com>
 <VI1PR04MB70235951BC137515BDD2FDC7EE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <CAHCN7xKHJAb8k1A+WC3EUOmgLTx-Kbjw_5EsmwyhDkkOKCsmGQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 20fc3907-ca29-45c8-c1a9-08d783d675bb
x-ms-traffictypediagnostic: VI1PR04MB5693:|VI1PR04MB5693:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB56931FE04880016924AD6C04EE530@VI1PR04MB5693.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(396003)(376002)(136003)(39860400002)(199004)(189003)(45080400002)(55016002)(110136005)(54906003)(71200400001)(86362001)(7416002)(316002)(9686003)(2906002)(966005)(5660300002)(6636002)(33656002)(6506007)(26005)(44832011)(8936002)(52536014)(8676002)(7696005)(81156014)(53546011)(81166006)(66446008)(4326008)(66476007)(66556008)(64756008)(478600001)(66946007)(76116006)(91956017)(186003)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5693;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x8kk0StQWxHRAgR/85IEuqKJUyt/qXeuxRStcwKAocaQ3eJUfUDY/eaD/eBjnKPBe3fwC83rto49mOspPkM4vSGdPslt9Xj7Is7Q88/A5gHRnbLe6zrm3CAcysnWYRvvXqyvtxoy7AdbEU7MRwM7SbT9NZphsOpnp/EAKF6k50erBohBrrUwcFPMT8gpZKusf+1RiicI9Kniz/pHc4mJm76MP7wH2J2cqLGVllUsR8BWqxPrCZuCv8yPQyit5AxHAxb2MdjGpsakiqoi2SreDjb3oSsPQLmIqkrstSu7DD97QisiAIdiIgW6B7yhTLJXFm82/wWM/E0y/nmvmGA0O+Tigpqt78vzzmZ/x3SLssWD/fnD+INBHzLXk51+0Nl8Yawb1W5+cDvBRihFOnr+RvTrbgq/Pl2lhFDH34wPUgb40ap8h8VjcDiwvseOfeIy3gIZb+epmlvI86Azpt0rMIi23mLr29QMdIEllrFfRsYFhw8b5fOUXS/dQu4HyBsTbhyZ72uWJZ9UfxK93QmuHA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20fc3907-ca29-45c8-c1a9-08d783d675bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 16:22:21.6200 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fdRdvQT2rZ19bgfhFpR/ZInT9hDPHhoTQFJwlBth/u4+CRw/pbNfV1FhxpUrqW7roX0tLR4ntqYoXYmBFbK49g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5693
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_082225_217825_D979722B 
X-CRM114-Status: GOOD (  19.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.46 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, linux-clk <linux-clk@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 devicetree <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Matthias Kaehlcke <mka@chromium.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18.12.2019 17:37, Adam Ford wrote:
> On Wed, Dec 18, 2019 at 9:16 AM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>>
>> On 18.12.2019 17:05, Adam Ford wrote:
>>> On Wed, Dec 18, 2019 at 8:44 AM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>>>>
>>>> On 18.12.2019 15:35, Adam Ford wrote:
>>>>> On Fri, Nov 22, 2019 at 3:45 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>>>>>>
>>>>>> This adds support for dynamic scaling of the DDR Controller (ddrc)
>>>>>> present on i.MX8M series chips. Actual frequency switching is
>>>>>> implemented inside TF-A, this driver wraps the SMC calls and
>>>>>> synchronizes the clk tree.
>>>>>>
>>>>>> DRAM frequency switching requires clock manipulation but during this operation
>>>>>> DRAM itself is briefly inaccessible so this operation is performed a SMC call
>>>>>> to by TF-A which runs from a SRAM area. Upon returning to linux the clock tree
>>>>>> is updated to correspond to hardware configuration.
>>>>>>
>>>>>> This is handled via CLK_GET_RATE_NO_CACHE for dividers but muxes are handled
>>>>>> manually: the driver will prepare/enable the new parents ahead of switching (so
>>>>>> that the expected roots are enabled) and afterwards it will call clk_set_parent
>>>>>> to ensure the parents in clock framework are up-to-date.
>>>>>>
>>>>>> This series is useful standalone and roughly similar to devfreq drivers for
>>>>>> tegra and rockchip.
>>>>>>
>>>>>> Running at lower dram rates saves power but can affect the functionality of
>>>>>> other blocks in the chip (display, vpu etc). Support for in-kernel constraints
>>>>>> will some separately.
>>>>>>
>>>>>> This series has no dependencies outside linux-next. The driver depends
>>>>>> on features from the NXP branch of TF-A and will cleanly fail to probe
>>>>>> on mainline. There are also plans to upstream dram dvfs in TF-A.
>>>>>>
>>>>>> Leonard Crestez (5):
>>>>>>      clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram clocks
>>>>>>      clk: imx: Mark dram pll on 8mm and 8mn with CLK_GET_RATE_NOCACHE
>>>>>>      dt-bindings: memory: Add bindings for imx8m ddr controller
>>>>>>      PM / devfreq: Add dynamic scaling for imx8m ddr controller
>>>>>>      arm64: dts: imx8m: Add ddr controller nodes
>>>>>>
>>>>>>     .../memory-controllers/fsl/imx8m-ddrc.yaml    |  72 +++
>>>>>>     arch/arm64/boot/dts/freescale/imx8mm-evk.dts  |  18 +
>>>>>>     arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  10 +
>>>>>>     .../boot/dts/freescale/imx8mn-ddr4-evk.dts    |  18 +
>>>>>>     arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  10 +
>>>>>>     arch/arm64/boot/dts/freescale/imx8mq-evk.dts  |  24 +
>>>>>>     arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  10 +
>>>>>>     drivers/clk/imx/clk-imx8mm.c                  |  11 +-
>>>>>>     drivers/clk/imx/clk-imx8mn.c                  |  12 +-
>>>>>>     drivers/clk/imx/clk-imx8mq.c                  |  12 +-
>>>>>>     drivers/clk/imx/clk-pll14xx.c                 |   7 +
>>>>>>     drivers/clk/imx/clk.h                         |   1 +
>>>>>>     drivers/devfreq/Kconfig                       |   9 +
>>>>>
>>>>> Since there is a Kconfig change, should there me a defconfig change?
>>>>
>>>> Yes, you need to enable CONFIG_ARM_IMX8M_DDRC_DEVFREQ in order to test
>>>> this. Enabling as "m" should work.
>>>
>>> I enabled it as 'm' but I was more curious to know if we should push
>>> this upstream with the rest of the series.
>>
>> I skipped enabling because it's very experimental; maybe after imx
>> interconnect is also enabled?
>>
>>>>>>     drivers/devfreq/Makefile                      |   1 +
>>>>>>     drivers/devfreq/imx8m-ddrc.c                  | 465 ++++++++++++++++++
>>>>>>     15 files changed, 670 insertions(+), 10 deletions(-)
>>>>>>     create mode 100644 Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
>>>>>>     create mode 100644 drivers/devfreq/imx8m-ddrc.c
>>>>>
>>>>> I applied the whole series against 5.5-rc1 and I am trying to test it.
>>>>> I know the 4.14 kernel NXP posted on Code Aurora is capable to
>>>>> lowering the DDRC controller to 25MHz on the 8MM when the video is
>>>>> off.  Since there is no video support yet for the 8MM, I was expecting
>>>>> to see the DDRC clock to be at or around 25MHz.
>>>>>
>>>>> Using debug FS, I can see the dram core clock is still running at
>>>>> 750MHz, and measuring power, it shows something consistent with what I
>>>>> see on the Code Aurora kernel with video turned on and the clock at
>>>>> 750MHz.
>>>>>
>>>>> Is there some way to get the dram_core_clk to drop to 25MHz to see
>>>>> some power reduction?  The same commands used in the Yocto build don't
>>>>> apply here since we don't have video.
>>>>
>>>> Current upstream driver just keeps current frequency by default. Try the
>>>> following:
>>>>
>>>> cd /sys/class/devfreq/devices/devfreq0
>>>
>>> can't cd to /sys/class/devfreq/devices/devfreq0: No such file or directory
>>>
>>> I did some checking and I found:
>>>       imx8m-ddrc-devfreq 3d400000.memory-controller: failed to init
>>> firmware freq info: -19
>>>
>>> Was there some prerequisite patches I needed to apply before your series?
>>
>> You need a recent version of TF-A from nxp ( upstream). Try this:
>>
>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fsource.codeaurora.org%2Fexternal%2Fimx%2Fimx-atf%2Flog%2F%3Fh%3Dimx_4.19.35_1.1.0&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cc07fadd829994fe6293c08d783d02fa9%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637122802480130351&amp;sdata=dVovGr1ttwrnSz39MPNNVg%2FB8HV5AjrHXGbksO3XvVo%3D&amp;reserved=0
>>
>> Or this:
>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2Fcdleonard%2Farm-trusted-firmware%2Fcommits%2Fimx_2.0.y_busfreq&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cc07fadd829994fe6293c08d783d02fa9%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637122802480140347&amp;sdata=Q9KPq60FOxJ7GflwupNaXvbqHIR40Ej5GxeY%2BhHI658%3D&amp;reserved=0
>>
>> Support on upstream ATF is not yet available
> 
> I cloned your github branch and built it per the instructions in the
> u-boot readme file.
> did a make clean on u-boot, copied the bl31.bin to u-boot and rebuild
> per U-Boot's instructions.
> 
> U-Boot booted and Linux booted, but I still get:
> 
>     imx8m-ddrc-devfreq 3d400000.memory-controller: failed to init
> firmware freq info: -19

Which version of u-boot is that, upstream? I'm subscribed to uboot 
mailing list and I see that imx8m support has its own separate issues 
but my familiarity is limited :(

I've only ever tested with NXP uboot and the NXP version of mkimage:

https://source.codeaurora.org/external/imx/uboot-imx/log/?h=imx_v2019.04_4.19.35_1.1.0
https://source.codeaurora.org/external/imx/imx-mkimage/

My bootloader prints the following BuildInfo:
   - ATF 70fa7bc 

   - U-Boot 2019.04-00019-g4d377539a119

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
