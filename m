Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C83345A56
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 12:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/W8e6L/EV96eSeWz6II3JNUiZh54dmskAaqbi+BxVAA=; b=P9PCilVZlyuya9
	qSFACvw0OFNnYyhuAz8MOAYMg/Z8DoZjnsKvS7QBUhfkSXjzAv+sOEV9CWAur65+xzed0h//Q3Ilc
	bF2Nw2fISUD8NQ6yi5GZYe3QzGwrkWbalS3klGA+P7Uty71KfF3riF1LmaHDx35gLUkXSnw4zT3BN
	9FHEKBOcTTQUKl5gQdO1JFpI9unO2ES6Hjm5gokmZa3UYHdTqW/XtSR7MliiwcNaManWJeFnkA1rv
	fmd2cDaru1rULIsVQ6RjT/PCo/RlcELU3eFPrDdG+gRWqZh7ovLcPfE/WkLOCOF1LhYnq4SxiR6Vv
	uva4W1Tx8B/835Khyosg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjOe-0008KZ-Th; Fri, 14 Jun 2019 10:25:24 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbjOP-0008IC-CQ
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 10:25:10 +0000
Received: by mail-io1-xd44.google.com with SMTP id k8so4699044iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 03:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VTlZwBpQOZGvfo9M/qsELW5H/5S4OXYm4x9oeMMV64Y=;
 b=Z68C9m4rei/U9YZ8xm4SGtBJ7DtNtjfQzvA89J5Ujh4+GaZH+ovdMdyWmXiGKt1a+h
 64XaYbmGQAMC0nwYZj8CFpQ3NStkRXhmIPcEx4lw5lQIXJeSKBL2VV98aF6xwQAk1Z9o
 Psn8b7L/gt8BYHxQ0d5PXy83Mrai/MeH/c/fnxGL3meEkJ8xmT7PjwgU7bKEEB1tdQkY
 O5ZMYBrYOvepT4IQh7LIhqDH91oOvT44gpEdqFwHXG0N9ROb0vzpyiZVUitVMmkgpOc2
 4QN28jYnNmho6XHP9/NzqQIvQoeyMjgcM08BrB0eLl/KOj0o1iHuHCgjoQm/KFbto8UV
 6Csg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VTlZwBpQOZGvfo9M/qsELW5H/5S4OXYm4x9oeMMV64Y=;
 b=TU5jEvm/O34+YELD04L+BsOtin6B8QWB1kOKHbyMrjvuib/GWKwFfTbN/6JcaO5Jgu
 8K61mFfS806mbZmLm0DeLdO3z7Led/YmvApein3x9BaVOx9QAKZOBwnE8PAMhuubz1QH
 3QypL7TU98MM+mGaxdb+F8WUC7lhXOeaeNlvSR80Fb1oLMHMD+Cyky5VS4O5X3FiIAnX
 f9nXHJyzSHiB+P/N5MC1xHXme3WCgni9EWMABQjaEIuMHd82RSYXFqntNAMSJSI0n6g1
 KvmoH4BuKuUdi0ys6w77THqUE0y0BZu4FpVyVOugn+QUVvlXAmqWOYY8f+m/sUk5TTVU
 0JHw==
X-Gm-Message-State: APjAAAWKci8P/MBxm0aK2m4FX7620ICT7NHU8sO/kcxONFQu/8YO05cm
 J/XZml+y3w/aypZFPRz9pBz3xaW2NrT5LP/gUHNgVg==
X-Google-Smtp-Source: APXvYqyhJKWfx8hlWAwDXO1oAD4MzoKSs+Q1qwCrsEYGJs4tVIXrJmtDkJDq65AR6ZqM0grvv4RhAHbFCd4wJp338B0=
X-Received: by 2002:a5d:9d83:: with SMTP id 3mr54103661ion.65.1560507908192;
 Fri, 14 Jun 2019 03:25:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190502231858.GB13168@dc5-eodlnx05.marvell.com>
 <CAHk-=wiEahkwDXpoy=-SzJHNMRXKVSjPa870+eKKenufhO_Hgw@mail.gmail.com>
 <20190506061100.GA8465@dc5-eodlnx05.marvell.com>
 <20190506181039.GA2875@brain-police>
 <20190518042424.GA28517@dc5-eodlnx05.marvell.com>
 <CAKv+Gu9U9z3iAuz4V1c5zTHuz1As8FSNGY-TJon4OLErB8ts8Q@mail.gmail.com>
 <20190522160417.GF7876@fuggles.cambridge.arm.com>
 <20190612040933.GA18848@dc5-eodlnx05.marvell.com>
 <20190612093151.GA11554@brain-police>
 <20190614070914.GA21961@dc5-eodlnx05.marvell.com>
 <20190614095846.GC10506@fuggles.cambridge.arm.com>
In-Reply-To: <20190614095846.GC10506@fuggles.cambridge.arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 14 Jun 2019 12:24:54 +0200
Message-ID: <CAKv+Gu_Kdq=UPijjA84FpmO=ZsdEO9EyyF7GeOQ+WmfqtO_hMg@mail.gmail.com>
Subject: Re: [RFC] Disable lockref on arm64
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_032509_432250_EFE5AE17 
X-CRM114-Status: GOOD (  29.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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
Cc: Kees Cook <keescook@chromium.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 14 Jun 2019 at 11:58, Will Deacon <will.deacon@arm.com> wrote:
>
> [+Kees]
>
> On Fri, Jun 14, 2019 at 07:09:26AM +0000, Jayachandran Chandrasekharan Nair wrote:
> > On Wed, Jun 12, 2019 at 10:31:53AM +0100, Will Deacon wrote:
> > > On Wed, Jun 12, 2019 at 04:10:20AM +0000, Jayachandran Chandrasekharan Nair wrote:
> > > > Now that the lockref change is mainline, I think we need to take another
> > > > look at this patch.
> > >
> > > Before we get too involved with this, I really don't want to start a trend of
> > > "let's try to rewrite all code using cmpxchg() in Linux because of TX2".
> >
> > x86 added a arch-specific fast refcount implementation - and the commit
> > specifically notes that it is faster than cmpxchg based code[1].
> >
> > There seems to be an ongoing effort to move over more and more subsystems
> > from atomic_t to refcount_t(e.g.[2]), specifically because refcount_t on
> > x86 is fast enough and you get some error checking atomic_t that does not
> > have.
>
> Correct, but there are also some cases that are only caught by
> REFCOUNT_FULL.
>

Yes, but do note that my arm64 implementation catches
increment-from-zero as well.

> > > At some point, the hardware needs to play ball. However...
> >
> > Even on a totally baller CPU, REFCOUNT_FULL is going to be slow :)
> > On TX2, this specific benchmark just highlights the issue, but the
> > difference is significant even on x86 (as noted above).
>
> My point was more general than that. If you want scalable concurrent code,
> then you end up having to move away from the serialisation introduced by
> locking. The main trick in the toolbox is cmpxchg() so, in the absence of
> a zoo of special-purpose atomic instructions, it really needs to do better
> than serialising.
>
> > > I was hoping we could use LDMIN/LDMAX to maintain the semantics of
> > > REFCOUNT_FULL, but now that I think about it I can't see how we could keep
> > > the arithmetic atomic in that case. Hmm.
> >
> > Do you think Ard's patch needs changes before it can be considered? I
> > can take a look at that.
>
> I would like to see how it performs if we keep the checking inline, yes.
> I suspect Ard could spin this in short order.
>

Moving the post checks before the stores you mean? That shouldn't be
too difficult, I suppose, but it will certainly cost performance.

> > > Whatever we do, I prefer to keep REFCOUNT_FULL the default option for arm64,
> > > so if we can't keep the semantics when we remove the cmpxchg, you'll need to
> > > opt into this at config time.
> >
> > Only arm64 and arm selects REFCOUNT_FULL in the default config. So please
> > reconsider this! This is going to slow down arm64 vs. other archs and it
> > will become worse when more code adopts refcount_t.
>
> Maybe, but faced with the choice between your micro-benchmark results and
> security-by-default for people using the arm64 Linux kernel, I really think
> that's a no-brainer. I'm well aware that not everybody agrees with me on
> that.

I think the question whether the benchmark is valid is justified, but
otoh, we are obsessed with hackbench which is not that representative
of a real workload either. It would be better to discuss these changes
in the context of known real-world use cases where refcounts are a
true bottleneck.

Also, I'd like to have Kees's view on the gap between REFCOUNT_FULL
and the fast version on arm64. I'm not convinced the cases we are not
covering are such a big deal.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
