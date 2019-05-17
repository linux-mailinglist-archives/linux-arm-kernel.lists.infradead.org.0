Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B57CA21300
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 06:25:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E/Du4BAjt/byZ7AJDS/FVwhEKhz8QWVoKSy63dgw5II=; b=RbBQriw8ehlQJU
	Ze7PljwIearKxp3wdaofAm7rO9Ixxr5jxhR1HYJKEwEJ2oOOSNQZCVqOI4a2xcRFxiA8T2Wa+EJOg
	1n7GmvpIRqkm/ZH8E03LBG7U95WYUVGbUFK4Vo2/dwJj/U3wEh0qTbbD7PZOByGxyHhGNeEDe4+63
	yTNAVGFkuuOcQdGw4t/ZYN5CRhRbbmU5CAtlB2V4bWEMPvTqO6epRGUFFKmfUFIXN9zBvPuCKnJzD
	rhhiOqWP8NVYpTnLxBB2UhhkQ9bvWKuV/AG77CD0EfVIWwTRZXej4d8ztedWO0lzQW8FxstcYeaQ0
	67JLsrC4bzN6oLlh7gcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRUQX-0002eZ-Ih; Fri, 17 May 2019 04:25:01 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRUQQ-0002e9-2W; Fri, 17 May 2019 04:24:55 +0000
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
 [209.85.217.44]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id x4H4OWNh014153;
 Fri, 17 May 2019 13:24:33 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x4H4OWNh014153
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1558067073;
 bh=XSdURHr+DFj73XgjlE8DVqoSorih7QO9jSg+HW1D8TM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=MjmYEj/7xZIYGboJToCEBgv5PN/8CD6sDWZgip2cIfkO7e3Ii9sfP5C3OkJ+w+bmf
 nV6cmWzKaBSSjsZhyrn4bys5Y4Q6I+OEw7Kw5shBSlS1idFvlydMF1XAeStprazHXe
 YEbmOvO03hshhgHZXMzPoXOKrUM23BsqSOjE9eL/rkptHR8OUhQKwyp/IklD0+/Dl9
 owyazsPp24tpqnpga80RjHHMgFR00FgPaqDWKyOVGScKcv6zoiLl/Anuo6IiuxTxjf
 qbtJQzYFIsrlK27Oe+MJKRLUUuHhjaC4kJm7cNQh1CbYjHyDzVm4085SMLX6fx2uBd
 H18+0yFykqaGg==
X-Nifty-SrcIP: [209.85.217.44]
Received: by mail-vs1-f44.google.com with SMTP id y6so3808901vsb.0;
 Thu, 16 May 2019 21:24:32 -0700 (PDT)
X-Gm-Message-State: APjAAAVrQa16sujJSWSLfr0pzONVmh+ZwZg5tymfva0UR41fsULkJgIV
 8n3omE5X02TvnNH1Sia1+dqjx7GXCohV8dDjYlk=
X-Google-Smtp-Source: APXvYqwRom2nfToM4jL1gKybhnXBZPLM/8GRypEcR2drcSxkNBd5y+Id9rfE+eiIpAnAfm5gkg5AbPeOHdYPagE+d9M=
X-Received: by 2002:a67:ad0f:: with SMTP id t15mr7896301vsl.179.1558067071748; 
 Thu, 16 May 2019 21:24:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190423034959.13525-1-yamada.masahiro@socionext.com>
 <20190423034959.13525-5-yamada.masahiro@socionext.com>
 <aa73f81d-5d5a-a1d2-5239-3e8eb1278ec4@redhat.com>
In-Reply-To: <aa73f81d-5d5a-a1d2-5239-3e8eb1278ec4@redhat.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 17 May 2019 13:23:55 +0900
X-Gmail-Original-Message-ID: <CAK7LNAST5y9Khg0BBz6W0mekPpuLPwWa9nPvvVENidWhHZ-avw@mail.gmail.com>
Message-ID: <CAK7LNAST5y9Khg0BBz6W0mekPpuLPwWa9nPvvVENidWhHZ-avw@mail.gmail.com>
Subject: Re: [RESEND PATCH v3 04/11] s390/cpacf: mark scpacf_query() as
 __always_inline
To: Laura Abbott <labbott@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_212454_337277_8B6914E1 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Christophe Leroy <christophe.leroy@c-s.fr>, Arnd Bergmann <arnd@arndb.de>,
 linux-s390 <linux-s390@vger.kernel.org>, Mathieu Malaterre <malat@debian.org>,
 X86 ML <x86@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-mips@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, linux-mtd <linux-mtd@lists.infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 8:01 AM Laura Abbott <labbott@redhat.com> wrote:
>
> On 4/22/19 8:49 PM, Masahiro Yamada wrote:
> > This prepares to move CONFIG_OPTIMIZE_INLINING from x86 to a common
> > place. We need to eliminate potential issues beforehand.
> >
> > If it is enabled for s390, the following error is reported:
> >
> > In file included from arch/s390/crypto/des_s390.c:19:
> > ./arch/s390/include/asm/cpacf.h: In function 'cpacf_query':
> > ./arch/s390/include/asm/cpacf.h:170:2: warning: asm operand 3 probably doesn't match constraints
> >    asm volatile(
> >    ^~~
> > ./arch/s390/include/asm/cpacf.h:170:2: error: impossible constraint in 'asm'
> >
>
> This also seems to still be broken, again with gcc 9.1.1
>
> BUILDSTDERR: In file included from arch/s390/crypto/prng.c:29:
> BUILDSTDERR: ./arch/s390/include/asm/cpacf.h: In function 'cpacf_query_func':
> BUILDSTDERR: ./arch/s390/include/asm/cpacf.h:170:2: warning: asm operand 3 probably doesn't match constraints
> BUILDSTDERR:   170 |  asm volatile(
> BUILDSTDERR:       |  ^~~
> BUILDSTDERR: ./arch/s390/include/asm/cpacf.h:170:2: error: impossible constraint in 'asm'
>
> I realized we're still carrying a patch to add -fno-section-anchors
> but it's a similar failure to powerpc.


Christophe had already pointed out potential issues for "i" constraint,
and I have fixups in hand:

See
https://lkml.org/lkml/2019/5/3/459


My plan was to send it after all of my base patches
were merged.

This s390 cparf.h is included in the TODO list.

Will fix soon.

Thanks.

-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
