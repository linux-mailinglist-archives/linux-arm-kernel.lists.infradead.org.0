Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2335E182F59
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 12:36:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0kHKMDwV5Nd1/fpxVxWoKF+rPq2w7oaiqn0MH4kk6+I=; b=DaLTo2A2ttDeOb
	EVjTwxw7NjXZu8NTWB0P+SYJ3uYnRlOqIFWTAK9ilYV+lJ5xyYg3LiAxn1tiEZj5CdnfHVVg0wUmu
	+lTgfqxsrLoOtiuojkWJNPKVF0e8/qTVU4lzbuox4Uof80DTboKu8vCSm6H5aLdsTNhwoDi0JRY5T
	9scQNm4MW8y0Oao4zi6AAdOdy1v37cgYeqsBv3tlX71MTxeIbaFMaB8nfk5pS3GQJVm05hcAuLPKT
	PmnxiGD7kI0bdFNPvubFMGhTuNn4NEjqMN27tchzl0fVYWjGTLRdz4Cti+BhZfr8n+y2N18YVtKUG
	6bIo+nZv5uYCsF97XV2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCM8f-0003RR-45; Thu, 12 Mar 2020 11:36:33 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCM8W-0003Qn-Ng
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 11:36:26 +0000
Received: by mail-ed1-f68.google.com with SMTP id b23so7004375edx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 04:36:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SU5e8ThZ/jC6l2UHW2mQ5E13HASsfjr4EObVUxdLUKU=;
 b=fprs1+ZrhpdpjA1QSKPLQ5DVpZXj/g85qo1ibdr6nHluLJAhc/YVU1GFpJMCW0yiIh
 6ynFO4Ro0O4z/+LJ0REbFJRWhosIhMcoev141UtsvxKHlSC4knIaqjTbDDVA2HmGtJt2
 iOkRymIDJ766h/LpTwJbcCNwJLlSs4LVomTXzH6frk+BB8EAIiB1Iee1IW9IZlt/yxbF
 F5TmMJcUDHDCiyZN47WAdT8egcYHHm46oXChkQfSO+Mdmw/LoWv2wdo6NagxeZigi57X
 ujupWF7GxxPCU6YLJxSHm10YmD5eJm/368O4aHWANmLG21yB9s/oBdTr9PlIHYhQtX85
 oZtQ==
X-Gm-Message-State: ANhLgQ0mdTGd/W7e72kf0QUBzXQ4p+qVgGRhURpHNIDaMtgufM3T8MHn
 osifL8s/fbk55k2A8+gqO5M=
X-Google-Smtp-Source: ADFU+vsylhNgZSPB6ysmt4xorqw0nqsEk6Kn+5R8nMgLFy+Xyx8N/GRpEYUw1R9C56oPpL4PPbVHKQ==
X-Received: by 2002:a50:ec0b:: with SMTP id g11mr7520505edr.80.1584012982435; 
 Thu, 12 Mar 2020 04:36:22 -0700 (PDT)
Received: from pi3 ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id v5sm377196edt.43.2020.03.12.04.36.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 04:36:21 -0700 (PDT)
Date: Thu, 12 Mar 2020 12:36:18 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCHv3 5/5] clk: samsung: exynos542x: Move FSYS subsystem
 clocks to its sub-CMU
Message-ID: <20200312113618.GA6206@pi3>
References: <20200310194854.831-1-linux.amoon@gmail.com>
 <20200310194854.831-6-linux.amoon@gmail.com>
 <20200311144248.GA4455@kozik-lap>
 <CANAwSgQWYdh3awuMCjUvz6EvnwMq9rDOSBn5EkNcA7OfsjoEwA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgQWYdh3awuMCjUvz6EvnwMq9rDOSBn5EkNcA7OfsjoEwA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_043624_776856_B770A81D 
X-CRM114-Status: GOOD (  24.63  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Thu, Mar 12, 2020 at 04:04:57PM +0530, Anand Moon wrote:
> Hi Krzysztof,
> 
> Thanks for your review comments.
> 
> On Wed, 11 Mar 2020 at 20:12, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On Tue, Mar 10, 2020 at 07:48:54PM +0000, Anand Moon wrote:
> > > FSYS power domain support usbdrd3, pdma and usb2 power gaiting,
> > > hence move FSYS clk setting to sub-CMU block to support power domain
> > > on/off sequences for device nodes.
> > >
> > > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > > ---
> > > New patch in the series
> > > ---
> > >  drivers/clk/samsung/clk-exynos5420.c | 45 +++++++++++++++++++++-------
> > >  1 file changed, 34 insertions(+), 11 deletions(-)
> > >
> > > diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
> > > index c9e5a1fb6653..6c4c47dfcdce 100644
> > > --- a/drivers/clk/samsung/clk-exynos5420.c
> > > +++ b/drivers/clk/samsung/clk-exynos5420.c
> > > @@ -859,12 +859,6 @@ static const struct samsung_div_clock exynos5x_div_clks[] __initconst = {
> > >       DIV(0, "dout_maudio0", "mout_maudio0", DIV_MAU, 20, 4),
> > >       DIV(0, "dout_maupcm0", "dout_maudio0", DIV_MAU, 24, 8),
> > >
> > > -     /* USB3.0 */
> > > -     DIV(0, "dout_usbphy301", "mout_usbd301", DIV_FSYS0, 12, 4),
> > > -     DIV(0, "dout_usbphy300", "mout_usbd300", DIV_FSYS0, 16, 4),
> > > -     DIV(0, "dout_usbd301", "mout_usbd301", DIV_FSYS0, 20, 4),
> > > -     DIV(0, "dout_usbd300", "mout_usbd300", DIV_FSYS0, 24, 4),
> >
> > According to clock diagram these are still in CMU TOP, not FSYS.
> >
> > > -
> > >       /* MMC */
> > >       DIV(0, "dout_mmc0", "mout_mmc0", DIV_FSYS1, 0, 10),
> > >       DIV(0, "dout_mmc1", "mout_mmc1", DIV_FSYS1, 10, 10),
> > > @@ -1031,8 +1025,6 @@ static const struct samsung_gate_clock exynos5x_gate_clks[] __initconst = {
> > />
> > >       /* FSYS Block */
> > >       GATE(CLK_TSI, "tsi", "aclk200_fsys", GATE_BUS_FSYS0, 0, 0, 0),
> > > -     GATE(CLK_PDMA0, "pdma0", "aclk200_fsys", GATE_BUS_FSYS0, 1, 0, 0),
> > > -     GATE(CLK_PDMA1, "pdma1", "aclk200_fsys", GATE_BUS_FSYS0, 2, 0, 0),
> > >       GATE(CLK_UFS, "ufs", "aclk200_fsys2", GATE_BUS_FSYS0, 3, 0, 0),
> > >       GATE(CLK_RTIC, "rtic", "aclk200_fsys", GATE_IP_FSYS, 9, 0, 0),
> > >       GATE(CLK_MMC0, "mmc0", "aclk200_fsys2", GATE_IP_FSYS, 12, 0, 0),
> > > @@ -1040,9 +1032,6 @@ static const struct samsung_gate_clock exynos5x_gate_clks[] __initconst = {
> > >       GATE(CLK_MMC2, "mmc2", "aclk200_fsys2", GATE_IP_FSYS, 14, 0, 0),
> > >       GATE(CLK_SROMC, "sromc", "aclk200_fsys2",
> > >                       GATE_IP_FSYS, 17, CLK_IGNORE_UNUSED, 0),
> > > -     GATE(CLK_USBH20, "usbh20", "aclk200_fsys", GATE_IP_FSYS, 18, 0, 0),
> > > -     GATE(CLK_USBD300, "usbd300", "aclk200_fsys", GATE_IP_FSYS, 19, 0, 0),
> > > -     GATE(CLK_USBD301, "usbd301", "aclk200_fsys", GATE_IP_FSYS, 20, 0, 0),
> > >       GATE(CLK_SCLK_UNIPRO, "sclk_unipro", "dout_unipro",
> > >                       SRC_MASK_FSYS, 24, CLK_SET_RATE_PARENT, 0),
> > >
> > > @@ -1258,6 +1247,28 @@ static struct exynos5_subcmu_reg_dump exynos5x_gsc_suspend_regs[] = {
> > >       { DIV2_RATIO0, 0, 0x30 },       /* DIV dout_gscl_blk_300 */
> > >  };
> > >
> > > +/* USB3.0 */
> > > +static const struct samsung_div_clock exynos5x_fsys_div_clks[] __initconst = {
> > > +     DIV(0, "dout_usbphy301", "mout_usbd301", DIV_FSYS0, 12, 4),
> > > +     DIV(0, "dout_usbphy300", "mout_usbd300", DIV_FSYS0, 16, 4),
> > > +     DIV(0, "dout_usbd301", "mout_usbd301", DIV_FSYS0, 20, 4),
> > > +     DIV(0, "dout_usbd300", "mout_usbd300", DIV_FSYS0, 24, 4),
> > > +};
> > > +
> > > +static const struct samsung_gate_clock exynos5x_fsys_gate_clks[] __initconst = {
> > > +     GATE(CLK_PDMA0, "pdma0", "aclk200_fsys", GATE_BUS_FSYS0, 1, 0, 0),
> > > +     GATE(CLK_PDMA1, "pdma1", "aclk200_fsys", GATE_BUS_FSYS0, 2, 0, 0),
> > > +     GATE(CLK_USBH20, "usbh20", "aclk200_fsys", GATE_IP_FSYS, 18, 0, 0),
> > > +     GATE(CLK_USBD300, "usbd300", "aclk200_fsys", GATE_IP_FSYS, 19, 0, 0),
> > > +     GATE(CLK_USBD301, "usbd301", "aclk200_fsys", GATE_IP_FSYS, 20, 0, 0),
> > > +};
> > > +
> > > +static struct exynos5_subcmu_reg_dump exynos5x_fsys_suspend_regs[] = {
> > > +     { GATE_IP_FSYS, 0xffffffff, 0xffffffff }, /* FSYS gates */
> >
> > This looks wrong. GATE_IP_FSYS has fields also for FSYS2 clocks which
> > you are not suspending. They do not belong to this CMU.
> >
> 
> Ok. I change the from GATE_IP_FSYS to GATE_BUS_FSYS0 in the above
> exynos5x_fsys_gate_clks to make this consistent to used GATE_BUS_FSYS0 for CMU,
> with this change it works as per previously.

Wait, you should set here proper registers with proper mask.
> 
> > Don't you need to save also parts of GATE_BUS_FSYS0?
> 
> GATE_BUS_FSYS0 and GATE_IP_FSYS are already part of list
> of control register which are saved and restored during suspend and resume
> so no point in adding this here, I should drop the GATE_IP_FSYS reg
> dump over here.

Since registers are used in separate sub CMU devices, each should
save/restore its part.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
