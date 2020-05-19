Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BBF1D923C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 10:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLfGPPJiRjEcV/rBxOb/0kI2/VwdKJXLcbvhXWBX5TM=; b=TpH0fDzchnupvM
	ExW1sSPvscTQnOt9F+WLn3FMR9dDszcmxX9/7GVgVdsmRZPZCcd5k++1sv/rn7acdE6608E/qUC/N
	WjpZQGHtUourVbghg1amdwmR9K2XYbBD0J8VmyY719R5C98XEg8BLoK+JRVVublWBRVB9Yyb6CuPd
	g0no6OlP3mNXzb9U5glnRvpPPBi41A4tbA1gLIoWKySl8BJXy6JDfK7xfXUef6lqzcsjCzq6V9Zyd
	bHtL4wVno97WbKETh8k4vzdpwP8YqODgMc05zu8Zz6l1G8Xk53VO0a5DlyFjj0Xwl6tpu6vfIZ4pz
	46jVleX1SL6n8AKMuSbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaxm5-0001GR-W9; Tue, 19 May 2020 08:38:58 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaxlL-0000TX-Dw
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 08:38:13 +0000
Received: by mail-io1-xd44.google.com with SMTP id x5so13679051ioh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 01:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jabd/ejZir+aDGBzqGMPlMd6x0TFls4+w9CeMWu63EY=;
 b=SUqHQSv6GAjdG2b6FWtocyMNWRVlTcdf7POaW1bc+Lk6ciKmy0MFk88a+d8roSURhR
 Czj46TJprxBtrMAgCT+gn6NftmSeGDu6oaGL0aQMwCrEUJXHRzc8YkFBgcL11MyDMBXW
 CMXTWojXrQodz+8wn5k5OktAssHTpD1i12niYv0LC6X4JYduCoAnRf2l83YugXzWf73f
 6An19MZU6exGDMtyIsmUCNVHJMzHqm2p0RrVr84os8yZ7Iwng4H3PPggKgaG/fYBldak
 /ShPvBWNOqzxgQqT/TJK0PiP8yJRwWNcK8X0f4V+A/6bWo+oPQcQWKol6pSHdKkCn1jb
 QlSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jabd/ejZir+aDGBzqGMPlMd6x0TFls4+w9CeMWu63EY=;
 b=EFrZTG9ERsQ9osYCkD6Sboiu1aQlQrDH8fUMA/Nd9plsXYI0hD3rEYevQm/o3Yb+J3
 bmr0xtodEs74WFu3gbANA5rA/jVOxnEZpgPQ5S955PfxKQthIkG7upOOU6I4zpwCMOoQ
 0pnVJT/yv+SE/NymwQVCb6R+CS3KcxFrVQE1uSzjMCVuFKcEyrgKDtkXRQ1IzktVfYwK
 GblZhmnNGWw+JTh3uxwZac7c+BeqTkGvKI5V5qknvod7aaMSdq5xd9z7cvPoDd/dVIfh
 skRfGpSttv32Bj9JvX/z2Aj+KVowKhT+XiJhDbFp1Qci3l3f+p7apETNZbc6xNp9kciq
 6J7A==
X-Gm-Message-State: AOAM533kxhjKZ6IEwbHU9pHydSq6N4kcLorZYLF5VeRAiWNPiMmyfOPT
 r1q9wGpQfbQ6hiPGBTGZdBNJl3Swtc9BmPdsR0WFBA==
X-Google-Smtp-Source: ABdhPJyzLSHUR5QX36fqmt2VGwYHOHJCvRjK3pmqZLG5dxy9zLw3DI9Ni+SU8petoBgfV0Dxk3kUN3l/Y+slF3Uy6kA=
X-Received: by 2002:a6b:902:: with SMTP id t2mr18230256ioi.153.1589877490392; 
 Tue, 19 May 2020 01:38:10 -0700 (PDT)
MIME-Version: 1.0
References: <CABV8kRz0mKSc=u1LeonQSLroKJLOKWOWktCoGji2nvEBc=e7=w@mail.gmail.com>
 <20200519081551.GA9980@willie-the-truck>
In-Reply-To: <20200519081551.GA9980@willie-the-truck>
From: Keno Fischer <keno@juliacomputing.com>
Date: Tue, 19 May 2020 04:37:34 -0400
Message-ID: <CABV8kRzYzBrdzC1_opmmdpW63N2htfOsAUZ+RjiSDsy=SJW6Yg@mail.gmail.com>
Subject: Re: arm64: Register modification during syscall entry/exit stop
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_013811_663805_E00DA649 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Hi Will,

> Yes, we inherited this from ARM and I think strace relies on it. In
> hindsight, it is a little odd, although x7 is a parameter register in the
> PCS and so it won't be live on entry to a system call.

I'm not familiar with the PCS acronym, but I assume you mean the
calling convention? You have more faith in userspace than I do ;). For
example, cursory googling brought up this arm64 syscall definition in musl:

https://github.com/bminor/musl/blob/593caa456309714402ca4cb77c3770f4c24da9da/arch/aarch64/syscall_arch.h

The constraints on those asm blocks allow the compiler to assume that
x7 is preserved across the syscall. If a ptracer accidentally modified it
(which is easy to do in the situations that I mentioned), it could
absolutely cause incorrect execution of the userspace program.

> Although the examples you've
> listed above are interesting, I don't see why x7 is important in any of
> them (and we only support up to 6 system call arguments).

It's not so much that x7 is important, it's that lying to the ptracer is
problematic, because it might remember that lie and act on it later.
I did run into exactly this problem, where my ptracer accidentally
changed the value of x7 and caused incorrect execution in the tracee
(now that incorrect execution happened to be an assertion, because
my application is paranoid about these kinds of issues, but it was
incorrect nevertheless)

If it would be helpful, I can code up the syscall entry -> signal trap example
ptracer to have a concrete example.

Keno

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
