Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F15C17204
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 09:02:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJ6zuLfodH/QOfuXXyd4BI2x2WUKftBxPY+VBvPf6aI=; b=rXYIUBjy7BhwRH
	eJ6B3vAi+ZOLgyw581Ewr7SLSou1vJhWV+APeAYZTNe7bbDerBlZkKt6ggbznW+xYiGQrFkOl40Cs
	LcEdvSrvYd5Zh2Ha2/2Zzh1KYJHRnXN7CaCsSEQbIqrXuEq0u3LG32P07aGvwcTclvxnaUrUhb6pm
	oQ8mg6zP7ZPuAaHB4/lVSizKXXhz5CSOx8OyJpJbwVTwtitA7TS3xmI3X4odfkYz5erADRaOXHx4Q
	IkpZKCWKHsfMZqPFefUxq6dlH/fvqTlPPRRwq3KvA03JjOIKmrPybVX8HBI047M3qPxnlpfxhMJEX
	1Yz9nUAvBPU3OUY1PNaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGbA-0005P5-OS; Wed, 08 May 2019 07:02:40 +0000
Received: from mail-vk1-f195.google.com ([209.85.221.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGb0-0005OX-MQ
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 07:02:31 +0000
Received: by mail-vk1-f195.google.com with SMTP id u131so4693612vke.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 00:02:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s3snM+V6eXPtc3suucMMZZ/lK+LHa/OrZBjLjSByG20=;
 b=DBvC6yoxmOCRNdIJvTOrDd7tEophKART8MOvxCno3FRMLBolZsJBX5KCiC6TkfQKW9
 Rx0JSUI7laGU1Jh8E0CCZ1ZSuhgJ6uJzxfnpTtoxjuPvf7fil37EngJe510sTiLg1Ivo
 xPcOgo2TbCY4zquj2ez02vBteHUKPwV+hUlxymW7L2yWui6XnsrJUVnGw/q6wuQefbUn
 JVGxl/TwQG5bSL0OXBBpfmArnHJ1HG7NZj209O4E5tWXPm/H3rphI+PYRvQmQ+SHelVc
 wqKeXw4k2J8F9qNcsEX65zoQqolrzvSaIKsTWMGRVXwwuduaL5X70JrRnUp6kaQQJfTe
 H24Q==
X-Gm-Message-State: APjAAAVC+GssVkw26Y9TJAqqDe4KAZMh8nO3mEvQR1HDnUVKmmN0Nk61
 eRc+NFcNJwxehjoR9PmOdydvkKxHc7JtB8iUep4=
X-Google-Smtp-Source: APXvYqza/1hvaxWQdWLSj9zXnCXHGz/kbH9GtVmvA3jR7MZPios+I6UtHlJUbjkjBLz4KluTkPylBVYsMYSX9Ufq2UQ=
X-Received: by 2002:a1f:c2c1:: with SMTP id s184mr10230817vkf.65.1557298949399; 
 Wed, 08 May 2019 00:02:29 -0700 (PDT)
MIME-Version: 1.0
References: <b7a6095a5c900fa23cc54d1ccd8e8ef0ccf6e788.1557236840.git-series.maxime.ripard@bootlin.com>
 <CAL_JsqKeLWgGLafwbKViTgpw4B=W9YGULaMr8h0p_rWX8PP_UQ@mail.gmail.com>
In-Reply-To: <CAL_JsqKeLWgGLafwbKViTgpw4B=W9YGULaMr8h0p_rWX8PP_UQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 8 May 2019 09:02:17 +0200
Message-ID: <CAMuHMdX7KjJf4yDiEBBXLogHGbo9LcfTM5TvCHAXu_0Bvf0uzA@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: spi: Add YAML schemas for the generic
 SPI options
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_000230_732619_1986C76B 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.195 listed in list.dnswl.org]
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-spi <linux-spi@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 7, 2019 at 4:35 PM Rob Herring <robh+dt@kernel.org> wrote:
> On Tue, May 7, 2019 at 8:48 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > The SPI controllers have a bunch of generic options that are needed in a
> > device tree. Add a YAML schemas for those.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

> > index 1f6e86f787ef..000000000000
> > --- a/Documentation/devicetree/bindings/spi/spi-bus.txt
> > +++ /dev/null

> > -In master mode, the SPI controller node requires the following additional
> > -properties:
> > -- #address-cells  - number of cells required to define a chip select
> > -               address on the SPI bus.
> > -- #size-cells     - should be zero.
> > -
> > -In slave mode, the SPI controller node requires one additional property:
> > -- spi-slave       - Empty property.

> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/spi/spi-controller.yaml

> > +  spi-slave:
> > +    $ref: /schemas/types.yaml#/definitions/flag
>
> "type: boolean" is sufficient here. Maybe we should just remove
> 'flag'. OTOH, maybe consistency with other types and the abstraction
> is better as we could add to the flag schema.
>
> > +    description:
> > +      The SPI controller acts as a slave, instead of a master.
> > +
> > +required:
> > +  - "#address-cells"
> > +  - "#size-cells"
>
> Only if there are child nodes...

... and spi-slave is not present.

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
