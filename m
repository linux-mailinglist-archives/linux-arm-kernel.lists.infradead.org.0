Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383D1CCDFE
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 04:58:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LdxMvQCzvnGBRvr5+LY8IVnzxlaQuspyYA3HDwJiEfM=; b=AHyOcKoS12SAi6
	bOP6h89mDDe5lmuv8VtoEMVMvjTWeu3gtSliVswvHOSmzFdHbIdPJL6JPAgbvb4yJklRAU75eHT2n
	xC89g6MEXLpPvOcNlX/CBL5cau9C/6CxnMQ4PCWM78lF/8PQu93wpxv5CemiXoDsacxrH09tuwcn4
	JfDK5HSIy1wb1o+rGkkzsVgjb+wOWqS+IyfFBlZyJSuiYoMLObun8K7nac3oJ7zh8z2Z8KZ5e0o8l
	ub0gsa1xCkTq5YrpgODrB94R3oge/1JkbKaK1vQXS4GtKa64aigTWCVMcF5pRygJWBcVq8YO/CAiw
	ej5bvsYVzMKl64n3nVEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGwki-00051E-QK; Sun, 06 Oct 2019 02:58:32 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGwkb-00050R-Uf
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 02:58:27 +0000
Received: by mail-oi1-f194.google.com with SMTP id i185so8914639oif.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 19:58:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RWw0lYDY32jNGOFLM6rYC2BSg5ztUuuBTYWobvBXk+4=;
 b=q1JS/MWcq3zeWtHNGrUBRLkt72WrQ8tc66Sugnv7a/iRzB8p+LDHtcQ45S7tb16qAX
 0rjXWiXPT83JTqz2pgv8cstBa3gau3iIZx/4NbcEBFIEvugAVjcEaIRYf8flbt/uPWb4
 q7EwQ3ODotK1bwrT9x7auMl2F2JQn1acoZR1gPa9XjwJwQaOF4KkilvzExbw0ycjEuLb
 e6Mlv1c0g40VgWUSMbQVtA/PPmrt4UElUrimmyFx/2q2uOiiQlDJwdMwM0fcOQFfKHyo
 3GKWWQ/tw2VBH8AmLhH8Qa+77ga7nB7asl0joeEGNjKhBPy7w4g2UorWQevDDAIIq/CU
 cHjw==
X-Gm-Message-State: APjAAAXDoGK1HTb35dQvKJNaUK7XSQlo1WdwOORVBFhYGeQFSYfeRp/R
 e2qPQaLQv7CtSzikU4bZBhXHjaUZ
X-Google-Smtp-Source: APXvYqyYY/PIqu5XMvTrW6NzyZ2aKewUOwkSR0Lt385xCYjcul+ObiVeE+UAkXpHXfDuxbbm7MlXNg==
X-Received: by 2002:a05:6808:60c:: with SMTP id
 y12mr13214007oih.8.1570330703958; 
 Sat, 05 Oct 2019 19:58:23 -0700 (PDT)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com.
 [209.85.167.174])
 by smtp.gmail.com with ESMTPSA id f12sm2970599oij.1.2019.10.05.19.58.23
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 05 Oct 2019 19:58:23 -0700 (PDT)
Received: by mail-oi1-f174.google.com with SMTP id w65so8939045oiw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 19:58:23 -0700 (PDT)
X-Received: by 2002:aca:e005:: with SMTP id x5mr12668230oig.51.1570330703340; 
 Sat, 05 Oct 2019 19:58:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190909090244.42543-1-yinbo.zhu@nxp.com>
 <20191006025450.GO7150@dragon>
In-Reply-To: <20191006025450.GO7150@dragon>
From: Li Yang <leoyang.li@nxp.com>
Date: Sat, 5 Oct 2019 21:58:12 -0500
X-Gmail-Original-Message-ID: <CADRPPNQpGXf8kEGzP3ux7Zxu-Z_ztz6CRdr-B=3hWJdCg8gFFQ@mail.gmail.com>
Message-ID: <CADRPPNQpGXf8kEGzP3ux7Zxu-Z_ztz6CRdr-B=3hWJdCg8gFFQ@mail.gmail.com>
Subject: Re: [PATCH v1] usb: dwc3: enable otg mode for dwc3 usb ip on
 layerscape
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_195825_986389_30D68672 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Xiaobo Xie <xiaobo.xie@nxp.com>,
 lkml <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Jiafei Pan <jiafei.pan@nxp.com>, Ran Wang <ran.wang_1@nxp.com>,
 Yinbo Zhu <yinbo.zhu@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 5, 2019 at 9:56 PM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Mon, Sep 09, 2019 at 05:02:44PM +0800, Yinbo Zhu wrote:
> > layerscape otg function should be supported HNP SRP and ADP protocol
> > accroing to rm doc, but dwc3 code not realize it and use id pin to
> > detect who is host or device(0 is host 1 is device) this patch is to
> > enable OTG mode on ls1028ardb ls1088ardb and ls1046ardb in dts
> >
> > Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>
>
> The patch prefix should be something like: 'arm64: dts: ...'
>
> @Leo, do you agree with the changes?

No.  The USB mode of operation should be defined at board level.

>
> Shawn
>
> > ---
> >  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
> >  arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi | 2 +-
> >  arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 2 +-
> >  3 files changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > index 7975519b4f56..5810d0400dbc 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > @@ -320,7 +320,7 @@
> >                       compatible = "fsl,ls1028a-dwc3", "snps,dwc3";
> >                       reg = <0x0 0x3110000 0x0 0x10000>;
> >                       interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
> > -                     dr_mode = "host";
> > +                     dr_mode = "otg";
> >                       snps,dis_rxdet_inp3_quirk;
> >                       snps,quirk-frame-length-adjustment = <0x20>;
> >                       snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> > index b0ef08b090dd..ecce6151b9b0 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> > @@ -582,7 +582,7 @@
> >                       compatible = "snps,dwc3";
> >                       reg = <0x0 0x3000000 0x0 0x10000>;
> >                       interrupts = <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
> > -                     dr_mode = "host";
> > +                     dr_mode = "otg";
> >                       snps,quirk-frame-length-adjustment = <0x20>;
> >                       snps,dis_rxdet_inp3_quirk;
> >                       snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> > index dacd8cf03a7f..4b5413f7c90c 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> > @@ -385,7 +385,7 @@
> >                       compatible = "snps,dwc3";
> >                       reg = <0x0 0x3110000 0x0 0x10000>;
> >                       interrupts = <0 81 IRQ_TYPE_LEVEL_HIGH>;
> > -                     dr_mode = "host";
> > +                     dr_mode = "otg";
> >                       snps,quirk-frame-length-adjustment = <0x20>;
> >                       snps,dis_rxdet_inp3_quirk;
> >                       status = "disabled";
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
