Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5A1138A3D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 05:34:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0BbtPFzgJjSaO9FhvWlY2e/Wpg5uL0BFQeO+E4LJsPo=; b=Pd0QO3/W44u5w2
	4I1i8Iros+LHBWEdfmwe/eVhT7MohzHmdlIIL32hu+yPsw3GQrfVF+o3KLQSmb6uq0ng9I5QjTUZI
	hr0zL/GsRa7/7Z/WF//Pdu6j9t2iU0RQs7H/p5OZBs2KOJdkjJuQY8k6TZFpTNhuIN0QD6bJqKlMp
	JjMjKCwwAJvegyNseomp738IFGBpThTL21bktpr8U9HtJoGWvUMHHj+dERxqWHy7AyfroBTH9Ki2t
	4MJpnSI6h8hTgd/9SqyHtytowSvrybzHelmDqjDwXoHqEJ10n3HbouKInAb052N6eU+8rDVZ2L2eS
	gIAIZSKOlrScnx8PaOnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqrQO-0003B4-AQ; Mon, 13 Jan 2020 04:34:00 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqrQH-0003AD-4s
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 04:33:55 +0000
Received: by mail-ot1-x342.google.com with SMTP id k14so7796016otn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 20:33:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0SADaU9gu70a2Bm0Kanw0/QkZVrOHiIb+3LRKLBcUWk=;
 b=OxFJ5+uPpMQkwvT9Qje5xmITqR1pEl3memtQG8Of66iLLXIir/M+praEuySJUPpWqx
 B7k8EbjZfdkqQtjY7IOgRq/+bLOoJw0+Spj1+UCP9x0BoGO+r6hPIyQ9fl/tDsd1miBa
 RD7OyyUJkbYPcTYY11AR32jO97qb5LBnOc6cysWfFY761YIxTiErD/jyiKNnNneKy8Ek
 VJ8n3eNNluAdNyiiQrPSN050ayi1RvZbWNM07Dwfo+GwlQrh4LBz2p+loFt7Ezh9PzS5
 hRO1OvgiH8Xrlt5JLkPpxi2yPu9JEOjmeygncihU08HnpWE6Bz4mej+gZFrOGt7W+9CS
 eUqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0SADaU9gu70a2Bm0Kanw0/QkZVrOHiIb+3LRKLBcUWk=;
 b=bu7UMxPZt0AoQTHXkcXJ5Y6+WG4UcltZ1ErHIpSETtpM54ddYb1DsMM60R33SZlNl0
 KidiMxLBgeOOYGSFunR+2emJLnnwVyI0hKjuxn+LhgsYZyNtF9aM9FJ3Ci5lzTWUszwR
 9YQHLWzNPKpjo+xDmobt/f0IoLgMDcNi2+4OsDyOTGknxguFZQpH7UhHISlj8p5JwLUG
 0g8i9jXHZQ447/XphrsQFaSeOsJf85as6k2m+UBSWB6tmlhSAdMKOlzGJQ63D/ahHCjy
 pGgd1jZmLhxpFBZGk73BWCSjxgdwBonvXjld2jt9WGMOf3TyXRlM6fnfg646H4Vkjuj9
 AeSg==
X-Gm-Message-State: APjAAAUn8qoCcFedZitiAM/w/KK7WoXaOAnDUOr17hY5JOd/EWtJv8sw
 i6LTju24UgT4jDelZ/E7pl7CXC019bPs6oUil2J+yQ==
X-Google-Smtp-Source: APXvYqzKKJLKVTUSZcp0sj2AT+aiCvmTg5KUl6YAuMPe9/ClQhmL25Wu+pX1UtlR8rzIUjHdZZAxcUMMWVH9uWU1+Sw=
X-Received: by 2002:a9d:2c68:: with SMTP id f95mr12075160otb.33.1578890030841; 
 Sun, 12 Jan 2020 20:33:50 -0800 (PST)
MIME-Version: 1.0
References: <a367af4d-7267-2e94-74dc-2a2aac204080@ghiti.fr>
 <20191018105657.4584ec67@canb.auug.org.au>
 <20191028110257.6d6dba6e@canb.auug.org.au>
 <mhng-0daa1a90-2bed-4b2e-833e-02cd9c0aa73f@palmerdabbelt-glaptop>
 <d5d59f54-e391-3659-d4c0-eada50f88187@ghiti.fr>
In-Reply-To: <d5d59f54-e391-3659-d4c0-eada50f88187@ghiti.fr>
From: Zong Li <zong.li@sifive.com>
Date: Mon, 13 Jan 2020 12:33:40 +0800
Message-ID: <CANXhq0pn+Nq6T5dNyJiB6xvmqTnPSzo8sVfqHhGyWUURY+1ydg@mail.gmail.com>
Subject: Re: linux-next: build warning after merge of the bpf-next tree
To: Alexandre Ghiti <alexandre@ghiti.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_203353_406102_8F2F18D7 
X-CRM114-Status: GOOD (  25.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, daniel@iogearbox.net,
 netdev@vger.kernel.org, Palmer Dabbelt <palmerdabbelt@google.com>,
 ast@kernel.org,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 linux-next@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 11, 2020 at 10:31 PM Alexandre Ghiti <alexandre@ghiti.fr> wrote:
>
>
> On 1/10/20 7:20 PM, Palmer Dabbelt wrote:
> > On Fri, 10 Jan 2020 14:28:17 PST (-0800), alexandre@ghiti.fr wrote:
> >> Hi guys,
> >>
> >> On 10/27/19 8:02 PM, Stephen Rothwell wrote:
> >>> Hi all,
> >>>
> >>> On Fri, 18 Oct 2019 10:56:57 +1100 Stephen Rothwell
> >>> <sfr@canb.auug.org.au> wrote:
> >>>> Hi all,
> >>>>
> >>>> After merging the bpf-next tree, today's linux-next build (powerpc
> >>>> ppc64_defconfig) produced this warning:
> >>>>
> >>>> WARNING: 2 bad relocations
> >>>> c000000001998a48 R_PPC64_ADDR64 _binary__btf_vmlinux_bin_start
> >>>> c000000001998a50 R_PPC64_ADDR64 _binary__btf_vmlinux_bin_end
> >>>>
> >>>> Introduced by commit
> >>>>
> >>>>    8580ac9404f6 ("bpf: Process in-kernel BTF")
> >>> This warning now appears in the net-next tree build.
> >>>
> >>>
> >> I bump that thread up because Zong also noticed that 2 new
> >> relocations for
> >> those symbols appeared in my riscv relocatable kernel branch following
> >> that commit.
> >>
> >> I also noticed 2 new relocations R_AARCH64_ABS64 appearing in arm64
> >> kernel.
> >>
> >> Those 2 weak undefined symbols have existed since commit
> >> 341dfcf8d78e ("btf: expose BTF info through sysfs") but this is the fact
> >> to declare those symbols into btf.c that produced those relocations.
> >>
> >> I'm not sure what this all means, but this is not something I expected
> >> for riscv for
> >> a kernel linked with -shared/-fpie. Maybe should we just leave them to
> >> zero ?
> >>
> >> I think that deserves a deeper look if someone understands all this
> >> better than I do.
> >
> > Can you give me a pointer to your tree and how to build a relocatable
> > kernel?
> > Weak undefined symbols have the absolute value 0,
>
>
> So according to you the 2 new relocations R_RISCV_64 are normal and
> should not
> be modified at runtime right ?
>
>
> > but the kernel is linked at
> > an address such that 0 can't be reached by normal means.  When I added
> > support
> > to binutils for this I did it in a way that required almost no code --
> > essetially I just stopped dissallowing x0 as a possible base register
> > for PCREL
> > relocations, which results in 0 always being accessible.  I just
> > wanted to get
> > the kernel to build again, so I didn't worry about chasing around all the
> > addressing modes.  The PIC/PIE support generates different relocations
> > and I
> > wouldn't be surprised if I just missed one (or more likely all) of them.
> >
> > It's probably a simple fix, though I feel like every time I say that
> > about the
> > linker I end up spending a month in there...
>
> You can find it here:
>
> https://github.com/AlexGhiti/riscv-linux/tree/int/alex/riscv_relocatable_v1
>
> Zong fixed the bug introduced by those 2 new relocations and everything
> works
> like a charm, so I'm not sure you have to dig in the linker :)
>

I'm not quite familiar with btf, so I have no idea why there are two
weak symbols be added in 8580ac9404f6 ("bpf: Process in-kernel BTF")
as well, According on relocation mechanism, maybe it is unnecessary to
handle weak undefined symbol at this time, because there is no
substantive help to relocate the absolute value 0. I just simply
ignore the non-relative relocation types to make processing can go
forward, and it works for me based on v5.5-rc5.

> Alex
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
