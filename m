Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D646950B6D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3b68b2SdHqugTR4/FOqylntffnOCyZzp21o1KUv0OtI=; b=AKm8/MSx0xA2IW
	BplaNbQW8b1FcbmTump0tOTKEIC52BVJIAixNW2a/GNAvMlbJOddQ84yAUf60J7PEKajqhpBnNmKD
	SOKXmKR33NvzzlsKQA+1YLkzvmTxJTOp++1sk4Y05+iKDJmxCRs8OqBpHMx2fprgpyANqOKChhPt6
	YddnHyGgusBV4gFr4TgqYIzZS8UJOW2Earr3xHBjFMBf3h/vU2DKIegeBef82n8wVkdlohGIObaEK
	tks8urY7mzoFQbVoChnred2TjCm+ylDjvPOcRO5Akahu7H9CXfYQl/Q/7ubeUeX3GDtXyR1FItRgs
	44haMPLxKfvhYbin5A4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOdL-0002lI-Ts; Mon, 24 Jun 2019 13:03:43 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOdC-0002jy-FC
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:03:35 +0000
Received: by mail-ed1-f66.google.com with SMTP id s49so21732341edb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 06:03:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sK9KCYx7Y79q1UCICxqVkwuoIa7WisAwW4VdXFnFOXM=;
 b=PRyBDWp0c3v9PPwnScKy5RHCWwSmd/Bl3J8QX+6kKmuDJEbK+IpuJIISG4clH+rzzt
 ffCQ3inJvEq4M+mBl8xNsWGMYhCd/mNv9LygftqpCEPZ17WDcbEVGSCi2Q405RZs79Th
 t0FsTJJwuRkUEvfNxaa9+LADgbVrLIlCbP2wwr/roGELRPIMNRybzR0JOmLJKrsNI++m
 PLL0KerJKWn7SuCflJjDQ58nWwLoQiDvdWuZLIAeyz5xCvBBk83o9HnJlTY+/tcIouGG
 V3QH0UUCFbiexn7RfNxDISxVsRyZZYjQmH3rjca8xU66CZnM0ua9LMHneIaV07afdT+Q
 qQ6w==
X-Gm-Message-State: APjAAAXyxibYnM76qFzL2YillRAXwTv7lUws/Db12yF/Nfa/r53a61T+
 xn6moGd0mnDD1DLf2cpuVv6XWeg32L0=
X-Google-Smtp-Source: APXvYqw66BQKpN1Fv5cQ8mcaKPpv0q2W/FkoEbQRehJOJyQu688lsnZCQ6UfwQ+xtHhSgloHpv39Ow==
X-Received: by 2002:a50:993c:: with SMTP id k57mr21184061edb.294.1561381409477; 
 Mon, 24 Jun 2019 06:03:29 -0700 (PDT)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com.
 [209.85.221.48])
 by smtp.gmail.com with ESMTPSA id k20sm1727528ede.66.2019.06.24.06.03.29
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 06:03:29 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id f9so13792887wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 06:03:29 -0700 (PDT)
X-Received: by 2002:a05:6000:114b:: with SMTP id
 d11mr42808528wrx.167.1561381408587; 
 Mon, 24 Jun 2019 06:03:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190620010127.12071-1-andre.przywara@arm.com>
 <CAGb2v66WOTFvXWSSGwtLh3hD+N4CeJkFEPnCMXp0FuU2h=LS9Q@mail.gmail.com>
 <20190624135806.7bc78378@donnerap.cambridge.arm.com>
In-Reply-To: <20190624135806.7bc78378@donnerap.cambridge.arm.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 24 Jun 2019 21:03:17 +0800
X-Gmail-Original-Message-ID: <CAGb2v66vNndnXXfQfF4tnkEfqPjom7e=kuWVzWggjcTSeDPWsA@mail.gmail.com>
Message-ID: <CAGb2v66vNndnXXfQfF4tnkEfqPjom7e=kuWVzWggjcTSeDPWsA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: properly connect USB PHY to port 0
To: Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_060334_511671_24ED03C8 
X-CRM114-Status: GOOD (  24.94  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 devicetree <devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 8:58 PM Andre Przywara <andre.przywara@arm.com> wrote:
>
> On Mon, 24 Jun 2019 16:25:47 +0800
> Chen-Yu Tsai <wens@csie.org> wrote:
>
> Hi,
>
> > On Thu, Jun 20, 2019 at 9:02 AM Andre Przywara <andre.przywara@arm.com> wrote:
> > >
> > > In recent Allwinner SoCs the first USB host controller (HCI0) shares
> > > the first PHY with the MUSB controller. Probably to make this sharing
> > > work, we were avoiding to declare this in the DT. This has two
> > > shortcomings:
> > > - U-Boot (which uses the same .dts) cannot use this port without a PHY
> > >   linked, so we were loosing one USB port there.
> > > - It requires the MUSB driver to be enabled and loaded, although we
> > >   don't actually use it.
> > >
> > > For those (64-bit) boards which use an USB-A socket for HCI0/MUSB, add
> > > a "phys" property pointing to the USB PHY 0.
> > >
> > > This makes it work in U-Boot, also improves compatiblity when no MUSB
> > > driver is loaded (for instance in distribution installers).
> > >
> > > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > > ---
> > > Hi,
> > >
> > > I have the feeling this belongs into the .dtsi, but cant't tell for sure
> > > how this interacts with the MUSB driver. If need be, we can always pull
> > > this up later, I guess.
> >
> > Have you tried if gadget mode and switching between gadget/host mode on
> > an otg port still works? AFAICT that would be the main thing to worry
> > about.
>
> I briefly tried gadget mode on a BPi-M64, and that still seemed to work,
> but I couldn't switch it to host mode. IIRC that didn't even work without
> this patch, but I didn't find the time to investigate yet.
>
> Is it supposed to switch automatically when the ID pin changes state? Do
> you know a board/kernel combination which is known to work?

Yes it's supposed to switch automatically when you insert or remove the
OTG host mode cable.

I think it worked during the last release cycle while I was adding support
for VBUS polling. I'll do some tests on the current sunxi-next tomorrow
and let you know.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
