Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 139A68E0A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 00:21:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1k+2jGjgSPjx2AiIn6mJicbMb94FBiABZeDa/EDOF2Y=; b=rjtPPGoQqAPUmj
	p23lKe5VBajVsxU85vaAKmOt5w+P/nB1si9yFPrsVdaQi2uDv4k35CK7NOV6rPqvKAx8W/C/d5nCl
	io5rGrbokKF3guiheQBWqV4aSDDhwamJxvkvie2Tz3Ron+G3GT4+a4cXYPIK//vKDRXj7BYDd14jH
	mKmrOPTwYTr1eeJjYlGpLyM1rr5XhxaWT2KRwQQCpRCyBJbGNvoe3LKUZlSLsiz7z0TrTENp1BKTT
	S1YAAoaHwEB4vcIx5RodWlrrQMlXZWDYlANi3VxNp2U8OiibPGKL5EqGrae25QJqdC1tBQmmQ+5xb
	yD3stKToV/MERvAXO0nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy1dd-0001dA-QT; Wed, 14 Aug 2019 22:21:01 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy1dR-0001bz-7V
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 22:20:50 +0000
Received: by mail-pl1-x644.google.com with SMTP id bj8so238660plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 15:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3k2w+T8PpskZpxccjtIiizfMIZhjmdjjp0d3COyTRJs=;
 b=bIzCRgoqfzNuUan1EfvB7NRSozZHajM22ukZLoilzYM9sYiJ7YkDvmA7Uj+9V3whQX
 tVwoUOufC9BTkAMrQC/rHvkb/exsHErFgJVr/8W7KT829V0wEHH9QAxZdmZ/ErITekS6
 xrKE/Bq6vysHbTrERMP3oECXC0pPuqF/A4lnVBELZNj6IgYErrd6+O2HP/vitjEgPg/G
 Vo3XjVH1cvHMNyp/jwUDdyb50ZiaJxDo6aTcH/2RYATRNkXzQBQZglJb7q5MJyn2amFZ
 e2uUqZNKxy7OtuBUudolHQGGHryuTumSWmufu1hM+Awk5W4Y9ddcKD4aXMaQEHtNXxkv
 B8Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3k2w+T8PpskZpxccjtIiizfMIZhjmdjjp0d3COyTRJs=;
 b=Hsp5ULrhIGF9jbgjEXBYatNHwD049Y8hgE11Xf0e32DUUlKXuIEBekkw3Dtl0p4xe3
 NtgwbAlQ3bE7+/8Q0jfyEmXUIxJB+hKDa3cRCj4LvQIMJMb/NHP4Ord7eHsvh0R28+6w
 Hv13scTcvqdaLD/FBGEuko6XeyU8+tTJ1tRXpApW4TZuLT7yOlCm+ZTB2jHYDb25oH80
 XAWm0bqGhypBMj0KgomPm1jaUqvsAeiT1gF0fqh/07BrozG03aei/oQ4sqmcsJJ51RjL
 ZNPELwZMV2/dxNN7GvsVkPS55zZu8l8N/8DTDe3ucO6WAK8WWQA9Dnuvf6wdJdkWTvK9
 QauQ==
X-Gm-Message-State: APjAAAW8aqKoeKgtSNj0l3B0SJ6LlAv7fpKZ98aPjITSlUiWAnmqmIvw
 XvSPRyj9m7j1JgsjjbrS6Uao+if8N9pb34sy/Ck16w==
X-Google-Smtp-Source: APXvYqxHrSJ2tRfUqC4Ul74AEgggKrkSwf6kd2vyhl5jNkzvxCgzLD0h2XP16ofmSNmQ6rstXRsNaFKQHmMH2KlVrOE=
X-Received: by 2002:a17:902:a9c3:: with SMTP id
 b3mr1454831plr.179.1565821244245; 
 Wed, 14 Aug 2019 15:20:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-12-ndesaulniers@google.com>
 <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
 <CANiq72mAfJ23PyWzZAELgbKQDCX2nvY0z+dmOMe14qz=wa6eFg@mail.gmail.com>
 <20190813170829.c3lryb6va3eopxd7@willie-the-truck>
In-Reply-To: <20190813170829.c3lryb6va3eopxd7@willie-the-truck>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 14 Aug 2019 15:20:33 -0700
Message-ID: <CAKwvOdk4hca8WzWzhcPEvxXnJVLbXGnhBdDZbeL_W_H91Ttjqw@mail.gmail.com>
Subject: Re: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
To: Will Deacon <will@kernel.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_152049_300446_C0671899 
X-CRM114-Status: GOOD (  23.19  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Song Liu <songliubraving@fb.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Allison Randal <allison@lohutok.net>, Yonghong Song <yhs@fb.com>,
 Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Sedat Dilek <sedat.dilek@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, bpf@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Network Development <netdev@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Enrico Weigelt <info@metux.net>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 10:08 AM Will Deacon <will@kernel.org> wrote:
>
> On Tue, Aug 13, 2019 at 02:36:06PM +0200, Miguel Ojeda wrote:
> > On Tue, Aug 13, 2019 at 10:27 AM Will Deacon <will@kernel.org> wrote:
> > > On Mon, Aug 12, 2019 at 02:50:45PM -0700, Nick Desaulniers wrote:
> > > > GCC unescapes escaped string section names while Clang does not. Because
> > > > __section uses the `#` stringification operator for the section name, it
> > > > doesn't need to be escaped.
> > > >
> > > > This antipattern was found with:
> > > > $ grep -e __section\(\" -e __section__\(\" -r
> > > >
> > > > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > > > Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > > ---
> > > >  arch/arm64/include/asm/cache.h     | 2 +-
> > > >  arch/arm64/kernel/smp_spin_table.c | 2 +-
> > > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > >
> > > Does this fix a build issue, or is it just cosmetic or do we end up with
> > > duplicate sections or something else?
> >
> > This should be cosmetic -- basically we are trying to move all users
> > of current available __attribute__s in compiler_attributes.h to the
> > __attr forms. I am also adding (slowly) new attributes that are
> > already used but we don't have them yet in __attr form.

This lone patch of the series is just cosmetic, but patch 14/16 fixes
a real boot issue:
https://github.com/ClangBuiltLinux/linux/issues/619
Miguel, I'd like to get that one landed ASAP; the rest are just for consistency.

> >
> > > Happy to route it via arm64, just having trouble working out whether it's
> > > 5.3 material!

Thanks!
https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/commit/?h=for-next/core&id=80d838122643a09a9f99824adea4b4261e4451e6

> >
> > As you prefer! Those that are not taken by a maintainer I will pick up
> > and send via compiler-attributes.

Miguel, how do you want to take the rest of these patches? Will picked
up the arm64 one, I think the SuperH one got picked up.  There was
feedback to add more info to individual commits' commit messages.

I kept these tree wide changes separate to improve the likelihood that
they'd backport to stable cleanly, but could always squash if you'd
prefer to have 1 patch instead of a series.  Just let me know.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
