Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F02ECDFF4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 13:11:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LoFAmWKk543b4DoaXsLxMjUIGV23j7/TIFgSdOwUCss=; b=hr24YczLjQ9zBy
	chKtCGzX/MJgMver1TAGZouiJS+ttly9fzlOabqXodB7q3Ms84p0An4/s1UFq+qg+lNhUQQvxj1IB
	NjkVVocqCbViH0xhe+9Wl1X59ZGQkTzV8fs6tw5TQzIl/w7P2CKCmwR18nAaqG6S5toLAew8aSGmd
	OptJ7qwlWl5KPQbQMUMHUPPMR1qnDf5DrHeXuBbA1y8qf4JKYX4mYwKepc5opcuDV+N+44m2JEQPb
	PUsCIugw3Duhyirz2cO2z4HHYuZxpwNpFzKnOBetrWB2BEko7Xk572hSYkprCuQskqIoxMpf8jCrI
	RRcIDRCgTLpt9Uz8g7pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHQvH-0007Q6-NZ; Mon, 07 Oct 2019 11:11:27 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHQv9-0007PR-GH
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 11:11:21 +0000
Received: by mail-ed1-f65.google.com with SMTP id p10so12014858edq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 04:11:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BdSVRSNxLP1konpnVuCvTtNg1cjUO6frfDXS7bB3dZU=;
 b=NvSqHoDHZ/vwxr9zOzR1fb0l67U9J/hsvWdMyFcUARN+GPfV4UjV6I/YLyWDoMIszA
 ktXqSQK7CQK9+CHZ5UFyfKTUqDuSo5qZPXzMh2+NUfFJzX2oE7NJ0OsCQgQJ4bMeBrvO
 Ywyq3HTVaJqmBmFWpYav5KcLlOpNcIv/mLRIEy+/R9C+wH3xx47KMJfSUaCMmTwTWSbW
 Zp+u1fo5VXGlu1oYB1//JfbWqyh9bGTkSgqtxjAj3FpijmeQckdsJB5q1luvFZ/eQfC4
 fIMFsv2PFI1jn9WrnPTBhwR5Za+NdrQlI9D0rzNAryMEPUHLs7wG8iDkpFPNmHEmD9v2
 G+Dw==
X-Gm-Message-State: APjAAAUq8CCnol4EKgSZSdBp62+znRrqz43/wlvCyUELVBUGA/xciWjp
 eDkiYOaWqw9UOvJSdsNiSsMSkHC206Q=
X-Google-Smtp-Source: APXvYqzeQcg0E3NNTgheEFBS+aQros0IuvW1XWtG4MTt+yIYQUtkYu2GlV3BKD7a7M46Keun1HFyHA==
X-Received: by 2002:aa7:d9d2:: with SMTP id v18mr28243419eds.177.1570446675980; 
 Mon, 07 Oct 2019 04:11:15 -0700 (PDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com.
 [209.85.128.44])
 by smtp.gmail.com with ESMTPSA id w21sm3410458eda.90.2019.10.07.04.11.15
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Oct 2019 04:11:15 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id a6so12155089wma.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 04:11:15 -0700 (PDT)
X-Received: by 2002:a7b:c188:: with SMTP id y8mr21306277wmi.51.1570446675074; 
 Mon, 07 Oct 2019 04:11:15 -0700 (PDT)
MIME-Version: 1.0
References: <20191003154842.248763-1-mripard@kernel.org>
 <CAGb2v66az3uQnibudKai7ATfXh+w1Y+bJ=o258RVe9SCNRpGNQ@mail.gmail.com>
 <20191003163754.26ciq2ljcbuuvcrx@gilmour>
 <CAGb2v66WOZZj15GkARRzCTsSRhZi_6aEFK4w+O+aGmYwvVYGdw@mail.gmail.com>
 <20191007110943.lyz3nep7udr6weu3@gilmour>
In-Reply-To: <20191007110943.lyz3nep7udr6weu3@gilmour>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 7 Oct 2019 19:11:03 +0800
X-Gmail-Original-Message-ID: <CAGb2v6776fWUuE1kOtnuFVA4faFZdtkZu02WwTqHyGAPVi+G-A@mail.gmail.com>
Message-ID: <CAGb2v6776fWUuE1kOtnuFVA4faFZdtkZu02WwTqHyGAPVi+G-A@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: media: sun4i-csi: Drop the module clock
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_041119_540097_96F504F2 
X-CRM114-Status: GOOD (  30.38  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 7:09 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi,
>
> On Fri, Oct 04, 2019 at 02:33:41PM +0800, Chen-Yu Tsai wrote:
> > On Fri, Oct 4, 2019 at 12:37 AM Maxime Ripard <mripard@kernel.org> wrote:
> > > On Thu, Oct 03, 2019 at 11:51:05PM +0800, Chen-Yu Tsai wrote:
> > > > On Thu, Oct 3, 2019 at 11:48 PM Maxime Ripard <mripard@kernel.org> wrote:
> > > > >
> > > > > It turns out that what was thought to be the module clock was actually the
> > > > > clock meant to be used by the sensor, and isn't playing any role with the
> > > > > CSI controller itself. Let's drop that clock from our binding.
> > > > >
> > > > > Fixes: c5e8f4ccd775 ("media: dt-bindings: media: Add Allwinner A10 CSI binding")
> > > > > Reported-by: Chen-Yu Tsai <wens@csie.org>
> > > > > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > > > > ---
> > > > >  .../devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml | 7 ++-----
> > > > >  1 file changed, 2 insertions(+), 5 deletions(-)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> > > > > index 5dd1cf490cd9..d3e423fcb6c2 100644
> > > > > --- a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> > > > > +++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> > > > > @@ -27,14 +27,12 @@ properties:
> > > > >    clocks:
> > > > >      items:
> > > > >        - description: The CSI interface clock
> > > > > -      - description: The CSI module clock
> > > > >        - description: The CSI ISP clock
> > > > >        - description: The CSI DRAM clock
> > > > >
> > > > >    clock-names:
> > > > >      items:
> > > > >        - const: bus
> > > > > -      - const: mod
> > > > >        - const: isp
> > > > >        - const: ram
> > > > >
> > > > > @@ -89,9 +87,8 @@ examples:
> > > > >          compatible = "allwinner,sun7i-a20-csi0";
> > > > >          reg = <0x01c09000 0x1000>;
> > > > >          interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> > > > > -        clocks = <&ccu CLK_AHB_CSI0>, <&ccu CLK_CSI0>,
> > > > > -                 <&ccu CLK_CSI_SCLK>, <&ccu CLK_DRAM_CSI0>;
> > > > > -        clock-names = "bus", "mod", "isp", "ram";
> > > > > +        clocks = <&ccu CLK_AHB_CSI0>, <&ccu CLK_CSI_SCLK>, <&ccu CLK_DRAM_CSI0>;
> > > > > +        clock-names = "bus", "isp", "ram";
> > > >
> > > > I believe what we thought was the ISP clock is actually the module clock
> > > > for the whole CSI subsystem. So we should still use the module clock entry,
> > > > and remove the ISP entry.
> > >
> > > I'm really not sure it is. CSI1 on the A20 (possibly the A10 as well,
> > > I haven't checked), and the one on the A13 don't have any ISP embedded
> > > in the CSI controller.
> > >
> > > It makes some difference, because according to the BSP, you can see
> > > that the ISP clock is taken for CSI0:
> > > https://github.com/linux-sunxi/linux-sunxi/blob/sunxi-3.4/drivers/media/video/sun4i_csi/csi0/sun4i_drv_csi.c#L389
> > >
> > > While for CSI1, that block is commented out, and the ISP clock never
> > > used:
> > > https://github.com/linux-sunxi/linux-sunxi/blob/sunxi-3.4/drivers/media/video/sun4i_csi/csi1/sun4i_drv_csi.c#L396
> > >
> > > So I really believe that the ISP clock is here to feed the ISP block
> > > within the CSI controller if there's any. But it's far from always the
> > > case, as opposed to a module clock for the whole CSI controller that
> > > would be here in both cases.
> >
> > I guess we should try to test this with CSI1 one, either on a Cubieboard
> > or OlinuXino with a simple camera like the OV7670?
> >
> > Do you have any hardware on hand for this? I have the Cubieboard but I
> > need to get some proper 2.0mm connector blocks.
>
> I've tested it with the A13 before, and it doesn't need the ISP clock

OK! That clears things up!

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
