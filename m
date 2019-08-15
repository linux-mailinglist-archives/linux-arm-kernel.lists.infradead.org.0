Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F35EA8F4D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 21:39:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0SBXt1+M6xhJO4QtkjDM3Lfs4pVRSqZEBXm439UQpkc=; b=VaVS7IfTHJh0CE
	flyYIDWTs0JB2uyn6R9VZqGF7o1BTOJMU/FaLT3KfpUw+NXn2MrxyVYgxD47iLG2pY2aYtQo/Y3Cr
	4EIrviOq26r+XMlexe1bIJ3Ey+XKBsrbd9vcyWaayMfGA7z6JJmuCaMzPMNjGSwbUj0lBcitn3VBM
	AZwv4xOnHECJ8Xr/pa4/0InxDsYVyTp5tq4o+ecVwMAf41t7VLR7QNtUKbZB21N7J6U2zKJXwU/7O
	d1MUF3fs38YrnxmgTRAkQ7PeGP8IkJXROb7LPJaZSPExNNbohgUOFaVid3xgTeyRp5gczTHfvZNgB
	IL1InmBQjRlzNN/6OJxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyLap-0002pt-Ma; Thu, 15 Aug 2019 19:39:27 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyLaT-0002p8-KT
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 19:39:07 +0000
Received: by mail-qt1-f193.google.com with SMTP id z4so3592998qtc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 12:39:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E1uPy8KdAoiEgff6O2fYBXQ3Fn6UlM0L6zfIpxvfPBI=;
 b=Jqozibn0mcFnmWKWM4wUSO4iLYV/M/DeoBHawx+lqgCGDfedynh70sfOeFrLHn0Z1f
 QfoVA0dW+gRf/+wmnCGgg/c/4jjIccpqJiNlxhOChZn0LuIvsXScgcG4M9yBf2gTSwLe
 d65kGo2yMKRIqo8YPsrBYsk7vuLzq7YsegcYQ5AnB2+kkQofS7m7/rQzAJIgTyuFYidM
 b/45vv4rHntG5jnQBf/VPOllPePzDccNo3YtPV2ebZJCAq9R+05BAITracHX2v7icb9l
 avtvsW4zhgLovlvQYZe3OGYoYQNxYjsPG0az9AsTPT/2fxmeveI49gYxaTtewSEY4gb1
 E7Ng==
X-Gm-Message-State: APjAAAWnMt0SicM6BaZKNE23gtnYB2vG63yHcuhdDKOoXfQUsom85AB1
 E6yq6iuX+WHtlDUxQeOBYRfmeQSk1HdydXG6+Ac=
X-Google-Smtp-Source: APXvYqxqTY8ftYo1EUWFqO+wE8ZQTXXaXX7aeplKk/nDWAyNr8WQSB0twRkA82A5Gyv2tMBQ6tV5GMhK78egWxkdSCU=
X-Received: by 2002:ac8:f99:: with SMTP id b25mr5374344qtk.142.1565897942632; 
 Thu, 15 Aug 2019 12:39:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731225303.GC1330@shell.armlinux.org.uk>
 <CAK8P3a1Lgbz9RwVaOgNq=--gwvEG70tUi67XwsswjgnXAX6EhA@mail.gmail.com>
 <CAK8P3a0=GrjM_HOBgqy5V3pOsA6w1EDOtEQO9dZG2Cw+-2niaw@mail.gmail.com>
 <b43c3d60-b675-442c-c549-25530cfbffe3@gmail.com>
In-Reply-To: <b43c3d60-b675-442c-c549-25530cfbffe3@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 15 Aug 2019 21:38:46 +0200
Message-ID: <CAK8P3a3ry0S-yhE75hZx1SawYuVzY=NgnNBei101F6+HxBfE3g@mail.gmail.com>
Subject: Re: [PATCH 00/14] ARM: move lpc32xx and dove to multiplatform
To: Sylvain Lemieux <slemieux.tyco@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_123905_672781_3312DE05 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 USB list <linux-usb@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Vladimir Zapolskiy <vz@mleia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Guenter Roeck <linux@roeck-us.net>, linux-serial@vger.kernel.org,
 Networking <netdev@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 8:32 PM Sylvain Lemieux <slemieux.tyco@gmail.com> wrote:
> On 8/15/19 9:11 AM, Arnd Bergmann wrote:
> > On Thu, Aug 1, 2019 at 9:33 AM Arnd Bergmann <arnd@arndb.de> wrote:
> > I applied patches 12 and 13 into the soc tree now. There are some
> > other pending multiplatform conversions (iop32x, ep93xx, lpc32xx,
> > omap1), but it looks like none of those will be complete for 5.4.
>
> I think the patchset (v2) for the LPC32xx is ready for 5.4
> ([PATCH v2 00/13] v2: ARM: move lpc32xx to multiplatform)

Good point. I've merged these into the arm/soc branch now.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
