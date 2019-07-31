Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4439A7C553
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 16:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/B3AhKUYymiYi5Ywo1GFaqQihEdSRDJw/FieQ8qRxhE=; b=dihq9IFidI9VEC
	dA4MWcac1Pr2iTsrTqd2L6omGzpvRBDDgKoAS2vPoNZd2cums7dYIXFLlxflZIVlorPc2UwSGncE6
	RcwA3JIEkLrHiB6vmtOMBkmzUsSMi2STbFAoOIwTuipq8JKJ8YHJ+k7AM9zXb/vhV2iSTy4jHzXgH
	jHJaYosggVbQUhEZOLMW4CPqJlqhVLu4/MFSeQ4PE/7G2i5g6EGv6VPgDEsHBDsi21nEPcK/rSLPl
	mHjVkgMIZ9s/aeNNyE8XYlUvdbMFfYohToG0TTZamSAB+Tc6BZY1NwINnQrg17HhbSDqDGUnakemz
	O02ah6qNe5xOVy1PWAEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsptX-0001N8-LS; Wed, 31 Jul 2019 14:47:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsptR-0001Mg-3G
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 14:47:54 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B58E220659
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 14:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564584471;
 bh=lInMQej1Cu+xXIvUNOMNi98n56lFRIExbteZ0drhpXo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=oQeVLps0n60X4Z4fkk7FLEMT5LyfoBsonpOZSoh9YVnzNNeZNv7VK+vT3JMdLsc3M
 rMreU/1DyCCFuYYpm+UdWuyHUp61Pn4tg+R9MusvrXxMwp8Z7PEiXIWZefqb7rd4EG
 RJm6ujYVa/j8qWSusoPSsMPZx9+AljSKLTbBKJu4=
Received: by mail-qt1-f177.google.com with SMTP id h21so66773311qtn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 07:47:51 -0700 (PDT)
X-Gm-Message-State: APjAAAUa5fkbC08qj4WvhdYrS3HFTOe5zDDodL7c4sbmDRciNw2dDrI2
 pU4EClpxfeJ+7gWuVXgBqyEWB0iu1EeuCYZO0w==
X-Google-Smtp-Source: APXvYqxWABAICUQylsJRPx2TocCeORlo5dBLckf02x4fHX4CWRijbYSy8OsZGfpRaqUtJ9b1j4UFuIxWR/TXoH2NlBw=
X-Received: by 2002:aed:3fb0:: with SMTP id s45mr87604517qth.136.1564584470923; 
 Wed, 31 Jul 2019 07:47:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190731073744.13963-1-geert+renesas@glider.be>
 <20190731074801.5706-1-geert+renesas@glider.be>
 <20190731081209.GA5080@pendragon.ideasonboard.com>
 <CAMuHMdV9MEYP97_6RFhmbGGB8uY-Pi8S9q+m+XMmHzKHcibJwQ@mail.gmail.com>
In-Reply-To: <CAMuHMdV9MEYP97_6RFhmbGGB8uY-Pi8S9q+m+XMmHzKHcibJwQ@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 31 Jul 2019 08:47:38 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJWJ+o6t2Wb162h7Xz98L=WPSi4une-EC0HfoRiWLmKWA@mail.gmail.com>
Message-ID: <CAL_JsqJWJ+o6t2Wb162h7Xz98L=WPSi4une-EC0HfoRiWLmKWA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77995: draak: Fix backlight
 regulator name
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_074753_183128_715ABABD 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Mark Brown <broonie@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, Johan Hovold <johan@kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 2:32 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Laurent,
>
> On Wed, Jul 31, 2019 at 10:12 AM Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
> > On Wed, Jul 31, 2019 at 09:48:01AM +0200, Geert Uytterhoeven wrote:
> > > Currently there are two nodes named "regulator1" in the Draak DTS: a
> > > 3.3V regulator for the eMMC and the LVDS decoder, and a 12V regulator
> > > for the backlight.  This causes the former to be overwritten by the
> > > latter.
> > >
> > > Fix this by renaming all regulators with numerical suffixes to use named
> > > suffixes, which are less likely to conflict.
> >
> > Aren't DT node names supposed to describe the device type, not a
> > particular instance of the device ? This is something that has bothered
> > me too, but I believe the naming scheme should be decided globally, not
> > per board. Is there precedent for using this scheme that has been
> > explicitly approved by the DT maintainers ?
>
> The example in Documentation/devicetree/bindings/regulator/regulator.yaml
> uses "regulator@0", which of course works only if #address-cells = 1, which
> is usually not the case for discrete regulators.
> BTW, the example lacks a "reg" property...

Yeah, that predates our being strict about unit-addresses.

> So some other suffix has to be added to distinguish individual "regulator"
> nodes.

<nodename>-<identifier> is basically the format we've been following
for cases without an address.

As long as we have a consistent base name that we can match schema
with, then I'm happy. But for regulators, we have a lot of node names
like 'buck1', 'LDO2', etc.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
