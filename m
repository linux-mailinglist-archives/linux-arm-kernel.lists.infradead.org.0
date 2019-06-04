Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 315B034129
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:07:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lp2mHFF/2Ew8/AHYwy4ja2Umhe54gB8R8vtG/ACq+No=; b=FkFd7Mgeb64eFf
	HYKOxzBV2yOmyq18JYU5tEpf35iMYW/Wl47liQHA8Gw7mFEmqwNyhYF11CgYMH4eBjsE8Au9sbQJN
	nnBxZKuFoKB+bvgBbieWbMMfr/iQksgpguYwGoNjZ8gxB6r/CY14YTM41Z6njXkyCC4D0wxDTVfk8
	mB9Yn6i+R1bmhaA7FgS/Y9+Gkrxr3S3mENPIredLyub14WeYbttoXMt+UMFeuPaJ+X2JrcA7f11G1
	N4o6ehOZ4UU87+bwiijF2Mr656NF0okMkAGKg6199f8i0ZunMZjz7LQXoiJQNGvxnmV66sy+WKxPM
	Q6WbCe9cK5g7bYDFKbaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4Tb-00065o-2h; Tue, 04 Jun 2019 08:07:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4TS-00064l-CN
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:07:15 +0000
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE1E424DA9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  4 Jun 2019 08:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559635634;
 bh=sHyWfbwyAVw7JKk2CNcrCheYaj5lTlFffjTrjRb605w=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=GGHi7E3nS8InMHMm6Lj7RN831PK+c5synl+5o0YVe7bm5SxaPLGtnGoz4l1BXwrbL
 nrB7anSS2auYVBfNOXn5TaBjM+u0QlgIi0aO9jCZuDJLEUY/uUbueDcW+/MzwZGvaI
 F/d3zRm5/qUpj9AgXWQtZcdtXfsYe0qVak7mDQVg=
Received: by mail-lf1-f53.google.com with SMTP id u10so8680435lfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 01:07:13 -0700 (PDT)
X-Gm-Message-State: APjAAAVx3Q8YZwUabE1uryVzOEXVSf0lXKgnyxpXjbZjFCtCKYr5SDT5
 nVAZe2hkciKIuGigzd2rE6Q91sK+gKA3nsbq9zE=
X-Google-Smtp-Source: APXvYqwADLP+VEgr6xpGA3YxOkg9TXBPTX2f2nBgdA2w5CaYXwC1dmD/WGKupuEPBt0UOCBg2XQaSrz1avbR+Ljmutk=
X-Received: by 2002:ac2:4d1c:: with SMTP id r28mr1619692lfi.159.1559635629899; 
 Tue, 04 Jun 2019 01:07:09 -0700 (PDT)
MIME-Version: 1.0
References: <1559634833-19980-1-git-send-email-krzk@kernel.org>
 <CAMuHMdV0RNdB3_n7J0FWfhUTvzq4390HVsuzxXhexZ_zX-+nvg@mail.gmail.com>
In-Reply-To: <CAMuHMdV0RNdB3_n7J0FWfhUTvzq4390HVsuzxXhexZ_zX-+nvg@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 4 Jun 2019 10:06:58 +0200
X-Gmail-Original-Message-ID: <CAJKOXPcY8w7CVkwGWwhssPtz8=tgffzRoAN8-4SMSTYk2_yKEg@mail.gmail.com>
Message-ID: <CAJKOXPcY8w7CVkwGWwhssPtz8=tgffzRoAN8-4SMSTYk2_yKEg@mail.gmail.com>
Subject: Re: [PATCH] ARM: configs: Remove useless UEVENT_HELPER_PATH
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_010714_454665_B7F03BD3 
X-CRM114-Status: GOOD (  15.63  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mans Rullgard <mans@mansr.com>, linux-aspeed@lists.ozlabs.org,
 Tony Lindgren <tony@atomide.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>,
 Ludovic Desroches <ludovic.desroches@microchip.com>, arm-soc <arm@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, Arnd Bergmann <arnd@arndb.de>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, Sascha Hauer <s.hauer@pengutronix.de>,
 Vladimir Zapolskiy <vz@mleia.com>, NXP Linux Team <linux-imx@nxp.com>,
 "open list:TI ETHERNET SWITCH DRIVER \(CPSW\)" <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Andrew Jeffery <andrew@aj.id.au>, Dinh Nguyen <dinguyen@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Jun 2019 at 09:57, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> On Tue, Jun 4, 2019 at 9:54 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > Remove the CONFIG_UEVENT_HELPER_PATH because:
> > 1. It is disabled since commit 1be01d4a5714 ("driver: base: Disable
> >    CONFIG_UEVENT_HELPER by default") as its dependency (UEVENT_HELPER) was
> >    made default to 'n',
> > 2. It is not recommended (help message: "This should not be used today
> >    [...] creates a high system load") and was kept only for ancient
> >    userland,
> > 3. Certain userland specifically requests it to be disabled (systemd
> >    README: "Legacy hotplug slows down the system and confuses udev").
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> Acked-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> >  arch/arm/configs/proceq_vf_bck_defconfig  | 255 +++++++++++++++++++++++++++
> >  arch/arm/configs/proceq_vf_crc_defconfig  | 278 ++++++++++++++++++++++++++++++
>
> These look like unrelated changes? Please drop.

Ooops, indeed. Thanks for spotting them.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
