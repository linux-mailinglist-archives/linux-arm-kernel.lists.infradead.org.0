Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7558A1FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 17:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nCOBie3PtYuzRf5iik8ffwCGuO1M6voO331ykfOc8h4=; b=EDlifwhJ9TsBZx
	Yr8w/mguThP0P4Ict/3LfSAYAKhmeJQk+6wIPZ1rdlKf8tdd/L4wFN6All3sQ+pNLY7pWbpM8802o
	nEl7FerfPkT9+s1niPh3BdP2JuKh2j7CuxD/I116jtwL0PEHD24bVC0Khnojx26EgLc+5av5VW47I
	2+lJCpd5J33KGR4VFh5vtoudH5uJrWyQCSuAfB/r17gQatb9wOIIraFO6RDhtApqlBjEpSBHE1IW0
	iKDipApeBSwCvI/6vxbMeMFXoXG0cR6GS30JhfMMwG+eDJW479vN+Q7wZbn75S51L69zh5QALoQ41
	rwS4P4RRupKSC+5Na7lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBxX-00006g-NS; Mon, 12 Aug 2019 15:10:07 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBxM-000060-24
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 15:09:57 +0000
Received: by mail-lj1-x241.google.com with SMTP id 15so6852403ljr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 08:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t1V8mqCBoCuSvxrNXOIb8cs51g3I5htO8SXqEzVW8X8=;
 b=n1QSWsyssZRjTp5iO7oJPWuTI2ZaJpwixEgzfyflZDttCKEF+JE8H0vovRd8fEJy5F
 l4mLA0x0c/Wl3Ri1chRWipsiac2k/g0407PeuzESEg686zlA0HQqAj3oNhQRsFeLx+Ca
 L/C1qM0Ksb5EDsrdYkywNPfHZ4T4Zn7lCUNuLr5ZVagc2KqSBZOdkTqK7XFpCNq36tnv
 xIjHOkC6kXyU/ri3rGDYAW/h/Eq+Rlkr4rqmVjleG/MmO6l4bleAXUr0Xhny40zkKT57
 549CwiLTjT2Kph2g8sUmOtjgYBgNVlSBoGsTnDQ83BVHeqIdZHkMAq9naoYfMxoBzJgY
 1WUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t1V8mqCBoCuSvxrNXOIb8cs51g3I5htO8SXqEzVW8X8=;
 b=Ka8btU1cSC3GeNUjyoAsqLKqmz28L7oTaBX3duWJPVK09+OvLalNAh2bAIkGg0r604
 SBmh0GdCDfI/7YG4IsJffK1D5Yc0e+sK2B2FciRrH7jo++roaK9D2W2VapDgLeC7scp5
 3YtECs3/MtLg5bixnOnDXNx+qRSFKvr9NO/FlqaRO9weOh4TvmTY05BglEmOkHPVwS/A
 nYF5mwWCjTZm98Ms9otz2iEZYVVYfTUlrrgGnknNR8h+KPJKzUOV9MQxMBzxWndbkl1T
 3pzgc19XcjDYIyP2vAmAD8quKW3EmuFlBMmWyIyJjaE8jot03Zi3erAyZaOPGzGMM//v
 60aw==
X-Gm-Message-State: APjAAAXKJ2OscoU7BwMAuzrY+r4Rme4C7k8N9XbLFhJA59ZLppB95kbR
 FFwNYFaK1XEUVP0M088UlqIa7KF2uqMug6t1E9U=
X-Google-Smtp-Source: APXvYqzZpoyvhmC+QB37WE13tQdqAWo1VGdA91KCXsz3B1pcZkpZeWArAHP4cRIYpkm3PmWGOaB9p0kbOy5ElWiOxqU=
X-Received: by 2002:a2e:5dc6:: with SMTP id v67mr19358346lje.240.1565622590807; 
 Mon, 12 Aug 2019 08:09:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190811133707.GC13294@shell.armlinux.org.uk>
In-Reply-To: <20190811133707.GC13294@shell.armlinux.org.uk>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 12 Aug 2019 12:10:21 -0300
Message-ID: <CAOMZO5BeaNysZA2CWoXb5cbz_hKFZEyb0sDmsLxRQukziXoSxw@mail.gmail.com>
Subject: Re: [BUG] fec mdio times out under system stress
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_080956_135130_E0CC7A6A 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: netdev <netdev@vger.kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Andrew Lunn <andrew@lunn.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Sun, Aug 11, 2019 at 10:37 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> Hi Fabio,
>
> When I woke up this morning, I found that one of the Hummingboards
> had gone offline (as in, lost network link) during the night.
> Investigating, I find that the system had gone into OOM, and at
> that time, triggered an unrelated:
>
> [4111697.698776] fec 2188000.ethernet eth0: MDIO read timeout
> [4111697.712996] MII_DATA: 0x6006796d
> [4111697.729415] MII_SPEED: 0x0000001a
> [4111697.745232] IEVENT: 0x00000000
> [4111697.745242] IMASK: 0x0a8000aa
> [4111698.002233] Atheros 8035 ethernet 2188000.ethernet-1:00: PHY state change RUNNING -> HALTED
> [4111698.009882] fec 2188000.ethernet eth0: Link is Down
>
> This is on a dual-core iMX6.
>
> It looks like the read actually completed (since MII_DATA contains
> the register data) but we somehow lost the interrupt (or maybe
> received the interrupt after wait_for_completion_timeout() timed
> out.)
>
> From what I can see, the OOM events happened on CPU1, CPU1 was
> allocated the FEC interrupt, and the PHY polling that suffered the
> MDIO timeout was on CPU0.
>
> Given that IEVENT is zero, it seems that CPU1 had read serviced the
> interrupt, but it is not clear how far through processing that it
> was - it may be that fec_enet_interrupt() had been delayed by the
> OOM condition.
>
> This seems rather fragile - as the system slowing down due to OOM
> triggers the network to completely collapse by phylib taking the
> PHY offline, making the system inaccessible except through the
> console.
>
> In my case, even serial console wasn't operational (except for
> magic sysrq).  Not sure what agetty was playing at... so the only
> way I could recover any information from the system was to connect
> the HDMI and plug in a USB keyboard.
>
> Any thoughts on how FEC MDIO accesses could be made more robust?

Sorry for the delay. I am currently on vacation with limited e-mail access.

I think it is worth trying Andrew's suggestion to increase FEC_MII_TIMEOUT.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
