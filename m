Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D92387D65D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 09:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bb712OlszYy28GXfBZl69QubQuKvTfKVa03UIDJ6Azo=; b=DQa8MRD3dVVlc6
	9uEeAOwXmtVXPtJe11zu1MHneyTz24RdaUKRkCUT8MQO6YGa+DakH4PkcMoqEO8VmOWaUrPr5xEtJ
	5ofTLCunrWWbRook5EiB3prfE7GXH/gDFX73C01NHxPNtEU2t7JGpQlV89IrK9pnRUORd3fbGoe5T
	2rYMMu+paCWn0jzF0W/U5o0j10yPB4DfmLCAJM+eHbrcjET2o6V588W5fSdNlNmAO2/K7FKpgOTk8
	fr5VsybosonwEU4VJbanVl0WqFth/6vmcsbgDPafVeUw+w9qqUErSkaO8/WmSFczX8nDJgKNoyw+e
	YKk8RrxuujBjMrMoscqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht5at-0001G1-AA; Thu, 01 Aug 2019 07:33:47 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht5an-0001FV-II
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 07:33:42 +0000
Received: by mail-qk1-f196.google.com with SMTP id r4so51155900qkm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 00:33:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uzHxuqP9bTvMw7JBQ/Id5Vam5w5HBpX0XWumLmps/F8=;
 b=kp9PRdluUpuqwaYFhMoLaRjd0QUlulrFHXE5ajywMgBx5FSH5F3fUfHFrq44av/lRe
 M1zI7ZGGkx0oEgnGcUBUzbONnn3pBOQlbJz4omDhxwl13axjtJEP3Lgn75VzRkTfVu5s
 ZQqaDUiWul21gRTXTaZxKR0N0cSqcb4S0lXt3akQVIQFMX50/MPkLIIxHmh0XUZ8mbWU
 GLjBxYR6ISTX85JrVkfAVAh6J3e3Iu5/2522GxpLfLYzMCtYJ+QMaEa1YltZBkSfpML3
 49MN8awEDN5daAAQMxS9eLc8VYVtLQ2FIlcU8pzAAk936SWSrDqAB0sHLlK1f7Lz8UTy
 s09w==
X-Gm-Message-State: APjAAAVCb9ng0W/EW/hXGNLqw00JYg6vjEbp/1JosIGxUSpXy8efTs2I
 JX+6cXD3yCSnmXrYBsENiIEyN+sbD2K4H/RgHtQ=
X-Google-Smtp-Source: APXvYqyMeJ9LlJMXE9rDAXSa0/HHTUU6jsIhO5Y0qQu+ABh/obgCJKyAqVIsLutAY+sl9DXQqRxphmZCeAPnr5ENpd8=
X-Received: by 2002:a37:5f45:: with SMTP id t66mr84886325qkb.286.1564644819429; 
 Thu, 01 Aug 2019 00:33:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731225303.GC1330@shell.armlinux.org.uk>
In-Reply-To: <20190731225303.GC1330@shell.armlinux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 1 Aug 2019 09:33:23 +0200
Message-ID: <CAK8P3a1Lgbz9RwVaOgNq=--gwvEG70tUi67XwsswjgnXAX6EhA@mail.gmail.com>
Subject: Re: [PATCH 00/14] ARM: move lpc32xx and dove to multiplatform
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_003341_609882_33A0FD24 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, USB list <linux-usb@vger.kernel.org>,
 Vladimir Zapolskiy <vz@mleia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, soc@kernel.org,
 Networking <netdev@vger.kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Guenter Roeck <linux@roeck-us.net>, linux-serial@vger.kernel.org,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 12:53 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Wed, Jul 31, 2019 at 09:56:42PM +0200, Arnd Bergmann wrote:
> > For dove, the patches are basically what I had proposed back in
> > 2015 when all other ARMv6/ARMv7 machines became part of a single
> > kernel build. I don't know what the state is mach-dove support is,
> > compared to the DT based support in mach-mvebu for the same
> > hardware. If they are functionally the same, we could also just
> > remove mach-dove rather than applying my patches.
>
> Well, the good news is that I'm down to a small board support file
> for the Dove Cubox now - but the bad news is, that there's still a
> board support file necessary to support everything the Dove SoC has
> to offer.
>
> Even for a DT based Dove Cubox, I'm still using mach-dove, but it
> may be possible to drop most of mach-dove now.  Without spending a
> lot of time digging through it, it's impossible to really know.

Ok, so we won't remove it then, but I'd like to merge my patches to
at least get away from the special case of requiring a separate kernel
image for it.

Can you try if applying patches 12 and 14 from my series causes
problems for you? (it may be easier to apply the entire set
or pull from [1] to avoid rebase conflicts).

     Arnd

[1] kernel.org:/pub/scm/linux/kernel/git/arnd/playground.git mach-cleanup-5.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
