Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA10183CFC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 00:03:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEy+mOdMNxHFkXY9Bf2GOeFowRDYH1uSb2AxyVph1Yw=; b=sGU53/HEryqPvf
	7/zPHzZ6LN/POmz2gLzRAf/9soU29recLu6G/s4jU4XchujVpTEAtiv9qScz4Uv2yfs4KvLl2apfD
	2KQh0BCvEAQ4igwTXCKj4Ok2WphebLFrJDX+qtZ6Mvy9IGabpNZnB+FPmg4DNk/hq+W47Hs05CCB/
	/5E/zXpZZAaQc3RdTn6zqEW6emph1eoVpKz8ADFiMqFjt/E5VwVCPZbN/fXW8Q+Km9EdMPQ6L2IwB
	UAvlvbH7BRoyNpBlljkISOro46ITyRa3ETJs4viCMDWJelfzQKWSUkJ19agKdpE1EtwoYHhQ6Ph9r
	bcuWQEMwNzCCroV+00ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCWr8-0001jL-M2; Thu, 12 Mar 2020 23:03:10 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCWqx-0001fY-QB
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 23:03:01 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id A2B7F5F;
 Fri, 13 Mar 2020 00:02:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1584054177;
 bh=n1RmDaPINq/9UEwuYap1gQ4IHXGw18k1yY1Z161d2l8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j0RzlUpFWNePXY9BtYpu/R2uq3jNPUKgnQGwJF0K3Nz0EG3g4AuRS/fbjYO2/3ImW
 e8f0pYaoq5lQdcGdl0VaHfek8/F/HWkmijLUyU6rU0ujXnseBFkZ/CmAFDXCHGhcTh
 TF7GLUK33rMLlZhRKGreLMqV66Gg2tzb9p+WKG5E=
Date: Fri, 13 Mar 2020 01:02:53 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v2 2/3] media: i2c: ov5645: Switch to assigned-clock-rates
Message-ID: <20200312230253.GB30932@pendragon.ideasonboard.com>
References: <1584047552-20166-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584047552-20166-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdUgMHjU_ZANzJbxQji6K7Pdc-jD4C7JatQc-OtN=jJt_w@mail.gmail.com>
 <OSBPR01MB3590906C6121D1DFFF4ABF0DAAFD0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OSBPR01MB3590906C6121D1DFFF4ABF0DAAFD0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_160300_003425_C0E5BF04 
X-CRM114-Status: GOOD (  22.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Thu, Mar 12, 2020 at 09:52:38PM +0000, Prabhakar Mahadev Lad wrote:
> On 12 March 2020 21:42, Geert Uytterhoeven wrote:
> > On Thu, Mar 12, 2020 at 10:13 PM Lad Prabhakar wrote:
> > > This patch switches to assigned-clock-rates for specifying the clock rate.
> > > The clk-conf.c internally handles setting the clock rate when
> > > assigned-clock-rates is passed.
> > >
> > > The driver now sets the clock frequency only if the deprecated
> > > property clock-frequency is defined instead assigned-clock-rates, this
> > > is to avoid breakage with existing DT binaries.
> > >
> > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Thanks for your patch!
> >
> > > --- a/drivers/media/i2c/ov5645.c
> > > +++ b/drivers/media/i2c/ov5645.c
> > > @@ -1055,6 +1055,7 @@ static int ov5645_probe(struct i2c_client *client)
> > >         struct device_node *endpoint;
> > >         struct ov5645 *ov5645;
> > >         u8 chip_id_high, chip_id_low;
> > > +       bool set_clk = false;
> > >         unsigned int i;
> > >         u32 xclk_freq;
> > >         int ret;
> > > @@ -1094,10 +1095,17 @@ static int ov5645_probe(struct i2c_client
> > *client)
> > >                 return PTR_ERR(ov5645->xclk);
> > >         }
> > >
> > > -       ret = of_property_read_u32(dev->of_node, "clock-frequency",
> > &xclk_freq);
> > > +       ret = of_property_read_u32(dev->of_node, "assigned-clock-rates",
> > > +                                  &xclk_freq);
> > >         if (ret) {
> >
> > I think you can just leave out the above check...
> >
> > > -               dev_err(dev, "could not get xclk frequency\n");
> > > -               return ret;
> > > +               /* check if deprecated property clock-frequency is defined */
> > > +               ret = of_property_read_u32(dev->of_node, "clock-frequency",
> > > +                                          &xclk_freq);
> > > +               if (ret) {
> >
> > ... and ignore the absence of the deprecated property.
> >
> > > +                       dev_err(dev, "could not get xclk frequency\n");
> > > +                       return ret;
> > > +               }
> > > +               set_clk = true;
> >
> > I.e. just
> >
> >         /* check if deprecated property clock-frequency is defined */
> >         xclk_freq = 0;
> >         of_property_read_u32(dev->of_node, "clock-frequency", &xclk_freq);
> >         if (xclk_freq) {
> >                 ret = clk_set_rate(ov5645->xclk, xclk_freq);
> >                 if (ret) {
> >                         dev_err(dev, "could not set xclk frequency\n");
> >                         return ret;
> >                 }
> >         } else {
> >                 xclk_freq = clk_get_rate(ov5645->xclk, xclk_freq);
> >         }
> >
> I did think about it initially, but realized the clk_get_rate may vary platform to platform
> for example in G2E clk_get_rate() returns a frequency of 24242424 with
> assigned-clock-rates set to  24000000 and probe would fail due to a check for
> external clock must be 24MHz, with 1% tolerance.

Then you need to handle the tolerance in this driver :-)

> > >         }
> > >
> > >         /* external clock must be 24MHz, allow 1% tolerance */ @@
> > > -1107,10 +1115,12 @@ static int ov5645_probe(struct i2c_client *client)
> > >                 return -EINVAL;
> > >         }
> > >
> > > -       ret = clk_set_rate(ov5645->xclk, xclk_freq);
> > > -       if (ret) {
> > > -               dev_err(dev, "could not set xclk frequency\n");
> > > -               return ret;
> > > +       if (set_clk) {
> > > +               ret = clk_set_rate(ov5645->xclk, xclk_freq);
> > > +               if (ret) {
> > > +                       dev_err(dev, "could not set xclk frequency\n");
> > > +                       return ret;
> > > +               }
> > >
> > >         }
> > >
> > >         for (i = 0; i < OV5645_NUM_SUPPLIES; i++)

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
