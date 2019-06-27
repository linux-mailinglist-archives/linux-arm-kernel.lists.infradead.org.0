Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 419EF57C61
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hn+/cNvt5d+9+MwnzkVHBQax6VYyrG/IaHYnTd9OnHQ=; b=OhT44Z8b17P/WC
	ZxUz6fbSxLVuWqnLqe5IN79u6IWe70LclZckFme+Xa47byf9KHhol/27W9tbD7Shp2P8v7KZpsbNr
	3h6LI/1R8uIo2U/SPbg1hX1y+kuFg6Ro1Fk3zbKogXDRiVB4pk9DARGAv0nykl2jjjnp9R2kmErfl
	J+JxR+xKGMMULEj55xYiSuEXLf0qXH9ahrxRz/4U5kMQBjw1OxWPydmOafiWe5T1ARSvz5taIMgEY
	7cHgJC53DtDsI6hX63d5ypFvJHZ4CR5WOcKybTf1HFqJfdnwxc3fk4abxFPS50W5emc1PLOZ+1ALj
	lczyIPqlqewLXKDQqUVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOAX-0000n2-53; Thu, 27 Jun 2019 06:46:05 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8A-0006KM-4y
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:43:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y22CNeS4I4ip2/omKMWln+BWupj7xZ1w+7CB2TiUth0=; b=oHg9p2z5N4EJq5ffL8SzaA37J
 Sj+bG9O4YreXMsY0ogVvbXB2ePBMTduf+ARcESDRt3uBJLnzeirCiKAiG22bCwMliPq4tgHN5+VD4
 AHCH0S+dq/q1JlSfW4Dh/fRkfC20zUlRZtcFetvkKb4t9Uh9frHPkXgFEgLQSEkzqJXv+VHNyA1jc
 QQ2rxeCoJ9w/9nQYloyKZcNFHd81asx98ybGX6LeQufCM9t6wkd5womfdB3Nt+ef0ez2PqrvTWlRo
 ejeFEm4yNbTuzXrleVg4gN9HQIZ5Yy7LXXQjBjXhuOn5KlHk5KDNtbaYnRsQUYGnnz+ImJirdTpXu
 cn98zmXog==;
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgLC2-0006M2-9V
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 03:35:27 +0000
Received: by mail-ed1-f68.google.com with SMTP id k21so5617843edq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 20:35:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y22CNeS4I4ip2/omKMWln+BWupj7xZ1w+7CB2TiUth0=;
 b=YnvinpZpacIR0iKEOJQ6e6+y16BiqEbh4OYtP2LEavM3azvmy4dVZlQhB3GO7+z0E7
 jeNgu25TfSBKgj7VnFPi2xVdoVJ3OPfyQuMjeNuxVSNFk5YVFFKvbA+zZPPIyKObyitN
 Tf6m7XFYvZn6pwpHpkRCRZbLHCi6yzy5T3VICptMFb3TwNT1cl3BBS29w+ptZ6PyEmr4
 GMFe0Z9Gf7fJXZnLQs/DWfeJz8oI7+1s17KsY1eT1ueouPD7yBbvTnzSbbAVLaMStKlt
 XnUbqFif1nJ8olJ2I8WpbHShLprT+BpxzlPhFajnK/1c5e1ZY/tMU9B9XePE1BxSYOGZ
 ZAzQ==
X-Gm-Message-State: APjAAAURD0bFo6OuLwqJJ573/q7T+KmzBkRliQy9FFVBTTihlJhWpvI/
 Fb60vwkNd93Rz/4A8sMZlOBrD3BsGF8=
X-Google-Smtp-Source: APXvYqwRIvKeHcUSpUfGDL/YRaZLsK+yW+mJB7NRUKF1UPAlCGYBguOPtf3ph/tV1nE62jbeOXsBvA==
X-Received: by 2002:a50:976d:: with SMTP id d42mr1405993edb.77.1561606460260; 
 Wed, 26 Jun 2019 20:34:20 -0700 (PDT)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com.
 [209.85.128.47])
 by smtp.gmail.com with ESMTPSA id v12sm169663ejh.48.2019.06.26.20.34.19
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 20:34:20 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id s3so4144678wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 20:34:19 -0700 (PDT)
X-Received: by 2002:a7b:c051:: with SMTP id u17mr1290734wmc.25.1561606459379; 
 Wed, 26 Jun 2019 20:34:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190620010127.12071-1-andre.przywara@arm.com>
 <CAGb2v66WOTFvXWSSGwtLh3hD+N4CeJkFEPnCMXp0FuU2h=LS9Q@mail.gmail.com>
 <20190624135806.7bc78378@donnerap.cambridge.arm.com>
 <CAGb2v66vNndnXXfQfF4tnkEfqPjom7e=kuWVzWggjcTSeDPWsA@mail.gmail.com>
In-Reply-To: <CAGb2v66vNndnXXfQfF4tnkEfqPjom7e=kuWVzWggjcTSeDPWsA@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 27 Jun 2019 11:34:09 +0800
X-Gmail-Original-Message-ID: <CAGb2v67woLtn4bdD8YbCN9CyLPm_9r9+wd_Cxp8AUeVed0O-pA@mail.gmail.com>
Message-ID: <CAGb2v67woLtn4bdD8YbCN9CyLPm_9r9+wd_Cxp8AUeVed0O-pA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: properly connect USB PHY to port 0
To: Andre Przywara <andre.przywara@arm.com>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Mon, Jun 24, 2019 at 9:03 PM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Mon, Jun 24, 2019 at 8:58 PM Andre Przywara <andre.przywara@arm.com> wrote:
> >
> > On Mon, 24 Jun 2019 16:25:47 +0800
> > Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > Hi,
> >
> > > On Thu, Jun 20, 2019 at 9:02 AM Andre Przywara <andre.przywara@arm.com> wrote:
> > > >
> > > > In recent Allwinner SoCs the first USB host controller (HCI0) shares
> > > > the first PHY with the MUSB controller. Probably to make this sharing
> > > > work, we were avoiding to declare this in the DT. This has two
> > > > shortcomings:
> > > > - U-Boot (which uses the same .dts) cannot use this port without a PHY
> > > >   linked, so we were loosing one USB port there.
> > > > - It requires the MUSB driver to be enabled and loaded, although we
> > > >   don't actually use it.
> > > >
> > > > For those (64-bit) boards which use an USB-A socket for HCI0/MUSB, add
> > > > a "phys" property pointing to the USB PHY 0.
> > > >
> > > > This makes it work in U-Boot, also improves compatiblity when no MUSB
> > > > driver is loaded (for instance in distribution installers).
> > > >
> > > > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > > > ---
> > > > Hi,
> > > >
> > > > I have the feeling this belongs into the .dtsi, but cant't tell for sure
> > > > how this interacts with the MUSB driver. If need be, we can always pull
> > > > this up later, I guess.
> > >
> > > Have you tried if gadget mode and switching between gadget/host mode on
> > > an otg port still works? AFAICT that would be the main thing to worry
> > > about.
> >
> > I briefly tried gadget mode on a BPi-M64, and that still seemed to work,
> > but I couldn't switch it to host mode. IIRC that didn't even work without
> > this patch, but I didn't find the time to investigate yet.
> >
> > Is it supposed to switch automatically when the ID pin changes state? Do
> > you know a board/kernel combination which is known to work?
>
> Yes it's supposed to switch automatically when you insert or remove the
> OTG host mode cable.
>
> I think it worked during the last release cycle while I was adding support
> for VBUS polling. I'll do some tests on the current sunxi-next tomorrow
> and let you know.

So it works properly for me on the Bananapi M64 with the latest sunxi-next
branch. I have the gadget drivers built-in.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
