Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 150843B513
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:31:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6wkWn6d2+P1VJqUzN8hRSksRh5Fd8cG1wRZ2FcNkSA=; b=mQaOAa7ZEngMq9
	2v0Hph7TkxB1644Fpq6QzUOO04qiEiG0ZLipHFstRPIrv4lXT112fIsgNnXNcQBTuhyp3vltUvp9K
	daVnkOqq75wsWGSeKj93lRz+7s/hJtbaZSEOpzXE49aqrOS793lCKDCFla9urfq7fDxGa5jwPkK8Q
	h4vtOSpKgPatTi6z4aSEzPhXUszFZE9vABOxifWnnS3srSp/nHW8+WVl6POALEFRNsF9yBiGW9tBi
	20K4AJBCf2Oa9/tM2FWfaOYjLMsViaYzb8GtkSeON+ch6shdIOCG9wvjxWwzT+uRTCy1iXqicjusS
	XZ8qBO0xrxfj6X4eGkWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJSl-0000MU-Nw; Mon, 10 Jun 2019 12:31:47 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJSU-0000KH-A3; Mon, 10 Jun 2019 12:31:31 +0000
Received: by mail-oi1-x241.google.com with SMTP id w79so6062769oif.10;
 Mon, 10 Jun 2019 05:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nFynJG6GkMrt4lyp8IC+dRaN8zX6LxP0uU9NEUWvbzI=;
 b=cXohEkVc0ZP8pvQlDl8p6OE4YZbfDSAvS5aWQeuKTLlZqlj7v78cTJ15xSpsOzjR22
 xqW8m8BQQTHBCyUybgg4cjc9zpHtLHToZBnVKwVpPrd2gMNZEaQEY+U2aASQmhONplHu
 xCN+NI806+E9j8cNzavcdXo5PAqDEEspH4deJbZqbsj2prDFodwaiUI3/We1XgFxezKC
 nUwyXdytL8UYR+4FW0gFx5nL4COz2G9KZnTvc6tRryCozSSCylWM6PxbPnrrKKLOPF4y
 QKkBohVJzmnYPPPYwQEoIC2AXqhhVVwSaWDLT5t/w7U2D7lWdPCdL9uK58kqqA82/8t4
 vL2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nFynJG6GkMrt4lyp8IC+dRaN8zX6LxP0uU9NEUWvbzI=;
 b=Up+kWjnt7M+7Eopx7H/OF0UWIULE15cM4Rfk1yakGNVYoLbXFL6byVNkVPWrYy7Rjw
 afCfskDZrfWQm2KU6XfhRsfAvLrAD4rRNnoYga+QlpE/bgn6xUxImVUMpt2ms00oZVo3
 f8KB0cLeyXG2ri8nmPBFj23s97D+OFf7tm8RaRYYHfSK9L7HhblOlhhQytW/Mcxuae1/
 gAXRk0e8BgTz33J7fPRXjR+VKvEKB8HpN38OMWDrYp78voRBGMR6Pk+oeySfxt/Hcu2/
 REmTU48i1tFkWjNqftpUL5LkXJv8RWLjo1YHlSK46f4UXn9B5mT7Dffq9wm2kbpxF6Kw
 vZ8A==
X-Gm-Message-State: APjAAAUDSW4OtNBqTv+Thn4KnGcIhkB+7PYVkBoPbzQAsAKlNEmuRPtq
 OkU0x+KjJjW+Oy0S6xiYejk3Qcf4uSLlat1c0vI=
X-Google-Smtp-Source: APXvYqxpBiHP08OPhwvFiE1hD4gx+oq+4oIRwCJaMPkj/6FYkD61ABAJqXsC6FpliWoKBw4Uc0ZVvhgV6HFS3Jve/S4=
X-Received: by 2002:aca:51cf:: with SMTP id
 f198mr10179250oib.140.1560169888423; 
 Mon, 10 Jun 2019 05:31:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
 <20190609204510.GB8247@lunn.ch> <20190610114700.tymqzzax334ahtz4@flea>
In-Reply-To: <20190610114700.tymqzzax334ahtz4@flea>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 10 Jun 2019 14:31:17 +0200
Message-ID: <CAFBinCCs5pa1QmaV32Dk9rOADKGXXFpZsSK=LUk4CGWMrG5VUQ@mail.gmail.com>
Subject: Re: [RFC next v1 0/5] stmmac: honor the GPIO flags for the PHY reset
 GPIO
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_053130_376275_992D452A 
X-CRM114-Status: GOOD (  15.38  )
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

Hi Maxime,

On Mon, Jun 10, 2019 at 1:47 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Hi Andrew,
>
> On Sun, Jun 09, 2019 at 10:45:10PM +0200, Andrew Lunn wrote:
> > > Patch #1 and #4 are minor cleanups which follow the boyscout rule:
> > > "Always leave the campground cleaner than you found it."
> >
> > > I
> > > am also looking for suggestions how to handle these cross-tree changes
> > > (patch #2 belongs to the linux-gpio tree, patches #1, 3 and #4 should
> > > go through the net-next tree. I will re-send patch #5 separately as
> > > this should go through Kevin's linux-amlogic tree).
> >
> > Patches 1 and 4 don't seem to have and dependencies. So i would
> > suggest splitting them out and submitting them to netdev for merging
> > independent of the rest.
>
> Jumping on the occasion of that series. These properties have been
> defined to deal with phy reset, while it seems that the PHY core can
> now handle that pretty easily through generic properties.
>
> Wouldn't it make more sense to just move to that generic properties
> that already deals with the flags properly?
thank you for bringing this up!
if anyone else (just like me) doesn't know about it, there are generic
bindings defined here: [0]

I just tested this on my X96 Max by defining the following properties
inside the PHY node:
  reset-delay-us = <10000>;
  reset-assert-us = <10000>;
  reset-deassert-us = <10000>;
  reset-gpios = <&gpio GPIOZ_15 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;

that means I don't need any stmmac patches which seems nice.
instead I can submit a patch to mark the snps,reset-gpio properties in
the dt-bindings deprecated (and refer to the generic bindings instead)
what do you think?


Martin


[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/net/phy.txt?id=b54dd90cab00f5b64ed8ce533991c20bf781a3cd#n58

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
