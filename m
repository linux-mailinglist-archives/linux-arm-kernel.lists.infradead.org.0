Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BEC4531B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/F0sYBrC51X5snuh/S1exPc9XsuGMYcGatQ8hzH6EQ=; b=BzNJd86sc7vDko
	RYLpTC/SgmxavvQVfMN5Fr6ysZryZ0Ehxe92yDNOHbRpPXuupz0FHNYiYea7WbhIph7F/txlYhTis
	wsi6SRW0Y66tOOlKaluKjpJad+ldXeUjQOkNdBRlMLm5ZyhBGsNUQXr5s1ueTEDZqcJYrFzFzW/n3
	tZOWItls9tnExYR2OzhCB7aKvilvEQDFTZaU/KgIEBabNeR3z7skPkxU/Umi+Ff4WlIt2Kdb336ek
	riFrLhlxDW76g4Lf3ul0ZK2179302wD27JK7FEegiZY7XsIxPUzxeOGrxT8mUuU2y8c5WEkmYWkaf
	SI5Lh8MCHXdKbxorAy8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbdB5-0004Cv-2j; Fri, 14 Jun 2019 03:46:59 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbdAw-0004CQ-7N
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:46:51 +0000
Received: by mail-ed1-f65.google.com with SMTP id p15so1369942eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:46:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a8hlfPfnXEjBTjeUfjk+FsaluQO4vebhuMrI7tB+55k=;
 b=qkQXX0SNHKAyvbT0k2Qw+oTbq6quDbz1D559pupwjwD2A82FInO4LHbAGSY6UnKmTe
 4oaIH70wqUYKcizc4MfIraXdgWW2lv1kUXbzBLSem/D97jsKxS0lVpjUnwhPA1Docz9x
 YWXWOL+s0/c7UxMrAatrx8fR8ZiNZRf50uj2i6JcVCJasqppKVINClcpswrQuaUzqKk7
 KGZuX0GmBsrf+cpHlJydKsBez+eyi3B9ItRphHt6tftf9ytNYhW56lJwku1IEiw2GYGw
 ocR7g8hIVEMpR2Jdh9x52yMpn8/1nMXvL6FharZdkWbyoCnAVD2aJDrsCZCEuLfVGpPF
 x2ug==
X-Gm-Message-State: APjAAAW0epFeXIB0jggXuA8wOl4G5tr00N/DDivE6P8kBxKMEiQQkJ0/
 hdNO4vWVkD3+vv+PLzcloCPpkxCspcE=
X-Google-Smtp-Source: APXvYqwsirbYcyrwXCBSldDQIxPWJcztB4GiFx7wzgq0zag4ymfNSrbK3rj5y/uWLsCpYIAcaqbBGw==
X-Received: by 2002:a17:906:a989:: with SMTP id
 jr9mr79244022ejb.117.1560484008567; 
 Thu, 13 Jun 2019 20:46:48 -0700 (PDT)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com.
 [209.85.221.48])
 by smtp.gmail.com with ESMTPSA id z9sm337772ejq.17.2019.06.13.20.46.48
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:46:48 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id p13so890291wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:46:48 -0700 (PDT)
X-Received: by 2002:a5d:4311:: with SMTP id h17mr64213816wrq.9.1560484007885; 
 Thu, 13 Jun 2019 20:46:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
 <20190613185241.22800-6-jagan@amarulasolutions.com>
In-Reply-To: <20190613185241.22800-6-jagan@amarulasolutions.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 14 Jun 2019 11:46:36 +0800
X-Gmail-Original-Message-ID: <CAGb2v654p=HZuXCTJkrbWbFP_kEkpRWHwj-7_Ck_=XbyMFmvFw@mail.gmail.com>
Message-ID: <CAGb2v654p=HZuXCTJkrbWbFP_kEkpRWHwj-7_Ck_=XbyMFmvFw@mail.gmail.com>
Subject: Re: [PATCH 5/9] ARM: dts: sun8i: r40: Add TCON TOP LCD clocking
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_204650_264483_5B922F88 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 2:54 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> According to Fig 7-2. TCON Top Block Diagram in User manual.
>
> TCON TOP can have an hierarchy for TCON_LCD0, LCD1 like
> TCON_TV0, TV1 so, the tcon top would handle the clocks of
> TCON_LCD0, LCD1 similar like TV0, TV1.

That is not guaranteed. The diagram shows the pixel data path,
not necessarily the clocks. In addition, the LCD TCONs have an
internal clock gate for the dot-clock output, which the TV variants
do not. That might explain the need for the gates in TCON TOP.

> But, the current tcon_top node is using dsi clock name with
> CLK_DSI_DPHY which is ideally handle via dphy which indeed
> a separate interface block.
>
> So, use tcon-lcd0 instead of dsi which would refer the
> CLK_TCON_LCD0 similar like CLK_TCON_TV0 with tcon-tv0.
>
> This way we can refer CLK_TCON_LCD0 from tcon_top clock in
> tcon_lcd0 node and the actual DSI_DPHY clock node would
> refer in dphy node.

That doesn't make sense. What about TCON_LCD1?

The CCU already has CLK_TCON_LCD0 and CLK_TCON_LCD1. What makes
you think that the TCONs don't use them directly?

Or maybe they do go through TCON_TOP, but there's no gate,
so we don't know about it.

You need to rethink this. What are you trying to deal with?

> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  arch/arm/boot/dts/sun8i-r40.dtsi           | 6 +++---
>  drivers/gpu/drm/sun4i/sun8i_tcon_top.c     | 6 +++---
>  include/dt-bindings/clock/sun8i-tcon-top.h | 2 +-

This is going to be a pain to merge.

First, you need to split the driver parts from the DT parts.

Second, you might need to revert CLK_DSI_DPHY back to a raw
number for now, so that when the patches get merged through
different trees, nothing breaks.

Third, you'll come back after everything is merged, and change
the raw number to the new macro.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
