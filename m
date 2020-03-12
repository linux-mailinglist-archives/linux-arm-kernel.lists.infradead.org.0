Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8AB183275
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 15:09:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xf1+9l4k+dhh/c4I6mCOXBCp7ez20hGFJ/vApXm2xEo=; b=eXR1/Ve2RAqabh
	4XCPHIEGdFT+8s/BuTMSA9jqUKTKChb7QLBRvuEHa54Li7dczE0wVKbv25EGDhe8RpCcx7g98JIME
	xL6jUgAe2uJSX+CgmwPxg0cTlFGlW9Fr7sOfGvjzYURidTSrHdKi+yQFH7vwXxLep64L7upzq1n1F
	FWsobEGTe8qAr4OMVR+o8+egIuPubYrhEbEtA4zl4pQkEkWbfq6TYXpleECpSxXZYZeQqk8K2KC38
	qmYR+Hfmi6ltVaV6iHRbfyZqqxsX3KeHRNCoMb6YL1hgzAYcuZm7Z4XicdPJVa3fj5GJsujzK08p4
	mds0h6PSFg55OEpmMZhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCOW4-00068p-KG; Thu, 12 Mar 2020 14:08:52 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCOVu-00068T-8p
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 14:08:43 +0000
Received: by mail-il1-x144.google.com with SMTP id p1so5545924ils.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 07:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HZDJvBHcAygaNFW1AhEYh5BvrPyioSWncBpQzQmYTlw=;
 b=dlnm5nHSC6zHwC8eQ93JWD674sUeJojxXxFm55XWpzF2DGE8ms9bLrpdge75/yTvza
 vTRS8eEOQeluctdMRjxjpKg4WUakyYWYXRtSqFp/NcGTzOugg29GX0655em5tO53bbIN
 LVdpabTpp2R0bCo0S92Qd+jKKrUHRhfKHW/EIs/OXrwdwkzHP86sNwKDm5aEs3gH/OyC
 c22IrQkmi/gJ9gqQvPieWwqQDdLS5XXRwHGKjQFf+sbrpCqhYDzdbndmI/cUdTqPg5wU
 nfNMrdd0J1Q4riLvLrrZjpHVaPGOpZ3NSteknKEZOhqQRQ9zlhKGmvr6058OUaGXavDq
 GkqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HZDJvBHcAygaNFW1AhEYh5BvrPyioSWncBpQzQmYTlw=;
 b=Epp9u7aGDx2nsV57I20YdvwsC2gv9rAQZQJe60NBjD/cCh+0b9wk+wGbSschs/A0Ue
 NzEPejzQlO7RGgobBV7RfhARftCSG1Df0KId28WMwZFECmDo+gHJJzLl0MeZ5sZBgUTt
 mowW8NasXYNikC2tOB8zRDKDUwt04+Wp49eXrJu0QBSI+UEsNDykUjTi1wr0WnU3Ecuk
 9pYl7yEaJtavWYZ6zyS7718xgPbHeNSkKgtwLHuJPNdQWO/rNjN5usA3/ngEUnn1vKht
 rAWYgzC7gLevp6Y81SAnNqn55+HteFKGOR8K/wJ9JNAkoMr5KNAnt5Xeo5wgUUxz+RX9
 btoA==
X-Gm-Message-State: ANhLgQ2oFGwO1XLcFksfIciIC740gWO9eyqsG+mrlyFmm9hW+4Hh8W66
 HLVY2LCNLGzMC7iauABERV114PH9tJFVonh3gnkEQCRj
X-Google-Smtp-Source: ADFU+vtMsS8G89YHNTzxj4qOSuCS5EbQVDVrRY1YWL85xGEMqLoPY7AaqNH1EBcYsdbh3PlqP3Xfrgkmwe8CyZvO0qE=
X-Received: by 2002:a92:c044:: with SMTP id o4mr4516645ilf.75.1584022121622;
 Thu, 12 Mar 2020 07:08:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200310194854.831-1-linux.amoon@gmail.com>
 <20200310194854.831-6-linux.amoon@gmail.com>
 <20200311144248.GA4455@kozik-lap>
 <CANAwSgQWYdh3awuMCjUvz6EvnwMq9rDOSBn5EkNcA7OfsjoEwA@mail.gmail.com>
 <20200312113618.GA6206@pi3>
 <CANAwSgQOLRAW8zTBfPgBxXkJ8AaXyjGXc8+eQ9PUowOo5zDP6A@mail.gmail.com>
In-Reply-To: <CANAwSgQOLRAW8zTBfPgBxXkJ8AaXyjGXc8+eQ9PUowOo5zDP6A@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 12 Mar 2020 19:38:30 +0530
Message-ID: <CANAwSgRfwr47DhehdvjhcJJ91r3XWXmQVgb6Mk+kPjPVz5uhzw@mail.gmail.com>
Subject: Re: [PATCHv3 5/5] clk: samsung: exynos542x: Move FSYS subsystem
 clocks to its sub-CMU
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_070842_310942_BE139E51 
X-CRM114-Status: GOOD (  28.33  )
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

On Thu, 12 Mar 2020 at 18:24, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Hi Krzysztof,
>
> On Thu, 12 Mar 2020 at 17:06, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On Thu, Mar 12, 2020 at 04:04:57PM +0530, Anand Moon wrote:
> > > Hi Krzysztof,
> > >
> > > Thanks for your review comments.
> > >
> > > On Wed, 11 Mar 2020 at 20:12, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > >
> > > > On Tue, Mar 10, 2020 at 07:48:54PM +0000, Anand Moon wrote:
> > > > > FSYS power domain support usbdrd3, pdma and usb2 power gaiting,
> > > > > hence move FSYS clk setting to sub-CMU block to support power domain
> > > > > on/off sequences for device nodes.
> > > > >
> > > > > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > > > > ---
> > > > > New patch in the series
> > > > > ---
> > > > >  drivers/clk/samsung/clk-exynos5420.c | 45 +++++++++++++++++++++-------
> > > > >  1 file changed, 34 insertions(+), 11 deletions(-)
> > > > >
> > > > > diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
> > > > > index c9e5a1fb6653..6c4c47dfcdce 100644
> > > > > --- a/drivers/clk/samsung/clk-exynos5420.c
> > > > > +++ b/drivers/clk/samsung/clk-exynos5420.c
> > > > > @@ -859,12 +859,6 @@ static const struct samsung_div_clock exynos5x_div_clks[] __initconst = {
> > > > >       DIV(0, "dout_maudio0", "mout_maudio0", DIV_MAU, 20, 4),
> > > > >       DIV(0, "dout_maupcm0", "dout_maudio0", DIV_MAU, 24, 8),
> > > > >
> > > > > -     /* USB3.0 */
> > > > > -     DIV(0, "dout_usbphy301", "mout_usbd301", DIV_FSYS0, 12, 4),
> > > > > -     DIV(0, "dout_usbphy300", "mout_usbd300", DIV_FSYS0, 16, 4),
> > > > > -     DIV(0, "dout_usbd301", "mout_usbd301", DIV_FSYS0, 20, 4),
> > > > > -     DIV(0, "dout_usbd300", "mout_usbd300", DIV_FSYS0, 24, 4),
> > > >
> > > > According to clock diagram these are still in CMU TOP, not FSYS.
> > > >
> > > > > -
> > > > >       /* MMC */
> > > > >       DIV(0, "dout_mmc0", "mout_mmc0", DIV_FSYS1, 0, 10),
> > > > >       DIV(0, "dout_mmc1", "mout_mmc1", DIV_FSYS1, 10, 10),
> > > > > @@ -1031,8 +1025,6 @@ static const struct samsung_gate_clock exynos5x_gate_clks[] __initconst = {
> > > > />
> > > > >       /* FSYS Block */
> > > > >       GATE(CLK_TSI, "tsi", "aclk200_fsys", GATE_BUS_FSYS0, 0, 0, 0),
> > > > > -     GATE(CLK_PDMA0, "pdma0", "aclk200_fsys", GATE_BUS_FSYS0, 1, 0, 0),
> > > > > -     GATE(CLK_PDMA1, "pdma1", "aclk200_fsys", GATE_BUS_FSYS0, 2, 0, 0),
> > > > >       GATE(CLK_UFS, "ufs", "aclk200_fsys2", GATE_BUS_FSYS0, 3, 0, 0),
> > > > >       GATE(CLK_RTIC, "rtic", "aclk200_fsys", GATE_IP_FSYS, 9, 0, 0),
> > > > >       GATE(CLK_MMC0, "mmc0", "aclk200_fsys2", GATE_IP_FSYS, 12, 0, 0),
> > > > > @@ -1040,9 +1032,6 @@ static const struct samsung_gate_clock exynos5x_gate_clks[] __initconst = {
> > > > >       GATE(CLK_MMC2, "mmc2", "aclk200_fsys2", GATE_IP_FSYS, 14, 0, 0),
> > > > >       GATE(CLK_SROMC, "sromc", "aclk200_fsys2",
> > > > >                       GATE_IP_FSYS, 17, CLK_IGNORE_UNUSED, 0),
> > > > > -     GATE(CLK_USBH20, "usbh20", "aclk200_fsys", GATE_IP_FSYS, 18, 0, 0),
> > > > > -     GATE(CLK_USBD300, "usbd300", "aclk200_fsys", GATE_IP_FSYS, 19, 0, 0),
> > > > > -     GATE(CLK_USBD301, "usbd301", "aclk200_fsys", GATE_IP_FSYS, 20, 0, 0),
> > > > >       GATE(CLK_SCLK_UNIPRO, "sclk_unipro", "dout_unipro",
> > > > >                       SRC_MASK_FSYS, 24, CLK_SET_RATE_PARENT, 0),
> > > > >
> > > > > @@ -1258,6 +1247,28 @@ static struct exynos5_subcmu_reg_dump exynos5x_gsc_suspend_regs[] = {
> > > > >       { DIV2_RATIO0, 0, 0x30 },       /* DIV dout_gscl_blk_300 */
> > > > >  };
> > > > >
> > > > > +/* USB3.0 */
> > > > > +static const struct samsung_div_clock exynos5x_fsys_div_clks[] __initconst = {
> > > > > +     DIV(0, "dout_usbphy301", "mout_usbd301", DIV_FSYS0, 12, 4),
> > > > > +     DIV(0, "dout_usbphy300", "mout_usbd300", DIV_FSYS0, 16, 4),
> > > > > +     DIV(0, "dout_usbd301", "mout_usbd301", DIV_FSYS0, 20, 4),
> > > > > +     DIV(0, "dout_usbd300", "mout_usbd300", DIV_FSYS0, 24, 4),
> > > > > +};
> > > > > +
> > > > > +static const struct samsung_gate_clock exynos5x_fsys_gate_clks[] __initconst = {
> > > > > +     GATE(CLK_PDMA0, "pdma0", "aclk200_fsys", GATE_BUS_FSYS0, 1, 0, 0),
> > > > > +     GATE(CLK_PDMA1, "pdma1", "aclk200_fsys", GATE_BUS_FSYS0, 2, 0, 0),
> > > > > +     GATE(CLK_USBH20, "usbh20", "aclk200_fsys", GATE_IP_FSYS, 18, 0, 0),
> > > > > +     GATE(CLK_USBD300, "usbd300", "aclk200_fsys", GATE_IP_FSYS, 19, 0, 0),
> > > > > +     GATE(CLK_USBD301, "usbd301", "aclk200_fsys", GATE_IP_FSYS, 20, 0, 0),
> > > > > +};
> > > > > +
> > > > > +static struct exynos5_subcmu_reg_dump exynos5x_fsys_suspend_regs[] = {
> > > > > +     { GATE_IP_FSYS, 0xffffffff, 0xffffffff }, /* FSYS gates */
> > > >
> > > > This looks wrong. GATE_IP_FSYS has fields also for FSYS2 clocks which
> > > > you are not suspending. They do not belong to this CMU.
> > > >
> > >
> > > Ok. I change the from GATE_IP_FSYS to GATE_BUS_FSYS0 in the above
> > > exynos5x_fsys_gate_clks to make this consistent to used GATE_BUS_FSYS0 for CMU,
> > > with this change it works as per previously.
> >
> > Wait, you should set here proper registers with proper mask.
>
> Yes I will set the proper mask for each as per the Exynos 5422 User Manual.
>
> Here is what I feel
> CLK_GATE_BUS_FSYS0 controls the PHY clock
> CLK_GATE_IP_FSYS controls the IP clock.
>

Sorry I cannot register both CLK_GATE_BUS_FSYS0 and CLK_GATE_IP_FSYS
to aclk200_fsys, so I got some error like below.

[    0.922693] samsung_clk_register_gate: failed to register clock usbh20
[    0.922857] samsung_clk_register_gate: failed to register clock usbd300
[    0.923000] samsung_clk_register_gate: failed to register clock usbd301

> So both these field should be part of this FSYS CMU.
>
> > >
> > > > Don't you need to save also parts of GATE_BUS_FSYS0?
> > >
> > > GATE_BUS_FSYS0 and GATE_IP_FSYS are already part of list
> > > of control register which are saved and restored during suspend and resume
> > > so no point in adding this here, I should drop the GATE_IP_FSYS reg
> > > dump over here.
> >
> > Since registers are used in separate sub CMU devices, each should
> > save/restore its part.
>
> Ok I will add both GATE_BUS_FSYS0 and GATE_IP_FSYS
> reset value over here.
>

So only changes to this patch is to set the above correctly.

-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
