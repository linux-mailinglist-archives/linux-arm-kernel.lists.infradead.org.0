Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 976F8B5B4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 10:37:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxJtIOHoqbK7xOyZzgbI/uY9MNJkbDMAMHU+37fMiFU=; b=BbEQbZFM/WONnU
	OeVi0vyjetlhy+Esi6NwP4gzpo0dkY04/+YTA7aokYjwvYZuZE3F3ia1IeleX1Lp2KS7nWyuOGXO7
	zTCSa0DHK9N2OnvNsg44WeYIJotzBgPXWa4XEkEKMznsNe65MdOeEInAgcYOTN2V7O61MlCHFHFx2
	3tbCqmzM6Jhv4P9rbNk7H+UbWW9d8bqPEGXDsMJU4y6t0y3vpXsX+imbTJvYd+idRWU2/qPkGmn+x
	4fA1GgRXOwrPWef8pgklT9gxLcIoM1ZQunx0aHMjDqIDQaP/PIYjWOleDTSpI7VHI9O3f8JEmh6ef
	Cm9CJxfOXNq0H4MluPmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKfJi-0000Vo-PO; Sun, 28 Apr 2019 08:37:46 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKfJb-0000Ue-4z; Sun, 28 Apr 2019 08:37:40 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BEE19308425B;
 Sun, 28 Apr 2019 08:37:36 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-104.pek2.redhat.com
 [10.72.12.104])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EF1721001DCE;
 Sun, 28 Apr 2019 08:37:14 +0000 (UTC)
Date: Sun, 28 Apr 2019 16:37:10 +0800
From: Dave Young <dyoung@redhat.com>
To: Pingfan Liu <kernelfans@gmail.com>
Subject: Re: [PATCHv2] kernel/crash: make parse_crashkernel()'s return value
 more indicant
Message-ID: <20190428083710.GA11981@dhcp-128-65.nay.redhat.com>
References: <1556087581-14513-1-git-send-email-kernelfans@gmail.com>
 <10dc5468-6cd9-85c7-ba66-1dfa5aa922b7@suse.com>
 <CAFgQCTstd667wP6g+maxYekz4u3iBR2R=FHUiS1V=XxTs6MKUw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFgQCTstd667wP6g+maxYekz4u3iBR2R=FHUiS1V=XxTs6MKUw@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Sun, 28 Apr 2019 08:37:38 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_013739_233060_AB94E949 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 04/25/19 at 04:20pm, Pingfan Liu wrote:
> On Wed, Apr 24, 2019 at 4:31 PM Matthias Brugger <mbrugger@suse.com> wrote:
> >
> >
> [...]
> > > @@ -139,6 +141,8 @@ static int __init parse_crashkernel_simple(char *cmdline,
> > >               pr_warn("crashkernel: unrecognized char: %c\n", *cur);
> > >               return -EINVAL;
> > >       }
> > > +     if (*crash_size == 0)
> > > +             return -EINVAL;
> >
> > This covers the case where I pass an argument like "crashkernel=0M" ?
> > Can't we fix that by using kstrtoull() in memparse and check if the return value
> > is < 0? In that case we could return without updating the retptr and we will be
> > fine.
> >
> It seems that kstrtoull() treats 0M as invalid parameter, while
> simple_strtoull() does not.
> 
> If changed like your suggestion, then all the callers of memparse()
> will treats 0M as invalid parameter. This affects many components
> besides kexec.  Not sure this can be done or not.

simple_strtoull is obsolete, move to kstrtoull is the right way.

$ git grep memparse|wc
    158     950   10479

Except some documentation/tools etc there are still a log of callers
which directly use the return value as the ull number without error
checking.

So it would be good to mark memparse as obsolete as well in
lib/cmdline.c, and introduce a new function eg. kmemparse() to use
kstrtoull,  and return a real error code, and save the size in an
argument like &size.  Then update X86 crashkernel code to use it.

Thanks
Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
