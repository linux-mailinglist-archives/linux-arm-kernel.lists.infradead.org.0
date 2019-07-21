Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E93E76F3CE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 21 Jul 2019 16:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lF++88jNiDFGxxE4MTQfKXRFmSow0JmKyNhvlwPofMQ=; b=YqBgSzvBsf7hZ6
	BYwW5sO1YwfLPyejeBWmRTJRfLsxGt58Ia4nbU6rGEjpXoGmP2eD7TajPDKG4r8ZMunYQ9++MT77P
	rXIWd67+svuXQxUhQOY6sOpgYcV95zVWcQgpzNgf/LjCP2jboX7RF20JWMaLQTmu5t5DXnceop2ms
	PIN+NLWRuC0ICrkloBQ0/1Iyh5OgdHiQaZWuRTfm7FYwurQPZQYC1s7kBcJ55aqFbLJmy1ArG0lfA
	/aGbBLa4gcEC9nE2ruuJ5GbhnkaBj7AkueQf7Jo2N5JLKASTr1g4OLgikrDIxxV1Pskz8BhTOAVMM
	y3vL4IbHXxNk0oPr/K1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpDJI-0005o4-4C; Sun, 21 Jul 2019 14:59:36 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpDJ5-0005n3-P7
 for linux-arm-kernel@lists.infradead.org; Sun, 21 Jul 2019 14:59:25 +0000
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
 [209.85.222.45]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id x6LEx8Jj014412
 for <linux-arm-kernel@lists.infradead.org>; Sun, 21 Jul 2019 23:59:09 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x6LEx8Jj014412
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1563721149;
 bh=SZy+uLkon38CCDje8/zm1tdJCwUC5JlMFjWrOj6eS5E=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qH23uZ9jYoKZFGSa4P+aIP/0pKT4Oc/bJ3c6w7GaRDLnPIyqK8dpvnySzrhcyYSpt
 7WrsQa/gKDQdckPN6IRx83j2Qnpm7fC9QsdEmNcIbNKXQutqHTWv56c+JVKkeHAV5A
 re4O/J+4puCJbnYeo9JHGNsyII4Pim3aNo2+4M+x6X7Z6xMcNx1o8xz3xCjGaw3KTd
 qx6TLL3BUk+ag20qdZUCUbC0m5vQQ8Md2v9vJ2/VYwx9+dTvM6PH+ld/gXjwEjxOBW
 pe4TTQ/Yncixe6peHxsMxKL8q++3++lfzfsglYB8ZXMGeKra6pKVVm3c1ug6Rvo9fy
 3jTApb+Ltna+g==
X-Nifty-SrcIP: [209.85.222.45]
Received: by mail-ua1-f45.google.com with SMTP id z13so14372603uaa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 21 Jul 2019 07:59:09 -0700 (PDT)
X-Gm-Message-State: APjAAAX/YEdo/DiwuQ2uOl4uOBKdsj5rm5d7yDHTTHOxJyelmxJNQ1rn
 eT6NiRKaEZcwC+CD3mwNkcNFMILkucDacERlcSM=
X-Google-Smtp-Source: APXvYqyAwiV3KBWoWjJD3+zk2rUIgIMU+WIFrZMBsQ9GCkP5Uzkh9pM+r0dx3Z0Jr8l4K6v3qcrgBR3JjPF41u+Am6A=
X-Received: by 2002:a9f:2265:: with SMTP id 92mr25580331uad.121.1563721148042; 
 Sun, 21 Jul 2019 07:59:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAK7LNASyzmYjjBkFxRc06rqf36-en-bvJvrKcg6iiRfjoPCxhQ@mail.gmail.com>
 <CAK8P3a2AeUpmNfFLJSvHT=AJ0kFRT2B=TWDm0HsTwoHt2jQ0gQ@mail.gmail.com>
 <CAK7LNATPbCjwzVnAigsQ8tQRXjC31uxgPg3jgi7pwp+N1RPgWw@mail.gmail.com>
 <CAK8P3a3cURmbGZc-6ESLjrF465VLnBroD4QENyfsSsCrNenRrA@mail.gmail.com>
 <CAK7LNARN=iNmresDJ2=J1wOb2QYoZ7yw4O0Q9sYVPo0jRKDf=w@mail.gmail.com>
 <CAK8P3a133ekPqkLWfC2ee0mT3iLbFzSjJ9FDokSyaX+hMVigKA@mail.gmail.com>
In-Reply-To: <CAK8P3a133ekPqkLWfC2ee0mT3iLbFzSjJ9FDokSyaX+hMVigKA@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sun, 21 Jul 2019 23:58:32 +0900
X-Gmail-Original-Message-ID: <CAK7LNATAhhmeKtQYJYEje3B26zy3EtdqegRL7YmbsDOJ=0HcAg@mail.gmail.com>
Message-ID: <CAK7LNATAhhmeKtQYJYEje3B26zy3EtdqegRL7YmbsDOJ=0HcAg@mail.gmail.com>
Subject: Re: [Question] orphan platform data header
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_075924_050584_9FC60D92 
X-CRM114-Status: GOOD (  22.57  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DTML <devicetree@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ben Dooks <ben.dooks@codethink.co.uk>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 21, 2019 at 11:15 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Sun, Jul 21, 2019 at 2:13 PM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
> > On Sun, Jul 21, 2019 at 6:10 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > On Sun, Jul 21, 2019 at 5:45 AM Masahiro Yamada
> > > <yamada.masahiro@socionext.com> wrote:
> > > > On Sat, Jul 20, 2019 at 10:55 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > > On Sat, Jul 20, 2019 at 5:26 AM Masahiro Yamada <yamada.masahiro@socionext.com> wrote:
> >
> >
> > Another example that I have no idea
> > how it works:
> >
> > drivers/net/hamradio/yam.c
> >
> > yam_ioctl() reads data from user-space,
> > but the data structures for ioctl are
> > defined in include/linux/yam.h
>
> That is different: the hardware attaches to a serial port and may well
> be usable, and the user space side just contains a copy of the header,
> see https://github.com/nwdigitalradio/ax25-tools/tree/master/yamdrv

Oh, I did not know that
user-space had a copy of that.


> > If we want to fix this, we could move it
> > to include/uapi/linux/yam.h
>
> We could do that, or just leave it alone, as nobody would
> tell the difference.

When we are changing structures in uapi,
it is very likely a red alert.
On the other hand, we can change code outside of uapi
more safely.
One benefit of uapi is we can catch the compatibility level
from the directory path.


>
> > But, if nobody has reported any problem about this,
> > it might be a good proof that nobody is using this driver.
> >
> > Maybe, can we simply drop odd drivers??
>
> Both the kernel driver and the user space side have a maintainer, and
> I see no indication that it is actually broken. The driver is clearly
> a relic from old times (earlier than 2.4) and we would not merge
> this driver today.
>
> It seems more useful to keep looking for drivers with a platform_data
> header file that is no longer included by any platform for candidates
> that may be obsolete.

OK.

Thanks.




-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
