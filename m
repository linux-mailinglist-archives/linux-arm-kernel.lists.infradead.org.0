Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CDC8C17F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 21:25:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tc4bhqNgxmvGtxFahBkcWn67y1BOPhgDSinVnEVE8zQ=; b=HQbb+wqH/O+h3e
	RWQTnE2tdXDYWSY5BZBkoMHI96v2J1OjCmI/LvYu8h2Fmyl3m87c98ABiHNzxgAZWEgyHXg31S/K8
	BN93L0DwynuO9kT38yRuEkpvgmXuAMgIssYo0EpRbLcz48fZnxpwp/zJm0sI31+PPhGexkzxKZab5
	gvQONYL9IBm0ZZavcYVcXiz7mIpit/s0P7xpN2XtpwKCRo+q9C66hly1RP0UxqfnVAjSTp3HXFV1A
	3qtPjKJDVM+i7cyfSJT4tkOASqlOVzNYYc48V0Oq4/Wu/N4q6HVyhJnuRRri3A9+XtX47Yo3hHcWJ
	wMW6J+Vtlis8WtDXFkug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxcQM-0002hg-IS; Tue, 13 Aug 2019 19:25:38 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxcQD-0002hG-7n
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 19:25:30 +0000
Received: by mail-wm1-x343.google.com with SMTP id v15so2531113wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 12:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HIE8r5LQoAl0c5Ni7sWAS9Nij0rsiyftuXsjzTTduNk=;
 b=QqPmxjMa5dyh7V7f1JVL9SHQEd2CqabUyvFvPFr98vKDZ+mdr2twPma6Tp4EW91C3y
 6+BTL2a5Qr6PEYCvO0ng3jJqVCGAH2Q1AM+19AmBXWiD8rst1W80avOuupu2PpJfz73Z
 16wpza0mvrZKRtXAUG6XbFtkghh0DSq6lrl+F+k2uF7ikfZccb1Dgj6hB8dluVxIRKMI
 qc+Np26PKbttwwV5nYh4WUUXljTDvYGgXWmRbC+LyVTcn6fwUKSLzNGQg9YHRkiuaZVD
 2lH6COowhyBne1mtY2YtDmrXXf6l9OP2NlgX4ZnHirquSzf54Iugp1UZ/MLXmPYnhnei
 h9uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HIE8r5LQoAl0c5Ni7sWAS9Nij0rsiyftuXsjzTTduNk=;
 b=Vi/AeSkARK7Ay1WqJteZlNTYuUtawsRlokpxXMxHIxNRuCxHg0Z3ImVfJsPJHn+3qN
 XV+mUh351Br+e0lqH3f2NPZ3xFnJ5vF0ydENM85f1+FualF75UzNJeEMDDyMO/0oyBDT
 sCqAyrhfQm5XQqmOvVaUcv2ARZS58F0qXLA217V4FSnKsJc3b33h71//2E53n+t/niKd
 MROnbGKEXOpLLPiAJiGK1BM7KDyg3bkvDEgXAHNY0tYLxMjbFR6Hj4Bm7gDPlyNUj7vc
 d3OGeL4fdXGZKG0yhYUKFF8bTw3bq32p08F9P4an9QOyM6jouWfojCUTFBmCAV18WmyZ
 0ITA==
X-Gm-Message-State: APjAAAW2TlOu6sM0LlQyhzCm636BBU8A3xRJJzKYxF+ZnH8K9e9aTIm/
 62efCsPMyO4f7b++CdjPWYeeUlAhDeGwPPpQKbGpPA==
X-Google-Smtp-Source: APXvYqx3G6zlGxoz+VJj1adzKgind2h6bBqTvzGY8DxCiRb8vi8iJWj0iNtN6lC50kvZjNQVy1PhnMFE5YvPzeF4iRQ=
X-Received: by 2002:a05:600c:231a:: with SMTP id
 26mr4414708wmo.136.1565724326372; 
 Tue, 13 Aug 2019 12:25:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-2-will@kernel.org>
 <CAKv+Gu8Gws2MVE5ck1-rjm06X2nOUzRRQL_rCuoXd2Fyp-cOyw@mail.gmail.com>
 <20190813191124.GA21406@capper-ampere.manchester.arm.com>
In-Reply-To: <20190813191124.GA21406@capper-ampere.manchester.arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 13 Aug 2019 22:25:14 +0300
Message-ID: <CAKv+Gu-VBwXH+n7A0vr9xXm43HmFqsHOazQA-BuJKSqNhngR2A@mail.gmail.com>
Subject: Re: [PATCH 1/8] arm64: memory: Fix virt_addr_valid() using
 __is_lm_address()
To: Steve Capper <Steve.Capper@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_122529_486979_B57D54A2 
X-CRM114-Status: GOOD (  22.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Qian Cai <cai@lca.pw>,
 Andrey Konovalov <andreyknvl@google.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, nd <nd@arm.com>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 13 Aug 2019 at 22:11, Steve Capper <Steve.Capper@arm.com> wrote:
>
> Hi Ard,
>
> On Tue, Aug 13, 2019 at 09:09:16PM +0300, Ard Biesheuvel wrote:
> > On Tue, 13 Aug 2019 at 20:02, Will Deacon <will@kernel.org> wrote:
> > >
> > > virt_addr_valid() is intended to test whether or not the passed address
> > > is a valid linear map address. Unfortunately, it relies on
> > > _virt_addr_is_linear() which is broken because it assumes the linear
> > > map is at the top of the address space, which it no longer is.
> > >
> > > Reimplement virt_addr_valid() using __is_lm_address() and remove
> > > _virt_addr_is_linear() entirely. At the same time, ensure we evaluate
> > > the macro parameter only once and move it within the __ASSEMBLY__ block.
> > >
> > > Reported-by: Qian Cai <cai@lca.pw>
> > > Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
> > > Fixes: 14c127c957c1 ("arm64: mm: Flip kernel VA space")
> > > Signed-off-by: Will Deacon <will@kernel.org>
> > > ---
> > >  arch/arm64/include/asm/memory.h | 14 +++++++-------
> > >  1 file changed, 7 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> > > index afaf512c0e1b..442ab861cab8 100644
> > > --- a/arch/arm64/include/asm/memory.h
> > > +++ b/arch/arm64/include/asm/memory.h
> > > @@ -244,9 +244,9 @@ static inline const void *__tag_set(const void *addr, u8 tag)
> > >  /*
> > >   * The linear kernel range starts in the middle of the virtual adddress
> > >   * space.
> >
> > This is no longer true either.
> >
>
> Whoops agreed.
>
> > > Testing the top bit for the start of the region is a
> > > - * sufficient check.
> > > + * sufficient check and avoids having to worry about the tag.
> > >   */
> > > -#define __is_lm_address(addr)  (!((addr) & BIT(vabits_actual - 1)))
> > > +#define __is_lm_address(addr)  (!(((u64)addr) & BIT(vabits_actual - 1)))
> > >
> >
> > ... and this assumes that the VA space is split evenly between linear
> > and vmalloc/vmemmap/etc, which is no longer true when running with
> > 52-bit VAs
> >
>
> For 52-bit VAs we have two possibilities:
>   Start                 End                     Size            Use
>   -----------------------------------------------------------------------
>   0000000000000000      000fffffffffffff           4PB          user
>   fff0000000000000      fff7ffffffffffff           2PB          kernel logical memory map
>   fff8000000000000      fffd9fffffffffff        1440TB          [gap]

Right. I missed the part where we throw away 1/3 of the VA space:
IIRC, the idea was that keeping the size of the upper half of the
48-bit VA space fixed for 52-bit not only allowed compile time
constant addresses to be used for many of the things that populate it,
it also makes a lot more VA space available to the linear region,
which is where we need it the most.

>   fffda00000000000      ffff9fffffffffff         512TB          kasan shadow region
>
> and
>   Start                        End                     Size            Use
>   -----------------------------------------------------------------------
>   0000000000000000     0000ffffffffffff         256TB          user
>   ffff000000000000     ffff7fffffffffff         128TB          kernel logical memory map
>   ffff800000000000     ffff9fffffffffff          32TB          kasan shadow region
>   ffffa00000000000     ffffa00007ffffff         128MB          bpf jit region
>
> IIUC the definition for __is_lm_address is correct for these cases?
> (it's based off vabits_actual).
>

With the gap taken into account, it is correct. But throwing away 1440
TB of address space seems suboptimal to me.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
