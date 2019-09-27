Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED528C025D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 11:29:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxbeuB6knA9nRFzJm0F75XMT009j/BL4ZVJdPbqHPSs=; b=OnjT66oK2Nye6m
	IU/1a0fyZcI9jsRfPwHaCk8MjgxYjthKG285YbNMXIe8PDFXmRTXoIw6VUBtzg70f2nRRgZTNOUp8
	S/DN+7PS2aEOBbdlMFzYXZp7eopTd6F9AaVA6A/3WtihzqO4AO2IF+hrrft3Um/x79U1/5Pm/k8LC
	ilIj2xXF8PB0rJdSRobTp2jSyl6vHgZtsufsw9sCnCYvHbKQJ5LVLrBs5xXUxb0hRseAKTGiuoijG
	JUwAKMPpGufgTZfnaYBWAcWOFspR7V1yN1xdjfzkiBFlYtu6bKbgwqfT8395t1vQpk3IC5ZSNKoge
	PYmG2Kk1xM2XI67imrrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDmZC-0001tf-Pz; Fri, 27 Sep 2019 09:29:34 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDmXa-0000Ou-8g
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 09:27:58 +0000
Received: by mail-oi1-f193.google.com with SMTP id k25so4601371oiw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 02:27:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZuIpLrnmCtbTcNmkaVEbY5RnzH0IidLhv5Un+nLqG40=;
 b=l4s9ZZMF5Z0mI3QQkGCfnfqdBiEScPHMDOwS/UWnlprSeZiPCfWVZg7bxpmIGjuvhZ
 0rRPrLVjaIEy+mWRMlWQXeuWw9/eDpPou9s5oo3cxLrz45zb+e8PW7rwo+/RXlTSU+40
 uR/RFxxeL3uez/xUac6uGGaV74iPgoWTg82RnxfjmaQut/rqtYKDMg0KhZWTBGcjxzWm
 ZOV/5q9QoODvnbmjzzEzHqd45xwFeNDflOurMAVvbPaMtnE7A4cXvZiFZXiQ7U3n78z5
 IjNGIADcLKDDha69U/oTIazK/fu1L54n+uRuaGF2E5KyDpMz+oxAyKTqJ3DyZEirlusH
 48MQ==
X-Gm-Message-State: APjAAAXQxywAR+e/xTpW8WyZgwvIx0rbvJSYH2xV//9vN8UwkMiXljLC
 4FiQeKZa7x29oGb0EE8hh6P8iQTXvkn032pNdWM=
X-Google-Smtp-Source: APXvYqyyyy+Ihi6sqWQx+bGhqfv/SISJnOCsEM+Y5KRi52vFflrFO4JElgkqTh/Ae+rRbd5z58NlEhBeEk2bK1GHC4c=
X-Received: by 2002:aca:cdc7:: with SMTP id d190mr6076791oig.148.1569576472781; 
 Fri, 27 Sep 2019 02:27:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190927002455.13169-1-robh@kernel.org>
 <20190927002455.13169-9-robh@kernel.org>
In-Reply-To: <20190927002455.13169-9-robh@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 27 Sep 2019 11:27:41 +0200
Message-ID: <CAMuHMdVOJt9b4FQpKOytgA-GV3PUECZ7-GkwR=ma8w8P9RKJww@mail.gmail.com>
Subject: Re: [PATCH 08/11] of: Factor out #{addr,size}-cells parsing
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_022754_385385_FE5ADAED 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Frank Rowand <frowand.list@gmail.com>,
 linux-pci <linux-pci@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Simon Horman <horms+renesas@verge.net.au>, Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 2:25 AM Rob Herring <robh@kernel.org> wrote:
> From: Robin Murphy <robin.murphy@arm.com>
>
> In some cases such as PCI host controllers, we may have a "parent bus"
> which is an OF leaf node, but still need to correctly parse ranges from
> the point of view of that bus. For that, factor out variants of the
> "#addr-cells" and "#size-cells" parsers which do not assume they have a
> device node and thus immediately traverse upwards before reading the
> relevant property.
>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> [robh: don't make of_bus_n_{addr,size}_cells() public]
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
