Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5FB222F8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 12:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6/IS9lNPKHfGo4+nDOAhdI3pJnC0e4BxtZwxUqXFWo=; b=pLB2Ue+I8kLITF
	mx6qSSnVtSeudj0VcyUC/bmZ/Lxh5wY7yrsrcOaLyfK05JgMB527Y11C9q483HhNGc/9UR4jd01el
	99+yZYjQmSWH5InKsr2sfne8fWzTtRdfaRfuYsH4QJjNVZb1rGxRulLSJrdZjhyaEoV3MlxZ4nJfj
	9yaaM3w//E1yK3BiGDxXf77Wi1GCZqLTaQdixNviTa+REOi5kYs6UXV+zkWhfHMauzFMiuNzpW4Rx
	Vh22DEajNoAnUVI3lbOLw9neFw9j5c+DkN9h1vHjNXgqY0wioum4CJqWhesMxtEpeDKkl268awvuy
	vY2rYwaCxaVEIIaLI3Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRw9C-0008EX-M5; Sat, 18 May 2019 10:00:58 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRw94-0008Dp-7d
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 10:00:52 +0000
Received: by mail-io1-xd42.google.com with SMTP id p2so7443970iol.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 May 2019 03:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JRtjnzNcf3yhB2MxCBJqAnArNNc7Fr+SZA5dBOrEV90=;
 b=ZIdkarl5Xn8hlQtMF0N5Ak3sHU9OmA6a3MbeviitO/YD7kxl6R0PDXc2zuCNPeSBm2
 KzoxF+mJkTlpMJqXnaXkrkEanhwuClbA6nLEgFSfZ/HgmFuiWSlzu77QaxVBPVENosSo
 5jjIqGxv7SlDz5gJ9n60bexQKxCZA9vABP0f5NY8QixxJdMeJ2abD1kbD/aaRFlIUpIV
 h1DPQMeR4Oywgi1tRclsA/eLxYlIAgRg2X+mv/shkCPzBRDObVSyfEdOojCkdxNCjzHE
 wCH6WZINfdmiyv0ZW3Ko8UV+PXK0BBomoi61/58Joj46jsB8Nj8EnreSAV40IVfsciWW
 7KSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JRtjnzNcf3yhB2MxCBJqAnArNNc7Fr+SZA5dBOrEV90=;
 b=K9+9/FbmMXqzFpBll5QLWhQn2PbmQwwyzvEwyhtmN0p539vFrhP9Zy7BNW8yWoI8wv
 qOMbGg/0Mp+p4eARb1AJHUPjUGscodYpJyCn6Dz8yjihPemsr8npbYuEsxyEZ2UBKCIc
 tAnDOMlM/Sq2W2Sx0kGe7H+/73KWyhBzgTicpgvOs/1M8aZ/vaf76TTC+GSYyCTufZf3
 FNezDxlvf0xWz9sowlvmMUoWmMHyGfiEnq6cTJf4TJydVWV65j/DCT3QN7iKqtGhxiM5
 Lb0JrpxYrTgGx7Cz4aERnBIocWfcc4AveIa1QKIJs3Ph30mTMq/9rUkk6yuHlQglp0iG
 iuxQ==
X-Gm-Message-State: APjAAAUC1GC8nK2paI5T93a30uKlTbyC6CujRKIiYZiDN5dkE8W62pu3
 rXdsvugoOg4O80QKxPGGHMt9TOmkSOUqVGEEAj5BaA==
X-Google-Smtp-Source: APXvYqx4bvatpfL3NIuIe/lAYXvJa6LopMNSIHJiCMAb1SC4s1Ha0Ad/9vYk/fc50prgdpkalcj4sHsk3kWAy1dnzH0=
X-Received: by 2002:a5d:968e:: with SMTP id m14mr2874037ion.49.1558173648766; 
 Sat, 18 May 2019 03:00:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190429145159.GA29076@hc>
 <CAHk-=wjPqcPYkiWKFc=R3+18DXqEhV+Nfbo=JWa32Xp8Nze67g@mail.gmail.com>
 <20190502082741.GE13955@hc>
 <CAHk-=wjmtMrxC1nSEHarBn8bW+hNXGv=2YeAWmTw1o54V8GKWA@mail.gmail.com>
 <20190502231858.GB13168@dc5-eodlnx05.marvell.com>
 <CAHk-=wiEahkwDXpoy=-SzJHNMRXKVSjPa870+eKKenufhO_Hgw@mail.gmail.com>
 <20190506061100.GA8465@dc5-eodlnx05.marvell.com>
 <20190506181039.GA2875@brain-police>
 <20190518042424.GA28517@dc5-eodlnx05.marvell.com>
In-Reply-To: <20190518042424.GA28517@dc5-eodlnx05.marvell.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Sat, 18 May 2019 12:00:34 +0200
Message-ID: <CAKv+Gu9U9z3iAuz4V1c5zTHuz1As8FSNGY-TJon4OLErB8ts8Q@mail.gmail.com>
Subject: Re: [RFC] Disable lockref on arm64
To: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_030050_350902_657649B8 
X-CRM114-Status: GOOD (  24.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jan Glauber <jglauber@marvell.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 18 May 2019 at 06:25, Jayachandran Chandrasekharan Nair
<jnair@marvell.com> wrote:
>
> On Mon, May 06, 2019 at 07:10:40PM +0100, Will Deacon wrote:
> > On Mon, May 06, 2019 at 06:13:12AM +0000, Jayachandran Chandrasekharan Nair wrote:
> > > Perhaps someone from ARM can chime in here how the cas/yield combo
> > > is expected to work when there is contention. ThunderX2 does not
> > > do much with the yield, but I don't expect any ARM implementation
> > > to treat YIELD as a hint not to yield, but to get/keep exclusive
> > > access to the last failed CAS location.
> >
> > Just picking up on this as "someone from ARM".
> >
> > The yield instruction in our implementation of cpu_relax() is *only* there
> > as a scheduling hint to QEMU so that it can treat it as an internal
> > scheduling hint and run some other thread; see 1baa82f48030 ("arm64:
> > Implement cpu_relax as yield"). We can't use WFE or WFI blindly here, as it
> > could be a long time before we see a wake-up event such as an interrupt. Our
> > implementation of smp_cond_load_acquire() is much better for that kind of
> > thing, but doesn't help at all for a contended CAS loop where the variable
> > is actually changing constantly.
>
> Looking thru the perf output of this case (open/close of a file from
> multiple CPUs), I see that refcount is a significant factor in most
> kernel configurations - and that too uses cmpxchg (without yield).
> x86 has an optimized inline version of refcount that helps
> significantly. Do you think this is worth looking at for arm64?
>

I looked into this a while ago [0], but at the time, we decided to
stick with the generic implementation until we encountered a use case
that benefits from it. Worth a try, I suppose ...

[0] https://lore.kernel.org/linux-arm-kernel/20170903101622.12093-1-ard.biesheuvel@linaro.org/

> > Implementing yield in the CPU may generally be beneficial for SMT designs so
> > that the hardware resources aren't wasted when spinning round a busy loop.
>
> Yield is probably used in sub-optimal implementations of delay or wait.
> It is going to be different across multiple implementations and
> revisions (given the description in ARM spec). Having a more yielding(?)
> implementation would be equally problematic especially in the lockref
> case.
>
> > For this particular discussion (i.e. lockref), however, it seems as though
> > the cpu_relax() call is questionable to start with.
>
> In case of lockref, taking out the yield/pause and dropping to queued
> spinlock after some cycles appears to me to be a better approach.
> Relying on the quality of cpu_relax() on the specific processor to
> mitigate against contention is going to be tricky anyway.
>
> We will do some more work here, but would appreciate any pointers
> based on your experience here.
>
> Thanks,
> JC
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
