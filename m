Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B94197BBBC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 10:33:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AF0f59d/0r8rxDhacBBd2eZy76IraJJbYnarOr1aRuU=; b=ouQLWtPmI8HBax
	EcNsh4WE65kjWoqhjZErzseyZ6/rO23LAnGY9pLwJdlOL805Dd+kNQyq8r9L8vJFTQNPsmDqY3ki6
	ThAYje6bBZc3nOLrInP3IaCLVXWSrh5UcA5SMzQvue064ky/GNh6cs9wBDJdQCrZevc7bFCj2sFBA
	METpyEGIh/kf7sfHvWXP40hKDPZOt5aBP89kk2sl0sHv6RHYN/tQJkveSMLncBVbM2XlIN2bMUK3N
	AdHnyFVwzSSlgFveE7YOiW67bZea0BTsJmi/tiKSAGc69cejr17dCo1tA1yvWNOYF8JkNQZnmfmYN
	ux7gaUB2SohdvlI409xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsk2v-00023N-Fs; Wed, 31 Jul 2019 08:33:17 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsk2c-00022s-UP
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 08:33:00 +0000
Received: by mail-wm1-f65.google.com with SMTP id s15so37632131wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 01:32:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vv7QJlhqsQ8aHiLfsYKcKvtxePDzn2Rbc7z1MBOOQ9Y=;
 b=RFAMywlPX/UB/kkPzvWfV1MkMbKINh182DkSXNn4HeLu+nJIVpfmmkJniLTd/rAJBg
 ggyn52iBUDcW6zF6ZErKDZQDQk5rlgJ8qL16Khzpttbla0oKI5Ny3Q9uuhc9imJYURii
 TJzyb7AFQDXstuBnYb0zCg8PlhfHot8PdCrhUYmhqCEIJKcGjbHENpkeLsqXWQdaeTsz
 Uy0KDhtGZxJG7vT3pf5/xILlP+t6+dC/WQ4fTl3f81hyWIo4mbI5Luqpr2YI4drY+R6s
 ua/lcKG9AcmPYQA6Raf2X9eyNjTbYbL6ZJMe1b4Lp5wImc4rs54rgN7EldCGyq6Y+We/
 sMlw==
X-Gm-Message-State: APjAAAVDYaRwXeeiOBcNAfHZRNfHPMc5pZ5OLj/b5mxCq/dQ2Mk11aSj
 n/ZmvcoeYcYFHXFaG4tpp+Z4k5hEuVuD0Aq9Hck=
X-Google-Smtp-Source: APXvYqya/XfPxO65m02NWkmZ45+9x/Fzz1kXR3vOrCtLpHfH6e9/DbeCK8UArUmFGOkuZI9NP57/KPuy1ff+LkPKIHM=
X-Received: by 2002:a05:600c:254b:: with SMTP id
 e11mr102178270wma.171.1564561975116; 
 Wed, 31 Jul 2019 01:32:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190731073744.13963-1-geert+renesas@glider.be>
 <20190731074801.5706-1-geert+renesas@glider.be>
 <20190731081209.GA5080@pendragon.ideasonboard.com>
In-Reply-To: <20190731081209.GA5080@pendragon.ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 31 Jul 2019 10:32:42 +0200
Message-ID: <CAMuHMdV9MEYP97_6RFhmbGGB8uY-Pi8S9q+m+XMmHzKHcibJwQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77995: draak: Fix backlight
 regulator name
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_013258_984925_F278588E 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Rob Herring <robh@kernel.org>,
 Mark Brown <broonie@kernel.org>, Magnus Damm <magnus.damm@gmail.com>,
 Johan Hovold <johan@kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

On Wed, Jul 31, 2019 at 10:12 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> On Wed, Jul 31, 2019 at 09:48:01AM +0200, Geert Uytterhoeven wrote:
> > Currently there are two nodes named "regulator1" in the Draak DTS: a
> > 3.3V regulator for the eMMC and the LVDS decoder, and a 12V regulator
> > for the backlight.  This causes the former to be overwritten by the
> > latter.
> >
> > Fix this by renaming all regulators with numerical suffixes to use named
> > suffixes, which are less likely to conflict.
>
> Aren't DT node names supposed to describe the device type, not a
> particular instance of the device ? This is something that has bothered
> me too, but I believe the naming scheme should be decided globally, not
> per board. Is there precedent for using this scheme that has been
> explicitly approved by the DT maintainers ?

The example in Documentation/devicetree/bindings/regulator/regulator.yaml
uses "regulator@0", which of course works only if #address-cells = 1, which
is usually not the case for discrete regulators.
BTW, the example lacks a "reg" property...

So some other suffix has to be added to distinguish individual "regulator"
nodes.

The example in Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
uses "regulator-1v8" since commit b735f41dcb06ae06 ("dt-bindings: regulator:
update fixed-regulator example"), which received a Reviewed-by from Rob
after it was committed.
https://lore.kernel.org/lkml/CAL_Jsq+rRYazOqtjNms0cTK0HpkxCkmZ4JXoLM7ZaPivATEO8A@mail.gmail.com/

Looks good enough to me ;-)

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
