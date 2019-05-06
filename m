Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD8115284
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 19:14:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FBM322cR6bmP26YoVvgYwtcQT6wLid13BBepNKcXpY=; b=hWdamQC5/80nox
	inOaQG5g4rw0XdTSSJUA3XgyWHsQ8ETkzshZgWxOBSbJhniohVPiIZSMclQlpmHUTF1NaUFrZxpRC
	X1ZZ2jvPhrUGVMxID+R/wvbjVRHG3Oems1JMKY7BOA3iwBgXR6zB/CNijAJegG4yKJVKNqKo8vrQI
	ibbB5h2MZWGL9GFyi9781dRJCVFc9Hihf0Jy4XJjhwSTPFFwbjMTYUUg5XKEV6jH2VA0PTHXdSGn6
	XjkYfOXS4dJkzqCCS1kjAQ1Y8zTPPeeLOufEYlWGz+XknwfAC6L5EKz+7XD5derFqzM8eEoUU3kMb
	rv5lotkisGN5cAWtNrpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNhBt-0003p1-AO; Mon, 06 May 2019 17:14:13 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNhBk-0003oJ-Nn
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 17:14:06 +0000
Received: by mail-lf1-x12b.google.com with SMTP id u27so9445434lfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 10:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BWErFa2Tb4Iv9aICLnei73w528HT1mPAhqrqIzBV8n8=;
 b=A/1GS57fjXXZgfDIFSzv5EkjXjqduB2iecI//MYxRTsOyDEtXxuDBaXBNmKk3QNbZo
 ic+a6bYXBTLe0BX8PfBz1JeKdB8jrQ/3YOzCOEe0IgU7hvKDFxotfpKn/N3W1iJDimFx
 GYlEKt8UbE9tbFG9WjvQkiWtxAMk3TOqfUJS8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BWErFa2Tb4Iv9aICLnei73w528HT1mPAhqrqIzBV8n8=;
 b=oHC06kN6eRyhsBSwBBMRReHoMHjvkAduAygQML8tLxp4uR+5Zaa9062wcXfX2FdLRw
 IKd0tIUegGLeI/GMYhnoiGTmradhgk74+d+PFnG7wkez24JtpiR/znOUE+7QHXp60fAK
 XFac/5KBUAMyU8RXV4Z0PYsbW/NdtpGeh4doFRDYwxl6TOjYmP++3WKcsfHHvrDZy4FJ
 J5VR98vO8mimKEmEqkyWUkKZyQtfG53RaOW2hw7u7Hs9c7H8updKkvCBPSFdtViEVbUt
 CLkLJJJLGi4NXOAeGjz7WaQ1Ow+gEO+LoJNxmbjT+wQjXnE5B/+J3UpjmFYGIEtzuA0T
 NyFw==
X-Gm-Message-State: APjAAAUdWD4IamFPZX3ubg2g4QMJLLdpENgkJVnZqk1ou9n7mqaG57zO
 6e8oOEYBPxI2jqHVCr9xOvfZaxwP9ug=
X-Google-Smtp-Source: APXvYqzjJ9RJz9NbweJfPHA5LTJz17k9+Cc045BSo7tccoPMyN4XczOM+LNdUbnWs4UcOXX8kL8vOw==
X-Received: by 2002:ac2:514b:: with SMTP id q11mr13670468lfd.114.1557162841181; 
 Mon, 06 May 2019 10:14:01 -0700 (PDT)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com.
 [209.85.167.47])
 by smtp.gmail.com with ESMTPSA id l14sm2067424lfc.61.2019.05.06.10.13.59
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 10:13:59 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id w23so9714933lfc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 10:13:59 -0700 (PDT)
X-Received: by 2002:ac2:43cf:: with SMTP id u15mr13444160lfl.67.1557162838971; 
 Mon, 06 May 2019 10:13:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190429145159.GA29076@hc>
 <CAHk-=wjPqcPYkiWKFc=R3+18DXqEhV+Nfbo=JWa32Xp8Nze67g@mail.gmail.com>
 <20190502082741.GE13955@hc>
 <CAHk-=wjmtMrxC1nSEHarBn8bW+hNXGv=2YeAWmTw1o54V8GKWA@mail.gmail.com>
 <20190502231858.GB13168@dc5-eodlnx05.marvell.com>
 <CAHk-=wiEahkwDXpoy=-SzJHNMRXKVSjPa870+eKKenufhO_Hgw@mail.gmail.com>
 <20190506061100.GA8465@dc5-eodlnx05.marvell.com>
In-Reply-To: <20190506061100.GA8465@dc5-eodlnx05.marvell.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 6 May 2019 10:13:43 -0700
X-Gmail-Original-Message-ID: <CAHk-=whGAef6+mZi-_+rfTDxXrLDw-jrOiy3MNEpLAkC5scGRg@mail.gmail.com>
Message-ID: <CAHk-=whGAef6+mZi-_+rfTDxXrLDw-jrOiy3MNEpLAkC5scGRg@mail.gmail.com>
Subject: Re: [EXT] Re: [RFC] Disable lockref on arm64
To: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_101404_779607_A5C1DCD3 
X-CRM114-Status: GOOD (  22.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 5, 2019 at 11:13 PM Jayachandran Chandrasekharan Nair
<jnair@marvell.com> wrote:
>
> > It's not normal, and it's not inevitable.
>
> If you look at the code, the CAS failure is followed by a yield
> before retrying the CAS. Yield on arm64 is expected to be a hint
> to release resources so that other threads/cores can make progress.
> Under heavy contention, I expect the current code to behave the way
> I noted in my last mail, with the issue with fairness as well.

Yes, this is a good point.

It's entirely possibly that _particularly_ for CAS loops - where we
get an updated value that caused the CAS to fail - we should not yield
in between every CAS. Exactly so that we don't force the CPU to flush
the cacheline that it just got and make the CAS loop do lots of
unnecessary work and just keep looping.

That said, I think right now all ARM implementations actually treat
the yield instruction as a pure nop, so I assume this isn't actually
the root of the ThunderX2 problems.

But we could do something like "unroll the cmpxchg loop twice, only
yield every other iteration" exactly for the case wher cpu_relax()
might encourage the CPU to actually release the cacheline.

If you find that something like that would help ThunderX2, we can most
certainly try that kind of thing. It makes sense, and unrolling the
cmpxchg loop once might even help with branch prediction (ie the
common case might be that the *first* cmpxchg succeeds, and that's
what the branch predictors get primed for, but then if the first one
actually fails, we fall through to the contention case, and now maybe
the branch predictor ends up being primed for *that* case for the
second one).

Yes, the above is wild handwaving - but it's the kind of thing we
could easily do if the hardware people have a good argument for them.

I'm not asking for _perfect_ hardware. I'm just asking for hardware to
not be actively antagonistic to something fundamental like a cmpxchg
loop.

> Your larger point seems to be that the hardware has smarter to
> scale standard locking implementations when adding cores, and
> be graceful even in extremely high contention cases. Yes, this
> is something we should be looking at for ThunderX3.

Yes. Also, my point really is that no core should ever be in the
situation that it fetches a cache-line, only to then release it
immediately again without making any progress. You do want a *certain*
amount of stickiness to the cachelines.

Of course, you very much do not want to overdo it - I'm talking about
keeping the cacheline around for tens of cycles, not for hundreds of
cycles. Enough that if you have small code snippets that are in and
out quickly, you don't see bouncing at that level.

Because you *don't* want the stickiness to be such that once one CPU
has the cacheline, it will stay with that CPU (or that socket) as long
as the CPU hammers it all the time.

So for example, in the case of a cmpxchg loop, maybe you'll get a
couple of branch mispredicts the first few times round the loop (first
because the original value read was a plain read and the cacheline was
shared rather than exclusive, but then after that because the branch
predictor saw previous cases where there was no contention, and the
loop exited immediately).

So maybe the first couple of iterations the core might be "slow
enough" to not get the cmpxchg loop working well. But not a lot more
than that (again, unless something special happens, like an interrupt
storm that keeps interrupting the loop).

End result: I do think the cache coherency needs to be a *bit* smarter
than just a "oh, another core wants this line, I will now immediately
try to satisfy it". And yes, those kinds of things get more important
the more cores you have. You don't need a whole lot of smarts if you
have just a couple of cores, because you'll be making progress
regardless.

And note that I really think this kind of support absolutely falls on
hardware. Software simply _cannot_ make some good tuning decision
using backoff or whatever. Yes, yes, I know people have done things
like that historically (Sparc and SunOS were famous for it), but part
of doing them historically was that

 (a) they didn't know better

 (b) the software was often tuned to particular hardware and loads (or
at least a very small set of hardware)

 (c) there wasn't necessarily better hardware options available

but none of the above is true today.

Things like backoff loops in software are not only hw specific, they
tend to have seriously bad fairness behavior (and they depend on
everybody honoring the backoff, which can be a security issue), so
then you have to add even more complexity to deal with the fairness
issues, and your cmpxchg loop becomes something truly disgusting.

Which is why I say: "do it right in hardware".

                   Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
