Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFA1182DE1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 11:35:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5tdYNvmLi2/aV/lEx/pkLtxmcKuMan4r2Egp5y1uXc=; b=igS13LwL5G4cwa
	rKE/pKt6qPo0Ef6b7VlWzIsEKB7t0PG2tfHX3O2MfdTUnPaGcBJ+c3VhaLXxJVR9H0PH/9FBFN5ip
	1s0nneWu4BqRQ45R2lnb9wnhdNuAuw7quKKeezG7GLysUlu4X47GrrJOB3gh60bwZVTTfyWOMVGFx
	ARfpqUHSAZuKetXd9GwqWTberoDREmWoEvOcE5UamnGaILNZIlkIfySLBBts7BO5o4jBbqCgz8h4y
	XiK2uzzyrFTy6khegA/dyeTsNE1itlKTfGLj8qg3tBdy/pKQosSKAarHCaRETBT+biPmMV1qoRaDV
	DnaNIyOzga6U7NApzBHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCLBP-0004iq-KM; Thu, 12 Mar 2020 10:35:19 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCLBH-0004iW-Pz
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 10:35:13 +0000
Received: by mail-il1-x144.google.com with SMTP id p1so4940565ils.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 03:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d11jKh4nIXxOO14qhhlowcRFY/zdekEryEZGjxCyR4U=;
 b=dWlD5nySofCuFcC1KqOfJXf0Pm6lXznegz4dEb3SJMlcVi6TNUBD8je8acrRZWM7u6
 4YszOga5UvfaxttN2thsNJs3wyA9EB93WgLz/EkoxOj2WIxKOLfENbGt5wG+u9Q5VQT5
 zYNGkVJo1tGM99CWwAQ827pIAUgzvPM9tF0IGqEZI1G4dSY6VwfbaJfFLEB9p5g1wtbk
 kQieh2ZvT6ZXAs++6I1aRURG/WlZCJ3J2/8IBVSPNwLd6Y8RWdbQd91cXc7jUv5HaRMS
 nqpayk0UHPrXjo/+K3xd8gnASiS9z9xLZ2vOb0piFQdLeowUojeYezEGIia3++pn6Gl7
 ij/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d11jKh4nIXxOO14qhhlowcRFY/zdekEryEZGjxCyR4U=;
 b=ApFtHwW9NqGu3RFOqme+ZF6HJc9dssA/HjpqMm1fBSgLafhgpWIwxA5dPevGj0yaXR
 JPWFAQLEr4rJN7OhBG3//QY8/N7zUhFVordmx3h1xES/DkigG6XbTr9zlmd2UTWf08S5
 M92SCgjyYJu8s63XsO7t4gn5bap38bHFqvw21uI2wnakenOgk9+2tbd9UU1WHHFlVG6Z
 +xGFMtT2k12MhXYDSc+5/n8lP9UikqCTEyoa0EEqbPQ1692FsaJKBcFVzj2RiawoB46x
 XfwXQPZMklNo1yzRWq3DcghrypXJ28ihE4WNbYBswwxLR1U/LlPUHXVyvbIQY/pbTkMK
 7yJw==
X-Gm-Message-State: ANhLgQ35GmnBCLDPUwjOJOlSDJi1vIbMs9nP7O10WAcpzKiWmB8lMYHF
 JGbjfHctOvdozgcetSoJAs2VLnSU/xjmYTxZQU8=
X-Google-Smtp-Source: ADFU+vvSRlyq9Zdi/fl/WLdv2Po6WICy6RqRd2FY2vS+d6/LY3eKydss4wYnT9C5FUYvIXP6ufBuZlUYC9tzxOFzjhA=
X-Received: by 2002:a92:af8c:: with SMTP id v12mr7879184ill.6.1584009309784;
 Thu, 12 Mar 2020 03:35:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200310194854.831-1-linux.amoon@gmail.com>
 <20200310194854.831-6-linux.amoon@gmail.com>
 <20200311144248.GA4455@kozik-lap>
In-Reply-To: <20200311144248.GA4455@kozik-lap>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 12 Mar 2020 16:04:57 +0530
Message-ID: <CANAwSgQWYdh3awuMCjUvz6EvnwMq9rDOSBn5EkNcA7OfsjoEwA@mail.gmail.com>
Subject: Re: [PATCHv3 5/5] clk: samsung: exynos542x: Move FSYS subsystem
 clocks to its sub-CMU
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_033511_875379_FCEF4C92 
X-CRM114-Status: GOOD (  22.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
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

Thanks for your review comments.

On Wed, 11 Mar 2020 at 20:12, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Tue, Mar 10, 2020 at 07:48:54PM +0000, Anand Moon wrote:
> > FSYS power domain support usbdrd3, pdma and usb2 power gaiting,
> > hence move FSYS clk setting to sub-CMU block to support power domain
> > on/off sequences for device nodes.
> >
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> > New patch in the series
> > ---
> >  drivers/clk/samsung/clk-exynos5420.c | 45 +++++++++++++++++++++-------
> >  1 file changed, 34 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
> > index c9e5a1fb6653..6c4c47dfcdce 100644
> > --- a/drivers/clk/samsung/clk-exynos5420.c
> > +++ b/drivers/clk/samsung/clk-exynos5420.c
> > @@ -859,12 +859,6 @@ static const struct samsung_div_clock exynos5x_div_clks[] __initconst = {
> >       DIV(0, "dout_maudio0", "mout_maudio0", DIV_MAU, 20, 4),
> >       DIV(0, "dout_maupcm0", "dout_maudio0", DIV_MAU, 24, 8),
> >
> > -     /* USB3.0 */
> > -     DIV(0, "dout_usbphy301", "mout_usbd301", DIV_FSYS0, 12, 4),
> > -     DIV(0, "dout_usbphy300", "mout_usbd300", DIV_FSYS0, 16, 4),
> > -     DIV(0, "dout_usbd301", "mout_usbd301", DIV_FSYS0, 20, 4),
> > -     DIV(0, "dout_usbd300", "mout_usbd300", DIV_FSYS0, 24, 4),
>
> According to clock diagram these are still in CMU TOP, not FSYS.
>
> > -
> >       /* MMC */
> >       DIV(0, "dout_mmc0", "mout_mmc0", DIV_FSYS1, 0, 10),
> >       DIV(0, "dout_mmc1", "mout_mmc1", DIV_FSYS1, 10, 10),
> > @@ -1031,8 +1025,6 @@ static const struct samsung_gate_clock exynos5x_gate_clks[] __initconst = {
> />
> >       /* FSYS Block */
> >       GATE(CLK_TSI, "tsi", "aclk200_fsys", GATE_BUS_FSYS0, 0, 0, 0),
> > -     GATE(CLK_PDMA0, "pdma0", "aclk200_fsys", GATE_BUS_FSYS0, 1, 0, 0),
> > -     GATE(CLK_PDMA1, "pdma1", "aclk200_fsys", GATE_BUS_FSYS0, 2, 0, 0),
> >       GATE(CLK_UFS, "ufs", "aclk200_fsys2", GATE_BUS_FSYS0, 3, 0, 0),
> >       GATE(CLK_RTIC, "rtic", "aclk200_fsys", GATE_IP_FSYS, 9, 0, 0),
> >       GATE(CLK_MMC0, "mmc0", "aclk200_fsys2", GATE_IP_FSYS, 12, 0, 0),
> > @@ -1040,9 +1032,6 @@ static const struct samsung_gate_clock exynos5x_gate_clks[] __initconst = {
> >       GATE(CLK_MMC2, "mmc2", "aclk200_fsys2", GATE_IP_FSYS, 14, 0, 0),
> >       GATE(CLK_SROMC, "sromc", "aclk200_fsys2",
> >                       GATE_IP_FSYS, 17, CLK_IGNORE_UNUSED, 0),
> > -     GATE(CLK_USBH20, "usbh20", "aclk200_fsys", GATE_IP_FSYS, 18, 0, 0),
> > -     GATE(CLK_USBD300, "usbd300", "aclk200_fsys", GATE_IP_FSYS, 19, 0, 0),
> > -     GATE(CLK_USBD301, "usbd301", "aclk200_fsys", GATE_IP_FSYS, 20, 0, 0),
> >       GATE(CLK_SCLK_UNIPRO, "sclk_unipro", "dout_unipro",
> >                       SRC_MASK_FSYS, 24, CLK_SET_RATE_PARENT, 0),
> >
> > @@ -1258,6 +1247,28 @@ static struct exynos5_subcmu_reg_dump exynos5x_gsc_suspend_regs[] = {
> >       { DIV2_RATIO0, 0, 0x30 },       /* DIV dout_gscl_blk_300 */
> >  };
> >
> > +/* USB3.0 */
> > +static const struct samsung_div_clock exynos5x_fsys_div_clks[] __initconst = {
> > +     DIV(0, "dout_usbphy301", "mout_usbd301", DIV_FSYS0, 12, 4),
> > +     DIV(0, "dout_usbphy300", "mout_usbd300", DIV_FSYS0, 16, 4),
> > +     DIV(0, "dout_usbd301", "mout_usbd301", DIV_FSYS0, 20, 4),
> > +     DIV(0, "dout_usbd300", "mout_usbd300", DIV_FSYS0, 24, 4),
> > +};
> > +
> > +static const struct samsung_gate_clock exynos5x_fsys_gate_clks[] __initconst = {
> > +     GATE(CLK_PDMA0, "pdma0", "aclk200_fsys", GATE_BUS_FSYS0, 1, 0, 0),
> > +     GATE(CLK_PDMA1, "pdma1", "aclk200_fsys", GATE_BUS_FSYS0, 2, 0, 0),
> > +     GATE(CLK_USBH20, "usbh20", "aclk200_fsys", GATE_IP_FSYS, 18, 0, 0),
> > +     GATE(CLK_USBD300, "usbd300", "aclk200_fsys", GATE_IP_FSYS, 19, 0, 0),
> > +     GATE(CLK_USBD301, "usbd301", "aclk200_fsys", GATE_IP_FSYS, 20, 0, 0),
> > +};
> > +
> > +static struct exynos5_subcmu_reg_dump exynos5x_fsys_suspend_regs[] = {
> > +     { GATE_IP_FSYS, 0xffffffff, 0xffffffff }, /* FSYS gates */
>
> This looks wrong. GATE_IP_FSYS has fields also for FSYS2 clocks which
> you are not suspending. They do not belong to this CMU.
>

Ok. I change the from GATE_IP_FSYS to GATE_BUS_FSYS0 in the above
exynos5x_fsys_gate_clks to make this consistent to used GATE_BUS_FSYS0 for CMU,
with this change it works as per previously.

> Don't you need to save also parts of GATE_BUS_FSYS0?

GATE_BUS_FSYS0 and GATE_IP_FSYS are already part of list
of control register which are saved and restored during suspend and resume
so no point in adding this here, I should drop the GATE_IP_FSYS reg
dump over here.

>
> > +     { SRC_TOP3, 0, BIT(24) },                 /* SW_MUX_PCLK_200_FSYS_SEL */
> > +     { SRC_TOP3, 0, BIT(28) },                 /* SW_MUX_ACLK_200_FSYS_SEL */
>
> Name of clocks from the driver please, not from datasheet. Look at other
> examples.
>

Ok  I will update this as per the examples.

> Best regards,
> Krzysztof
>
>

-Anand

> > +};
> > +
> >  static const struct samsung_gate_clock exynos5x_g3d_gate_clks[] __initconst = {
> >       GATE(CLK_G3D, "g3d", "mout_user_aclk_g3d", GATE_IP_G3D, 9,
> >            CLK_SET_RATE_PARENT, 0),
> > @@ -1376,12 +1387,23 @@ static const struct exynos5_subcmu_info exynos5800_mau_subcmu = {
> >       .pd_name        = "MAU",
> >  };
> >
> > +static const struct exynos5_subcmu_info exynos5x_fsys_subcmu = {
> > +     .div_clks       = exynos5x_fsys_div_clks,
> > +     .nr_div_clks    = ARRAY_SIZE(exynos5x_fsys_div_clks),
> > +     .gate_clks      = exynos5x_fsys_gate_clks,
> > +     .nr_gate_clks   = ARRAY_SIZE(exynos5x_fsys_gate_clks),
> > +     .suspend_regs   = exynos5x_fsys_suspend_regs,
> > +     .nr_suspend_regs = ARRAY_SIZE(exynos5x_fsys_suspend_regs),
> > +     .pd_name        = "FSYS",
> > +};
> > +
> >  static const struct exynos5_subcmu_info *exynos5x_subcmus[] = {
> >       &exynos5x_disp_subcmu,
> >       &exynos5x_gsc_subcmu,
> >       &exynos5x_g3d_subcmu,
> >       &exynos5x_mfc_subcmu,
> >       &exynos5x_mscl_subcmu,
> > +     &exynos5x_fsys_subcmu,
> >  };
> >
> >  static const struct exynos5_subcmu_info *exynos5800_subcmus[] = {
> > @@ -1391,6 +1413,7 @@ static const struct exynos5_subcmu_info *exynos5800_subcmus[] = {
> >       &exynos5x_mfc_subcmu,
> >       &exynos5x_mscl_subcmu,
> >       &exynos5800_mau_subcmu,
> > +     &exynos5x_fsys_subcmu,
> >  };
> >
> >  static const struct samsung_pll_rate_table exynos5420_pll2550x_24mhz_tbl[] __initconst = {
> > --
> > 2.25.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
