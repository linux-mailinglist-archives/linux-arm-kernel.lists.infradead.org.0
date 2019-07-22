Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AE76FA4D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 09:24:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RVDNBvL3kcLTENQCyTgJBhQ6SvhBTgjaP3scPM8+EAM=; b=axYKBkPuIz6a91
	0BWi7lRRKcI5i8gN6M7zHWDMaravdrz3xO2t10cn86ZBGSdtzjZZP5UA6r1snqP2TMt7PFUnDs8NV
	A9NSBf2bjujyuxY4qH4o7lt4aTE2StGx9wFZZThtwqpzFP7Bonk0wXMeiOesFpUrPtNVVWVk/SiEM
	TQ24AwT5w6Yl+olF8WOZigICCPAPLtjAHfFOx+xVFRLZKu6tAEKuSMEIADe7PYgo1qDT6SVb61R7R
	X8odE0e0aBxnL6jlZSVgiy2mHoV9SFasdIp9P/zVmhAyWfDIMHdPou9166MB+RdXtOC9xOV5fz6Av
	Ea+9AfdvQM4TE8GI+w1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpSgk-0008FM-52; Mon, 22 Jul 2019 07:24:50 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpSgT-0008Em-Dn
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 07:24:35 +0000
Received: by mail-qk1-f196.google.com with SMTP id g18so27865577qkl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 00:24:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a+4pxoZrWgO5E8eTqf7t3xt/WeKLRxeau7aUPE4BCe4=;
 b=iwvpx0JvZiOzwrGAezhmolmLwAvQLjCf7N4fils3KFilU14NwxB5W/+0nKB5rgF3rV
 gnrR4Io2fpQHyB8ila1O3q8W8J/RnqXnOgHpKD1fRCU6KChcHkQNADxYFYG4SLfhPgGN
 eHSWhVk3VbK49xv4ZagcZmhj+hdYXXGRweAeLivDd30kJY8mzK7ClFgjp9HZ2I3bomF5
 4atDXLMFCJJQTpZMkr9ZOVw/Fq9T2gwcbujlVm2SEABV/vSdC2+s++QRfJc6eDU5sSyx
 5luwja0cFtOf5CZlsRMXE5GHgLQydvj+0HDlEWuLzYUyFKe7cn5T6YK9menq5JLABP8Y
 ZrnA==
X-Gm-Message-State: APjAAAXczt4LJy4hbEWOmzU4rG8Re55eAZLJcv5N1YhZ+q8am1Ol7IiZ
 3Ea1QWHZaABoI9RCIJIE1slr75ddp61Tk+4Q6q0=
X-Google-Smtp-Source: APXvYqxria+TrhASVX7JnFTBLLrsJIrFZPKswd2aHs4vuFuWi4KkslOspEiVk06cPQF313P9HDkUKcmYFrO0uZfczMk=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr11642591qki.352.1563780272040; 
 Mon, 22 Jul 2019 00:24:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAK7LNASyzmYjjBkFxRc06rqf36-en-bvJvrKcg6iiRfjoPCxhQ@mail.gmail.com>
 <CAK8P3a2AeUpmNfFLJSvHT=AJ0kFRT2B=TWDm0HsTwoHt2jQ0gQ@mail.gmail.com>
 <CAK7LNATPbCjwzVnAigsQ8tQRXjC31uxgPg3jgi7pwp+N1RPgWw@mail.gmail.com>
 <CAK8P3a3cURmbGZc-6ESLjrF465VLnBroD4QENyfsSsCrNenRrA@mail.gmail.com>
 <CAK7LNARN=iNmresDJ2=J1wOb2QYoZ7yw4O0Q9sYVPo0jRKDf=w@mail.gmail.com>
 <CAK8P3a133ekPqkLWfC2ee0mT3iLbFzSjJ9FDokSyaX+hMVigKA@mail.gmail.com>
 <21af683a-a188-7aa9-9c82-98c02b8717f8@metux.net>
In-Reply-To: <21af683a-a188-7aa9-9c82-98c02b8717f8@metux.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 22 Jul 2019 09:24:15 +0200
Message-ID: <CAK8P3a35jUoK0zSXoJ9HDxSpvuUCRFos97tnjQWc9ERxwZ6y+Q@mail.gmail.com>
Subject: Re: [Question] orphan platform data header
To: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_002433_463287_532BA412 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: DTML <devicetree@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Ben Dooks <ben.dooks@codethink.co.uk>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 8:46 AM Enrico Weigelt, metux IT consult
<lkml@metux.net> wrote:
> On 21.07.19 16:15, Arnd Bergmann wrote:
>
> > That is different: the hardware attaches to a serial port and may well
> > be usable, and the user space side just contains a copy of the header,
> > see https://github.com/nwdigitalradio/ax25-tools/tree/master/yamdrv
>
> I believe that such header copies in userland applications are
> conceptionally wrong. Whenever something changes, both sides need
> to be kept in sync.
>
> Maybe we should talk to the hamradio folks to get this cleaned up.
> IMHO, this header should go to uapi.

Having copies of driver specific uapi headers is rather common,
and you won't have much success trying to get everyone to change
that.

The reasons why those applications do it are:

- The kernel already gives ABI guarantees so anything built with an
   old header file is expected to keep working indefinitely.
- Using a new header file won't help unless the application also
   knows about the added interfaces
- If an application uses more recent additions to the kernel headers,
  it either has to have a matching version of that header, or use a long
  series of #ifdef checks to deal with arbitrary versions.

> > It seems more useful to keep looking for drivers with a platform_data
> > header file that is no longer included by any platform for candidates
> > that may be obsolete.
>
> Some folks see platform_data old legacy that should be removed, but I
> don't aggree. For example w/ apu2 board driver (and corresponding
> amd-fch-gpio driver) I even had to introduce a pdata struct, so the
> board driver could configure the gpio driver.

The case that we are interested in is drivers that previously used
platform data in legacy board files that have since been replaced
with dtb based boots.

> Certainly, I would have
> preferred doing everything via DT, but that's not available on x86/acpi
> targets (if anybody knows a way to inject a DT snippet just for one
> driver in such a scenario, please let me know).

It's been done before, but usually with overlays that don't necessarily
make it any better than platform data. If you have a set of drivers where
one of them creates a platform device for the other driver, then platform
data is usually the easiest way, and I'm not aware of any move to
get rid of that.

As an alternative, you can use the generalized property support
from include/linux/property.h that works on top of DT, ACPI or
plain platform devices.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
