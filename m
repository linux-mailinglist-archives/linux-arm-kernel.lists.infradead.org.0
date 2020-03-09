Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A13317E143
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 14:34:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fctBP6s2K7JLHtaCOATlNw8w72pcsmtmNyS/USqTuVM=; b=KfMmlEC1EfEEqI
	uC59wnKNb7NtwHuW6umYUVlRIGxFHixQvvQB9F5XptxmykqdicpR7XiDIWBAiC4+6FcNZng+Sw1vu
	Pj2xlo7QA1IfAoAK9G1y9BpqqqoPk2GBxhakknQthHpf072A++/anyMQfYltkr8ub4EMA7wYk/saq
	Q2eMIQlvBO1TRHiXwWZbYe1MAvlgoR+pkSsOYuyVsAOJ1zQMRKV9v82nJLnVJVKkZJhsoMJUKCEoh
	7b2tRTlPnR0rovXL/whDk0103q6/DC/QmUVW2WiY9Zj5eTtsc1vs8WZT6z9atO0gohAhD2iHb+7+v
	MVyMxnUzKKdqe9n0tP5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBIXd-00072L-A6; Mon, 09 Mar 2020 13:33:57 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBIXT-00070u-Ud
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 13:33:49 +0000
Received: from mail-qv1-f45.google.com ([209.85.219.45]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MCKO2-1j1z8E1g26-009Lwv for <linux-arm-kernel@lists.infradead.org>; Mon,
 09 Mar 2020 14:33:44 +0100
Received: by mail-qv1-f45.google.com with SMTP id fc12so4330293qvb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 06:33:44 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2BTsyEAySawhd7KIFWf62GfqpIjOCIzQbOS3OOTIUI4EE4wMNf
 kikXCyhzmCD1oEwbBQeio3t4IHwiwuRQLtZEWnQ=
X-Google-Smtp-Source: ADFU+vsS4g4CC/jX/g0SgAYUCTcdMUWjdRoIcEGypTKOhZlhcLLVL+lmJ8nsucH78bEHlCzzMXlxQq29RStvENsZj44=
X-Received: by 2002:a0c:f647:: with SMTP id s7mr14720813qvm.4.1583760823316;
 Mon, 09 Mar 2020 06:33:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wiGbz3oRvAVFtN-whW-d2F-STKsP1MZT4m_VeycAr1_VQ@mail.gmail.com>
 <20200211164701.4ac88d9222e23d1e8cc57c51@linux-foundation.org>
 <CAHk-=wg1ZDADD3Vuw_sXhmBOrQ2xsp8YWxmtWiA6vG0RT-ZQ+A@mail.gmail.com>
 <20200212085004.GL25745@shell.armlinux.org.uk>
 <CAK8P3a3pzgVvwyDhHPoiSOqyv+h_ixbsdWMqG3sELenRJqFuew@mail.gmail.com>
 <671b05bc-7237-7422-3ece-f1a4a3652c92@oracle.com>
 <CAK8P3a13jGdjVW1TzvCKjRBg-Yscs_WB2K1kw9AzRfn3G9a=-Q@mail.gmail.com>
 <7c4c1459-60d5-24c8-6eb9-da299ead99ea@oracle.com>
 <20200306203439.peytghdqragjfhdx@kahuna>
 <CAK8P3a0Gyqu7kzO1JF=j9=jJ0T5ut=hbKepvke-2bppuPNKTuQ@mail.gmail.com>
 <20200308141923.GI25745@shell.armlinux.org.uk>
In-Reply-To: <20200308141923.GI25745@shell.armlinux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 9 Mar 2020 14:33:26 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2Gz5H_fcNtW0yCCjO1cRNa0nyd568sDYR0nNphu49YqQ@mail.gmail.com>
Message-ID: <CAK8P3a2Gz5H_fcNtW0yCCjO1cRNa0nyd568sDYR0nNphu49YqQ@mail.gmail.com>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Provags-ID: V03:K1:ewf9DmfAWT15ayrtbqjonevUP5cqRN+Ue/cVrwTGAG43isu3etE
 YSHO5/tgIYZYeigcrgJ7XW01jecDWXHmim41sXD3qROGrcIHNhpMAeBF1jKrEuwLkr6A5ZH
 QZ1KZE1nnmItOEIc3b6cBgA/Znu+LQaJokFLLbY3uPniC7J8S1l5EjEq9O0nLymSCb2a4Xk
 yk2WehadA/hwWXDlz2yjA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:v74YrZMsTNg=:cQirl8XdYt1uVinzrzUewy
 S/+w97BMmzL1LcHSHo3RVOQL09Reyd2QPH+UowMXFKge7ysAWZDP/Q7arJGKhjsoYqE+riwsa
 GMnabJrnjibB6qML24cgMN8iRhLTB+w/HNEFXur/4Z/wfDzYYmQsEQlrtL2y8zobepWdqZIko
 +IFrmWH5A39PP+qlITxQS5RUY+sIiFOIOER1t3XzjMl9l4gMFgSrVxAcWD0lW904UuxZFuY5n
 OGLLv0I1b0NHo9sf5hysU0E58jKQnR/A0hHEW3R2CwIKIlcnCa6PUSl1syyQ8To7pYGHzjXcR
 +5PdcXzuPtACoMgKo66E9QOD2oxJhwgIXOwzx0wuE5hHX6o4UP4SJBPGiofXYr8iRXbv3Rsbx
 OeFAvskq/61m+cbxi0ROn6zSk13cE82nujjkc8aTgXYEr6BY9TyOSthCwdr9BXjVKX2LGKzgD
 6k3QQd/cI6KnneV/LCTi+pp/NiHnyFLD7t1W4NbOEm1Re2ip3tRdkoVUY9oV9/T8cFlO8swBD
 HPI5u9W1QwkJ7qh2XUsqwPASHO+Jl3Ve52TVyA197l037E0pNDK/InXgrJawDOQGWp/EUd4hy
 jsdNrHxj1LrcHg0XFkiIe9ywoxE6i2VncVSbyiRJxl3XVsKpemZ/BJ3VKBK55AUcxRPsTbNu2
 eBqdQGMm7nsar+YPlhHjmoDB4Hmpl2saPw3mQ7TopkGuWn5LL8PtLJKSTigG0QdDhswo2t2ED
 nRatId+jONIn1TTUdgtjEk952LZOn+XZAl6YURZgV+pSPXsLVb2+jBggbWYzHcGHcunwwmA6J
 YrXyD6W5DfByVCmUSEcGwjXBvPMseZvOPmwUze+Wxo56o8OxHU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_063348_280085_40FEC51E 
X-CRM114-Status: GOOD (  21.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
 Catalin Marinas <catalin.marinas@arm.com>, Roman Gushchin <guro@fb.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>,
 Dave Chinner <david@fromorbit.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Linux-MM <linux-mm@kvack.org>, Yafang Shao <laoar.shao@gmail.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Santosh Shilimkar <ssantosh@kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, kernel-team@fb.com,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 8, 2020 at 3:20 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> On Sun, Mar 08, 2020 at 11:58:52AM +0100, Arnd Bergmann wrote:
> > On Fri, Mar 6, 2020 at 9:36 PM Nishanth Menon <nm@ti.com> wrote:
> > > On 13:11-20200226, santosh.shilimkar@oracle.com wrote:
>
> > - extend zswap to use all the available high memory for swap space
> >   when highmem is disabled.
>
> I don't think that's a good idea.  Running debian stable kernels on my
> 8GB laptop, I have problems when leaving firefox running long before
> even half the 16GB of swap gets consumed - the entire machine slows
> down very quickly when it starts swapping more than about 2 or so GB.
> It seems either the kernel has become quite bad at selecting pages to
> evict.
>
> It gets to the point where any git operation has a battle to fight
> for RAM, despite not touching anything else other than git.
>
> The behaviour is much like firefox is locking memory into core, but
> that doesn't seem to be what's actually going on.  I've never really
> got to the bottom of it though.
>
> This is with 64-bit kernel and userspace.

I agree there is something going wrong on your machine, but I
don't really see how that relates to my suggestion.

> So, I'd suggest that trading off RAM available through highmem for VM
> space available through zswap is likely a bad idea if you have a
> workload that requires 4GB of RAM on a 32-bit machine.

Aside from every workload being different, I was thinking of
these general observations:

- If we are looking at a future without highmem, then it's better to use
  the extra memory for something than not using it. zswap seems like
  a reasonable use.

- A lot of embedded systems are configured to have no swap at all,
  which can be for good or not-so-good reasons. Having some
  swap space available often improves things, even if it comes
  out of RAM.

- A particularly important case to optimize for is 2GB of RAM with
  LPAE enabled. With CONFIG_VMSPLIT_2G and highmem, this
  leads to the paradox -ENOMEM when 256MB of highmem are
  full while plenty of lowmem is available. With highmem disabled,
  you avoid that at the cost of losing 12% of RAM.

- With 4GB+ of RAM and CONFIG_VMSPLIT_2G or
  CONFIG_VMSPLIT_3G, using gigabytes of RAM for swap
  space would usually be worse than highmem, but once
  we have VMSPLIT_4G_4G, it's the same situation as above
  with 6% of RAM used for zswap instead of highmem.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
