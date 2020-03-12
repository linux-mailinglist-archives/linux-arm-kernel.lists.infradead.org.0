Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D02F1830AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 13:55:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dY/AU8CGr4O0rgDtyD7HzNL91nV05SWxhz3mSze/uwo=; b=JfLWPzDnv4HWOK
	QoiB6F5fWoWs4VC+yq8jlmrhkgrj1YMGSfzdxr/w7kqpsmoOy8LK1D9BBbwzEukuCgMcoJJuWsF20
	nPF7VRql938TdIeDJMopsA1wm6lVzHbCvvaksRIMXfbAT7XaclPCLIe0f3iwTk5g23zSL7srXBX58
	7BOqN5BpUM+eQxNjIgKPgWpRvtMPBVCnjeOSMXH77Lpj4XGUwfAbsQqiX1Bp/cRpY1qYGnO2QTA2M
	S4vXZoAZhC3TVy1pIFcfrFzzZIr2ax6C/L7FctZdoW5uJVxk08fTssulbZ6T2TgD3dC12j39f/FGf
	T6Y84tzbeMQ8eFR89l9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNMQ-0001hm-0J; Thu, 12 Mar 2020 12:54:50 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNMI-0001hO-Ah
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 12:54:43 +0000
Received: by mail-il1-x142.google.com with SMTP id j69so5322917ila.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 05:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dGkwaq8lw7fMLDfPL6B7cGksh4Hi48p1DuxNEtaP3pU=;
 b=Gf69EOqM6TQqgC3wTSdK4qgWrFm6DxXSZiHEFmOgcazELU2xKkWAc34F0RRQnw/lK3
 4G/DvyEWuH19UdafLL1H23PvJhDfp0Pdr71urqsapvnAiLFBQgDM3wA0sW1ve9xjjl4S
 /AKA22xX1nbuFgAgevXyKLe6S0tLzx+OYqrtVIfpUfBFcbjn+BsvxwL0kiNsQRnqrH4/
 7zf3wLdW5yBqU5GwijW4WYHa85kLU+Mgv3aZXzqM17oeKYST466xcCKjrQK4my/vUV+A
 oEWswayw/ljYT+wL81GJ0oFCBewwYM0i0acOAAReKGqAi7j8uNHXgz1jEKmjyD1yQ+TL
 lPcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dGkwaq8lw7fMLDfPL6B7cGksh4Hi48p1DuxNEtaP3pU=;
 b=KhPIIQ9pwanCWtsqm+OlyIt0/eFBIE0oYNERpQVK3OMszYjWE+gO8bBhOuwsqXmXb5
 sOPwvU1+H+h0N7/ntkjJxz56YpMIwV68CUdTEET0dFKqeE7ULj0bAdSxCMLF0Dkx5hwR
 9lpa5E7+RaFJTjbCdMKbVYFGj0B1DBHqEg6iO7Sglu4cwOhHIG+b1TPDs6hwxCCxrBQG
 bPIEb7yWXXABlu87R5Chc5Ige996QGov5W7ehc+Ji7iB/NV4wFgRQzT5OBthN9nYzc9+
 n380cuQNqC+CLRvgB6Agl/yvOAl5YdQG7JH+8K+r8680kF4cfXQLmT0uxQhX/KBDpTr/
 M4nQ==
X-Gm-Message-State: ANhLgQ2HVJidhqpL02aIAQaeAcuf6XW4LGXe3XBWs2vibB7JEnLXIZp1
 dHUdQ6/z6XNMyt3xWiZxMMXpxOnDHrIDE0KKkOU=
X-Google-Smtp-Source: ADFU+vv+kpji+ynroJiBDzsRd7WhZYytunKgmF0KXs+VSTXf5eOLwMqu0/hlD41bGO5/ir6ecQTiSgXijOGmBe/G3yA=
X-Received: by 2002:a92:c008:: with SMTP id q8mr4757821ild.221.1584017681454; 
 Thu, 12 Mar 2020 05:54:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200310194854.831-1-linux.amoon@gmail.com>
 <20200310194854.831-6-linux.amoon@gmail.com>
 <20200311144248.GA4455@kozik-lap>
 <CANAwSgQWYdh3awuMCjUvz6EvnwMq9rDOSBn5EkNcA7OfsjoEwA@mail.gmail.com>
 <20200312113618.GA6206@pi3>
In-Reply-To: <20200312113618.GA6206@pi3>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 12 Mar 2020 18:24:30 +0530
Message-ID: <CANAwSgQOLRAW8zTBfPgBxXkJ8AaXyjGXc8+eQ9PUowOo5zDP6A@mail.gmail.com>
Subject: Re: [PATCHv3 5/5] clk: samsung: exynos542x: Move FSYS subsystem
 clocks to its sub-CMU
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_055442_392997_578E2977 
X-CRM114-Status: GOOD (  24.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>, linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, Felipe Balbi <balbi@kernel.org>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On Thu, 12 Mar 2020 at 17:06, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Thu, Mar 12, 2020 at 04:04:57PM +0530, Anand Moon wrote:
> > Hi Krzysztof,
> >
> > Thanks for your review comments.
> >
> > On Wed, 11 Mar 2020 at 20:12, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > >
> > > On Tue, Mar 10, 2020 at 07:48:54PM +0000, Anand Moon wrote:
> > > > FSYS power domain support usbdrd3, pdma and usb2 power gaiting,
> > > > hence move FSYS clk setting to sub-CMU block to support power domain
> > > > on/off sequences for device nodes.
> > > >
> > > > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > > > ---
> > > > New patch in the series
> > > > ---
> > > >  drivers/clk/samsung/clk-exynos5420.c | 45 +++++++++++++++++++++-------
> > > >  1 file changed, 34 insertions(+), 11 deletions(-)
> > > >
> > > > diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
> > > > index c9e5a1fb6653..6c4c47dfcdce 100644
> > > > --- a/drivers/clk/samsung/clk-exynos5420.c
> > > > +++ b/drivers/clk/samsung/clk-exynos5420.c
> > > > @@ -859,12 +859,6 @@ static const struct samsung_div_clock exynos5x_div_clks[] __initconst = {
> > > >       DIV(0, "dout_maudio0", "mout_maudio0", DIV_MAU, 20, 4),
> > > >       DIV(0, "dout_maupcm0", "dout_maudio0", DIV_MAU, 24, 8),
> > > >
> > > > -     /* USB3.0 */
> > > > -     DIV(0, "dout_usbphy301", "mout_usbd301", DIV_FSYS0, 12, 4),
> > > > -     DIV(0, "dout_usbphy300", "mout_usbd300", DIV_FSYS0, 16, 4),
> > > > -     DIV(0, "dout_usbd301", "mout_usbd301", DIV_FSYS0, 20, 4),
> > > > -     DIV(0, "dout_usbd300", "mout_usbd300", DIV_FSYS0, 24, 4),
> > >
> > > According to clock diagram these are still in CMU TOP, not FSYS.
> > >
> > > > -
> > > >       /* MMC */
> > > >       DIV(0, "dout_mmc0", "mout_mmc0", DIV_FSYS1, 0, 10),
> > > >       DIV(0, "dout_mmc1", "mout_mmc1", DIV_FSYS1, 10, 10),
> > > > @@ -1031,8 +1025,6 @@ static const struct samsung_gate_clock exynos5x_gate_clks[] __initconst = {
> > > />
> > > >       /* FSYS Block */
> > > >       GATE(CLK_TSI, "tsi", "aclk200_fsys", GATE_BUS_FSYS0, 0, 0, 0),
> > > > -     GATE(CLK_PDMA0, "pdma0", "aclk200_fsys", GATE_BUS_FSYS0, 1, 0, 0),
> > > > -     GATE(CLK_PDMA1, "pdma1", "aclk200_fsys", GATE_BUS_FSYS0, 2, 0, 0),
> > > >       GATE(CLK_UFS, "ufs", "aclk200_fsys2", GATE_BUS_FSYS0, 3, 0, 0),
> > > >       GATE(CLK_RTIC, "rtic", "aclk200_fsys", GATE_IP_FSYS, 9, 0, 0),
> > > >       GATE(CLK_MMC0, "mmc0", "aclk200_fsys2", GATE_IP_FSYS, 12, 0, 0),
> > > > @@ -1040,9 +1032,6 @@ static const struct samsung_gate_clock exynos5x_gate_clks[] __initconst = {
> > > >       GATE(CLK_MMC2, "mmc2", "aclk200_fsys2", GATE_IP_FSYS, 14, 0, 0),
> > > >       GATE(CLK_SROMC, "sromc", "aclk200_fsys2",
> > > >                       GATE_IP_FSYS, 17, CLK_IGNORE_UNUSED, 0),
> > > > -     GATE(CLK_USBH20, "usbh20", "aclk200_fsys", GATE_IP_FSYS, 18, 0, 0),
> > > > -     GATE(CLK_USBD300, "usbd300", "aclk200_fsys", GATE_IP_FSYS, 19, 0, 0),
> > > > -     GATE(CLK_USBD301, "usbd301", "aclk200_fsys", GATE_IP_FSYS, 20, 0, 0),
> > > >       GATE(CLK_SCLK_UNIPRO, "sclk_unipro", "dout_unipro",
> > > >                       SRC_MASK_FSYS, 24, CLK_SET_RATE_PARENT, 0),
> > > >
> > > > @@ -1258,6 +1247,28 @@ static struct exynos5_subcmu_reg_dump exynos5x_gsc_suspend_regs[] = {
> > > >       { DIV2_RATIO0, 0, 0x30 },       /* DIV dout_gscl_blk_300 */
> > > >  };
> > > >
> > > > +/* USB3.0 */
> > > > +static const struct samsung_div_clock exynos5x_fsys_div_clks[] __initconst = {
> > > > +     DIV(0, "dout_usbphy301", "mout_usbd301", DIV_FSYS0, 12, 4),
> > > > +     DIV(0, "dout_usbphy300", "mout_usbd300", DIV_FSYS0, 16, 4),
> > > > +     DIV(0, "dout_usbd301", "mout_usbd301", DIV_FSYS0, 20, 4),
> > > > +     DIV(0, "dout_usbd300", "mout_usbd300", DIV_FSYS0, 24, 4),
> > > > +};
> > > > +
> > > > +static const struct samsung_gate_clock exynos5x_fsys_gate_clks[] __initconst = {
> > > > +     GATE(CLK_PDMA0, "pdma0", "aclk200_fsys", GATE_BUS_FSYS0, 1, 0, 0),
> > > > +     GATE(CLK_PDMA1, "pdma1", "aclk200_fsys", GATE_BUS_FSYS0, 2, 0, 0),
> > > > +     GATE(CLK_USBH20, "usbh20", "aclk200_fsys", GATE_IP_FSYS, 18, 0, 0),
> > > > +     GATE(CLK_USBD300, "usbd300", "aclk200_fsys", GATE_IP_FSYS, 19, 0, 0),
> > > > +     GATE(CLK_USBD301, "usbd301", "aclk200_fsys", GATE_IP_FSYS, 20, 0, 0),
> > > > +};
> > > > +
> > > > +static struct exynos5_subcmu_reg_dump exynos5x_fsys_suspend_regs[] = {
> > > > +     { GATE_IP_FSYS, 0xffffffff, 0xffffffff }, /* FSYS gates */
> > >
> > > This looks wrong. GATE_IP_FSYS has fields also for FSYS2 clocks which
> > > you are not suspending. They do not belong to this CMU.
> > >
> >
> > Ok. I change the from GATE_IP_FSYS to GATE_BUS_FSYS0 in the above
> > exynos5x_fsys_gate_clks to make this consistent to used GATE_BUS_FSYS0 for CMU,
> > with this change it works as per previously.
>
> Wait, you should set here proper registers with proper mask.

Yes I will set the proper mask for each as per the Exynos 5422 User Manual.

Here is what I feel
CLK_GATE_BUS_FSYS0 controls the PHY clock
CLK_GATE_IP_FSYS controls the IP clock.

So both these field should be part of this FSYS CMU.

> >
> > > Don't you need to save also parts of GATE_BUS_FSYS0?
> >
> > GATE_BUS_FSYS0 and GATE_IP_FSYS are already part of list
> > of control register which are saved and restored during suspend and resume
> > so no point in adding this here, I should drop the GATE_IP_FSYS reg
> > dump over here.
>
> Since registers are used in separate sub CMU devices, each should
> save/restore its part.

Ok I will add both GATE_BUS_FSYS0 and GATE_IP_FSYS
reset value over here.

>
> Best regards,
> Krzysztof
>

-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
