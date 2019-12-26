Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9991812ADE5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 19:17:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGj4eZ3/y21ix+brIIzjcXZcLknDqdPlPVwn+yzmDvY=; b=Eu9YeorPLvClg/
	p9psPQ50DWisNaVhifOdWzz75wjVGYC+zPRlnTRzsg3c5y0YnqwRTyEAVR7dYqW0ebnsxkBd5SN/U
	EnsJyZlOpv0AeKc9r8yGb037L991cntSlZb0VwCTuYr8nLcGz3Hw8xUiYaZr2SgIAUbaIiM+76I3U
	iHdB6EpTaXfG007AMsJmGoIFWTzW02EZSRNuBzuS9OTmeTgNFUPuz6KqYFe7smtdZV06XXMrYtKK4
	ZU9roaBuxanRpzMe24EFuyuSeGsrm2dCFUsq7O8ubRFhJ64C/1RD67HEqJwM68fnkMyYOmDN5h2Pm
	V6997C6g6GKdG0T+4vcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikXhT-0007fd-Eo; Thu, 26 Dec 2019 18:17:31 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikXhG-0007ee-MF; Thu, 26 Dec 2019 18:17:21 +0000
Received: by mail-ed1-x542.google.com with SMTP id r21so23342774edq.0;
 Thu, 26 Dec 2019 10:17:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/kVUvUUlIv+S4KgB8PAilg5eRolltdkQ40GkTlROLJs=;
 b=bdk9f8SUF43t/ZpP5zxB4uQXnDLufOuMHu/wIWWmDxL7aVjosImu7uDnGwroYAo9hR
 eJCnfI7jptFKeuPCfVOoo7DiYO5i6BKr4kO6hw5GyLhjfhklx2fPmTYgv6vRDCEfICc6
 N3X3vUhbgwMXiacZqdUHI4AqL0uF0koIJCoO4qJCciRnbmP6Jx5g3AXukI/Fw4JQ/wAv
 o4aL+uNzuC/mo44CJ2xatye3EAhKVbrD6a4UjOkCtB4+olUufm7vbM6mvjvPR9c991vv
 jaTnyHZiCSrclPaFEMixAatFZ8y0GsfV++VqW1GaPDsCrplp7O/+sv4lIfufoL5CcUB6
 HCRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/kVUvUUlIv+S4KgB8PAilg5eRolltdkQ40GkTlROLJs=;
 b=V50z7BFBKIFiKtvHUxiKzgu7TM7W5CEo4W6kwLo4rZCZZCX2QmH7x0WEMBPRV+8M6v
 m0eo+jQ/t2mlQs03raWTsqkFqHug89tc05Yrj1IXS9Atlx6KvjZEIhKoAYLwp1N0jwTK
 5Uaa+GIzJgv1u3U2sHcWgHpzROXSxKkez8JYo/vOOxRn/QLNklRllFnRwIETZ+ow0DEQ
 vFbNRZBcje9zRpTYPAZNFf+ycf99kU8fL0enh/O5aW3MYsxgPbetaIhT/N9Ja3tKbNyx
 xI9lyhwj0wUZKh9+ioE8y20lNXwwWbed/qCQTOUNnli/k5BxLY2Fvv7fS2ahTMbHWSRu
 pvaw==
X-Gm-Message-State: APjAAAX0881abrdFHeHYVa/qe69urYnXEHmNisaoENU+nhXZJfHuEDLE
 +TSe/TS6kj0HCTW41nnQAo+a3PSdwom5A9IiAIQ=
X-Google-Smtp-Source: APXvYqyIG6a7r9M4dZcMeoqoNvL9c1xsxC7MdJXKs8s6dyYvgPlDylAr5Jg+h9P+QsIDTu+cgoDJlTOe781mQBrq0i0=
X-Received: by 2002:a17:906:260b:: with SMTP id
 h11mr49327361ejc.327.1577384236409; 
 Thu, 26 Dec 2019 10:17:16 -0800 (PST)
MIME-Version: 1.0
References: <20191225005655.1502037-1-martin.blumenstingl@googlemail.com>
 <20191225005655.1502037-2-martin.blumenstingl@googlemail.com>
 <20191225150845.GA16671@lunn.ch>
 <CAFBinCA4X1e5_5nBiHmNiB40uJyr9Nm1b2VkF9NqM+wb7-1xmw@mail.gmail.com>
 <20191226105044.GC1480@lunn.ch>
 <CAFBinCB8YQ-tuGBixO_85NFXDdrH5keDURFgri5tFLdrAwUJKg@mail.gmail.com>
 <20191226120133.GI1480@lunn.ch>
In-Reply-To: <20191226120133.GI1480@lunn.ch>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 26 Dec 2019 19:17:05 +0100
Message-ID: <CAFBinCC9KioCC8HzPOFm3x3ZjTiQm_gr-aemnziLnTN8Ets_+A@mail.gmail.com>
Subject: Re: [PATCH 1/3] net: stmmac: dwmac-meson8b: Fix the RGMII TX delay on
 Meson8b/8m2 SoCs
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_101719_352159_D30E5216 
X-CRM114-Status: GOOD (  27.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, linus.luessing@c0d3.blue,
 balbes-150@yandex.ru, khilman@baylibre.com, linux-kernel@vger.kernel.org,
 ingrassia@epigenesys.com, netdev@vger.kernel.org,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Thu, Dec 26, 2019 at 1:01 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > the MAC is not capable of generating an RX delay (at least as far as I know).
>
> So that immediately means rgmii is invalid as a phy-mode, since the
> documentation implies the MAC needs to add RX delay.
things turned out even more confusing thanks to your persistence (keep
reading, it will get better though) :-)

I have tested the following on my Odroid-C1 which has an RTL8211F PHY.
With patch #1 from this series I knew that the following was working:
- phy-mode = "rgmii" and 2ns TX delay on the MAC (RX delay is
seemingly not configured anywhere)
- phy-mode = "rgmii-txid" (again, the RX delay is seemingly not
configured anywhere)

with the patch to change the RX delay on the RTL8211F PHY I decided to
try out phy-mode = "rgmii-id": this broke Ethernet.
then I looked at the MAC registers and spotted that bits 13
(adj_enable) and 14 (adj_setup) are set (first time I'm noticing
this). unsetting them makes phy-mode = "rgmii-id" work!
I also confirmed the opposite case: unsetting bit 13 and 14 breaks
Ethernet with phy-mode = "rgmii-txid".

so it seems that there *is* a way to configure the RX delay on Meson8b
and Meson8m2 SoCs (at least).
I will spin up a RfC patch to discuss this with the Amlogic team and
because I don't know what these bits do exactly

> > it's mostly "broken" (high TX packet loss, slow TX speeds) for the two
> > supported boards with an RGMII PHY (meson8b-odroidc1.dts and
> > meson8m2-mxiii-plus.dts)
> > examples on the many ways it was broken will follow - feel free to
> > skip this part
>
> That is actually good. If it never worked, we don't need to worry
> about breaking it! We can spend our time getting this correct, and not
> have to worry about backwards compatibility, etc.
ACK

> > > What we normally say is make the MAC add no delays, and pass the
> > > correct configuration to the PHY so it adds the delay. But due to the
> > > strapping pin on the rtl8211f, we are in a bit of a grey area. I would
> > > suggest the MAC adds no delay, phy-mode is set to rmgii-id, the PHY
> > > driver adds TX delay in software, we assume the strapping pin is set
> > > to add RX delay, and we add a big fat comment in the DT.
> > >
> > > For the Micrel PHY, we do the same, plus add the vendor properties to
> > > configure the clock skew.
> > >
> > > But as i said, we are in a bit of a grey area. We can consider other
> > > options, but everything needs to be self consistent, between what the
> > > MAC is doing, what the PHY is doing, and what phy-mode is set to in
> > > DT.
>
> > do you think it's worth the effort to get clarification from Realtek
> > on the RX delay behavior (and whether there's a register to control
> > it)?
>
> You can ask. There are also datasheet here:
>
> http://files.pine64.org/doc/datasheet/rock64/RTL8211F-CG-Realtek.pdf
> https://datasheet.lcsc.com/szlcsc/1909021205_Realtek-Semicon-RTL8211F-CG_C187932.pdf
>
> It looks like both RX and TX delay can be controlled via
> strapping. But the register for controlling the TX delay is not
> documented.
I checked the mails I got from Realtek I while ago and they even
included the RX delay bits!
I even sent a patch two years ago but I must have dropped it at some
point (maybe I assumed that it wasn't relevant anymore - I don't
remember): [0]

> > you mentioned that there was breakage earlier this year, so I'm not sure anymore
> > (that leaves me thinking: asking them is still useful to get out of
> > this grey area)
>
> It was an Atheros PHY with breakage.
>
> If we can fully control the RX and TX delays, that would be great. It
> would also be useful if there was a way to determine how the PHY has
> been strapped. If we cannot fully control the delays but we can find
> out what delays it is using, we can check the requested configuration
> against the strapped configuration, and warn if they are different.
I am currently testing whether the pin strapping configuration can be
read back by the RX and TX delay registers
my Odroid-C1 has both strapped to GND which means off
but my Khadas VIM2 has TX delay strapped to ETH_VDDIO which means on
(RX delay is still strapped to GND)
once I am done testing I will send patches for the RTL8211F PHY driver


Martin


[0] https://patchwork.ozlabs.org/patch/843946/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
