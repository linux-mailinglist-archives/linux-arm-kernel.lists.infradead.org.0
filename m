Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EF9DA97
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 05:05:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=arizuiSnwIIBDeVptCbMQaCMuUmBDErfnM7h7tfb+rQ=; b=fOXsjLdwKaxzUg
	nk9gFFI8eBr/s4otPDr02i8QVMw/vN6rutntLsq2yG6o/OOFcMP45EwwTkNw+e1IAlhvi/+U0hdfJ
	cQE3eoYooDg6f2FKV1mv1jLaVNDClTODC7XNb58v7TiNcST94V5yQYm7JFRv90fAjLPdHCi5thd/A
	EFdG0RYSlvhGj0+fpqzxfBFqr5FkcZFVeVbRoizN5/WLDP/P1TXw9kuPy1uyZN3SLnD6rt4StE/MD
	pIykqvT2eG5dIrohT3s+elTH9lWKJWK9jBftCQMCu+DjtbMdgomiLIfNTxFDRYKfU9ujkBPQYAJP9
	WwvZZ6Rvl5UAyvyAMnlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKwbR-0005yZ-Gb; Mon, 29 Apr 2019 03:05:13 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKwbH-0005CJ-SZ; Mon, 29 Apr 2019 03:05:05 +0000
Received: by mail-io1-xd43.google.com with SMTP id m9so1341558iok.7;
 Sun, 28 Apr 2019 20:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dJMl90O95ELh7MccR/gotQ0iR4kxpXltz+n2rVMWVek=;
 b=sCS33Wo854rOecdEepHQFeUD38yV4m0fx8fxGIDGiFttKs1dNNsEKXEkbVeyxlSjum
 3xNFDFhJ2iF9Fh9LzN6/xoVy+YhiXgEoshszIQJUnps+YrJhuuw9lAxDcYmGEDff9HrD
 TJ6Xu79Wqbtq1Tpi2wfMrvCOrwmCbJWN+8K8iOxPa9yGhqwXJHYJPfAWhw1jyiGBSsz3
 6X4n0WUjEhAKyIGR/WesQJtN5xfG2amZp32CAU7q0+TYECzjxRQ/mdLi88A/Ti2/Vfqv
 +JnR2yMzE207qkPhJUQQMzIyz+UetNgniIOCbX3kN+O9VLWgT/dAd33CFP0gKgTqhMkH
 ZRgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dJMl90O95ELh7MccR/gotQ0iR4kxpXltz+n2rVMWVek=;
 b=bqn3FN3zaYe/zOqaCgNEOnSopAQQaFrX+rdCvDU9DT7Ab7y+DDtwCooL1D4MHGLCu/
 9MLagtfR6oDnsqavyK99RZgzVqUFTxxfbbhfW593AVwH3s9dfz5BRuKJ+tre0LaASznu
 5RC6Ho01ilcXzLU65UzsfRrMBTdUK3e1SCCnV0IKEPL1J7XDFU4dHDABxWm3tJ+PAqZb
 q5EMz6aJZc0a2kQvasqSZv3zLebtZTNNdqvLeGLqnIMZIigMIkwNRWvtGQ09HuLbFFY/
 1MUbiMDQ8KkBJrKCoP0TFNpDyaVFLDKUVhxdUdk9fDny6sPSMz6dtU17fHH/mv03BSPE
 Q+Sw==
X-Gm-Message-State: APjAAAUzK9q/hIPbLeHh9mZUs+NhOpJScYFzdGGbJj+iTzyB0cyIhMYM
 OVaJ4O1ofcxHd46KPS5lpKldcdCjtpe4ycbmUA==
X-Google-Smtp-Source: APXvYqzeszOwZP14RtOC6mV9rY3uOhFyM1yQpZi/QDojtM4wzbayqEf6L0iWYkrbUvWs9aPmzqXndCUfaebQxYOHnc8=
X-Received: by 2002:a6b:7d08:: with SMTP id c8mr3138801ioq.259.1556507100502; 
 Sun, 28 Apr 2019 20:05:00 -0700 (PDT)
MIME-Version: 1.0
References: <1556087581-14513-1-git-send-email-kernelfans@gmail.com>
 <10dc5468-6cd9-85c7-ba66-1dfa5aa922b7@suse.com>
 <CAFgQCTstd667wP6g+maxYekz4u3iBR2R=FHUiS1V=XxTs6MKUw@mail.gmail.com>
 <20190428083710.GA11981@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20190428083710.GA11981@dhcp-128-65.nay.redhat.com>
From: Pingfan Liu <kernelfans@gmail.com>
Date: Mon, 29 Apr 2019 11:04:49 +0800
Message-ID: <CAFgQCTvQezGM7xgY2Q1RSUiQ7wLdxtUAeztrO3AqDfjx8f2kdg@mail.gmail.com>
Subject: Re: [PATCHv2] kernel/crash: make parse_crashkernel()'s return value
 more indicant
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_200503_962450_B45843ED 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelfans[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 Julien Thierry <julien.thierry@arm.com>, Yangtao Li <tiny.windzz@gmail.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Palmer Dabbelt <palmer@sifive.com>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Stefan Agner <stefan@agner.ch>, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>, Logan Gunthorpe <logang@deltatee.com>,
 linux-s390@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-sh@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 Hari Bathini <hbathini@linux.ibm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Fenghua Yu <fenghua.yu@intel.com>, Tony Luck <tony.luck@intel.com>,
 Will Deacon <will.deacon@arm.com>, Johannes Weiner <hannes@cmpxchg.org>,
 Ananth N Mavinakayanahalli <ananth@linux.vnet.ibm.com>,
 Borislav Petkov <bp@alien8.de>, David Hildenbrand <david@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 Matthias Brugger <mbrugger@suse.com>, Baoquan He <bhe@redhat.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, kexec@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
 Thomas Bogendoerfer <tbogendoerfer@suse.de>,
 Paul Burton <paul.burton@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Greg Hackmann <ghackmann@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 28, 2019 at 4:37 PM Dave Young <dyoung@redhat.com> wrote:
>
> On 04/25/19 at 04:20pm, Pingfan Liu wrote:
> > On Wed, Apr 24, 2019 at 4:31 PM Matthias Brugger <mbrugger@suse.com> wrote:
> > >
> > >
> > [...]
> > > > @@ -139,6 +141,8 @@ static int __init parse_crashkernel_simple(char *cmdline,
> > > >               pr_warn("crashkernel: unrecognized char: %c\n", *cur);
> > > >               return -EINVAL;
> > > >       }
> > > > +     if (*crash_size == 0)
> > > > +             return -EINVAL;
> > >
> > > This covers the case where I pass an argument like "crashkernel=0M" ?
> > > Can't we fix that by using kstrtoull() in memparse and check if the return value
> > > is < 0? In that case we could return without updating the retptr and we will be
> > > fine.
> > >
> > It seems that kstrtoull() treats 0M as invalid parameter, while
> > simple_strtoull() does not.
> >
> > If changed like your suggestion, then all the callers of memparse()
> > will treats 0M as invalid parameter. This affects many components
> > besides kexec.  Not sure this can be done or not.
>
> simple_strtoull is obsolete, move to kstrtoull is the right way.
>
> $ git grep memparse|wc
>     158     950   10479
>
> Except some documentation/tools etc there are still a log of callers
> which directly use the return value as the ull number without error
> checking.
>
> So it would be good to mark memparse as obsolete as well in
> lib/cmdline.c, and introduce a new function eg. kmemparse() to use
> kstrtoull,  and return a real error code, and save the size in an
> argument like &size.  Then update X86 crashkernel code to use it.
>
Thank for your good suggestion.

Regards,
Pingfan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
