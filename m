Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0131C58ADF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 21:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7QLOSEHvR86zppEbxtMFwcFPRDq9G6jb8HfSopusLuw=; b=EhhbZkHF6QSH3K
	+W+G/fvYSviOFzJvf/snu6m9vkyXMBSYPE4jB8P1cnkVWWMgfEQ9MvhZp6PAJDAsaJcGTNcHref6m
	a9c5k+IYjZ8WVn1bAG/qlRM8e7oknMFcsoneFUC9SPVX8qKGsr+8eE9dW7WGADGUScj1ogJ1d40FF
	aPrctiwzGBR1uxRJHZszCCxOLQ2xfpO8BqIwUu+PyC3G33DQ20Ubp6URQ4wxd/eWxtrrRlRJLjOBm
	H0n42MPLefeVJc0+/96rJQ1Kjtr9diDWvBS/0e+h7noC8AUiO1PBdgUYTNQj2iaQlqpZ6c7S7Sc2X
	rwsQMFO7WF3acYR/UokA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZuK-0000Ur-JE; Thu, 27 Jun 2019 19:18:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZu5-0000UD-Rd
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 19:17:55 +0000
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 22E1320B7C
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 19:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561663073;
 bh=jVA4VB9s5NNy9GIAi2iskWf5Auj5Utva7w73gHJYNuA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Ae4utuPSQV3RWm09jXUtYypQOUgcyxetwsNCrFA24+VnggTEpoFKEvr0UyFZmkJL7
 s6tzk/zlkcFOBr6INX6mshjna79/iSbjeSCbX3mHV36qVnXrlAJWLc+zy3nhGp2Npe
 pH18Ipb481m/RGHEM6joBPRqQ66+BtHmh6V6WpUY=
Received: by mail-qk1-f178.google.com with SMTP id a27so2743421qkk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 12:17:53 -0700 (PDT)
X-Gm-Message-State: APjAAAWN70Th5EBfUK20LQK1zY1r57R/YcMpqUB4ZoFcMRyo0WU3nRIA
 KJ0l0u8OpADYWMs/ZfRKN5aHXDWdggW/6YmfGA==
X-Google-Smtp-Source: APXvYqwMe03fvIIa3Mb5qmrWDe/3LSiR1s/xQeMGkTRSxCRPlyYgVVQQnPRou7SUsvG7QpKsbJzlqXNsXyomtemEUa0=
X-Received: by 2002:a05:620a:1447:: with SMTP id
 i7mr5051184qkl.254.1561663072405; 
 Thu, 27 Jun 2019 12:17:52 -0700 (PDT)
MIME-Version: 1.0
References: <cover.e80da8845680a45c2e07d5f17280fdba84555b8a.1561649505.git-series.maxime.ripard@bootlin.com>
 <20190627.102256.1839462093915893704.davem@davemloft.net>
In-Reply-To: <20190627.102256.1839462093915893704.davem@davemloft.net>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 27 Jun 2019 13:17:40 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ9VtRv6QKuPO9kXst61ndG1UNBnx8qMkkv879GG7JTXg@mail.gmail.com>
Message-ID: <CAL_JsqJ9VtRv6QKuPO9kXst61ndG1UNBnx8qMkkv879GG7JTXg@mail.gmail.com>
Subject: Re: [PATCH v4 00/13] net: Add generic and Allwinner YAML bindings
To: David Miller <davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_121753_922565_397BF2EA 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev <netdev@vger.kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 11:22 AM David Miller <davem@davemloft.net> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
> Date: Thu, 27 Jun 2019 17:31:42 +0200
>
> > This is an attempt at getting the main generic DT bindings for the ethernet
> > (and related) devices, and convert some DT bindings for the Allwinner DTs
> > to YAML as well.
> >
> > This should provide some DT validation coverage.
>
> I don't think this should go via my tree as it's all DT stuff.

That's fine. I can take it. There's one conflict with commit
79b647a0c0d5 ("dt-bindings: net: document new usxgmii phy mode"), but
that's easy enough to handle. Any other changes to the binding docs
will need to go thru me this cycle.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
