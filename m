Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C233F124E19
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:43:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O0HGSh/iqiNc3Ey8ejzIbI21D5wKQ/d401xCv3jiGNw=; b=ahyP34JbZUt0Iu
	kRpua4SNtiL7QLFvp2Lip9uHYaMobcfjkMa0v0lnzVhIzZ+Fl+/TIPqBmnmWQfDRbgWNE7Y2iCvAU
	ohXJFZ6FhP0xaqN/FM7Ug0MG0A8yk2IQmDOFXUjtRBRFGs69a+iBMaabbLEr7IvqEG9r3I5R8MwWR
	2zobJlQiFmiWcXpxV095zxJbQoi2ZdYTt57hzitaOYcA/A05QzheenHkUrI9XM6FyOajN2qEXyIS2
	Tn5oG27mm6x6cqfyjnINWBRtMKnWKe5ubQY6eCch3rZlbOeV8pNujELs/iTRy3gK+hzKUU5IQyLCR
	FALiaZjDxzKdxs1AnyVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcPx-0006Gc-TK; Wed, 18 Dec 2019 16:43:21 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihcPo-0006Fg-1T
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:43:13 +0000
Received: by mail-io1-xd43.google.com with SMTP id r13so2668920ioa.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 08:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=IOyVwrmaEwwM5WAlAYfaci9lrn0wT5jQ4QrM8/YtKaU=;
 b=bwf02nR+A9NSy+e1SfYm+xuwG6kMjMnyGBYXuf1R+EUJyFZhfvwR9A/KA2f6gUWSee
 eWhUdbmIw8VUO9pMfZs/jSqO8lsuYZQkb7fNZuUJ7X2nXGMEFJ/xoZM06AFoSDmZMZ/a
 l15UIse4XfYbUkuASsnRs56RRI3BtjNdkszjZQT1ZpKg/fxq5US1GvtYaeRQtbW76p8I
 Ggk3tylfxdkU8V77QlxCDxX+jy7QukyJ0rV2QAWv25fBxfl/6zGsrwCzR38T1sbliLr0
 //Y2QvqL009Hwz3ufH4CksNgiUpk7lUBcQp31Vu/7kNCccXAjLS2Du+ReaeAef+09tRb
 Wg0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IOyVwrmaEwwM5WAlAYfaci9lrn0wT5jQ4QrM8/YtKaU=;
 b=enhu8ZrredgnzvuhzOnL3C7UMLgUAoO33x3VBdC/4pN/3BitX6M9VuJhfY7zoL++qp
 ZZP4pvRxCQIzYw/vxxelQ7rhh5dbQf3eJfOLhsST1anhIOrADfNwgbu2EEJO/8BDAXo0
 D7pkfRxLryZglUkBKEWWWRRrZBVZ0uklZaTbxrlctACO0i8PzvhxQMm9NYtt6lQNtqPw
 mj9Zp/e8pEDuXBcJ2gHpWiA7b8SOAm+oxJPheMmxNtSy6L6/8ZSQgSirVF/FDWcUbVn2
 aZC3DBHRh1+WOrtvGkYPVg/JtCFO1dCjyuC/q05OxpAn5pFpCpG9x0+hLXPh1TggCkcc
 48qA==
X-Gm-Message-State: APjAAAVpI3IjoP8TA4x+qJgLZ/3d81Q3UbnF0V8kft446iJbeeyzBAOd
 cw15s8y1KLv6QRT6vGZJfV+P3RHO9Dd0me27KUg=
X-Google-Smtp-Source: APXvYqyEmFhVFyiB1+P9msk5Bt3WIDE5rv7yI/fQAraMgD2uQ0T2i8x0fTzU1ktQjq/OKHYy4j9cwkX5ps7mSvnZEsQ=
X-Received: by 2002:a02:a38a:: with SMTP id y10mr3150468jak.55.1576687390752; 
 Wed, 18 Dec 2019 08:43:10 -0800 (PST)
MIME-Version: 1.0
References: <cover.1574458460.git.leonard.crestez@nxp.com>
 <CAHCN7xKNwit8ueUO0OkebfYh=4hsL7_+DRWEbn2dEt0H322W4w@mail.gmail.com>
 <VI1PR04MB70231CA0E3C4574211518359EE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <CAHCN7xJNy0z2hvWbM3UhLni5ruS+sCLeBH8BKiYexe3Sp=6Q0w@mail.gmail.com>
 <VI1PR04MB70235951BC137515BDD2FDC7EE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <CAHCN7xKHJAb8k1A+WC3EUOmgLTx-Kbjw_5EsmwyhDkkOKCsmGQ@mail.gmail.com>
 <VI1PR04MB702379645745FB697033FE6BEE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB702379645745FB697033FE6BEE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 18 Dec 2019 10:42:59 -0600
Message-ID: <CAHCN7xLOgh+E5Gw+2v4RUuZANHa+CkW=ACHL5NALMcSRfRY8eQ@mail.gmail.com>
Subject: Re: [PATCH v7 0/5] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_084312_087256_5D0FDED1 
X-CRM114-Status: GOOD (  32.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
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

On Wed, Dec 18, 2019 at 10:22 AM Leonard Crestez
<leonard.crestez@nxp.com> wrote:
>
> On 18.12.2019 17:37, Adam Ford wrote:
> > On Wed, Dec 18, 2019 at 9:16 AM Leonard Crestez <leonard.crestez@nxp.com> wrote:
> >>
> >> On 18.12.2019 17:05, Adam Ford wrote:
> >>> On Wed, Dec 18, 2019 at 8:44 AM Leonard Crestez <leonard.crestez@nxp.com> wrote:
> >>>>
> >>>> On 18.12.2019 15:35, Adam Ford wrote:
> >>>>> On Fri, Nov 22, 2019 at 3:45 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
> >>>>>>
> >>>>>> This adds support for dynamic scaling of the DDR Controller (ddrc)
> >>>>>> present on i.MX8M series chips. Actual frequency switching is
> >>>>>> implemented inside TF-A, this driver wraps the SMC calls and
> >>>>>> synchronizes the clk tree.
> >>>>>>
> >>>>>> DRAM frequency switching requires clock manipulation but during this operation
> >>>>>> DRAM itself is briefly inaccessible so this operation is performed a SMC call
> >>>>>> to by TF-A which runs from a SRAM area. Upon returning to linux the clock tree
> >>>>>> is updated to correspond to hardware configuration.
> >>>>>>
> >>>>>> This is handled via CLK_GET_RATE_NO_CACHE for dividers but muxes are handled
> >>>>>> manually: the driver will prepare/enable the new parents ahead of switching (so
> >>>>>> that the expected roots are enabled) and afterwards it will call clk_set_parent
> >>>>>> to ensure the parents in clock framework are up-to-date.
> >>>>>>
> >>>>>> This series is useful standalone and roughly similar to devfreq drivers for
> >>>>>> tegra and rockchip.
> >>>>>>
> >>>>>> Running at lower dram rates saves power but can affect the functionality of
> >>>>>> other blocks in the chip (display, vpu etc). Support for in-kernel constraints
> >>>>>> will some separately.
> >>>>>>
> >>>>>> This series has no dependencies outside linux-next. The driver depends
> >>>>>> on features from the NXP branch of TF-A and will cleanly fail to probe
> >>>>>> on mainline. There are also plans to upstream dram dvfs in TF-A.
> >>>>>>
> >>>>>> Leonard Crestez (5):
> >>>>>>      clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram clocks
> >>>>>>      clk: imx: Mark dram pll on 8mm and 8mn with CLK_GET_RATE_NOCACHE
> >>>>>>      dt-bindings: memory: Add bindings for imx8m ddr controller
> >>>>>>      PM / devfreq: Add dynamic scaling for imx8m ddr controller
> >>>>>>      arm64: dts: imx8m: Add ddr controller nodes
> >>>>>>
> >>>>>>     .../memory-controllers/fsl/imx8m-ddrc.yaml    |  72 +++
> >>>>>>     arch/arm64/boot/dts/freescale/imx8mm-evk.dts  |  18 +
> >>>>>>     arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  10 +
> >>>>>>     .../boot/dts/freescale/imx8mn-ddr4-evk.dts    |  18 +
> >>>>>>     arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  10 +
> >>>>>>     arch/arm64/boot/dts/freescale/imx8mq-evk.dts  |  24 +
> >>>>>>     arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  10 +
> >>>>>>     drivers/clk/imx/clk-imx8mm.c                  |  11 +-
> >>>>>>     drivers/clk/imx/clk-imx8mn.c                  |  12 +-
> >>>>>>     drivers/clk/imx/clk-imx8mq.c                  |  12 +-
> >>>>>>     drivers/clk/imx/clk-pll14xx.c                 |   7 +
> >>>>>>     drivers/clk/imx/clk.h                         |   1 +
> >>>>>>     drivers/devfreq/Kconfig                       |   9 +
> >>>>>
> >>>>> Since there is a Kconfig change, should there me a defconfig change?
> >>>>
> >>>> Yes, you need to enable CONFIG_ARM_IMX8M_DDRC_DEVFREQ in order to test
> >>>> this. Enabling as "m" should work.
> >>>
> >>> I enabled it as 'm' but I was more curious to know if we should push
> >>> this upstream with the rest of the series.
> >>
> >> I skipped enabling because it's very experimental; maybe after imx
> >> interconnect is also enabled?
> >>
> >>>>>>     drivers/devfreq/Makefile                      |   1 +
> >>>>>>     drivers/devfreq/imx8m-ddrc.c                  | 465 ++++++++++++++++++
> >>>>>>     15 files changed, 670 insertions(+), 10 deletions(-)
> >>>>>>     create mode 100644 Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
> >>>>>>     create mode 100644 drivers/devfreq/imx8m-ddrc.c
> >>>>>
> >>>>> I applied the whole series against 5.5-rc1 and I am trying to test it.
> >>>>> I know the 4.14 kernel NXP posted on Code Aurora is capable to
> >>>>> lowering the DDRC controller to 25MHz on the 8MM when the video is
> >>>>> off.  Since there is no video support yet for the 8MM, I was expecting
> >>>>> to see the DDRC clock to be at or around 25MHz.
> >>>>>
> >>>>> Using debug FS, I can see the dram core clock is still running at
> >>>>> 750MHz, and measuring power, it shows something consistent with what I
> >>>>> see on the Code Aurora kernel with video turned on and the clock at
> >>>>> 750MHz.
> >>>>>
> >>>>> Is there some way to get the dram_core_clk to drop to 25MHz to see
> >>>>> some power reduction?  The same commands used in the Yocto build don't
> >>>>> apply here since we don't have video.
> >>>>
> >>>> Current upstream driver just keeps current frequency by default. Try the
> >>>> following:
> >>>>
> >>>> cd /sys/class/devfreq/devices/devfreq0
> >>>
> >>> can't cd to /sys/class/devfreq/devices/devfreq0: No such file or directory
> >>>
> >>> I did some checking and I found:
> >>>       imx8m-ddrc-devfreq 3d400000.memory-controller: failed to init
> >>> firmware freq info: -19
> >>>
> >>> Was there some prerequisite patches I needed to apply before your series?
> >>
> >> You need a recent version of TF-A from nxp ( upstream). Try this:
> >>
> >> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fsource.codeaurora.org%2Fexternal%2Fimx%2Fimx-atf%2Flog%2F%3Fh%3Dimx_4.19.35_1.1.0&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cc07fadd829994fe6293c08d783d02fa9%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637122802480130351&amp;sdata=dVovGr1ttwrnSz39MPNNVg%2FB8HV5AjrHXGbksO3XvVo%3D&amp;reserved=0
> >>
> >> Or this:
> >> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2Fcdleonard%2Farm-trusted-firmware%2Fcommits%2Fimx_2.0.y_busfreq&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cc07fadd829994fe6293c08d783d02fa9%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637122802480140347&amp;sdata=Q9KPq60FOxJ7GflwupNaXvbqHIR40Ej5GxeY%2BhHI658%3D&amp;reserved=0
> >>
> >> Support on upstream ATF is not yet available
> >
> > I cloned your github branch and built it per the instructions in the
> > u-boot readme file.
> > did a make clean on u-boot, copied the bl31.bin to u-boot and rebuild
> > per U-Boot's instructions.
> >
> > U-Boot booted and Linux booted, but I still get:
> >
> >     imx8m-ddrc-devfreq 3d400000.memory-controller: failed to init
> > firmware freq info: -19
>
> Which version of u-boot is that, upstream? I'm subscribed to uboot
> mailing list and I see that imx8m support has its own separate issues
> but my familiarity is limited :(

U-Boot 2020.01-rc4-00244-gf39abbbc53-dirty (Dec 18 2019 - 09:27:40 -0600)

>
> I've only ever tested with NXP uboot and the NXP version of mkimage:
>
> https://source.codeaurora.org/external/imx/uboot-imx/log/?h=imx_v2019.04_4.19.35_1.1.0
> https://source.codeaurora.org/external/imx/imx-mkimage/

I will try your versions and see what happens.

> My bootloader prints the following BuildInfo:
>    - ATF 70fa7bc
>
>    - U-Boot 2019.04-00019-g4d377539a119
>

Thanks for your help.

adam
> --
> Regards,
> Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
