Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE48F3B887
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 17:51:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2W6rmZCgAwh3U5uyF7Cbj1/RxNLDeHQUOB0lSyLhRjA=; b=k2dfrZW2Wz4d2k
	f1j+qPYZRhal4HPc12LgsjLPZFx3fLfxU3MgS4eggCTZpP4z/td/v43Hu0fOeyRnWKmjlBgAqEySZ
	/cLcF9K0QolSWizSoGLPvqgsV4LUPgMnNQmex7BbZLf2P9+xmZWuaWuYg1xxYvQfBLGJRidfZ30Bi
	vQwSBCRYZXHyxxsK5Dw5tIu1BsJhkcHUvJKSgqy99DZreGEOx55xpXqb/O5BHu+s9YtaOm6Yj5lsg
	gyEUsABWyqYsUo3pNoTek2ZbCl2z4e8hChNtVvrkVpYaNl8882uaG6lTO7pEXDutzrNJKqUEyrRyl
	QUtxgQbY+NvxaKToFkhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haMaM-0002hZ-CS; Mon, 10 Jun 2019 15:51:50 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haMa9-0002g6-AH; Mon, 10 Jun 2019 15:51:38 +0000
Received: by mail-oi1-x241.google.com with SMTP id q186so6613957oia.0;
 Mon, 10 Jun 2019 08:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZuHcFSp9RV6IeTzjDjOYf2cyyZ7YnVvyyWSJ347qo6A=;
 b=Sl+8Rmb2SbYgcshM1Z0Js0gffJMpHV6iNwuBeKkftDEg6qJgrbJkm+yybg3CWqzJ2x
 qR/7WtHww9+6woEtKc/YlVDtO0g8Y7A5kuCpvgscXSZXtgke0JyDjp7/Ew/b8W3AI/1n
 gk/fXnfGrZlppgM50p9VnIWFn0op1rziV+e31gh6EDInrEX50Zgw9lXzNQTzACC4Jz4y
 xuZfkn9Py55sJbkDpD6NHuD5fTNDddBbEKMWUsAunWtMuSUEU6AKzYsvxiPACEuq19TJ
 TR+RMKGFu9vNaEkKqQAk3oVJ4ZRkCumfzKglVgjyGf5iNvXv1fklUHBgHDDTgVFNNHmA
 0rXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZuHcFSp9RV6IeTzjDjOYf2cyyZ7YnVvyyWSJ347qo6A=;
 b=Q9yURTyO/0iLZYCbdjxPm4AW6oSL3yKT3yeu/f/DsSdqXOf9eeIpdrylgV6iH2iGXy
 2a+NlYvv4nsv/QOgo9Zbs+Uy38HrDyLjUeoF5KGgUniEcgkURri1xiIkp2oR7kavQIB2
 ZN3cCi7bKX1tW7M8Yx1YTTpN1+Z8xsOkYGpyOqnNkNCiKZ0XS8kjrgpc9nUQXxXlx7M+
 jVaj1ATax52KMoQ1eqbr+utwBDXzc3WnRkq+RT6BU6/kihAkFob1q08PRuwa3cVHWwwW
 xdYFqSoN+LXUzEt7um2llBniRuocdwg/clqblSyPb4kpOVf7dQ4nOOS8ke7NZxvgzlZA
 VMtA==
X-Gm-Message-State: APjAAAWO4ctrUqXHzw04ePmLovtyTSaqa+2c0eiyzR/Pq3bY2o1kFyWn
 ejny8e8Ikwu/ikeKTzRQASsR45Rml/weVZvgVbs=
X-Google-Smtp-Source: APXvYqwamDEZ2pn1KOIAFzWrcT6R7MpvRaH+7gsnVBBoMuB1pYAjxIlbqNIxs3Use8vvJu0GGPKKrdLueixgJ+eH8z4=
X-Received: by 2002:aca:4403:: with SMTP id r3mr12815875oia.39.1560181896310; 
 Mon, 10 Jun 2019 08:51:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
 <20190609204510.GB8247@lunn.ch> <20190610114700.tymqzzax334ahtz4@flea>
 <CAFBinCCs5pa1QmaV32Dk9rOADKGXXFpZsSK=LUk4CGWMrG5VUQ@mail.gmail.com>
 <20190610135109.7alkvruvw2jbtwph@flea>
In-Reply-To: <20190610135109.7alkvruvw2jbtwph@flea>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 10 Jun 2019 17:51:25 +0200
Message-ID: <CAFBinCAy=YR+qV=vYtAV4p5ftcR-VuYTJz3wuMY-k6PWcmbDQQ@mail.gmail.com>
Subject: Re: [RFC next v1 0/5] stmmac: honor the GPIO flags for the PHY reset
 GPIO
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_085137_352308_DE0DC0D4 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>, alexandre.torgue@st.com,
 bgolaszewski@baylibre.com, netdev@vger.kernel.org, linus.walleij@linaro.org,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, joabreu@synopsys.com,
 khilman@baylibre.com, peppe.cavallaro@st.com,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 3:51 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Hi Martin,
>
> On Mon, Jun 10, 2019 at 02:31:17PM +0200, Martin Blumenstingl wrote:
> > On Mon, Jun 10, 2019 at 1:47 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > Hi Andrew,
> > >
> > > On Sun, Jun 09, 2019 at 10:45:10PM +0200, Andrew Lunn wrote:
> > > > > Patch #1 and #4 are minor cleanups which follow the boyscout rule:
> > > > > "Always leave the campground cleaner than you found it."
> > > >
> > > > > I
> > > > > am also looking for suggestions how to handle these cross-tree changes
> > > > > (patch #2 belongs to the linux-gpio tree, patches #1, 3 and #4 should
> > > > > go through the net-next tree. I will re-send patch #5 separately as
> > > > > this should go through Kevin's linux-amlogic tree).
> > > >
> > > > Patches 1 and 4 don't seem to have and dependencies. So i would
> > > > suggest splitting them out and submitting them to netdev for merging
> > > > independent of the rest.
> > >
> > > Jumping on the occasion of that series. These properties have been
> > > defined to deal with phy reset, while it seems that the PHY core can
> > > now handle that pretty easily through generic properties.
> > >
> > > Wouldn't it make more sense to just move to that generic properties
> > > that already deals with the flags properly?
> > thank you for bringing this up!
> > if anyone else (just like me) doesn't know about it, there are generic
> > bindings defined here: [0]
> >
> > I just tested this on my X96 Max by defining the following properties
> > inside the PHY node:
> >   reset-delay-us = <10000>;
> >   reset-assert-us = <10000>;
> >   reset-deassert-us = <10000>;
> >   reset-gpios = <&gpio GPIOZ_15 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
> >
> > that means I don't need any stmmac patches which seems nice.
>
> I'm glad it works for you :)
>
> > instead I can submit a patch to mark the snps,reset-gpio properties in
> > the dt-bindings deprecated (and refer to the generic bindings instead)
> > what do you think?
>
> I already did as part of the binding reworks I did earlier today:
> http://lists.infradead.org/pipermail/linux-arm-kernel/2019-June/658427.html
great, thank you - you have my Reviewed-by!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
