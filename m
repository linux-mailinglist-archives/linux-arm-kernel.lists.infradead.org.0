Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FB3AF3A4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 02:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yyIMtCiwXjWppYU/8JnGVWvt19hCj03i+0jjNn3fq4s=; b=GzF1YrpoU3y8cb
	OrjbJX6sG7u9o0w3uHzhqPf6Z+TSwM7sDYpG24H7r61d6GOU6YksmDsBNGTmbQYTJusuNIXtsHXeb
	X74ApAVR1oykrZ4I/j0yKsyTkb8Hwwh3ZkZBmR6KsrdsxL4ddxiOxqQ6+nYkaF0ULK76khml/5TU4
	yYq/b1VB6k7wrN8EvI7xLiGF6quwzR76wJmQ7zyHLwuA8xMO7QUN7Xp40ciUfd5XRUAMNsENgw7u8
	ON6hDAdOWHRCJEmX4XF4OWLD+xtbP+qjkb6sWdA3eKCJGzxnXEsGK51iAQtktdC4pBi9JR4Ptx/pw
	ISgSKhBkG/7ydz+J2qPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7qU0-0003PU-Fp; Wed, 11 Sep 2019 00:27:40 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7qTj-0003LE-9q
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 00:27:24 +0000
Received: by mail-lf1-x141.google.com with SMTP id x80so14972112lff.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 17:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WajEOxLInLugBAoDBpA/UZhycoI/rEzq/XTRSPCwG6E=;
 b=EzMngyN8/VFtydsD0WIWfF50NQaPkM2eq8VQZ1+mbgQSlXsfBVGI+7MkTEJzrMepjE
 N5dzp3wn51b/B2O+rrJbqNGUKq5JuOmTT6211sd23WXSiR3zd2dGAm9f8pa0q1IGg2IK
 7UUdZYscZWrzG/He/DIZfQEpeLTSwcEo3eedfyMyU6cEaPIfRhxowWNF6pc2dPeVa5X5
 v3AHcOmN5viENhp+J71IZD/ZGQXMj0xOiHP+s7iSQW7MdcXBb3q+PaJlOw5FzNIHbjK7
 mYXUmu9PfI0jRJ5VcJqvushgAmgG0XP8z+66xHsDuZzkpejBCpjVGlQGBPgYhkvRR1n8
 BBEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WajEOxLInLugBAoDBpA/UZhycoI/rEzq/XTRSPCwG6E=;
 b=BEVYpuy5G3y31qWChS0eaLo9Lx64OfXC7FxgeIDIJoYOFuHo3cSjqJW1IT5M2nKq+E
 UDB2UWY+g66V9VTx63sDqMDnJW8japwQgv0qVaviAgOl2uo2HsJzQpVYh30ZurKAI9Up
 vtg6u5Kk/H4jqk7h0kGy/egD6NE12gQcbrMvsEVbfYydaEMTA3n8KMWVK2qX/Mpf5Uv4
 QYrD8PVjsyiYgD12rwo0+k5+/deESc7bt+j4EAq5JhrsvKZt+B9oTQ0DsXYSgziAIFjw
 IUkeuEvXxvkIhX6wCDIZOabBeulNeHnbiTmjIGRqzbofuPhxytXafI1Q+hcZOfDz/C1c
 OxRg==
X-Gm-Message-State: APjAAAUBpHiYMvL1X5d/RQts9IQNWABEp3jlnr0VxfSbH1ryk65aSHHk
 eXUSHy2G6ojw2YCsPzwforAXVeBKkay40wSEzRj1mA==
X-Google-Smtp-Source: APXvYqzTq8nRKqDrSo4UwdKaMsjIls0OQxxqbEF2KXMZYG4h+hjc3wihhhumQbhxZ9JIU9zTtyDhgWLKDvdddWxQFZc=
X-Received: by 2002:a19:14f:: with SMTP id 76mr21572482lfb.92.1568161641802;
 Tue, 10 Sep 2019 17:27:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190905141304.22005-1-alexandre.belloni@bootlin.com>
In-Reply-To: <20190905141304.22005-1-alexandre.belloni@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Sep 2019 01:27:10 +0100
Message-ID: <CACRpkdbVC6DLHWftpL1wfkx_kWyfE=LpCQWZw=cv=RMVxDBm_g@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: at91-pio4: implement .get_multiple and
 .set_multiple
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_172723_349643_30EBA47F 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 3:13 PM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
>
> Implement .get_multiple and .set_multiple to allow reading or setting
> multiple pins simultaneously. Pins in the same bank will all be switched at
> the same time, improving synchronization and performances.
>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Good initiative!

> +       for (bank = 0; bank < atmel_pioctrl->nbanks; bank++) {> +               unsigned int word = bank;
> +               unsigned int offset = 0;
> +               unsigned int reg;
> +
> +#if ATMEL_PIO_NPINS_PER_BANK != BITS_PER_LONG

Should it not be > rather than != ?

> +               word = BIT_WORD(bank * ATMEL_PIO_NPINS_PER_BANK);
> +               offset = bank * ATMEL_PIO_NPINS_PER_BANK % BITS_PER_LONG;
> +#endif

This doesn't look good for multiplatform kernels.

We need to get rid of any compiletime constants like this.

Not your fault I suppose it is already there, but this really need
to be fixed. Any ideas?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
