Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5BB675F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 22:32:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gG6D6xl/9tjdU1Dip6UTg4bgXBunv3I/+5TziQj3ORg=; b=AbLIW2a7XAMQCr
	GdpvILUBn5SUIHwuyF4GuNW8fe9TcxvAiwifip7HqVOW4S8VlT62NnkB6slh1Vyuok0eQ2mrcDKHG
	kWXL4y/rBCKxRFIo6hwJepariZ8xNaNzjlxoo2/GgoBgtGWJ1Ly5YCeFmY1UoRbQcwQwbDK6yh00F
	2/H+GorMBECmlnsGKM9b8rVUHKXu2Lfr0N75gXQjseJXzHlxP6O+1RdDkuKE+JpGcKqOKFW2GurCV
	rqUwFQDriVdcEazKia9Bc2zIVnCJGma/aFXRyz94vvdlqlwwTdfKCKaGfNlk4dhO5GUx/uesTpAuY
	MvkZ6KI95lBWwL4NH3JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm2Db-0002z5-6f; Fri, 12 Jul 2019 20:32:35 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm2DQ-0002y5-Mc
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 20:32:26 +0000
Received: by mail-qt1-f196.google.com with SMTP id d17so9466631qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 13:32:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AXfiBSTFyabmGjKMPsBABh99TWn/O7kY2xAYWykOPE8=;
 b=f+E/Cz5PZo6DLz82PpsmCsW0ybvpsefTBkMpCGZSK/wqrWkI5jlwe0Y8XN2KE4zZJu
 wNglqdVLBBHOmsaIvdEMR2wkmT+fnWaV5J0VFiY8SMAl2MfP79s/2k+WrncfxvJvUMFb
 HIFIWL2RKq694wnJOm1NLUbXFvLuvUkrpQO/YGBzAR8udp/+LpnKvhmNwMq6WlBA8Spd
 w8zxloqdOnKsIf6QIrDjw1JkX+jJIf+DY+xUmiUw2D08hDBTSYGbaL+TkJMukCblDL/p
 FQYGQ6MJSkdoVZGyeFSdsCvjbbML3MGK3GyxuNRjI1mxCgLCSSt6jLROJ0u9d9cfwtj7
 UUxg==
X-Gm-Message-State: APjAAAV1c4RlRdD/HJ6seiTJPnq76pBxtUEZfRKV36u8DOtuC9GpAH6K
 ojGcA/sY5LVlOixqhogmLT3DnttQPDLMXG2tq64=
X-Google-Smtp-Source: APXvYqwP7oaInE5SLjdLNdQozkvQJxIDjpYPZdC9jFiJOoGRL1tCCAtlmFUHahShBB5MOnXi5zlDIKX7BGRcTHffAm0=
X-Received: by 2002:aed:3e7c:: with SMTP id m57mr8086459qtf.204.1562963541466; 
 Fri, 12 Jul 2019 13:32:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190712091357.744515-1-arnd@arndb.de>
 <20190712173912.GA127917@archlinux-threadripper>
 <CAKwvOd=-OE=uHCurw7VsHPUVHz9XWW7U_8vJEerGaYPii+f8RQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=-OE=uHCurw7VsHPUVHz9XWW7U_8vJEerGaYPii+f8RQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 12 Jul 2019 22:32:05 +0200
Message-ID: <CAK8P3a25CdaJiaPNrYf3rZ85vptZvkN3Z88t=MX6NeOnTs_V3A@mail.gmail.com>
Subject: Re: [PATCH] dma: ste_dma40: fix unneeded variable warning
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_133224_745874_C956B11D 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 9:17 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Fri, Jul 12, 2019 at 10:39 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Fri, Jul 12, 2019 at 11:13:30AM +0200, Arnd Bergmann wrote:
> > > clang-9 points out that there are two variables that depending on the
> > > configuration may only be used in an ARRAY_SIZE() expression but not
> > > referenced:
> > >
> > > drivers/dma/ste_dma40.c:145:12: error: variable 'd40_backup_regs' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
> > > static u32 d40_backup_regs[] = {
> > >            ^
> > > drivers/dma/ste_dma40.c:214:12: error: variable 'd40_backup_regs_chan' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
> > > static u32 d40_backup_regs_chan[] = {
> > >
> > > Mark these __maybe_unused to shut up the warning.
> > >
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Thanks for the patch!
>
> >
> > Might be worth mentioning that this warning will only appear when
> > CONFIG_PM is unset (they are both used in d40_save_restore_registers).
>
> So would moving the definition into a
> #ifdef CONFIG_PM
> #endif
> block be better than __maybe_unused?
>

That would not work here, since the driver still uses ARRAY_SIZE() on
the variable.
Even more #ifdefs could solve that as well, but I don't want to spend too much
effort on this driver since it has almost no users.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
