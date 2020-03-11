Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABA01824AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 23:21:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uGCdjTh/dk5wkoRH0vzlkxNQB0hvj/5Q0EcNw3oyNGA=; b=JhYVTZDz4iFOxL
	aKBG9kc4zEFQo5qiKqXaOxFZbLvQQPp2Ax3LUTRIMYyUPnxb4SZMggon0OhUowkJ1uehbTdT2nrf0
	7bul38v71H2byKpmw3ueCKc8eFelzBY0IRJlwgFCAxVCj9hYvmEPUZ27DI6U3boIsPLIC8VtrJ6hh
	zpIl6UaXvtvSbbM6gV6rBcPrPshWNxroFBAg67b1NSuLUVSGEj1EoKGjI20jxZ6s25fFGSzmIl/Ie
	7QPFoOj4oQyBVyi8PFqfa03v1LqxuVPmmEgC/88TTUI0Yqbz1iIiihtzPtBg4/p8BzNbLIYdFpzrp
	KCDcizp3/qengwybccEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC9jG-0002V9-G0; Wed, 11 Mar 2020 22:21:30 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC9j7-0002UR-8e
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 22:21:22 +0000
Received: from mail-qk1-f182.google.com ([209.85.222.182]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MuDHR-1jSSDj3kHF-00uWs8 for <linux-arm-kernel@lists.infradead.org>; Wed,
 11 Mar 2020 23:21:19 +0100
Received: by mail-qk1-f182.google.com with SMTP id e11so3762282qkg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 15:21:18 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2ncPssues7OSpGXwgkhMV5SUbxAoZTC0/DH6vXqgIoKOFQqqER
 wbiNhm+kPA9vObJYqkEjwKbxi4H/QGVGU/dKxUs=
X-Google-Smtp-Source: ADFU+vtUX6596ckwbsQtKLPYKkjWdRNNv2OExbN7pWVykWRKgnRWddSMydtufZDaxYnGmzl5giJGitq9nSLOAiz/v+U=
X-Received: by 2002:a37:8707:: with SMTP id j7mr2513764qkd.394.1583965277788; 
 Wed, 11 Mar 2020 15:21:17 -0700 (PDT)
MIME-Version: 1.0
References: <671b05bc-7237-7422-3ece-f1a4a3652c92@oracle.com>
 <CAK8P3a13jGdjVW1TzvCKjRBg-Yscs_WB2K1kw9AzRfn3G9a=-Q@mail.gmail.com>
 <7c4c1459-60d5-24c8-6eb9-da299ead99ea@oracle.com>
 <20200306203439.peytghdqragjfhdx@kahuna>
 <CAK8P3a0Gyqu7kzO1JF=j9=jJ0T5ut=hbKepvke-2bppuPNKTuQ@mail.gmail.com>
 <20200309155945.GA4124965@arrakis.emea.arm.com>
 <20200309160919.GM25745@shell.armlinux.org.uk>
 <CAK8P3a2yyJLmkifpSabMwtUiAvumMPwLEzT5RpsBA=LYn=ZXUw@mail.gmail.com>
 <20200311142905.GI3216816@arrakis.emea.arm.com>
 <CAK8P3a2RC+sg2Tz4M8mkQ_d78FTFdES+YsucUzDFx=UK+L8Oww@mail.gmail.com>
 <20200311172631.GN3216816@arrakis.emea.arm.com>
In-Reply-To: <20200311172631.GN3216816@arrakis.emea.arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 11 Mar 2020 23:21:01 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0QTKsqoxE7HS7aNrASSHOfFJHfp3+KZNTVoQ12wHi3VQ@mail.gmail.com>
Message-ID: <CAK8P3a0QTKsqoxE7HS7aNrASSHOfFJHfp3+KZNTVoQ12wHi3VQ@mail.gmail.com>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
To: Catalin Marinas <catalin.marinas@arm.com>
X-Provags-ID: V03:K1:qKd8/YRt3ysap/A6UAIo8juxn3YF4vWmhlyQwULsOgJyKwVcVME
 yu3Hxi8gAHiN2neBd02Oe/QL5+m4nXnN4YPaV4saAezYNlNAdSuGsVSakcop7JNsoBbBCop
 EwPx6pX8swfk8kHLGl+i5vQJ2j6sA77zWUwtWCS3RUCSJDqIcWuuQYuAT+syx2KGWx7o+gE
 REUmjmo1UKL0qjCBszxrQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:W/QeN4t1laU=:JHPB5skF3/Ixl4gIqMMwGg
 HuUQDBCM2E8c7RwwNRo/iI3Zr9YFEsdL5qmEgVAB0G+2KXy4+uAXGZHgnbfT+slEOEqRAbWPv
 BJgLcokl5uw9bZAN6JpaWUIeLvYl9ti6jeK0PC1xe0KHtO8velFJxLm8csQNof84veakh1BVR
 +VkMDyHUTNkUDJ0quvI8Tg4lKlO9ycKNmZLC8j6OLiUxO6O41dHJBieNdMwWorQX6s7y89OS8
 aZ5bF7CMyeZgO65RQBLZg8h55i7gqnGalEc3Frirh1JB9fGtvwFfptkzMzBKsWeTakmAIDRtj
 yDQTY6CsNOH3eEe0pWIw6Uohs6N7naxg7ME9tul21E/7QWnOc6vLN/EitoG3TOmt8ei3QT1qY
 tS162KUg71tl0agB+9Txi/Wwy7+G/DvN4jfH69Hrv/Mh8zJjWLwSslrP/azZTTkjxH5vjvMgT
 oNs5/DwZAzvWHYGYQ55bDJkiBfgQvYApka1copGwehqJSKrMWv/QxVSxwb5iNKeX4grOcBlaB
 SSNZtWq8yNbs26VEWK1DSrxOfTu3kZxaqhC4kNN21NtDiDkc8mxlYQByY+DYm58761I2Ey9ea
 U9nbWc3djdfazw7TlQcExwzwqnA1WmVAb0y2BTafpr+KdE8i0s2IgluZ0/zXuPle8je4WeYiO
 9l4AAnq4ZIA+Aza4Cbf+8aHWc8XpbKtO8cy7sEzH54gIlTfBikO2cmJPHWVDDif8NpxkLZAPe
 PozS3wKSYuUbxgZOhGkpEvLF3ZC90S2/4ib+7/AcXf5asbg89+yZOghRPoGwlMJrKQqV34P/Z
 T2J1JW2fXm2LFDNwRvhtpf8v87i965TmLZgCr/dBxj7oBFQnbs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_152121_596861_EF744FA6 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Michal Hocko <mhocko@suse.com>,
 Johannes Weiner <hannes@cmpxchg.org>, Rik van Riel <riel@surriel.com>,
 Roman Gushchin <guro@fb.com>, Santosh Shilimkar <santosh.shilimkar@oracle.com>,
 Dave Chinner <david@fromorbit.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Linux-MM <linux-mm@kvack.org>,
 Yafang Shao <laoar.shao@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, kernel-team@fb.com,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 6:26 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> On Wed, Mar 11, 2020 at 05:59:53PM +0100, Arnd Bergmann wrote:
> > On Wed, Mar 11, 2020 at 3:29 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > Do you have an estimate of how long writing to TTBR0_64 takes on Cortex-A7
> > and A15, respectively?
>
> I don't have numbers but it's usually not cheap since you need an ISB to
> synchronise the context after TTBR0 update (basically flushing the
> pipeline).

Ok.

> > Another way might be to use a use a temporary buffer that is already
> > mapped, and add a memcpy() through L1-cache to reduce the number
> > of ttbr0 changes. The buffer would probably have to be on the stack,
> > which limits the size, but for large copies get_user_pages()+memcpy()
> > may end up being faster anyway.
>
> IIRC, the x86 attempt from Ingo some years ago was using
> get_user_pages() for uaccess. Depending on the size of the buffer, this
> may be faster than copying twice.

I guess the tradeoffs for that were rather different, as x86 back
then had no ASIDs, so changing the page tables required a full
TLB flush.

         Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
