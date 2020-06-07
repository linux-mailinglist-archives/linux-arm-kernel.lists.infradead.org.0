Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A793E1F0F33
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 21:27:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtpZ3ozDYCdSXfoEGuDd4yfsJo55QCFPQc458V+iXAg=; b=IeczLVNnC8Spn+
	3ucVQmrX8o60QKpscxA2tKcCM0VnDYdYOJLNhKxHJxFekAgHqPMujXbbzzUoOjcpnwizS+iWlW8CN
	mmxq2T7bPIB4JGbYZ2e+KkRTb1B4VRUqKwIAew1+XIKq4UTJTobltSqmFsv6HLxZle8TXrRBL/mDp
	tO3vW9aj2p+ajmrbuOQ0CfXfWScysjlNObaQq2PifX8H+4ZNQD12ncItZSUM3I7XdOLJnNlhOd9tg
	h5Xfo/Mjsp1kx3kQXg/wzRaQcUq2c63rJ4gqTv/pmZcpYGs0qUZY2PC6k1KfIdIrt1rFu7X3ykfW0
	mFFDJDMYBGTXIJ7xVRAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji0wa-0001ld-2P; Sun, 07 Jun 2020 19:26:56 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji0wU-0001kx-AD
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 19:26:51 +0000
Received: from mail-qk1-f181.google.com ([209.85.222.181]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mwwhx-1il4Qa2vGd-00yNyS for <linux-arm-kernel@lists.infradead.org>; Sun,
 07 Jun 2020 21:26:43 +0200
Received: by mail-qk1-f181.google.com with SMTP id b27so15271287qka.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jun 2020 12:26:43 -0700 (PDT)
X-Gm-Message-State: AOAM530rgC/al8YLwnGy5KvkCu47J1K+s37V0AIOuYRn25rXn40QcPJq
 55+uno4vXhBwLTucDYGBG/rXkMGJOt0wWZBGOs4=
X-Google-Smtp-Source: ABdhPJxoTJcGMMjDIPqtPgt9iAWNs6NJAJ0wdQasDHvaN7UjM0mCN9XrBavVzD8OMt18kVgrRaOq45itrFbsO0LZMJo=
X-Received: by 2002:a37:554:: with SMTP id 81mr19496641qkf.394.1591558002353; 
 Sun, 07 Jun 2020 12:26:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200511142113.GA31707@afzalpc>
 <CAK8P3a0=+aBJLTvHOskTv=tba_s5b5MzWrYG8mxH3iLNy4hfBw@mail.gmail.com>
 <20200512104758.GA12980@afzalpc>
 <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
 <20200514111755.GA4997@afzalpc>
 <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
 <20200514133545.GA5020@afzalpc>
 <CAK8P3a1PVwkAi8ycUAB-7EMk4nQ_qOu0rC5vJAQk_q9j5xvOJw@mail.gmail.com>
 <20200516060624.GA6371@afzalpc>
 <CAK8P3a01FYoWY9sZKU1q=UQ3ut4srwXXUeGRzW6APi+GpoKo1w@mail.gmail.com>
 <20200607125932.GA4576@afzalpc>
In-Reply-To: <20200607125932.GA4576@afzalpc>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sun, 7 Jun 2020 21:26:26 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2=o6RkONUoHTaR-2jpXg-wa-YnCYi0a4gAknYmvu8X7Q@mail.gmail.com>
Message-ID: <CAK8P3a2=o6RkONUoHTaR-2jpXg-wa-YnCYi0a4gAknYmvu8X7Q@mail.gmail.com>
Subject: Re: ARM: vmsplit 4g/4g
To: afzal mohammed <afzal.mohd.ma@gmail.com>
X-Provags-ID: V03:K1:tALWPCht8lyE3VXkHWVhO76pP5YyTbc1gI1vo9OW2SSGtRfrY+T
 ayICQedpSilmMpjING5RqirDkGWh8tifmKKEOMW0MxIyVngfW9v/YttlW4snYQZJDsbBpoY
 4ALNPvqGz8V3ZrIDpaM+AKMCiCcpsOxAk+EPNKWnXsY4npvqA2Tuq57B4heRs10/A8Pm/d7
 md2xJSJJ/v4n2TY/hAnLw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+4RM7AEtrSY=:fhjD7sxFsm7jNDTAMHHka3
 K7zkfM9H+0b+fSpY/HjwHJuS+GJlnNLDF/KjAObBKbU+DP3XV6sobwD0V9LNd6bh3J6v50UlK
 C+6KC9SAqoTgilj/Ztc26s14yNSWGWybL1/rlSLopbKcQB4Z7/gC+pAbJ2CJvo2j6woi/mH+N
 IyKKZXIAUIx5YjHav5gx5NfGAgw824NzS10YPukiKIYtd2Jt+yG500wirOj/Yorfsaudy8H8P
 +m4zGVVp6E2t3BY7BhfkGVzRic9SOOgei0xJI5V6anfBx5pZK3AIl8PTYYcDwoK47yHLTZ+5n
 DPWOosT2jdqIEmiqoDl4psWQyztKJutEPOK0Hd7pubbWS0T2VIWovmZPaZ/akuDUlODSmggWy
 EZH+BeUpEc3FoFLHqA1MnXs4ignJ42NipMqpmrD5ZWBgOrkPmIYQIc5YHepeJtdnolPDFCmD/
 tYKumsm9t64OosCJJJN6WOUdSpcmdq6yoZ0e0MANl6ajBLt5m4VQI5cFQvm4T5uzRXT/KT9xV
 Tii7G1xd25zoM+upoimfISZ47C0VHZ/npBN0FDiKYmZTxzL3otwyz8P9/RhhACs++5XfHQu6e
 PDg1l+twmeK50P4DfzMxIAdXU4MgKyKPY01r7SZBMMRT3oAFgrX548e2V568GSw0ux4yxQxaB
 U5nGabMFunWM07yGEgQAlcn3ggZyaY0bmm2qW/1IL0H1ZJIisJ1VMCBi0FcpaE1DNHfKOKuer
 94UfIsDZP2RYdejIabepcNgMMHFFTMqWJfyBOzvPhidJookKf+hmNrIPB+Hf1WqMS54u7bRiH
 YQM95oXTcacsdH86qbRi0FXG/QPVm1v2ITj0few0Z+yz6N7BjA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_122650_645147_6915B48C 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
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
Cc: Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 7, 2020 at 2:59 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
> On Sat, May 16, 2020 at 09:35:57AM +0200, Arnd Bergmann wrote:
> > On Sat, May 16, 2020 at 8:06 AM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
>
> > > Okay, so the conclusion i take is,
> > > 1. VMSPLIT 4G/4G have to live alongside highmem
> > > 2. For user space copy, do pinning followed by kmap
>
> > Right, though kmap_atomic() should be sufficient here
> > because it is always a short-lived mapping.
>
> get_user_pages_fast() followed by kmap_atomic() & then memcpy() seems
> to work in principle for user copy.

Nice!

I think you have to use get_user_pages() though instead of
get_user_pages_fast(),
in order to be able to check the permission bits to prevent doing a
copy_to_user()
into read-only mappings.

> Verified in a crude way by pointing TTBR0 to a location that has user
> pgd's cleared upon entry to copy_to_user() & restoring TTBR0 to
> earlier value after user copying was done and ensuring boot.

Do you want me to review the uaccess patch to look for any missing
corner cases, or do you want to do the whole set of user access helpers
first?

> Meanwhile more testing w/ kernel static mapping in vmalloc space
> revealed a major issue, w/ LPAE it was not booting. There were issues
> related to pmd handling, w/ !LPAE those issues were not present as pmd
> is in effect equivalent to pgd. The issues has been fixed, though now
> LPAE boots, but feel a kind of fragile, will probably have to revisit
> it.

Ok.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
