Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 723066352D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 13:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uMGjYo7ONjtct42RutHbS9VgWCGvzLdMJUL6eK4rplE=; b=r4YyJVEW6Pyudn
	I/FYdveAyfQT+GuQrH7uXgAUl6JpFtimaDxF2CMTGLYjxtp+rk4BRp7kHvcq4r7LcWDLtqz/nIWrv
	KbfNy+yDi4DShU9kyYrGjK+CdG0BpWurHB3I9ZqSkLutNpvyYt/U58TkJx1dvKXD2C6tVDsBxT9DF
	t/kZ8xTw79Vu9O7kmsPBYFXuKZYw7nIAYuYoZ+dHDZ5p5pJo69vFnVpz5yk2dHBoaw8lIe+adDnk2
	o4AD6IuizMF+1HqhHBfQ3dgG/XUeiEUGwt3m4kDtSfhfIuQv0+QhxJiyoRTO0qv8khFZAZ7q8awvd
	beB3h9bREWT/rtKBvKQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkobu-0001LF-Dw; Tue, 09 Jul 2019 11:48:38 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkobg-0001Ki-OJ
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 11:48:26 +0000
Received: by mail-lj1-x242.google.com with SMTP id m23so19219297lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 04:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3ssgulV7sWCfcM4PRZNwO9BuulmUUqW907/wO7hPiBc=;
 b=vb98Z4RP0gTCJjoVBOCo1CN9IHKRCGHfE7q3lgCeHP38GmDWCCDLwiNR+2sEdq/ZMl
 nOxdU9A0OrbX/7aoAJSE88mLRAgzBD1VrP2TudVDFUrp4DmqA/Sz4X9fkkFEBi9Tmhp2
 4B7Y9k22/zOot01eNVLWCx+5pFY4/mVO5Tm26hHyPPyYUbkS7QeNY4b6hIwXtR6B3cv/
 +f8fDWloVsbO93vHqS/gkfBSZxmF1YIc+6KD9jrKfux3uhkE6ZQ8fYBOr+dVXfmWx3gi
 PUoe1nddEy7sSHplHZPblYsxiQaV/+sarD1oR/MELsw32YpugBQAFZZsIUisMTqGLPLZ
 y1yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3ssgulV7sWCfcM4PRZNwO9BuulmUUqW907/wO7hPiBc=;
 b=QKexlAh5vdcCP275fn9F0ZOTJlJ2xhz9BNGSwm3jWQeUhN/HvxZdCEABAAh1zFzQ9R
 Vi2xrG547SHlnk+N7UJeoCE+czb0drMZ0VO7zrMTRUkxHm6Z2YpPeIt1Jic1SVYtSvvm
 QSHpikeGj9n0EmoZ3+fR4CaObJl5pZXt8Sz6fYsS6vmpi+5kh2F+KUBjhptyQFabuQ7r
 tl9Q0f3oNPlleJsKPmd+QCArcRnrQdB9Ye/oP2iCVVQrYGN60JzEQrxDyg6D4YqVAQkK
 BjMwle4//eI6x2tJNVnUBQ3sj/BI6NF1aiwAlglU0+77ztzDFRVkbMNLM2N7bWU332WO
 1BXA==
X-Gm-Message-State: APjAAAUQX7TLSFZ3vnkmCw9Kx/ffSz7LMTW5p9DAeWz4UT73RLdJ3Qvh
 Q00N2L2knjoMboHWaCXiRM9N2JwFMf+SOKjv8b3i9sBl
X-Google-Smtp-Source: APXvYqwWvrNmIZaD+XHxDp7B5vU2aCobnnMO3Af/AFVXIizRGOojn8dMUQtZA0/oMlif6DulxK/S8J7u/9s597+dKos=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr13414410ljs.54.1562672902884; 
 Tue, 09 Jul 2019 04:48:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190708203049.3484750-1-arnd@arndb.de>
 <CACRpkdY1JzUZKgmXbObb6hqFcLFygAj2NuMgPMj=8tCp9U2C1A@mail.gmail.com>
 <20190709091747.cg3cqmzdfpzks2vx@shell.armlinux.org.uk>
In-Reply-To: <20190709091747.cg3cqmzdfpzks2vx@shell.armlinux.org.uk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 9 Jul 2019 13:48:11 +0200
Message-ID: <CACRpkdZbEL7njJEO+0UYzzkck+UeMuADgB4Nwvet5B2ZALDcZQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: mtd-xip: work around clang/llvm bug
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_044824_854929_02706913 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: clang-built-linux@googlegroups.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 9, 2019 at 11:17 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> On Tue, Jul 09, 2019 at 10:41:05AM +0200, Linus Walleij wrote:
> > I guess this brings up the old question whether the compiler should
> > be worked around or just considered immature, but as it happens this
> > other day I was grep:ing around to find "the 8 NOP" that is so
> > compulsively inserted in ARM executables (like at the very start of
> > the kernel execution)
>
> The NOPs at the start of the kernel executable have nothing what so ever
> to do with this.  They are there to align the kernel entry with the old
> a.out format that was used (which had a 32 byte header).  Consequently,
> there are boot loaders around that jump to 32 bytes into the kernel
> header.

Wow! Finally the puzzle pieces come together. And it makes a lot
of sense.

> There are other places that we insert 10 NOPs (at cpu_relax()) due to a
> CPU errata (otherwise a tight loop basically stalls other CPUs.)

Pretty interesting too!

I try to learn a bit more intrinsics of the Arm architecture (been doing
assembly experiments recent days) so getting to know things like
this is very valuable.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
