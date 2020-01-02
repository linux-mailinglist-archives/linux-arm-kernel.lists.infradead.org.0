Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A695512E51C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 11:54:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aob6gHwWkmxiqLZbdVF8S5Mc7UOAlD0XIBtE6VYujqA=; b=HiB1LTH+1D6JW5
	eJL65fTFaFHmCyGVla0Y5OuAlrLdm8AHbnZdzhPYnMt44JQEzhtai7bwcYwL+5jLczhAUM0av6xQc
	5JfGc/0ucCxZyyZYBS+O60RdA8GXbW1J2mVenOo2A2+6o0iKHegPGLQlB2irO1J2QMBaSx+0QiaBi
	3e2frkprIz+NBoWG7djw++rfWKSPBvuMhZWrHn8rcFlGoKphHqwMbNKLJ+3m0rJGs3iWgRdXy+0Hl
	A7JU0JtvP6AjVG2xlIG+zjv7MUV6McTu2MSE2ALeTGmufLxlOoyiG1VBvZFf81mkTqG5Gs61TVMVb
	pKlN7OLYOaVPuOmetqTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imy7W-0000Ny-VP; Thu, 02 Jan 2020 10:54:26 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imy7O-0000NX-8Y
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 10:54:20 +0000
Received: by mail-ed1-f67.google.com with SMTP id c26so38734565eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 02:54:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5QD3mTV0W/4zMKZocFG2xAVC0EzZ6xiQOGVc8d10hMw=;
 b=lQ4QjMtpB+fzasb6HxK/7hOfhPyHQCVcm2NVB+6Hbnn41B/iTK0lMt8sh0wrgvtIqF
 hlokiDb+/uqWdo01RYWV7yS9gywUbN5Qxg929nmCggm9yhCanA8xh4QyBy6gMQQPZ/dk
 KGo60Zp8U0k65h+TXJrPnAXxUn8jxIIYq/qoWQxOeY5J4Cdz2gfx7q2uLuQYL0vzCwdv
 XCKopDMkADoqdROv4t3CHVz+4dIEtK49AUdMc6sMqp0aggOwKbfj6OUlgJBYm8YLVvQr
 dV46S9H2NIsJwIzSW/AMqvfwM5hdbeoreMR/XhHuoxsA+3HD8Y7qBWlvujKN0Jo/DDJE
 y7Bg==
X-Gm-Message-State: APjAAAU2j504SDXH0f+1h1dQ/Bi6Qo2bDAL03oqmropKJ6uZBGzjbb+Y
 0WcMZ69UC285E8h5/1yEsiqJsGOiAoM=
X-Google-Smtp-Source: APXvYqxHOedZPh/otFGjlp1BEPqa9A7aDFvS8D3TURA75Z+ucDE2ErQTHi5CYuQY/+g7NdVIT2ZHdA==
X-Received: by 2002:a17:906:3589:: with SMTP id
 o9mr86625254ejb.162.1577962455881; 
 Thu, 02 Jan 2020 02:54:15 -0800 (PST)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com.
 [209.85.221.49])
 by smtp.gmail.com with ESMTPSA id o14sm6803004edq.65.2020.01.02.02.54.15
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Jan 2020 02:54:15 -0800 (PST)
Received: by mail-wr1-f49.google.com with SMTP id z3so38853284wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 02:54:15 -0800 (PST)
X-Received: by 2002:adf:81e3:: with SMTP id 90mr81083838wra.23.1577962455125; 
 Thu, 02 Jan 2020 02:54:15 -0800 (PST)
MIME-Version: 1.0
References: <20200102012657.9278-1-andre.przywara@arm.com>
 <20200102012657.9278-4-andre.przywara@arm.com>
 <20200102095711.dkd2cnbyitz6mvyx@gilmour.lan>
 <20200102104158.06d9baa0@donnerap.cambridge.arm.com>
In-Reply-To: <20200102104158.06d9baa0@donnerap.cambridge.arm.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 2 Jan 2020 18:54:03 +0800
X-Gmail-Original-Message-ID: <CAGb2v65TtEVcwD9RZda7Fja0Z4EZSyV06tAkJG147Hb7_nXq3A@mail.gmail.com>
Message-ID: <CAGb2v65TtEVcwD9RZda7Fja0Z4EZSyV06tAkJG147Hb7_nXq3A@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: sun8i: R40: Add SPI controllers nodes and
 pinmuxes
To: Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_025418_304781_A15C2213 
X-CRM114-Status: GOOD (  32.91  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 2, 2020 at 6:42 PM Andre Przywara <andre.przywara@arm.com> wrote:
>
> On Thu, 2 Jan 2020 10:57:11 +0100
> Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi Maxime,
>
> thanks for having a look!
>
> > On Thu, Jan 02, 2020 at 01:26:57AM +0000, Andre Przywara wrote:
> > > The Allwinner R40 SoC contains four SPI controllers, using the newer
> > > sun6i design (but at the legacy addresses).
> > > The controller seems to be fully compatible to the A64 one, so no driver
> > > changes are necessary.
> > > The first three controller can be used on two sets of pins, but SPI3 is
> > > only routed to one set on Port A.
> > >
> > > Tested by connecting a SPI flash to a Bananapi M2 Berry on the SPI0
> > > PortC header pins.
> > >
> > > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > > ---
> > >  arch/arm/boot/dts/sun8i-r40.dtsi | 89 ++++++++++++++++++++++++++++++++++++++++
> > >  1 file changed, 89 insertions(+)
> > >
> > > diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
> > > index 8dcbc4465fbb..af437391dcf4 100644
> > > --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> > > +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> > > @@ -418,6 +418,41 @@
> > >                             bias-pull-up;
> > >                     };
> > >
> > > +                   spi0_pc_pins: spi0-pc-pins {
> > > +                           pins = "PC0", "PC1", "PC2", "PC23";
> > > +                           function = "spi0";
> > > +                   };
> > > +
> > > +                   spi0_pi_pins: spi0-pi-pins {
> > > +                           pins = "PI10", "PI11", "PI12", "PI13", "PI14";
> > > +                           function = "spi0";
> > > +                   };
> >
> > This split doesn't really work though :/
> >
> > The PC pins group has MOSI, MISO, CLK and CS0, while the PI pins group
> > has CS0, CLK, MOSI, MISO and CS1.
> >
> > Meaning that if a board uses a GPIO CS pin, we can't really express
> > that
>
> Does that actually work? I dimly remember checking our sunxi driver a while ago and I wasn't sure that would be functional there.
>
> > and any board using the PI pins for its SPI bus will try to
> > claim CS0 and CS1, no matter how many devices are connected on the bus
> > (and if there's one, there might be something else connected to PI14).
>
> True.
>
> > And you can't have a board using CS1 with the PC signals either.
> >
> > You should split away the CS pins into separate groups, like we're
> > doing with the A20 for example.
>
> Ah, yeah, makes sense, thanks for the pointer.
>
> > And please add /omit-if-no-ref/ to those groups.
>
> I was a bit reluctant to do this:
> First there does not seem to be any good documentation about it, neither in the official DT spec nor in dtc, even though I think I understand what it does ;-)
> Second it seems to break in U-Boot atm. Looks like applying your dtc patch fixes that, though. Do you know if U-Boot allows cherry-picking dtc patches? If yes, I could post your patch.
>
> But more importantly: what are the guidelines for using this tag? I understand the desire to provide every possible pin description on one hand, but wanting to avoid having *all of them* in *each* .dtb on the other.

I believe it would be nice to have them for all pin descriptions, but
having them
for the peripherals that only have one muxing option probably wouldn't have any
effect, as they would be set and referenced by default in the dtsi.

> But how does this play along with overlays? Shouldn't at least those interface pins that are exposed on headers stay in each .dtb? Can we actually make this decision in the SoC .dtsi file?

In upstream dtc, I sent a patch to make it ignore the flag if you
compile the dts
with overlay support, i.e. with the -@ flag.

> And should there be a dtc command line option to ignore those tags, or even to apply this tag (virtually) to every node?

That would probably end up trimming peripherals out, even enabled ones?

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
