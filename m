Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB90ECD8F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 07:12:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4vPXZFqA85WQam3r0m/FStT8tKB6wGp086RLHv6B/Gs=; b=FT6UV1tDn5gEAZ
	fsCqHIISq9WZXqzUDyFDqw0v39gsKkIm8Hg9dnc0YF9N6lMaDiQ+hFYc9PJPkHPV6Clg8dbyVbJ6O
	CGIoGimfkRwlwsuahTmmmjpHk37mP4u/gZHebe9Q0tlHXvTTrN1F62tLknIfZQ92sXu3j2IwDCHsg
	JYB0KFp9mQIvK0Fim0CdT44r7dcruRFP2FKLpQ82pY1pcI46QjGIXO9JynHl0/AZMkAdbhYKl60p+
	En4W4jkhkm/DRlZQ/Llpldiav+V8O+53xVKwzP8rHjwjYnMMcHPBPoiQNOWqDvvT7MC3z+jhoHOiM
	Kp9jndFf6AGkCY37WCdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQmdX-0004P4-IG; Sat, 02 Nov 2019 06:11:47 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQmdR-0004M5-7C
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 06:11:42 +0000
Received: by mail-yb1-xb42.google.com with SMTP id e14so5427509ybk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 23:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=mjOrQcYKLW2930x7QuK0UD/Ug/m/wLd6/vzT6tFMVg0=;
 b=QbiM/OtBQBsVGjrINfMco5zXT8ZDez2zNcAZRW+8hDnrU017iIVmeCfe8+88eWgEa4
 cAYabisKmvnihBEjbnsMEMxJoJBYpnS6XpZSG6j+Ra4RNm6BxAcvCjpTL5VGeFMlccXK
 gR2cgWCTOFZOEmb2aW9+xV7aXL0uC4xQdeb1+6RLJcFe2FaQ3j6dVwAyoWNk1UoVD99H
 eMqKHqgdjzHTDnxhT2mcl4xyXBFnujxKq0FlIAcO5uNldCXlsXO5BX2g0gZEO7+Zuj7q
 K1p8jCTlwzzZBgi+fxSmYPAlTQ4rz5AygRNCr8cYQgzUaWF+8JDIYBHPyg0gZAv7HEl2
 NC+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=mjOrQcYKLW2930x7QuK0UD/Ug/m/wLd6/vzT6tFMVg0=;
 b=hHQyxkHST9jckP6XL8LzBusj24QpJMXaGNwO5bGVRD9w70OrWCdRjZmGWFOIfUl2Sj
 Ub6DSTso9Do8scFh8ALv9uIsmbIdv08Jd553BjO/0IqDX89hxNqbsIl1yuajAh/P8C9b
 povFvcrmz5zQBAbqf5ypcGieEnNVVqOl/KpWRyA71IUFwNeymgyRlvwVxcWKHBoMTqgJ
 QTSg+Pyv+yHtmWGNSk+8PxDsoNUb2Jngg6BeqckdQ87i8L5nzd5MI9VgNu47fhScbWQe
 11uYjgUSOVulnT+uz8nKiFEHSwXqSJaKorrLps0Yulz2MmextGLDHtQK5iynaHgZ1b06
 IeiQ==
X-Gm-Message-State: APjAAAVEtghpbWGsvHADHkx2vnHnMQthQAIclxgBcSdx9KrbAKARjfmb
 dzBe1PhxlF814BoyJ9JuVsFmBg==
X-Google-Smtp-Source: APXvYqxQAHaNExjSPjK0OQY1oZaTxr6QlVF2NqjriATi9ryeAv5RZRe9aIdkwtMvDHW211RNbxih7Q==
X-Received: by 2002:a5b:f11:: with SMTP id x17mr390973ybr.430.1572675098338;
 Fri, 01 Nov 2019 23:11:38 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1038-30.members.linode.com.
 [45.33.96.30])
 by smtp.gmail.com with ESMTPSA id u205sm2583186ywa.65.2019.11.01.23.11.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 Nov 2019 23:11:37 -0700 (PDT)
Date: Sat, 2 Nov 2019 14:11:28 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Robert Walker <robert.walker@arm.com>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH v2 1/4] perf cs-etm: Continuously record last branches
Message-ID: <20191102061128.GB26019@leoy-ThinkPad-X240s>
References: <20191101020750.29063-1-leo.yan@linaro.org>
 <20191101020750.29063-2-leo.yan@linaro.org>
 <3dd30190-b266-826d-3e2d-91f1446cc5fc@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3dd30190-b266-826d-3e2d-91f1446cc5fc@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_231141_326889_E037152C 
X-CRM114-Status: GOOD (  23.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Fri, Nov 01, 2019 at 03:30:19PM +0000, Robert Walker wrote:
> On 01/11/2019 02:07, Leo Yan wrote:
> > Every time synthesize instruction sample, the last branches recording
> > will be reset.  This would be fine if the instruction period is big
> > enough, for example if we use the option '--itrace=3Di100000', the last
> > branch array is reset for every instruction sample (10000 instructions
> > per period); before generate the next instruction sample, there has the
> > enough packets coming to fill last branch array.  On the other hand,
> > if set a very small period, the packets will be significantly reduced
> > between two continuous instruction samples, thus if the last branch
> > array is reset for the previous instruction sample, it's almost empty
> > for the next instruction sample.
> > =

> > To allow the last branches to work for any instruction periods, this
> > patch avoids to reset the last branches for every instruction sample
> > and only reset it when flush the trace data.  The last branches will
> > be reset only for two cases, one is for trace starting, another case
> > is for discontinuous trace; thus it can continuously record last
> > branches.
> =

> Is this the right thing to do?

Thanks for reviewing and bringing up the questions.  To be honest, my
concern was mainly related with AudoFDO but I don't aware other
potential issues.  So any concern is welcome, in case I miss anything;
hope we can get conclusion with some dicussion.  Please see more
detailed explanation in below.

> This would cause profiling tools to count
> the same branch several times if it appears in multiple instruction sampl=
es,
> which could result in a biased profile.

Let's clarify for this.  Firstly, here the 'branch' doesn't refer to
'branch' sample, it means the last branch recording for instruction
samples.  So basically, neither instruction sample nor branch sample
will be changed with this patch.

This patch tries to fix the issue as below:

Before this patch:

  ffff800010083580 <el0_sync>:
  ffff800010083580:  stp     x0, x1, [sp]         -> synthesize instruction=
 sample(n),
                                                     record the last branch,
                                                     reset the last branch.
  ffff800010083584:  stp     x2, x3, [sp,#16]
  ffff800010083588:  stp     x4, x5, [sp,#32]     -> synthesize instruction=
 sample(n+1),
                                                     the last branch is emp=
ty which is
                                                     reset by the instructi=
om sample(n).
  ffff80001008358c:  stp     x6, x7, [sp,#48]
  ffff800010083590:  stp     x8, x9, [sp,#64]     -> synthesize instruction=
 sample(n+2),
                                                     the last branch is emp=
ty which is
                                                     reset by the instructi=
om sample(n).
  [...]


After this patch:

  ffff800010083580 <el0_sync>:
  ffff800010083580:  stp     x0, x1, [sp]         -> synthesize instruction=
 sample(n),
                                                     record the last branch.
  ffff800010083584:  stp     x2, x3, [sp,#16]
  ffff800010083588:  stp     x4, x5, [sp,#32]     -> synthesize instruction=
 sample(n+1),
                                                     record the last branch.
  ffff80001008358c:  stp     x6, x7, [sp,#48]
  ffff800010083590:  stp     x8, x9, [sp,#64]     -> synthesize instruction=
 sample(n+2),
                                                     record the last branch.
  [...]


So from my understanding, the last branch recording works as the
affiliate info for instruction samples and it allows us (or tools) to
know what's the execution flow for the instruction samples.  Seems to
me, it doesn't change value for instruction sample, but we can have
correct info of the last branch recording for every instruction samples.

> The current implementation matches the behavior of intel_pt where the bra=
nch
> buffer is reset after each sample, so=A0 the instruction sample only incl=
udes
> branches since the previous sample.

Exactly.

@Adrian, it would be nice if you could confirm intel_pt should apply
the samiliar fixing or not?

> However x86 lbr (perf record -b) does appear to repeat the same full bran=
ch
> stack on several samples until a new stack is captured.
> =

> I'm not sure what the right or wrong answer is here.=A0 For AutoFDO, we're
> likely to use a much bigger period (>10000 instructions) so won't be
> affected, but other tools might be.

Agree, if AutoFDO uses big period (e.g. --itrace=3Di10000), this patch
will not change anything.  With big period, it has enough packets to
generate branch recording between two instruction samples.

Could you elaborate what's 'other tools'?  If it's open sourced tool,
I can try to test with this patch set.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
