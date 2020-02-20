Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7AD1664C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:28:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ipez2/0uqH6Ld9EKU7QZk0yQJawLCxSEmQV1bPnp1hE=; b=js0DF1MQyVeZlM
	7gNEtfMuk8BMYj3W6mfYPvrhoizqw/iqsnz/RgUAP3A+n0VAxtTM/2N1uqcRHmWRa28VYKjU28dvb
	ZY3YWUhP6klpUSgUJTZ/VHEXVQhw8dbNgP2izWoT81Ioj3JP6zgFWuWI0RneDySD+0XHdMbMawRxT
	9qCoaMb+kNW5nuvdVKnkg/ioEOxpJ7shO+myR1tmHeWi0WKVeA6QDiEoh79iByHLvVk9DFDchIpSQ
	Mhm8aytzln+YuJxdvArZt3sz6Z05J5rOoS1RTRBccTTUadaWCfRBI9yHKMm5ar254TJ8nUJ+vYEj/
	pxNpg9qBE2PCv5axOlYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pcs-0008HJ-As; Thu, 20 Feb 2020 17:28:38 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pch-0008Gj-J4
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:28:29 +0000
Received: by mail-wr1-x441.google.com with SMTP id n10so5600237wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 09:28:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9HLrH9B+9M96XvbzbC62n+ihyZm9Xl/arrOuZzCySRA=;
 b=kdS0utX1TJ7aUSDB8MR792caZ5Csslv4slskhik3iXiLZYHRDBGPNbTfBBMBbqC8i4
 /UXczD2kQSO7jNTIaYoFEEySjyi5XfsJwtmAF4QCwwbE3VJXbo/3iXaTGul9JmsqOLEK
 ajG9KUY0TvFqn7D769MTflum8evrHiFU7dwM24/kygY082ba5NOqof9ySYtsQuN1omvk
 Z4pJqWjOlQzedzYytS/jWfzEFq/z+LRjMT1lNSvn9d2OUw8/ZxMhM5pxXfxcsIWVdzFf
 mVkegrSWQvgw7xz7R+Iu1AlJUetn2b1Z5xPUY9ORZT24uOQLqRCDFcnQuRQkR9Bi3p73
 1yzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9HLrH9B+9M96XvbzbC62n+ihyZm9Xl/arrOuZzCySRA=;
 b=qv7gr07kM0F72Uxv3mnIu0RlzwzHEHgmW4DWI8o/CrRkzyXmEh4IW8qTFQ0QTdjegT
 f7Pw5oFUOkiZ1KQxkxikR7i0IsPIz6e/FqoJxWIobJqi9rUf+NcdVmNFTkReVUrJmxnF
 3+M5y813jMt5bTSHO57/IfVTdCbwZWXvPwRycfpDhWrjl1yxeVI6ID0NIZ26O0V21Kw3
 MtC9NggjNTf5sCOONqq/iRc1EEFYo0zsTmujPnTwXH2w9gPE49DjxGFLpfRCv+MgPjDi
 JeWylXDQec/IMVaHJh2zov7XLJ9fsqtulML3xLKhzdGnorFsYVc4GLUHou2W2qkZWtLh
 ouFA==
X-Gm-Message-State: APjAAAXTl2fKTSVTf4srz1Bj4BJdC8MRhJVg63hfgTn/d/lTRIQTDihI
 mn2FTIlpqOJcNOmksvBTGsQErE46pDQROkc96bw=
X-Google-Smtp-Source: APXvYqz/1EN+FC/uNZC+cWFKl1Gu53oLSQx1zC4GL5BRZp+dkeliZ7CB5GCVSC1Dh1nPlLxzoqJgviEbxGxtlZSwtp0=
X-Received: by 2002:adf:a381:: with SMTP id l1mr43487880wrb.102.1582219705972; 
 Thu, 20 Feb 2020 09:28:25 -0800 (PST)
MIME-Version: 1.0
References: <20200206173247.GX25745@shell.armlinux.org.uk>
 <CACRpkdbzjBnaeXJg3XvZ6G2FdtQQa0u7MPy9bgN-uo-F1vSpbQ@mail.gmail.com>
In-Reply-To: <CACRpkdbzjBnaeXJg3XvZ6G2FdtQQa0u7MPy9bgN-uo-F1vSpbQ@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 20 Feb 2020 09:28:14 -0800
Message-ID: <CAHQ1cqFeMKrb-MxnifVJXfGciQH8wsjS1dSSeTTc0R06jLT+Cw@mail.gmail.com>
Subject: Re: [REGRESSION] gpio hogging fails with pinctrl gpio drivers
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_092827_632088_E7FE9564 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrew.smirnov[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 12:18 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Thu, Feb 6, 2020 at 6:33 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
>
> > It seems that sometime between 4.20 and 5.5, something has broken the
> > ability to specify gpio-hogs in DT for GPIOs that are written around
> > pinctrl drivers.
> (explanation that makes perfect sense)
> > Consequently, adding a gpio-hog to DT for this driver results in the
> > driver endlessly returning -EPROBE_DEFER.
>
> I suspect this is sx150x-specific and suspect these two commits:
>
> 1a1d39e1b8dd pinctrl: sx150x: Register pinctrl before adding the gpiochip
> b930151e5b55 pinctrl: sx150x: Add a static gpio/pinctrl pin range mapping
>
> I suppose people weren't using hogs very much with the sx150x and
> it didn't turn up in testing so far.
>
> I don't think for example pinctrl-stmfx.c has this problem, as it registers
> the pin ranges from the device tree as part of the core code.
> But other drivers calling gpiochip_add_pin_range() may be experiencing
> this.
>
> Peter/Andrey, do you have some idea? Have you tested this usecase (hogs)
> with the sx150x?
>

Haven't done any GPIO hogging on sx150x, unfortunately. My use-cases were:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/vf610-zii-dev-rev-c.dts

and

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/vf610-zii-scu4-aib.dts

which didn't have any hogs so far (there's a chance Russell is using
the former for his experiments, so maybe that'll change). I don't any
useful input on this regression, sorry. I do have Rev C. board readily
available, so I can provide Tested-by's if I am CC'd on fixes.

Thanks,
Andrey Smirnov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
