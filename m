Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0F0124BD6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 16:37:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+lnq/Zfv6QXuln5FAc29RQKji6IBmTdYDWzl6PkvEw=; b=Isbj8BQFaClQ9X
	vDmYafnz50x5xH8QH1Yfe3w3Zd6ZA/DPgYBnUSWLBP13EAK4EWJG0BL3g7rPbizRIjlHtKPBbHcm/
	qiC0bZ8kJW/hrRocQRQUvB1T0Q32c+aItV0gLHkTUnOklixayRYyCiIuNDWnsOT4QGsr+EhZL40Py
	oVl8ler0egb+Ak6bIyQ7c2ariTU+ZfmV4gJfxCOIxvQBy/YUQ7RTHPGQhtqsNbMWRBHzQIrZnxl7F
	+y+yxrKLxX6P3DD5ogm0hpWBh5zP/yfbekGr3hY9YzXRgF1WOsS1d9azLRW78JTlcYRVe5g606oD4
	tm9ySY/ywpGdf33K4qXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihbOK-0003Pu-Rm; Wed, 18 Dec 2019 15:37:36 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihbOA-0003P5-QI
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 15:37:28 +0000
Received: by mail-il1-x144.google.com with SMTP id g12so2068957ild.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 07:37:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7/0Cx566venUU7dDXePf4MglaNmiGe8WWE6mIv6eA2E=;
 b=vYKP2MAYqg+oajDl0uayzHdWlss0ZrDkraWsIP54vlUDqpcUxX6oBKbS5uBuhD6cus
 DoZjwv8EEMKbpVXxUAzYbZyiw+gK1PcYkjrW9OvHduUGwi5Zjh+sDg9qbGIR6WIPeVm5
 Y51iZWoIQxtjTnldJtdLeZ6IzfRNP+GqzE3TedmVY3O3e/wFp9py5HRCQEG8iIG4aWCe
 8Yr5bYix+ZYp2H9nVWywx9u0c6KRlCSUBokXBOuf2qzK1MRdCiZTe43hkmp9h9x3ItVm
 wsNk/wn7AZidxIoICZ5ToBq+u/Y6DghM2CYxKA5aHTXLHf+Cuxxm7E5ZTvG/Uz3kN1PH
 tgEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7/0Cx566venUU7dDXePf4MglaNmiGe8WWE6mIv6eA2E=;
 b=WJt1BbB+sLzxXHB0hgy73RKdZ9lKNP0rhXmezDPjl8IqGR2XvdHWxN6CQpKbFnmbgi
 /3a5MeyC/jJSnE8KdmApztIgMbDJ9ax0DXuCsGo/WEyYPmj6dIY02PB1gwURxXUBxcBA
 vD9iUx5Kr7aUmUrneJGOjJMeeTjzKdtPvmnD+AcaTNlmHC6j/4cVk3dRm+ifiBZ/yJod
 L52GOMVsmmcR+0J8XZgutanUs+GH/071OdNyYot1P326fmxLYTMmYxys9kN8bLTG4BJ0
 hJq26bJINxTIGLwyvrZ42b0cB4bE32ju9USlvIRqnQSwQ6+/HyDyKOFeyhO8m3oMd0Ol
 XO6w==
X-Gm-Message-State: APjAAAUakI8zhszmamcRTZkIlPx3e27ycygslkf7ks/Y2+ClDXnnUCAP
 xFZHj/gGLXVymTXGJLR9FiRdq/N7SoF0++dxUfA=
X-Google-Smtp-Source: APXvYqzZwSwTUOlYM6TsQQNm3QDAI/MmJsqk//isBpzlQCB5QCN/YvtmUYVY/LMiY4AbBPfcqD05jwXVAxK7n1Qryjg=
X-Received: by 2002:a92:dc91:: with SMTP id c17mr2593518iln.78.1576683445143; 
 Wed, 18 Dec 2019 07:37:25 -0800 (PST)
MIME-Version: 1.0
References: <cover.1574458460.git.leonard.crestez@nxp.com>
 <CAHCN7xKNwit8ueUO0OkebfYh=4hsL7_+DRWEbn2dEt0H322W4w@mail.gmail.com>
 <VI1PR04MB70231CA0E3C4574211518359EE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <CAHCN7xJNy0z2hvWbM3UhLni5ruS+sCLeBH8BKiYexe3Sp=6Q0w@mail.gmail.com>
 <VI1PR04MB70235951BC137515BDD2FDC7EE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB70235951BC137515BDD2FDC7EE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 18 Dec 2019 09:37:14 -0600
Message-ID: <CAHCN7xKHJAb8k1A+WC3EUOmgLTx-Kbjw_5EsmwyhDkkOKCsmGQ@mail.gmail.com>
Subject: Re: [PATCH v7 0/5] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_073726_884041_4EA15B4D 
X-CRM114-Status: GOOD (  30.85  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
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

On Wed, Dec 18, 2019 at 9:16 AM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> On 18.12.2019 17:05, Adam Ford wrote:
> > On Wed, Dec 18, 2019 at 8:44 AM Leonard Crestez <leonard.crestez@nxp.com> wrote:
> >>
> >> On 18.12.2019 15:35, Adam Ford wrote:
> >>> On Fri, Nov 22, 2019 at 3:45 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
> >>>>
> >>>> This adds support for dynamic scaling of the DDR Controller (ddrc)
> >>>> present on i.MX8M series chips. Actual frequency switching is
> >>>> implemented inside TF-A, this driver wraps the SMC calls and
> >>>> synchronizes the clk tree.
> >>>>
> >>>> DRAM frequency switching requires clock manipulation but during this operation
> >>>> DRAM itself is briefly inaccessible so this operation is performed a SMC call
> >>>> to by TF-A which runs from a SRAM area. Upon returning to linux the clock tree
> >>>> is updated to correspond to hardware configuration.
> >>>>
> >>>> This is handled via CLK_GET_RATE_NO_CACHE for dividers but muxes are handled
> >>>> manually: the driver will prepare/enable the new parents ahead of switching (so
> >>>> that the expected roots are enabled) and afterwards it will call clk_set_parent
> >>>> to ensure the parents in clock framework are up-to-date.
> >>>>
> >>>> This series is useful standalone and roughly similar to devfreq drivers for
> >>>> tegra and rockchip.
> >>>>
> >>>> Running at lower dram rates saves power but can affect the functionality of
> >>>> other blocks in the chip (display, vpu etc). Support for in-kernel constraints
> >>>> will some separately.
> >>>>
> >>>> This series has no dependencies outside linux-next. The driver depends
> >>>> on features from the NXP branch of TF-A and will cleanly fail to probe
> >>>> on mainline. There are also plans to upstream dram dvfs in TF-A.
> >>>>
> >>>> Leonard Crestez (5):
> >>>>     clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram clocks
> >>>>     clk: imx: Mark dram pll on 8mm and 8mn with CLK_GET_RATE_NOCACHE
> >>>>     dt-bindings: memory: Add bindings for imx8m ddr controller
> >>>>     PM / devfreq: Add dynamic scaling for imx8m ddr controller
> >>>>     arm64: dts: imx8m: Add ddr controller nodes
> >>>>
> >>>>    .../memory-controllers/fsl/imx8m-ddrc.yaml    |  72 +++
> >>>>    arch/arm64/boot/dts/freescale/imx8mm-evk.dts  |  18 +
> >>>>    arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  10 +
> >>>>    .../boot/dts/freescale/imx8mn-ddr4-evk.dts    |  18 +
> >>>>    arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  10 +
> >>>>    arch/arm64/boot/dts/freescale/imx8mq-evk.dts  |  24 +
> >>>>    arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  10 +
> >>>>    drivers/clk/imx/clk-imx8mm.c                  |  11 +-
> >>>>    drivers/clk/imx/clk-imx8mn.c                  |  12 +-
> >>>>    drivers/clk/imx/clk-imx8mq.c                  |  12 +-
> >>>>    drivers/clk/imx/clk-pll14xx.c                 |   7 +
> >>>>    drivers/clk/imx/clk.h                         |   1 +
> >>>>    drivers/devfreq/Kconfig                       |   9 +
> >>>
> >>> Since there is a Kconfig change, should there me a defconfig change?
> >>
> >> Yes, you need to enable CONFIG_ARM_IMX8M_DDRC_DEVFREQ in order to test
> >> this. Enabling as "m" should work.
> >
> > I enabled it as 'm' but I was more curious to know if we should push
> > this upstream with the rest of the series.
>
> I skipped enabling because it's very experimental; maybe after imx
> interconnect is also enabled?
>
> >>>>    drivers/devfreq/Makefile                      |   1 +
> >>>>    drivers/devfreq/imx8m-ddrc.c                  | 465 ++++++++++++++++++
> >>>>    15 files changed, 670 insertions(+), 10 deletions(-)
> >>>>    create mode 100644 Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
> >>>>    create mode 100644 drivers/devfreq/imx8m-ddrc.c
> >>>
> >>> I applied the whole series against 5.5-rc1 and I am trying to test it.
> >>> I know the 4.14 kernel NXP posted on Code Aurora is capable to
> >>> lowering the DDRC controller to 25MHz on the 8MM when the video is
> >>> off.  Since there is no video support yet for the 8MM, I was expecting
> >>> to see the DDRC clock to be at or around 25MHz.
> >>>
> >>> Using debug FS, I can see the dram core clock is still running at
> >>> 750MHz, and measuring power, it shows something consistent with what I
> >>> see on the Code Aurora kernel with video turned on and the clock at
> >>> 750MHz.
> >>>
> >>> Is there some way to get the dram_core_clk to drop to 25MHz to see
> >>> some power reduction?  The same commands used in the Yocto build don't
> >>> apply here since we don't have video.
> >>
> >> Current upstream driver just keeps current frequency by default. Try the
> >> following:
> >>
> >> cd /sys/class/devfreq/devices/devfreq0
> >
> > can't cd to /sys/class/devfreq/devices/devfreq0: No such file or directory
> >
> > I did some checking and I found:
> >      imx8m-ddrc-devfreq 3d400000.memory-controller: failed to init
> > firmware freq info: -19
> >
> > Was there some prerequisite patches I needed to apply before your series?
>
> You need a recent version of TF-A from nxp ( upstream). Try this:
>
> https://source.codeaurora.org/external/imx/imx-atf/log/?h=imx_4.19.35_1.1.0
>
> Or this:
> https://github.com/cdleonard/arm-trusted-firmware/commits/imx_2.0.y_busfreq
>
> Support on upstream ATF is not yet available

I cloned your github branch and built it per the instructions in the
u-boot readme file.
did a make clean on u-boot, copied the bl31.bin to u-boot and rebuild
per U-Boot's instructions.

U-Boot booted and Linux booted, but I still get:

   imx8m-ddrc-devfreq 3d400000.memory-controller: failed to init
firmware freq info: -19

I am still learning the imx8mm platform, so please forgive my ignorance.

adam
>
> --
> Regards,
> Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
