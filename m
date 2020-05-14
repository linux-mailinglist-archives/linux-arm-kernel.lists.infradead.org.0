Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 565C21D238A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 02:21:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OnnOb3se5FK7/V18Z5V4bk8oLnAQsZzvhzxWUtJf1Jc=; b=PFBi/Ij2l/FRqy
	BoZGwrKMHSF1JOHbMgf4D+MV0n7mpcJX8T8awjuwnxSCPfWGJTnsNS7rDX+60SnDDMP8gyIIOzJd+
	UvQ9N/IsiCcECTyFVfm5ss6ocKvD8616jIvrnC3dYNQNPoso48FF2jCIQKeDMWR2UOGFXdKuOeAyw
	y/p4Ld2DSqtNgjHL+Xu7a5nez2ZOSj6lHdJGX2mPKDjU5AkvDpBi+Nks+pMZ8nLujq41SD19MDHbF
	R3u0HLYhqpI1nSEK5/HKVoPc0dSHXzsv1e4V10Mj9Ndiy3eZoMCj4LZQ2dqzg5eQCv/TSWeeXz+8A
	e2CFU6oiCZaXxs5DyRPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ1d5-0005Nl-1E; Thu, 14 May 2020 00:21:39 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ1cu-0005Ms-ME
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 00:21:30 +0000
Received: by mail-ua1-x944.google.com with SMTP id r2so503688uam.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 17:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OBLBg/Pi2nLTYpT77RqGN75i0jKE/4YyC2iRVJu8R0U=;
 b=Ago46R+bOlJOlbr3ydxhX8fE13MVcv+tDV1HihlMB/XR/x+7cAnOdthEYc9oKzfg1q
 jr1tivPXu8P/UvKgCSv0AP6E6nKMIfRK3Ihr2/2wNCE1DK/w4n3DND0BROpYOs+ayD4X
 GSr8act4VPC/w9zO19A9XBVjS/13ospHw5fjo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OBLBg/Pi2nLTYpT77RqGN75i0jKE/4YyC2iRVJu8R0U=;
 b=EMx1QITjJ41eaj6T87mh+8G5kV2eZoPqmDrwFnKQcYXx9ltEO6x8WTY+ICYCjWVvJY
 NsB95Xhk7+kTihbH1BPp7DdOGVf8pi36IyHT7J86YjIjZHhGGLzJP13XchAb4XX3tl5L
 mslLzZI25iUR6fNddZ0vKOBbM7Sbgl0BMSXtA19wkTjCPTUKjN0zxHmiaqP40WuZHS33
 ROCwWzrInsJjOBVdpcoMBTPtURg2R8+VtukJjnr46YI4r8MKxRWokDZwAs6tUe98iOGA
 D++pIslsSROdUrJhQDGV5v3bOos8BFr1Y9K0tuf3rBeqMeqh8oFRigiCVZQ9GA8KIsEG
 WBjQ==
X-Gm-Message-State: AOAM533cJUr2KC1D+PP2olRVt7zanbBYaqkIRRxOdZ4MDySim8diwr4X
 9oXt2Z7iatWWz0RcrOWtVQC21ceuqGc=
X-Google-Smtp-Source: ABdhPJybOGgnCsU65dD3xhz1ZM/a753RxqmcpILCKcHk6liqHF7h7DjdP99OqRXpEQFTOIwBBDARVg==
X-Received: by 2002:ab0:554a:: with SMTP id u10mr1914095uaa.43.1589415686672; 
 Wed, 13 May 2020 17:21:26 -0700 (PDT)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com.
 [209.85.221.182])
 by smtp.gmail.com with ESMTPSA id u25sm313870vkn.22.2020.05.13.17.21.24
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 17:21:25 -0700 (PDT)
Received: by mail-vk1-f182.google.com with SMTP id j28so328077vkn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 17:21:24 -0700 (PDT)
X-Received: by 2002:a1f:d0c5:: with SMTP id h188mr1639201vkg.0.1589415684421; 
 Wed, 13 May 2020 17:21:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200509214159.19680-1-liwei391@huawei.com>
 <20200509214159.19680-2-liwei391@huawei.com>
In-Reply-To: <20200509214159.19680-2-liwei391@huawei.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 13 May 2020 17:21:13 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U+EGz5nRoPXa_V+85FDwHjnAK6-ubH0zv1gGROKNZhPg@mail.gmail.com>
Message-ID: <CAD=FV=U+EGz5nRoPXa_V+85FDwHjnAK6-ubH0zv1gGROKNZhPg@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: kgdb: Fix single-step exception handling oops
To: Wei Li <liwei391@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_172128_749902_56005934 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Daniel Thompson <daniel.thompson@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, liwei1412@163.com,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Jason Wessel <jason.wessel@windriver.com>, Will Deacon <will@kernel.org>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sat, May 9, 2020 at 6:49 AM Wei Li <liwei391@huawei.com> wrote:
>
> After entering kdb due to breakpoint, when we execute 'ss' or 'go' (will
> delay installing breakpoints, do single-step first), it won't work
> correctly, and it will enter kdb due to oops.
>
> It's because the reason gotten in kdb_stub() is not as expected, and it
> seems that the ex_vector for single-step should be 0, like what arch
> powerpc/sh/parisc has implemented.
>
> Before the patch:
> Entering kdb (current=0xffff8000119e2dc0, pid 0) on processor 0 due to Keyboard Entry
> [0]kdb> bp printk
> Instruction(i) BP #0 at 0xffff8000101486cc (printk)
>     is enabled   addr at ffff8000101486cc, hardtype=0 installed=0
>
> [0]kdb> g
>
> / # echo h > /proc/sysrq-trigger
>
> Entering kdb (current=0xffff0000fa878040, pid 266) on processor 3 due to Breakpoint @ 0xffff8000101486cc
> [3]kdb> ss
>
> Entering kdb (current=0xffff0000fa878040, pid 266) on processor 3 Oops: (null)
> due to oops @ 0xffff800010082ab8
> CPU: 3 PID: 266 Comm: sh Not tainted 5.7.0-rc4-13839-gf0e5ad491718 #6
> Hardware name: linux,dummy-virt (DT)
> pstate: 00000085 (nzcv daIf -PAN -UAO)
> pc : el1_irq+0x78/0x180
> lr : __handle_sysrq+0x80/0x190
> sp : ffff800015003bf0
> x29: ffff800015003d20 x28: ffff0000fa878040
> x27: 0000000000000000 x26: ffff80001126b1f0
> x25: ffff800011b6a0d8 x24: 0000000000000000
> x23: 0000000080200005 x22: ffff8000101486cc
> x21: ffff800015003d30 x20: 0000ffffffffffff
> x19: ffff8000119f2000 x18: 0000000000000000
> x17: 0000000000000000 x16: 0000000000000000
> x15: 0000000000000000 x14: 0000000000000000
> x13: 0000000000000000 x12: 0000000000000000
> x11: 0000000000000000 x10: 0000000000000000
> x9 : 0000000000000000 x8 : ffff800015003e50
> x7 : 0000000000000002 x6 : 00000000380b9990
> x5 : ffff8000106e99e8 x4 : ffff0000fadd83c0
> x3 : 0000ffffffffffff x2 : ffff800011b6a0d8
> x1 : ffff800011b6a000 x0 : ffff80001130c9d8
> Call trace:
>  el1_irq+0x78/0x180
>  printk+0x0/0x84
>  write_sysrq_trigger+0xb0/0x118
>  proc_reg_write+0xb4/0xe0
>  __vfs_write+0x18/0x40
>  vfs_write+0xb0/0x1b8
>  ksys_write+0x64/0xf0
>  __arm64_sys_write+0x14/0x20
>  el0_svc_common.constprop.2+0xb0/0x168
>  do_el0_svc+0x20/0x98
>  el0_sync_handler+0xec/0x1a8
>  el0_sync+0x140/0x180
>
> [3]kdb>
>
> After the patch:
> Entering kdb (current=0xffff8000119e2dc0, pid 0) on processor 0 due to Keyboard Entry
> [0]kdb> bp printk
> Instruction(i) BP #0 at 0xffff8000101486cc (printk)
>     is enabled   addr at ffff8000101486cc, hardtype=0 installed=0
>
> [0]kdb> g
>
> / # echo h > /proc/sysrq-trigger
>
> Entering kdb (current=0xffff0000fa852bc0, pid 268) on processor 0 due to Breakpoint @ 0xffff8000101486cc
> [0]kdb> g
>
> Entering kdb (current=0xffff0000fa852bc0, pid 268) on processor 0 due to Breakpoint @ 0xffff8000101486cc
> [0]kdb> ss
>
> Entering kdb (current=0xffff0000fa852bc0, pid 268) on processor 0 due to SS trap @ 0xffff800010082ab8
> [0]kdb>
>
> Fixes: 44679a4f142b ("arm64: KGDB: Add step debugging support")
> Signed-off-by: Wei Li <liwei391@huawei.com>
> ---
>  arch/arm64/kernel/kgdb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

As far as I can tell this looks right.  Specifically in kdb_stub() I
see that it needs "ks->ex_vector == 0" to get "reason" as
KDB_REASON_SSTEP.

Reviewed-by: Douglas Anderson <dianders@chromium.org>


I did really basic testing of this series as a whole and things that
used to be broken for me around stepping / going past breakpoints are
now fixed.  I'll keep using it more, but it definitely feels like it
makes things happier.

Tested-by: Douglas Anderson <dianders@chromium.org>

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
