Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D02ADB3C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 06:48:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iu13Sc5n2DKRkMcOJj3YhL9mb/1Kz+I2fZDClfRMDf8=; b=LdPpXc34huuumf
	fygY8N2QvtMAHWxIOioWDxea5g1pfWT9pnyy1vG/fROaGEP8Yxn6ZcO4gIxCY498dN1Zs8vANcgw7
	fgVhzrFxR/woDkp4kWbenB/rav4K+m/gJmUU9e2aF8fq1UEYoaNYsZ96W442AgNtPcdFTwv3/ntKe
	SEtzEvcv+Ql4XoR/Nx1znQnUlNyfM/J7UrnQtKKss4uy8XXCQNA1yoQlFl4x77OhfnCiSQmS6SpUT
	myqqQ085ObSlo0XzcWVIpHoz1hqjw3DAKcfE8UHEQunI+L3Y4/rA7I1VAUGVeBJ380yWuAenZmY/p
	d4/pmIIiIWwkNyvEs71Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKyDd-0003Sp-SU; Mon, 29 Apr 2019 04:48:45 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKyDW-0003SO-Tu; Mon, 29 Apr 2019 04:48:40 +0000
Received: by mail-io1-xd42.google.com with SMTP id m188so7820139ioa.9;
 Sun, 28 Apr 2019 21:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CobcNFcnItV1Fwxra/QSyVNCgIAThoo3aC2sCuN9HA8=;
 b=pqKkSoBe+RPQkwYeXmonMZ6J5GKAgxBM+dBipqllBf4tORdH8yrCh2/gWNSBtQtOhK
 NAcI0cym0+07yNrGwVXlnw4744MbdMz8N1k1tMC0HvlKh/R5fWBxWhTKMxl8iyr7O8iR
 Myt/usC017uXm+Au0xau06xUhMS0dp0MdtnaMvMyDExTfi77ypqs+QXyZMup18XLEocU
 wYRhpQ2PHYYrJpBZjIOLgTRPLtLjC3Q/vbEI66QK8eypLFYcIkK0XZjNYozQWQPRbWpe
 g/MgMvmpVPa3drOwtuqsufShNXe1eD5C5CwpBWLFm5oTJNUO4WN8UoUmrM0hksF/ttMD
 OfIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CobcNFcnItV1Fwxra/QSyVNCgIAThoo3aC2sCuN9HA8=;
 b=lxkSam9XtEsAkPmhGnFTiqvTKPaihtdg/Hgw/mlF1sk8VlwKGkkN30GN9mwFvNuNCM
 Pq9rCasjYFCT0jNUCHLAePLBlXlxUGo935+l9TQ0AdrgQep1P89Z5VU7icd/U2CczLoY
 AXppboUgbE7VBlq1eyiw1PD5t6CdcfQU77wQxYo4ETBOQ9rAMTKhQaZlw+/12ZK2NCf1
 OfFiUtbfOGyAwnRbdxdrWS7Rgn83ZVI/q+nvqjDHsDcRc1bGsLpBb2wIg0u6NUJRK/5d
 1HrwE38MRxkX8JRhcOC3mgrf2PWBXT1PtpL6LTliDK7NCPVOftnw4phGUCP74xUoGMZF
 jb6w==
X-Gm-Message-State: APjAAAXxw+8H78pCpbv8L8IsEBWWJpANF+iGz3wMVxTimUq2IICz0AQ0
 0E3F1upYs3Yokr3x3mNhmXuw2wBT5P1dUsmqeg==
X-Google-Smtp-Source: APXvYqw2FeNsPMhV5IEOMRwTyxZfZxZOFNEF0Wjt5ScivSjEZPH3rCOROvQdLIHKWZSPo7LRseWzFm4cKsBEU6/GIJo=
X-Received: by 2002:a6b:b54b:: with SMTP id e72mr15178094iof.106.1556513317684; 
 Sun, 28 Apr 2019 21:48:37 -0700 (PDT)
MIME-Version: 1.0
References: <1556087581-14513-1-git-send-email-kernelfans@gmail.com>
 <10dc5468-6cd9-85c7-ba66-1dfa5aa922b7@suse.com>
 <CAFgQCTstd667wP6g+maxYekz4u3iBR2R=FHUiS1V=XxTs6MKUw@mail.gmail.com>
 <20190428083710.GA11981@dhcp-128-65.nay.redhat.com>
 <CAFgQCTvQezGM7xgY2Q1RSUiQ7wLdxtUAeztrO3AqDfjx8f2kdg@mail.gmail.com>
In-Reply-To: <CAFgQCTvQezGM7xgY2Q1RSUiQ7wLdxtUAeztrO3AqDfjx8f2kdg@mail.gmail.com>
From: Pingfan Liu <kernelfans@gmail.com>
Date: Mon, 29 Apr 2019 12:48:26 +0800
Message-ID: <CAFgQCTszGixzH5ZrwOzjbp7W91Wxo3XvA+EeEx0ErVVcYMr0FA@mail.gmail.com>
Subject: Re: [PATCHv2] kernel/crash: make parse_crashkernel()'s return value
 more indicant
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_214838_984268_F6271F96 
X-CRM114-Status: GOOD (  24.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelfans[at]gmail.com)
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

On Mon, Apr 29, 2019 at 11:04 AM Pingfan Liu <kernelfans@gmail.com> wrote:
>
> On Sun, Apr 28, 2019 at 4:37 PM Dave Young <dyoung@redhat.com> wrote:
> >
> > On 04/25/19 at 04:20pm, Pingfan Liu wrote:
> > > On Wed, Apr 24, 2019 at 4:31 PM Matthias Brugger <mbrugger@suse.com> wrote:
> > > >
> > > >
> > > [...]
> > > > > @@ -139,6 +141,8 @@ static int __init parse_crashkernel_simple(char *cmdline,
> > > > >               pr_warn("crashkernel: unrecognized char: %c\n", *cur);
> > > > >               return -EINVAL;
> > > > >       }
> > > > > +     if (*crash_size == 0)
> > > > > +             return -EINVAL;
> > > >
> > > > This covers the case where I pass an argument like "crashkernel=0M" ?
> > > > Can't we fix that by using kstrtoull() in memparse and check if the return value
> > > > is < 0? In that case we could return without updating the retptr and we will be
> > > > fine.
> > > >
> > > It seems that kstrtoull() treats 0M as invalid parameter, while
> > > simple_strtoull() does not.
> > >
> > > If changed like your suggestion, then all the callers of memparse()
> > > will treats 0M as invalid parameter. This affects many components
> > > besides kexec.  Not sure this can be done or not.
> >
> > simple_strtoull is obsolete, move to kstrtoull is the right way.
> >
> > $ git grep memparse|wc
> >     158     950   10479
> >
> > Except some documentation/tools etc there are still a log of callers
> > which directly use the return value as the ull number without error
> > checking.
> >
> > So it would be good to mark memparse as obsolete as well in
> > lib/cmdline.c, and introduce a new function eg. kmemparse() to use
> > kstrtoull,  and return a real error code, and save the size in an
> > argument like &size.  Then update X86 crashkernel code to use it.
> >
> Thank for your good suggestion.
>
Go through the v5.0 kernel code, I think it will be a huge job.

The difference between unsigned long long simple_strtoull(const char
*cp, char **endp, unsigned int base) and int _kstrtoull(const char *s,
unsigned int base, unsigned long long *res) is bigger than expected,
especially the output parameter @res. Many references to
memparse(const char *ptr, char **retptr) rely on @retptr to work. A
typical example from arch/x86/kernel/e820.c
        mem_size = memparse(p, &p);
        if (p == oldp)
                return -EINVAL;

        userdef = 1;
        if (*p == '@') {  <----------- here
                start_at = memparse(p+1, &p);
                e820__range_add(start_at, mem_size, E820_TYPE_RAM);
        } else if (*p == '#') {
                start_at = memparse(p+1, &p);
                e820__range_add(start_at, mem_size, E820_TYPE_ACPI);
        } else if (*p == '$') {
                start_at = memparse(p+1, &p);
                e820__range_add(start_at, mem_size, E820_TYPE_RESERVED);
        }

So we need to resolve the prototype of kstrtoull() firstly, and maybe
kstrtouint() etc too. All of them have lots of references in kernel.

Any idea about this?

Thanks,
Pingfan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
