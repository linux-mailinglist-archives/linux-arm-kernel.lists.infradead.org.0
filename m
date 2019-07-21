Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A8E6F25F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 21 Jul 2019 11:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8SuTcsmXz6lpyBJqM0B8Q6HSHk4wEWeHF+TSpaWXRwc=; b=JfN49oaDvNbJMs
	OL42Tj6OXpuY5MQXkUhDEqD/4wykKTJL+GI1953VVEiSFxx04YTOqIbOZYQVn5RB0cutS4XURg0Kv
	yft1pgDJtY+VYTEZpySZvtC4o2R1QLmZeP/rrWFai0kR3rHgcSLpBR9qf37kwvoLjcYcFN0hOCm/i
	p16gOY1eazpoNF1RJGekxJ4SJqaU5ggZ5CqtuB5DxOWrwGUvrtJB4PuCrGoUeWux9yY7Eosoxj7kF
	of+cay/eqRSZpc5Bbq1y1MORgkWLRKL1ui4ESs/GMVDQ66gyItWLGOPxPcgYG2Zxi++izVmIrnCKt
	0TwEO/MLsRYTYx/tBKYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hp7rZ-00013p-8G; Sun, 21 Jul 2019 09:10:37 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hp7rC-00012n-Op
 for linux-arm-kernel@lists.infradead.org; Sun, 21 Jul 2019 09:10:17 +0000
Received: by mail-qk1-f196.google.com with SMTP id r21so26514759qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 21 Jul 2019 02:10:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PbP2X6NIQ0TsX6f4YAaWzUSD+G4Atkgs9bO3GMLpkFo=;
 b=j43MmzH/4Pi0YjMmLQuRfHDHoY/EiOf8GJH71/l557Oo7T3RIMb97GeZCHap2MGP7k
 1T/clDt69BfXjQURdpZZgdRxFAca4pSALx9MTZrTMvfMu2UOyRiCXk4gVcOYo5f9nZON
 XABm4QBhny295dqWmGxDIo/II6joNslXKyyi+p7DmIMLNX9rTqVeSg0S4p/c19AgNepY
 bURoIPf28kE7ps0B4ADefwM5jj6ViKQF4u7dnfBDbGqtYkqAZkjidaz/bfz/n5HHwONi
 IBiM7fYaDhchOTJqz9Y0menAIkhA3Qknr+WfdOXf4wxTfhSPtReZ/ugN3DM5BUzk+3wy
 Yo5g==
X-Gm-Message-State: APjAAAUqSW8C1q4Eqre2LW36hoFzVKZELXjczK0JY1fmNPwCKyArxHxy
 zk1S9jMosXwEAqpsxZ1SGfpNsdWeZMNS5R5Tsmc=
X-Google-Smtp-Source: APXvYqxjHmilE5N9LuNpTfJRWTexnfcMwdOlI/rw0tJewIMNf4YcI56JyWv6tb+DANtn3aJAz06JD3ezoAiIRcMhEcU=
X-Received: by 2002:a37:4ac3:: with SMTP id
 x186mr40996804qka.138.1563700211845; 
 Sun, 21 Jul 2019 02:10:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAK7LNASyzmYjjBkFxRc06rqf36-en-bvJvrKcg6iiRfjoPCxhQ@mail.gmail.com>
 <CAK8P3a2AeUpmNfFLJSvHT=AJ0kFRT2B=TWDm0HsTwoHt2jQ0gQ@mail.gmail.com>
 <CAK7LNATPbCjwzVnAigsQ8tQRXjC31uxgPg3jgi7pwp+N1RPgWw@mail.gmail.com>
In-Reply-To: <CAK7LNATPbCjwzVnAigsQ8tQRXjC31uxgPg3jgi7pwp+N1RPgWw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sun, 21 Jul 2019 11:09:55 +0200
Message-ID: <CAK8P3a3cURmbGZc-6ESLjrF465VLnBroD4QENyfsSsCrNenRrA@mail.gmail.com>
Subject: Re: [Question] orphan platform data header
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Ben Dooks <ben.dooks@codethink.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_021014_999638_1A4F9F79 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 21, 2019 at 5:45 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
> On Sat, Jul 20, 2019 at 10:55 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > On Sat, Jul 20, 2019 at 5:26 AM Masahiro Yamada <yamada.masahiro@socionext.com> wrote:
> > > So, what shall we do?
> > >
> > > Drop the board-file support? Or, keep it
> > > in case somebody is still using their board-files
> > > in downstream?
>>
> > For this file, all boards got converted to DT, and the old setup
> > code removed in commit ebc278f15759 ("ARM: mvebu: remove static
> > LED setup for netxbig boards"), four years ago, so it's a fairly
> > easy decision to make it DT only.
>
> I see another case, which is difficult
> to make a decision.
>
> For example, drivers/spi/spi-tle62x0.c
>
> This driver supports only board-file, but the board-file
> is not found in upstream.
>
> Unless I am terribly missing something,
> there is no one who passes tle62x0_pdata
> to this driver.
>
> $ git grep tle62x0_pdata
> drivers/spi/spi-tle62x0.c:      struct tle62x0_pdata *pdata;
> include/linux/spi/tle62x0.h:struct tle62x0_pdata {
>
> But, removing board-file support
> makes this driver completely useless...

Adding Ben Dooks to Cc.

I suspect this driver is completely obsolete and should be removed.

For some reason, it's not an SPI controller driver like all the other
files in that directory, but implements low-level access to the state
of a particular SPI device.

However, there should not really be a low-level driver for it that
just exports the pins to user space. It should either be a gpiolib
driver to let other drivers talk to the pins, or a high-level driver that
exposes the intended functionality (watchdog, regulator, ...)
to those respective subsystems.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
