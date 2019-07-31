Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAF67C949
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:56:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UC8KLWvyZj0mNuOwEoQmwjuf0i6yI7DB8YZkkXd+q/Y=; b=hrQFhvaM5ySGxa
	ESu8evPHVx2V4eTp61ZzcMzasjREEu6yQhTM0iQV2QkZpLqwwr66MIpCjHDkQXKQahJr+BjyX6DjB
	/j49oN5S/Rg5dFSYx217AVPCylQIqtsAkRa7DXfiMxcLlRyY7tES8A9gka6eYBdVwGpAnEwWYkKPp
	Wax2z65BFCnaV9GCQwG0fAnCct4fsIAv3usSXA63RGEw3YdAtf8pG4Ct/lwbheOop+jOTS6/svqbh
	Y1Nsu6B2hqQ3BCCgvENCeBaEvdxbPc0Nt9d6GYmdR0unSNigMDdqG0yPTZ8kgstvlGbFYKwPttaeA
	pRkoEj1Jy6PGRp54Xhig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrtn-0006et-J6; Wed, 31 Jul 2019 16:56:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrtb-0006ZS-N9; Wed, 31 Jul 2019 16:56:13 +0000
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F72C20C01;
 Wed, 31 Jul 2019 16:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564592171;
 bh=Cic2JrM+YjcNDGZKD8kvKDZrx7id5Fahrh8aT8NyBT0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OSG11j0ovXBywu0fX2l8W0z5qMeemjGHn+yizDeOCR2IWH+d/iXJtJ4IK0/KdsbiJ
 tkgSY3sEjP0BzN3NIDeknh+o1MxDvRgoruqQgvFUUBuSPN8DDZFqijJpS52YAdN+Ej
 sT49EcBWZ2gxc/nz/PzFCsjRdfSsQhWbSIWkp1uQ=
Received: by mail-qt1-f171.google.com with SMTP id d23so67319401qto.2;
 Wed, 31 Jul 2019 09:56:11 -0700 (PDT)
X-Gm-Message-State: APjAAAW4N5Ihx2pEKtsUAlGnyZHJtc6kxGBACEkEB1oq7Lf2uGN3SrLj
 LSkR/kRZzWmDLJ6uDv+Bi52zCDNYR7NDzGi+Cw==
X-Google-Smtp-Source: APXvYqyq5aSqkMkY1jRWObJcHd+QJppxe0Gfq8GLINw2AdMyUd2oGDpfDfAN517bLe0isUjhnIa9VYbJPYtguO8ywn8=
X-Received: by 2002:ac8:3908:: with SMTP id s8mr41133202qtb.224.1564592170319; 
 Wed, 31 Jul 2019 09:56:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190731124000.22072-1-narmstrong@baylibre.com>
 <20190731124000.22072-5-narmstrong@baylibre.com>
In-Reply-To: <20190731124000.22072-5-narmstrong@baylibre.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 31 Jul 2019 10:55:58 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ=RtSxw8m687X_zWKY_V5X9zqt3xrq5gjF8WcEZspg-g@mail.gmail.com>
Message-ID: <CAL_JsqJ=RtSxw8m687X_zWKY_V5X9zqt3xrq5gjF8WcEZspg-g@mail.gmail.com>
Subject: Re: [PATCH 4/6] dt-bindings: arm: amlogic: add support for the Khadas
 VIM3
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_095611_802153_B3A7CA98 
X-CRM114-Status: GOOD (  12.54  )
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
Cc: devicetree@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 Christian Hewitt <christianshewitt@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-amlogic@lists.infradead.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 6:40 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> From: Christian Hewitt <christianshewitt@gmail.com>
>
> The Khadas VIM3 uses the Amlogic S922X or A311S SoC, both based on the
> Amlogic G12B SoC family, on a board with the same form factor as the
> VIM/VIM2 models. It ships in two variants; basic and
> pro which differ in RAM and eMMC size:
>
> - 2GB (basic) or 4GB (pro) LPDDR4 RAM
> - 16GB (basic) or 32GB (pro) eMMC 5.1 storage
> - 16MB SPI flash
> - 10/100/1000 Base-T Ethernet
> - AP6398S Wireless (802.11 a/b/g/n/ac, BT5.0)
> - HDMI 2.1 video
> - 1x USB 2.0 + 1x USB 3.0 ports
> - 1x USB-C (power) with USB 2.0 OTG
> - 3x LED's (1x red, 1x blue, 1x white)
> - 3x buttons (power, function, reset)
> - IR receiver
> - M2 socket with PCIe, USB, ADC & I2C
> - 40pin GPIO Header
> - 1x micro SD card slot
>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
