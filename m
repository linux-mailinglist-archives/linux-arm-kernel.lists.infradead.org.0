Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56DA28F73
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 05:11:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7a2KwRYsoVRiUYGZgnKqgqiRDqSl6CsBhs3NJMVrb7k=; b=hyWjnbRexS8Vwr
	keDa+n41s/9jXmuj/QCM5D7HhlMRLBntiQokGvQWqcSCxAmQqps4RV019j6TdOpuCzWq82ucR7nXq
	+FbtXoQ8DWRo4RuSAu9pViFoehByLv9HYN99w0yd9IRBIy+bENiZw7Ot8JgynmxO32DzZ3PZcqmVs
	CaR/i0AH1TiFwQX433G781dNRLJJkVk/dHFSpA4GyXb824xHWnK45L4d1vpAWTcnb/uGdAMidHtyx
	sjLc5n1vLgXVUoR1adxQPOkLQfiBMOi/4/PHU4SHnhg3FSRc3Z4dbB3vdyeyr8rJJUDgnN5SRmd9F
	9V47cMyVx4iM4x65wztw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU0cK-0000rk-KT; Fri, 24 May 2019 03:11:36 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU0cD-0000qz-FV
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 03:11:30 +0000
Received: by mail-it1-x141.google.com with SMTP id e184so11712402ite.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 20:11:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E7hznSwoqjG8X1odMBGc2satoFe87v1Y0P/9fKHS9SY=;
 b=a7Sc0ZmlEG6jC7OpcrRVUkNXq0SBb3Dc/hNdk5Vi6ayUDLd0Dm8M0wWvJFgwttZZ4M
 aninTKfSUZDRjfNGqPsMzWLja++EezX/hO4fX5nJBzfyFI6kNO7dvjypaoVQz4ys7+R5
 9IVPBxW1C4i6BRZ4f3bqLocvJh1c9QUTPILj4gipCVXMgVTUpT9LBYkMiRDL2TaalXNe
 rQ6wJugIty6JwVWYs5nF97JpvrTENcxT3PWNqVTqRhEna4JwxQokvn2SUzkeP09LHMDC
 DgccA6RcG2CmDNt2DoIHjZymnDK30hw9WxWvnBoApiNxfRbL6LLAu65RJr1Ih71O/P5e
 SodQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E7hznSwoqjG8X1odMBGc2satoFe87v1Y0P/9fKHS9SY=;
 b=hwxw4JYEpbrwnkfpH79/iGqJZV0c2WO91PWfSRfqAOXmlZgGFLN1ueTQbrs+LcE27w
 jf2AahrUU5sOsZjeUN0xCnuLKtEx2C9mES6SSdY3BeKl90IEmKrmCvGtjs8np86uoYEl
 GbDXoS6W6kyBT9hTL6SC9YtFQF3wcsjjoZ1iuIwKOoJKgnvENE4Wog3v40R3aEJ/ikrB
 tFY0T2DATWm4YA7ebpVOyG0InyCA8Hk9ujn+YKx4zxU1k/w4mDa/68yC28yjJgmzLqee
 p2B6d81I+hTv/cLrz+jYk+a8F64m95XPFgCgn72p121Gos7eHoHZAPZ/c/+XNMDFYPJ1
 F66Q==
X-Gm-Message-State: APjAAAVnTkHGNTX5AlPHivuHVsVVNDvSUZjYF0xE0+vtObnywSNJHfN+
 G/dtfTsFN1mLCyowxjL/Jjw5iHui1j9zxOY50g==
X-Google-Smtp-Source: APXvYqz4ssg3ircx9GKZ/bOQFSdzkDIVdQtquf3WB1GzGhZLWMOO7FDaVjBjQGy32wO2lRBtVYsHwdCKMGdQi1fBKFw=
X-Received: by 2002:a24:1dce:: with SMTP id 197mr16766439itj.16.1558667486023; 
 Thu, 23 May 2019 20:11:26 -0700 (PDT)
MIME-Version: 1.0
References: <1556087581-14513-1-git-send-email-kernelfans@gmail.com>
 <10dc5468-6cd9-85c7-ba66-1dfa5aa922b7@suse.com>
 <CAFgQCTstd667wP6g+maxYekz4u3iBR2R=FHUiS1V=XxTs6MKUw@mail.gmail.com>
 <CAFgQCTtQm7SuBRfXik6B065Aa+uQ=Mx6i+Y1q+NJU1GEiUgH4g@mail.gmail.com>
In-Reply-To: <CAFgQCTtQm7SuBRfXik6B065Aa+uQ=Mx6i+Y1q+NJU1GEiUgH4g@mail.gmail.com>
From: Pingfan Liu <kernelfans@gmail.com>
Date: Fri, 24 May 2019 11:11:13 +0800
Message-ID: <CAFgQCTuAEbST8ZdSJmPDTPbqkL3uZ8j6U-vTWT879wARDhUwTw@mail.gmail.com>
Subject: Re: [PATCHv2] kernel/crash: make parse_crashkernel()'s return value
 more indicant
To: Matthias Brugger <mbrugger@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_201129_546326_5D0D760B 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelfans[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Dave Young <dyoung@redhat.com>, Fenghua Yu <fenghua.yu@intel.com>,
 Will Deacon <will.deacon@arm.com>, Johannes Weiner <hannes@cmpxchg.org>,
 Ananth N Mavinakayanahalli <ananth@linux.vnet.ibm.com>,
 Borislav Petkov <bp@alien8.de>, David Hildenbrand <david@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 Tony Luck <tony.luck@intel.com>, Baoquan He <bhe@redhat.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>,
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

Matthias, ping? Any suggestions?

Thanks,
Pingfan


On Thu, May 2, 2019 at 2:22 PM Pingfan Liu <kernelfans@gmail.com> wrote:
>
> On Thu, Apr 25, 2019 at 4:20 PM Pingfan Liu <kernelfans@gmail.com> wrote:
> >
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
> After a series of work, I suddenly realized that it can not be done
> like this way. "0M" causes kstrtoull() to return -EINVAL, but this is
> caused by "M", not "0". If passing "0" to kstrtoull(), it will return
> 0 on success.
>
> > >
> > It seems that kstrtoull() treats 0M as invalid parameter, while
> > simple_strtoull() does not.
> >
> My careless going through the code. And I tested with a valid value
> "256M" using kstrtoull(), it also returned -EINVAL.
>
> So I think there is no way to distinguish 0 from a positive value
> inside this basic math function.
> Do I miss anything?
>
> Thanks and regards,
> Pingfan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
