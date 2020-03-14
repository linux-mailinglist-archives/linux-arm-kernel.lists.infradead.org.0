Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C23185622
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 18:41:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IK4cMVK+yAfLkbu/SuNX9zcWlVDrs9N3evPk+EQAYjA=; b=ANOv86YtHIZUUP
	gSxiMW5fozRASyOj+Ft6UauNlg3uchNCtEL5BeB5aHkwD3wRGVSX0HnNK8TAgW/UOHLBIe5Tt5Xd+
	Dkq3txcaz+pf8YVO5WYwth6M04rX/Z+KbfV3Ux+KYAgwJ6oxGTeNH8g39nWHZF9m80PmNYZM1e1de
	DkLDM/d60pqTJJ2kjNjiVhgyQsyuVbQwEginzZsHxMjUAIRYGCSsFtWilgD5cY1SnW8CWe9LZhO1o
	a/4cmDSZEWZ4fm5CjATR3l4y0/eO6mJos9B08LDffd2mgo+ZY28BCQQ+4xuMlyttWybFWRbgbcjje
	o1MNBgbzzyT2OipeZMLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDAmy-0005JZ-UQ; Sat, 14 Mar 2020 17:41:32 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDAmp-0005Iz-Sl
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 17:41:25 +0000
Received: by mail-ed1-f68.google.com with SMTP id ca19so16319948edb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 14 Mar 2020 10:41:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WgOverYYA4jA/93Ai/jb2egs1mkI7q35yYWNe0ct6c0=;
 b=NyJDplCGywykRQYkPC68inm0uuy/UPXoFk3ihl7UDQYdMGJs6YgYu84P47roti7oCF
 Pq42L/KDYDdyjgNkevANThPRe6qrbcrkCXTJOVV+Umrxwbv6F1pvtnj1eAxQXKQiuoU1
 1ZgYl9zgKWcLgVDpedqNtFik6w8icNYqayIM3xo+c8wjCQcaR8d4NDVU/ulQrektqg+C
 MOT9YOb8ybLoLAH3KT8YpMbqw1FD4E3hKdz/xed82qX10cBVfRmaoW3gzkqC5HfybB8t
 hVTTSWsPZSbqcNfZ2eVGc1j6lix9Ns39lJ2ND1vnpuwfK6XcrmxFn82qYaXor7xnkCdf
 Krgg==
X-Gm-Message-State: ANhLgQ1Qd/qHkTCnNv1DS4nWlu1bhKCtQNtrUxK0CAMAdXt/Jh2L+/DN
 ktjtCPVFDTcGW4TpVOV2QwM=
X-Google-Smtp-Source: ADFU+vvSO2GNlUjV6/Zp2Fz+b2P92ILGU9eEpunxkHK5UxSTsOblN74/X/UafCVORzRhQox9oPDiUQ==
X-Received: by 2002:a17:906:ece7:: with SMTP id
 qt7mr7281553ejb.216.1584207677447; 
 Sat, 14 Mar 2020 10:41:17 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id ba5sm89515edb.89.2020.03.14.10.41.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 14 Mar 2020 10:41:16 -0700 (PDT)
Date: Sat, 14 Mar 2020 18:41:13 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCHv3 5/5] clk: samsung: exynos542x: Move FSYS subsystem
 clocks to its sub-CMU
Message-ID: <20200314174113.GA17580@kozik-lap>
References: <20200310194854.831-1-linux.amoon@gmail.com>
 <20200310194854.831-6-linux.amoon@gmail.com>
 <20200311144248.GA4455@kozik-lap>
 <CANAwSgQWYdh3awuMCjUvz6EvnwMq9rDOSBn5EkNcA7OfsjoEwA@mail.gmail.com>
 <20200312113618.GA6206@pi3>
 <CANAwSgQOLRAW8zTBfPgBxXkJ8AaXyjGXc8+eQ9PUowOo5zDP6A@mail.gmail.com>
 <CANAwSgRfwr47DhehdvjhcJJ91r3XWXmQVgb6Mk+kPjPVz5uhzw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgRfwr47DhehdvjhcJJ91r3XWXmQVgb6Mk+kPjPVz5uhzw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_104123_932607_E3F2F184 
X-CRM114-Status: GOOD (  28.04  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Thu, Mar 12, 2020 at 07:38:30PM +0530, Anand Moon wrote:
> Hi Krzysztof,
> 
> On Thu, 12 Mar 2020 at 18:24, Anand Moon <linux.amoon@gmail.com> wrote:
> >
> > Hi Krzysztof,
> >
> > On Thu, 12 Mar 2020 at 17:06, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > >
> > > On Thu, Mar 12, 2020 at 04:04:57PM +0530, Anand Moon wrote:
> > > > Hi Krzysztof,
> > > >
> > > > Thanks for your review comments.
> > > >
> > > > On Wed, 11 Mar 2020 at 20:12, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > > >
> > > > > On Tue, Mar 10, 2020 at 07:48:54PM +0000, Anand Moon wrote:
> > > > > > FSYS power domain support usbdrd3, pdma and usb2 power gaiting,
> > > > > > hence move FSYS clk setting to sub-CMU block to support power domain
> > > > > > on/off sequences for device nodes.
> > > > > >
> > > > > > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > > > > > ---
> > > > > > New patch in the series
> > > > > > ---
> > > > > >  drivers/clk/samsung/clk-exynos5420.c | 45 +++++++++++++++++++++-------
> > > > > >  1 file changed, 34 insertions(+), 11 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
> > > > > > index c9e5a1fb6653..6c4c47dfcdce 100644
> > > > > > --- a/drivers/clk/samsung/clk-exynos5420.c
> > > > > > +++ b/drivers/clk/samsung/clk-exynos5420.c
> > > > > > @@ -859,12 +859,6 @@ static const struct samsung_div_clock exynos5x_div_clks[] __initconst = {
> > > > > >       DIV(0, "dout_maudio0", "mout_maudio0", DIV_MAU, 20, 4),
> > > > > >       DIV(0, "dout_maupcm0", "dout_maudio0", DIV_MAU, 24, 8),
> > > > > >
> > > > > > -     /* USB3.0 */
> > > > > > -     DIV(0, "dout_usbphy301", "mout_usbd301", DIV_FSYS0, 12, 4),
> > > > > > -     DIV(0, "dout_usbphy300", "mout_usbd300", DIV_FSYS0, 16, 4),
> > > > > > -     DIV(0, "dout_usbd301", "mout_usbd301", DIV_FSYS0, 20, 4),
> > > > > > -     DIV(0, "dout_usbd300", "mout_usbd300", DIV_FSYS0, 24, 4),
> > > > >
> > > > > According to clock diagram these are still in CMU TOP, not FSYS.
> > > > >
> > > > > > -
> > > > > >       /* MMC */
> > > > > >       DIV(0, "dout_mmc0", "mout_mmc0", DIV_FSYS1, 0, 10),
> > > > > >       DIV(0, "dout_mmc1", "mout_mmc1", DIV_FSYS1, 10, 10),
> > > > > > @@ -1031,8 +1025,6 @@ static const struct samsung_gate_clock exynos5x_gate_clks[] __initconst = {
> > > > > />
> > > > > >       /* FSYS Block */
> > > > > >       GATE(CLK_TSI, "tsi", "aclk200_fsys", GATE_BUS_FSYS0, 0, 0, 0),
> > > > > > -     GATE(CLK_PDMA0, "pdma0", "aclk200_fsys", GATE_BUS_FSYS0, 1, 0, 0),
> > > > > > -     GATE(CLK_PDMA1, "pdma1", "aclk200_fsys", GATE_BUS_FSYS0, 2, 0, 0),
> > > > > >       GATE(CLK_UFS, "ufs", "aclk200_fsys2", GATE_BUS_FSYS0, 3, 0, 0),
> > > > > >       GATE(CLK_RTIC, "rtic", "aclk200_fsys", GATE_IP_FSYS, 9, 0, 0),
> > > > > >       GATE(CLK_MMC0, "mmc0", "aclk200_fsys2", GATE_IP_FSYS, 12, 0, 0),
> > > > > > @@ -1040,9 +1032,6 @@ static const struct samsung_gate_clock exynos5x_gate_clks[] __initconst = {
> > > > > >       GATE(CLK_MMC2, "mmc2", "aclk200_fsys2", GATE_IP_FSYS, 14, 0, 0),
> > > > > >       GATE(CLK_SROMC, "sromc", "aclk200_fsys2",
> > > > > >                       GATE_IP_FSYS, 17, CLK_IGNORE_UNUSED, 0),
> > > > > > -     GATE(CLK_USBH20, "usbh20", "aclk200_fsys", GATE_IP_FSYS, 18, 0, 0),
> > > > > > -     GATE(CLK_USBD300, "usbd300", "aclk200_fsys", GATE_IP_FSYS, 19, 0, 0),
> > > > > > -     GATE(CLK_USBD301, "usbd301", "aclk200_fsys", GATE_IP_FSYS, 20, 0, 0),
> > > > > >       GATE(CLK_SCLK_UNIPRO, "sclk_unipro", "dout_unipro",
> > > > > >                       SRC_MASK_FSYS, 24, CLK_SET_RATE_PARENT, 0),
> > > > > >
> > > > > > @@ -1258,6 +1247,28 @@ static struct exynos5_subcmu_reg_dump exynos5x_gsc_suspend_regs[] = {
> > > > > >       { DIV2_RATIO0, 0, 0x30 },       /* DIV dout_gscl_blk_300 */
> > > > > >  };
> > > > > >
> > > > > > +/* USB3.0 */
> > > > > > +static const struct samsung_div_clock exynos5x_fsys_div_clks[] __initconst = {
> > > > > > +     DIV(0, "dout_usbphy301", "mout_usbd301", DIV_FSYS0, 12, 4),
> > > > > > +     DIV(0, "dout_usbphy300", "mout_usbd300", DIV_FSYS0, 16, 4),
> > > > > > +     DIV(0, "dout_usbd301", "mout_usbd301", DIV_FSYS0, 20, 4),
> > > > > > +     DIV(0, "dout_usbd300", "mout_usbd300", DIV_FSYS0, 24, 4),
> > > > > > +};
> > > > > > +
> > > > > > +static const struct samsung_gate_clock exynos5x_fsys_gate_clks[] __initconst = {
> > > > > > +     GATE(CLK_PDMA0, "pdma0", "aclk200_fsys", GATE_BUS_FSYS0, 1, 0, 0),
> > > > > > +     GATE(CLK_PDMA1, "pdma1", "aclk200_fsys", GATE_BUS_FSYS0, 2, 0, 0),
> > > > > > +     GATE(CLK_USBH20, "usbh20", "aclk200_fsys", GATE_IP_FSYS, 18, 0, 0),
> > > > > > +     GATE(CLK_USBD300, "usbd300", "aclk200_fsys", GATE_IP_FSYS, 19, 0, 0),
> > > > > > +     GATE(CLK_USBD301, "usbd301", "aclk200_fsys", GATE_IP_FSYS, 20, 0, 0),
> > > > > > +};
> > > > > > +
> > > > > > +static struct exynos5_subcmu_reg_dump exynos5x_fsys_suspend_regs[] = {
> > > > > > +     { GATE_IP_FSYS, 0xffffffff, 0xffffffff }, /* FSYS gates */
> > > > >
> > > > > This looks wrong. GATE_IP_FSYS has fields also for FSYS2 clocks which
> > > > > you are not suspending. They do not belong to this CMU.
> > > > >
> > > >
> > > > Ok. I change the from GATE_IP_FSYS to GATE_BUS_FSYS0 in the above
> > > > exynos5x_fsys_gate_clks to make this consistent to used GATE_BUS_FSYS0 for CMU,
> > > > with this change it works as per previously.
> > >
> > > Wait, you should set here proper registers with proper mask.
> >
> > Yes I will set the proper mask for each as per the Exynos 5422 User Manual.
> >
> > Here is what I feel
> > CLK_GATE_BUS_FSYS0 controls the PHY clock
> > CLK_GATE_IP_FSYS controls the IP clock.
> >
> 
> Sorry I cannot register both CLK_GATE_BUS_FSYS0 and CLK_GATE_IP_FSYS
> to aclk200_fsys, so I got some error like below.
> 
> [    0.922693] samsung_clk_register_gate: failed to register clock usbh20
> [    0.922857] samsung_clk_register_gate: failed to register clock usbd300
> [    0.923000] samsung_clk_register_gate: failed to register clock usbd301
> 
> > So both these field should be part of this FSYS CMU.

I am not sure if I understand your problem. I mentioned that you need
to put proper registers with proper masks into the
exynos5_subcmu_reg_dump. I don't know what have you changed to produce
such error logs.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
