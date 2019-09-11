Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D30AF891
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:11:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AvMdLxRPDfrewoj0zXS2Born2hz1DRiuRSXteYtAJzc=; b=stQe9BpX7OAinr
	Vc+lIHLwo+xmrmbRRB/mvZKYGgyK5rZVu6GZOROa2qjElD+nMFisLS4bxrPmdImdEWkoR9atBKNyo
	XunkfyNrxkAJj92PwEgzBnkpi/5ZvZgWRCMpmg3XuTpeIHIcauKfeSIHzIgW08mBVw6DSKbff3qE7
	x/V2J4xlE6YoeGkMhEG9jRcafZ5abxp5DPx11oah4l20BErhmceKVerNLwIO/vpobG9Dzk2H/q9WL
	Q1jJVjeV7GoCy8g4fLL56BqPHJYrRHred7GpPlvmxxHwuHLaC8s5TaC8JBOAB4gEjZkVIM6cTxWJa
	n7DIrSI23UpmReSnA6UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7yf0-0006S3-Pc; Wed, 11 Sep 2019 09:11:34 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7yee-0006RY-VS
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 09:11:15 +0000
Received: from localhost (unknown [148.69.85.38])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 9046124001F;
 Wed, 11 Sep 2019 09:11:05 +0000 (UTC)
Date: Wed, 11 Sep 2019 11:11:01 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] pinctrl: at91-pio4: implement .get_multiple and
 .set_multiple
Message-ID: <20190911091101.GC21254@piout.net>
References: <20190905141304.22005-1-alexandre.belloni@bootlin.com>
 <CACRpkdbVC6DLHWftpL1wfkx_kWyfE=LpCQWZw=cv=RMVxDBm_g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdbVC6DLHWftpL1wfkx_kWyfE=LpCQWZw=cv=RMVxDBm_g@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_021113_166499_38A23F30 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On 11/09/2019 01:27:10+0100, Linus Walleij wrote:
> On Thu, Sep 5, 2019 at 3:13 PM Alexandre Belloni
> <alexandre.belloni@bootlin.com> wrote:
> >
> > Implement .get_multiple and .set_multiple to allow reading or setting
> > multiple pins simultaneously. Pins in the same bank will all be switched at
> > the same time, improving synchronization and performances.
> >
> > Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> 
> Good initiative!
> 
> > +       for (bank = 0; bank < atmel_pioctrl->nbanks; bank++) {> +               unsigned int word = bank;
> > +               unsigned int offset = 0;
> > +               unsigned int reg;
> > +
> > +#if ATMEL_PIO_NPINS_PER_BANK != BITS_PER_LONG
> 
> Should it not be > rather than != ?
> 

Realistically, the only case that could happen would be
ATMEL_PIO_NPINS_PER_BANK == 32 and BITS_PER_LONG ==64. so I would go for
ATMEL_PIO_NPINS_PER_BANK < BITS_PER_LONG

> > +               word = BIT_WORD(bank * ATMEL_PIO_NPINS_PER_BANK);
> > +               offset = bank * ATMEL_PIO_NPINS_PER_BANK % BITS_PER_LONG;
> > +#endif
> 
> This doesn't look good for multiplatform kernels.
> 

I don't think we have multiplatform kernels that run both in 32 and 64
bits. I don't believe ATMEL_PIO_NPINS_PER_BANK will ever change, it has
been 32 on all the atmel SoCs since 2001.

> We need to get rid of any compiletime constants like this.
> 
> Not your fault I suppose it is already there, but this really need
> to be fixed. Any ideas?
> 

I can go for a variable instead of a constant but the fact is that there
is currently no 64bit SoC with that IP. I added the compile time check
just in case a 64 bit SoC appears with that IP one day.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
