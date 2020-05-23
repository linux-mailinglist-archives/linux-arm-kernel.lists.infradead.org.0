Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0E01DF4FF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 07:36:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7P7haWexUmYZxVaLMnF8PaMfQiSGt9h+V/7viALsh0=; b=DSKHSaGYfF/Fh4
	26yI2C+huZ9k6NX6NRKLOGehqtijwy35gCzHb/0nAjt3osnP7wyRX1vAho3YOR0j9ghlGE7VSOH2W
	jYCPF1HzU0ZPbFhLNwK/jue5vg4kjnUh3WpqrqGDBt6m/5UYap3JpZaGiqPBEV0W812DWiZXQIz3S
	Db7EWq1SUBHAwJmCxQxwmDm0vkhbwbPpg63rSTmLaBQM0L2+P/ledWixSLLmh9iq49+EBRjxAd6Fw
	iKgJlfYDInXVcxKs5Th2c97GkkZrcYa6xIr7kvnQunEABJXtQ4cWIkGgJbucucqsCQluprh71Frv5
	1d1tJtaBV2cZhyMQ8Y8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcMpo-0000kO-I6; Sat, 23 May 2020 05:36:36 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcMpf-0000k1-6A
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 05:36:28 +0000
Received: by mail-io1-xd42.google.com with SMTP id o5so13792515iow.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 22:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DVZxSzwA9CzmHdFAV6csNI6NcE4soWE2wwHJyC9WY5Q=;
 b=qMvYuAdVwUstM5eZ8s2mMEM8Ffoq9J6r6BAyMyrup91tDDA2gOAopct2F0cZeqIG2c
 jdFWXURIwOl3uGtdzoV2oSU2My6F9wuXgNOf4Zn/m3U3FR7bweX3y2OxhXQZtlcJV643
 rgQnusORMVgBOBmlHc9W2xK7eD4i/MXNnK4/huoRCnAC/YQihLlMnHsxmbH/00rLYj8q
 lJAsW+qLpmbowd+K6xXi6jiN3uqHow/zv4bxty46haOCK09jGM++retbTy4gpqKDO/th
 nlNvn/OQUi+OkcsOVosZJoCTmb08UCzjNz/LLGkS9cEkT1lByiRcoa2fA94Gx9FU7tvy
 kbbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DVZxSzwA9CzmHdFAV6csNI6NcE4soWE2wwHJyC9WY5Q=;
 b=Td3ZxdseQfcuJR498/NV3p4Xy5H+X2qKimYRL5/4RetrLG3MbUZNn38NywjDUIEkjD
 v+yHjnYnn9Vh1QRvmTDjNJs8VoMJEHNyxkO7YYGCspNVgiXkh0XJT6tVXi3xshFVYNO/
 6oOABeNqeb0RjjmZgy3tI3bLGldlAVUYChPjHuzrzwyqPNN70uh4yyzQpumyHjo+N/OJ
 x1y/uV3NOdLdqKJ/KurZP2YUPpB4zhlnkSRFIpstuuThL3QAkEfkq+s2vLmDWEsd7V89
 N9C77Z2QdRmq2Qa48l17FHdgku5OClIBaBkT0ZqmyBBvb8SPP0f+hsvFOVk76hlm1lR+
 CJ1w==
X-Gm-Message-State: AOAM531mLRm8xReFhYRxFESAoVgyzqU4dUyiZJLGSl3D5ecUWdNv48XT
 +QUHpUqJjVKpVcVYQ5792mxbx1WQrLtLUcpcFc31Zg==
X-Google-Smtp-Source: ABdhPJygfAADWFIVVeKLOzuHLZ54mAL22TlmO1KsSyLvvSTqwOCPP4AqjyPGea1zXbUC8Ho43ZWh/OFlOSyZa62I/GE=
X-Received: by 2002:a02:245:: with SMTP id 66mr764401jau.69.1590212185421;
 Fri, 22 May 2020 22:36:25 -0700 (PDT)
MIME-Version: 1.0
References: <CABV8kRz0mKSc=u1LeonQSLroKJLOKWOWktCoGji2nvEBc=e7=w@mail.gmail.com>
 <20200519081551.GA9980@willie-the-truck>
 <CABV8kRzYzBrdzC1_opmmdpW63N2htfOsAUZ+RjiSDsy=SJW6Yg@mail.gmail.com>
 <20200520174149.GB27629@willie-the-truck>
In-Reply-To: <20200520174149.GB27629@willie-the-truck>
From: Keno Fischer <keno@juliacomputing.com>
Date: Sat, 23 May 2020 01:35:49 -0400
Message-ID: <CABV8kRzjCCsjVeRsBD7U_Lo0==sBw9EKm=1z7g=60KyJvJLZBQ@mail.gmail.com>
Subject: Re: arm64: Register modification during syscall entry/exit stop
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_223627_371335_778488DA 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Kyle Huey <khuey@pernos.co>,
 Oleg Nesterov <oleg@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I got bitten by this again, so I decided to write up a simple example
that shows the problem:

https://gist.github.com/Keno/cde691b26e32373307fb7449ad305739

This runs the same child twice. First vanilla where it prints "Hello world".
The second time, using a textbook ptrace example, to only print "world".
The problem here is that by the time the ptracer gets around to restoring
the registers, it's no longer in a syscall stop, so the write to x7 does not
get ignored and the correct value of x7 gets clobbered.
I copied the syscall definition from musl, so the compiler thinks x7 is
live, and we can see an assertion.

Output on my machine (will depend on compiler version, etc.):
```
$ gcc -g3 -O3 ptrace_lies.c
$ ./a.out
Hello World
World
a.out: ptrace_lies.c:49: do_child: Assertion `v3 == values[2]' failed.
a.out: ptrace_lies.c:134: main: Assertion `WIFEXITED(status) &&
WEXITSTATUS(status) == 0' failed.
Aborted (core dumped)
```

However, I don't think that whether or not the compiler thinks that x7 is
live is the problem here. The problem is entirely that this mechanism
prevents the ptracer from precisely controlling the register state. While
basic ptracers don't need this feature (strace),
more advanced ptracers (think criu, etc.) absolutely do want to precisely
control what the register state is.
The ptracer I'm working on (https://rr-project.org/)
happens to be an extreme case of this, where it wants *bitwise* equivalent
register states such that it can run the same code many times and get
the exact same results.

Also, if the issue was just that the kernel clobbered x7, that would be fine
we could deal with that no problem. However, it's much worse than that,
because the behavior of the kernel with respect to x7 depends on what
kind of ptrace stop we're in and even worse, in some kinds of stop,
there's absolutely no way to get at the actual value of x7.

> Hmm, does that actually result in the SVC instruction getting inlined? I
> think that's quite dangerous, since we document that we can trash the SVE
> register state on a system call, for example. I'm also surprised that
> the register variables are honoured by compilers if that inlining can occur.

I haven't gotten to trying SVE yet, so I appreciate the warning :). That said,
deterministic clobbering of registers is fine. Even changing the registers to
random junk is fine. We're happy to read those registers through ptrace.
The problem here is that the kernel lies about what the contents of the x7
register is and discards any writes to it.

I really hope we can come up with a solution here, I'm already dreading
the next time I unexpectedly run into this and have to add yet
another special case :(.

Keno

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
