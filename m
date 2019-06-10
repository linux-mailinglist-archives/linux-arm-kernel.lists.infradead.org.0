Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B25413BC4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 20:59:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=01RgkBwFfK1rGZ64QGffmTGg8+lnD7FTDkY3xnxaUqk=; b=k0ezGMkdGb8Z1Q
	9cMpTOaB6S7diFLerYOZKKR+3mgev/0/BcwqJoPntL+Ky9XQ8ZGBdyBI+9CkFsiDzkFgTN6Jk7Bl7
	Zu/CMQzUl/OzcH4bQGNAWVC4BTUs2vP7J8JhS8bAfciamH3hQBSr1KPQU8QAHtn3/Qg3dwS1Uhw73
	ctIrsWoiSp1BG6PDu3pnOQ6W6YkFFDa7bYmdRKXyD812MFNg7y2zsAWd4z5Nf2wiXYZTmNjxm7u+w
	NX3Z8+ctaD/ox5QHJ/hwVjSwvHehChQeL9KTBJbeP6FJTUNSTXu46mCiodiA0l4HlVUONZXBsp71W
	Vv63/+ec9USkbghpK8EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haPWQ-0006cf-4Q; Mon, 10 Jun 2019 18:59:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haPWB-0006aK-Eh
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 18:59:44 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A640E2086A
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 18:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560193181;
 bh=NiQ6TSS68zMVARMk1UxtRrBtgarpzq8OIbKEFYq7Nyw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=PZy7xeMMzhmsda1hjKJ29ExmrhdZQYjnrUmbMWO8BP81vJK3DXvIkdTzD9GV/r1Ta
 QEwqvvJUFE93GJeXm1+pobl+zg78XWx5FA1zDP9ROVKQooOyrpWOkm9JmoyVZS0fRR
 MUiMJ+kawdHnnw7xPP3a2XNiVFIPhPOLiKhjgY48=
Received: by mail-qt1-f170.google.com with SMTP id n11so9547679qtl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 11:59:41 -0700 (PDT)
X-Gm-Message-State: APjAAAUqFNt/qWh+bDmjeLZ+GwsK70x/hK8MvQ5uFOqbTa7juGfhKJng
 Q73p5lfLEcthUs8TLbHJE3oPO6Lzn80O6iyCqg==
X-Google-Smtp-Source: APXvYqwCmscLJYNa3hNvdJokj1iSTo/T0hJq/eoSYOtoTwBoqS29ewgLPnrTr6A8IxSA+xvJ3iYP3g7C2lZ8C89tCMA=
X-Received: by 2002:ac8:36b9:: with SMTP id a54mr61317703qtc.300.1560193180904; 
 Mon, 10 Jun 2019 11:59:40 -0700 (PDT)
MIME-Version: 1.0
References: <91618c7e9a5497462afa74c6d8a947f709f54331.1560158667.git-series.maxime.ripard@bootlin.com>
 <d198d29119b37b2fdb700d8992b31963e98b6693.1560158667.git-series.maxime.ripard@bootlin.com>
 <20190610143139.GG28724@lunn.ch>
In-Reply-To: <20190610143139.GG28724@lunn.ch>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 10 Jun 2019 12:59:29 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJahCJcdu=+fA=ewbGezuEJ2W6uwMVxkQpdY6w+1OWVVA@mail.gmail.com>
Message-ID: <CAL_JsqJahCJcdu=+fA=ewbGezuEJ2W6uwMVxkQpdY6w+1OWVVA@mail.gmail.com>
Subject: Re: [PATCH v2 05/11] dt-bindings: net: sun4i-emac: Convert the
 binding to a schemas
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_115943_513894_B8B9C82E 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev <netdev@vger.kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 =?UTF-8?Q?Antoine_T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 8:31 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - phy
> > +  - allwinner,sram
>
> Quoting ethernet.txt:
>
> - phy: the same as "phy-handle" property, not recommended for new bindings.
>
> - phy-handle: phandle, specifies a reference to a node representing a PHY
>   device; this property is described in the Devicetree Specification and so
>   preferred;
>
> Can this be expressed in Yaml? Accept phy, but give a warning. Accept
> phy-handle without a warning? Enforce that one or the other is
> present?

The common schema could have 'phy: false'. This works as long as we've
updated (or plan to) all the dts files to use phy-handle. The issue is
how far back do you need kernels to work with newer dtbs.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
