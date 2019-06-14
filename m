Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D134A45931
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 11:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gnF3LkOxwyo+jDWtg7S8hC7oKl2Xs3Q6VU61uvhiI+Y=; b=m0NfB8K7gKAVPx
	D64TPC20qBhmE2dewW19BOQkd9S2IXZUHXzBeTFAJodfQ8+BDmwqFQP7ItKlz/16iSE1IhZok3w0q
	fGQb27/0Ay1BRCZwDr1yFkZn2mdRYrg6ayFtS4JNi8eo34wbO44RWJ7wijyspxv1F5uoqc1NzY1yP
	9ALjvHvLbXhea/nS63mCi4ri99Y9kFPgDPN96frESg2uvIl+Sq9Atgs6cBBSxibpOWDo0UyKtGYiS
	PvMsBpc7FfhqBb+wrFbP9mm/Y/oJrXBi3e6B08PYIeEP9QZlXbdBTEwsVG81+pMFRBxufNY7bt5y7
	L0m8l51SyBJrF9QIVFIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbipX-0006YA-KK; Fri, 14 Jun 2019 09:49:07 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbipJ-0006XL-JD
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 09:48:55 +0000
Received: by mail-io1-xd43.google.com with SMTP id r185so4392131iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 02:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BKw06+cNAvnizMFXa6QBpBJf1TOMKPxvPHOwkRTL9lg=;
 b=m2bzfO0vhzMnm6b4HKMSrNLfXIxCD14mTpXJsFvetKma+4zeeuN9k1Fn0wvtLtAfdt
 A94XWPxYmdr+edE0d/FZvljp+KD8syJfo3i46TyfWe3guYAgjUIl7E4G1PtvUQ2GIPGe
 Hni79nNR+YpRjp+XNO8oO4sjIeI8Nqpx+7eyo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BKw06+cNAvnizMFXa6QBpBJf1TOMKPxvPHOwkRTL9lg=;
 b=C5tlPI0m6HSO2c0BH9wskfoPE2bdGKCFaFbD1rX0G4RnMQ9SvFoZfEDlggUJ0caJRn
 SY1DaEeqsnJDy+265TloMjDSGuUMOVtXj2TMIpEeetZXR5NRZfOLhjOWByT2AGjL86p/
 2qcVxoty3+G26tbC4psavB1OLVL8wb4pN8hp6yFQIKC+cZJmkMl1VuiVrFF4eRmZpXpd
 iImBp9pZOP9ZA62TqMzCHCrbaImqKwnuLBQ8xiulPtDUQ5JKYP4uqvKjwUS0DS+Hp1IQ
 003EGGQSO/8/oX9U0oWeGlplYKl99AjYHsDXeLUE1geqKc7gDI9j8bB5Z7OnTDyebMWX
 /W8w==
X-Gm-Message-State: APjAAAUQb3/yyX8R2SAXPwyD9JYuahYAZHnXZxfGziFxlyaFEZLmq74n
 tk8+xdw76A13fxB/NlyslIWgZRS+oI4n/ySA3cyOyA==
X-Google-Smtp-Source: APXvYqxH56vd8m0NL3s5K4g0SpMN6wIAo9CZa8erGisPkMwTglnDa7HWnaXEv9xSFHKy++9LqWSZcGfIftWfjL7A74M=
X-Received: by 2002:a05:6602:2253:: with SMTP id
 o19mr14187412ioo.297.1560505732488; 
 Fri, 14 Jun 2019 02:48:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
 <20190613185241.22800-6-jagan@amarulasolutions.com>
 <CAGb2v654p=HZuXCTJkrbWbFP_kEkpRWHwj-7_Ck_=XbyMFmvFw@mail.gmail.com>
In-Reply-To: <CAGb2v654p=HZuXCTJkrbWbFP_kEkpRWHwj-7_Ck_=XbyMFmvFw@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 14 Jun 2019 15:18:40 +0530
Message-ID: <CAMty3ZD0atS2uWJmPB-n1wmy324JEpwt42=_wpKeF-8uxM-GbQ@mail.gmail.com>
Subject: Re: [PATCH 5/9] ARM: dts: sun8i: r40: Add TCON TOP LCD clocking
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_024854_285317_A89D50B1 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 9:16 AM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Fri, Jun 14, 2019 at 2:54 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > According to Fig 7-2. TCON Top Block Diagram in User manual.
> >
> > TCON TOP can have an hierarchy for TCON_LCD0, LCD1 like
> > TCON_TV0, TV1 so, the tcon top would handle the clocks of
> > TCON_LCD0, LCD1 similar like TV0, TV1.
>
> That is not guaranteed. The diagram shows the pixel data path,
> not necessarily the clocks. In addition, the LCD TCONs have an
> internal clock gate for the dot-clock output, which the TV variants
> do not. That might explain the need for the gates in TCON TOP.

Correct, the actual idea about explanation here is to mention the
clocks definition in tcon top level and internal tv and lcd can handle
as you explained.

>
> > But, the current tcon_top node is using dsi clock name with
> > CLK_DSI_DPHY which is ideally handle via dphy which indeed
> > a separate interface block.
> >
> > So, use tcon-lcd0 instead of dsi which would refer the
> > CLK_TCON_LCD0 similar like CLK_TCON_TV0 with tcon-tv0.
> >
> > This way we can refer CLK_TCON_LCD0 from tcon_top clock in
> > tcon_lcd0 node and the actual DSI_DPHY clock node would
> > refer in dphy node.
>
> That doesn't make sense. What about TCON_LCD1?
>
> The CCU already has CLK_TCON_LCD0 and CLK_TCON_LCD1. What makes
> you think that the TCONs don't use them directly?
>
> Or maybe they do go through TCON_TOP, but there's no gate,
> so we don't know about it.
>
> You need to rethink this. What are you trying to deal with?

Yes, I understand what your asking for and indeed this is where I get
confused and tried this way initially and attach the dsi reference in
dphy something like

tcon_lcd0 {
                clocks = <&ccu CLK_BUS_TCON_LCD0>, <&ccu CLK_TCON_LCD0>;
                clock-names = "ahb", "tcon-ch0";
};

dphy {
               clocks = <&ccu CLK_BUS_MIPI_DSI>,
                              <&tcon_top CLK_TCON_TOP_DSI>;
               clock-names = "bus", "mod";
};

This would ended-up, phy wont getting the mod clock keep probing for
-EPROBE-DEFER since tcon top driver might not be loaded at the time
mipi driver. This way we have tv0, tv1 and dsi gates supported as
existed. Does it make sense?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
