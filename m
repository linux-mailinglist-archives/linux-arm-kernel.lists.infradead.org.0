Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7359819D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vHTLCfo3IsX8YY4RMadchym6Spd4Arj5yDL8EHPtaq4=; b=sloNqLmQ03ZdaU
	FhmNDjfbUKS0gitqOhSv+JEE+RwdhYh8L+hLQ6WMvw0q8RX0OiLeFtgRkwXiDBb5iYxNOuiQ9imSJ
	ADusKHnhyRutuYaHjZ9d9ooblz7jMbLiYtULmsI8+7dTKWkK3+gSmRZWFRFNxDGEvqrEYxbZwUgA9
	o1LB6NeBP2dutrjottahq9/xRaIIWdT4hbSLk2u4CWjElhvh1Tr/iKFV6bYNdAxlBfs3l5EazW1z2
	TJkrtPQxNBtzEdrST1ZloK3FWp2J5jAxyo3e/t9QrzXLGZIWhmXNedYVewSpO115EOeECQFTDh422
	hRd0OxKQU9cqkfghWQKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hucLS-0006Ey-Pp; Mon, 05 Aug 2019 12:44:10 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucLE-0006E4-Js
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:43:57 +0000
Received: by mail-io1-xd41.google.com with SMTP id k8so167007002iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BtM+NWj25oYvpSibgXFWcN7a4g9p0DLdhW/V4xt2eBU=;
 b=ZhKaC5MruwlHhhxMdPFwBhdPOYfP4wRyyL5N9ujJ84SwNjtO73htrkFtOMztfiavLw
 3mjniDoCJ3Bdo87uYPsyaTU8Vac2oGmkLqJQ/CYeXZqR3vFSExkCyiri3ODkTnfBhcV4
 C7zWaU+uEvyzRO88l6CgCi/Yl8EFpBECsqiW+0n1EXu43WHzCFRCCdfAtPypn8PcHw77
 VAR8QE8n+f8Bp/TmoDduiOZUWOXS8FME9HJgFscbc1zhEG9ESLdbyJtpPWJzSYOK839a
 blC7htlqER39fmEduUJ5KTjvmZEO/NXXYrGht3l6l8ygJo+W7iWPDcJrCkDfe962tjVN
 w5SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BtM+NWj25oYvpSibgXFWcN7a4g9p0DLdhW/V4xt2eBU=;
 b=ZfOCkWJwRflUOJ/MPNwri0zRA9hkB+asSDKB9X6O/tACh4adbBlM8dowb8saFFga4K
 6ui4djarNKVj0pNBkVQ4vQ1t/ZIsDzcLk4iy+ASdl3YJD7w0+HXZ93pik18gU9NQbc5I
 w2IyaGHkXQgQsY7HA3AnbQ8cpC20JAOgZbhdmnbyQhqUAmV9NAG1YpaqteQ44IGP0oeE
 2avb+hwdbirixLPgCT7J31lKh4EsvUKiolInGCcEJ0TtHzYQnYHDmKiTJA6wrghbKhvW
 WHQnq6yopIx5BlGJtjoGBqkfMGTM7X62+DdqcLxjgiO/meYzt/uCAbRnP/jQCag4ZCh1
 aAcA==
X-Gm-Message-State: APjAAAV58b7eCuAcIz+n2j2si9f3TKTkABFHRqLDDaB7MQiASsQwEtTL
 5UD1VC3Xv+MlE+Elz92p0hm/3CK2iMyG0T6swok=
X-Google-Smtp-Source: APXvYqwqQSPW397kqrW3kGv0GRCbHES+vT5UGpfo7ZHfq/1Bj6VjaFS3ZRkwHG0PLi1+eyqFIVooHFs/Ke2fu12pfIU=
X-Received: by 2002:a5e:8c11:: with SMTP id n17mr69032096ioj.64.1565009035665; 
 Mon, 05 Aug 2019 05:43:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731195713.3150463-5-arnd@arndb.de>
 <20190801055840.GC24607@kroah.com>
In-Reply-To: <20190801055840.GC24607@kroah.com>
From: Sylvain Lemieux <slemieux.tyco@gmail.com>
Date: Mon, 5 Aug 2019 08:43:44 -0400
Message-ID: <CA+rxa6oU65QeEDaROdz1v=5R6m4YKTd7rRNEBx41d5uixyoz=g@mail.gmail.com>
Subject: Re: [PATCH 04/14] serial: lpc32xx_hs: allow compile-testing
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_054356_654070_D08BBA19 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slemieux.tyco[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, Arnd Bergmann <arnd@arndb.de>,
 "David S. Miller" <davem@davemloft.net>, Networking <netdev@vger.kernel.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 USB list <linux-usb@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Vladimir Zapolskiy <vz@mleia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, soc@kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, Guenter Roeck <linux@roeck-us.net>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Acked-by: Sylvain Lemieux <slemieux.tyco@gmail.com>

On Thu, Aug 1, 2019 at 1:58 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Jul 31, 2019 at 09:56:46PM +0200, Arnd Bergmann wrote:
> > The only thing that prevents building this driver on other
> > platforms is the mach/hardware.h include, which is not actually
> > used here at all, so remove the line and allow CONFIG_COMPILE_TEST.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  drivers/tty/serial/Kconfig      | 3 ++-
> >  drivers/tty/serial/lpc32xx_hs.c | 2 --
> >  2 files changed, 2 insertions(+), 3 deletions(-)
>
> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
