Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7631CC2CC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 18:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ngumBNZ2OPot8SUsVyjXvhkJcj8U3KmU3l+UtOZgxrQ=; b=FIdhvbudRgEuvW
	A23og7cYT6LxhJ9+Cf7a2pNmDfuwTRAAZp02idEhJutflBXYkK4U0LQfiTA4Mr9xElfgJGFFVOUsK
	Hdh4XR+H9hzoGGHPb8nXf0ZUcjGSXJfGrGBl1wIoqsARHcN59j94mKlKBa0y3Dp93nShJJ2IYmzz1
	CwEfTUf9uFdTDDeJel3pobU8xIdIbF9W7elolcsIR1XWRFEEZ5g2fOu4lO6RSqx48l34eMv1rcWp1
	vl6IuJv4gJcixJ1TUx8rYCdn72yS17o85r/3yWtGv9Mc0oZFy/6zScE4oYA0CtXq6jBDGDAMCdavg
	cQfKq/fn0ca/BcWAqpmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXSSp-0008Ju-4P; Sat, 09 May 2020 16:36:35 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXSSh-0008JE-7e
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 16:36:30 +0000
Received: by mail-io1-xd42.google.com with SMTP id w11so4988134iov.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 May 2020 09:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w4doamfEac81w7NdGvlnuzzcfip0SyF0byJNJJN5mb4=;
 b=WOlYAndiY3sFA4r+kyJYu3WC5c3IBZUCZH9umuw/d4kq6khVKANcmQAD6PcluHPism
 vwVOUzCo4XaDzJdfvhOyPk3VFuXoJy0pU7JJrzV3MN9fyQko7aq2QhVLzl1cIoLmpZ6+
 xOg4c/pWzYIAzZfeOfE40HTeT8xUBY8mGxh5MhySa8Rd+Q1hAxBxvNf7r00gZtkn2zpX
 kLe92ok+KQ0eL4oUuC1pTmhIqWPzf80E71vE39u974eRsVlLqPDqVvWD3LBnLCcY45uj
 gzlX5FX1+k/aAbOwFqnRMRAD99HW/JPoeiJowZCNBZqaM4z+MKZ/mGn2uNAE1fn6u8vg
 PAcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w4doamfEac81w7NdGvlnuzzcfip0SyF0byJNJJN5mb4=;
 b=ewNavGF1tffFUNyINyfyhqJhIDIJuRhVIHhPTQj/F1238TvL+B59zizTzA5TAj0E6h
 RDlaTE6PE2kysJ36jI2JgQ5hDIWFpRn3YOfLalGBdQ7+YskWc88C5GKYVS4Eq5/WaHuj
 fwD6cN5KgWfZGGxEPKGxCjyTCRXMetR1PYvcP8DpjWYNgnsqBJEKPvMNWVbJXhADQGii
 CSaWMo6BcxeCndAONmJyTzZwF3wAMNb25vKtDZ1cF0H6VfCymNAFHWoi75EXlY2Lljxh
 QlHZov1S5fiZzgp1CkCD1XhA+ewatJTSoeeg867h5PQ9ioC7woiwwPZEjI/j+/QdF+JP
 BKFw==
X-Gm-Message-State: AGi0PubosRM/ktsPaVcqP+VqTptLQPOVOAu/cVQBU7BYA71eGooFpIZE
 X1PlWLiKByS5hgycjsgVkBEj9yevNPOnwsM8sdY=
X-Google-Smtp-Source: APiQypIwH+UOY7qJJYslhe41JcWrNe0Unvr55D5zZKUUBr9RGQMW5ZaXnpschPwH9qL0gzKBZTPZt8JnUhQyQoXd2+c=
X-Received: by 2002:a02:ce89:: with SMTP id y9mr2156102jaq.64.1589042185786;
 Sat, 09 May 2020 09:36:25 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1588460322.git.syednwaris@gmail.com>
 <20200504114109.GE185537@smile.fi.intel.com>
 <20200504143638.GA4635@shinobu>
 <CAHp75Vf_vP1qM9x81dErPeaJ4-cK-GOMnmEkxkhPY2gCvtmVbA@mail.gmail.com>
 <20200505145250.GA5979@shinobu>
In-Reply-To: <20200505145250.GA5979@shinobu>
From: Syed Nayyar Waris <syednwaris@gmail.com>
Date: Sat, 9 May 2020 22:06:14 +0530
Message-ID: <CACG_h5pcb3uOn+or-6L8bMk3bBNFXWJre9C9pRi3hNgFxGkd_g@mail.gmail.com>
Subject: Re: [PATCH v5 0/4] Introduce the for_each_set_clump macro
To: William Breathitt Gray <vilhelm.gray@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_093627_298486_10A189FD 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [syednwaris[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-Arch <linux-arch@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>, Arnd Bergmann <arnd@arndb.de>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, rrichter@marvell.com,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, "Zhang,
 Rui" <rui.zhang@intel.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 5, 2020 at 8:24 PM William Breathitt Gray
<vilhelm.gray@gmail.com> wrote:
>
> On Tue, May 05, 2020 at 04:51:56PM +0300, Andy Shevchenko wrote:
> > On Mon, May 4, 2020 at 5:41 PM William Breathitt Gray
> > <vilhelm.gray@gmail.com> wrote:
> > > On Mon, May 04, 2020 at 02:41:09PM +0300, Andy Shevchenko wrote:
> > > > On Sun, May 03, 2020 at 04:38:36AM +0530, Syed Nayyar Waris wrote:
> >
> > ...
> >
> > > > Looking into the last patches where we have examples I still do not see a
> > > > benefit of variadic clump sizes. power of 2 sizes would make sense (and be
> > > > optimized accordingly (64-bit, 32-bit).
> > > >
> > > > --
> > > > With Best Regards,
> > > > Andy Shevchenko
> > >
> > > There is of course benefit in defining for_each_set_clump with clump
> > > sizes of powers of 2 (we can optimize for 32 and 64 bit sizes and avoid
> > > boundary checks that we know will not occur), but at the very least the
> > > variable size bitmap_set_value and bitmap_get_value provide significant
> > > benefit for the readability of the gpio-xilinx code:
> > >
> > >         bitmap_set_value(old, state[0], 0, width[0]);
> > >         bitmap_set_value(old, state[1], width[0], width[1]);
> > >         ...
> > >         state[0] = bitmap_get_value(new, 0, width[0]);
> > >         state[1] = bitmap_get_value(new, width[0], width[1]);
> > >
> > > These lines are simple and clear to read: we know immediately what they
> > > do. But if we did not have bitmap_set_value/bitmap_get_value, we'd have
> > > to use several bitwise operations for each line; the obfuscation of the
> > > code would be an obvious hinderance here.
> >
> > Do I understand correctly that width[0] and width[1] may not be power
> > of two and it's actually the case?
> >
> > --
> > With Best Regards,
> > Andy Shevchenko
>
> I'm under the impression that width[0] and width[1] are arbitrarily
> chosen by the user and could be any integer. I have never used this
> hardware so I'm hoping one of the gpio-xilinx or GPIO subsystem
> maintainers in this thread will respond with some guidance.
>
> If the values of width[0] and width[1] are restricted to powers of 2,
> then I agree that there is no need for generic bitmap_set_value and
> bitmap_get_value functions and we can instead use more optimized power
> of 2 versions.
>
> William Breathitt Gray


Regarding the question that whether width[0] and width[1] can have any
value or they are restricted to power-of-2.

Referring to the document (This xilinx GPIO IP was mentioned in the
gpio-xilinx.c file):
https://www.xilinx.com/support/documentation/ip_documentation/axi_gpio/v2_0/pg144-axi-gpio.pdf

On page 8, we can see that the GPIO widths for the 2 channels can have
values different from power-of-2.For example: 5, 15 etc.

So, I think we should keep the 'for_each_set_clump',
'bitmap_get_value' and 'bitmap_set_value' as completely generic.

I am proceeding further for my next patchset submission keeping above
findings in mind. If you guys think something else or would like to
add something, let me know.

Regards
Syed Nayyar Waris

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
