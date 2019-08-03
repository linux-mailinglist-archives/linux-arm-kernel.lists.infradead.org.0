Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A128054C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 10:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLMWye63Gas2AYRQcTNN/ZPuRINHS4D/v6Wq1c2XV70=; b=VcOkqVvZP291bj
	IfYf5MvZRgxApamMt+68PAt779W3D1hxcm8m2JbNRJ7RR5HuzgrlyUdDgpjlzM5K7YgkajCT7+VHK
	mIqHW5f1hUYt70vnob55/+xmELxyOtFflTGU7ad4omEynfJAv8ax/Rf8sjzHGggHSDW6B+m0irhYd
	4QgKZLgZy7HQwdmVpRZIepgIpAeoccmXHwyaKAH5k++S7VEHA+SFYCKUapqzOE03us4ghLGCrbzNB
	ba8pKmLa317oILIEEOsU647r+hPOy1J8QJQuXmTh0spYp5se9vyleEcYhszfrh+BnM/uAzC9StxUV
	YkKwcwzHH8IvyFXoZePQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htpT0-0000D9-Cd; Sat, 03 Aug 2019 08:32:42 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htpSq-0008Vm-Jy
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 08:32:33 +0000
Received: by mail-lf1-x141.google.com with SMTP id s19so54563667lfb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 03 Aug 2019 01:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zliUaIFuAopeB3KZQoJf+MOQg1490L4qixnGkVFyCC8=;
 b=g4KBVdoU6LZkKj5EaHaSc3Ab+XV/TG0D74aXLkkWbxl2A8rXIgK9jRDqL+RcByc0S+
 Os+VPH9lmLCE9o2Y0CFEyMalUImG4B9+SXHPRv2zeNYQ8xWXA/nuudTzy64/IOBm612t
 AbY1Q/s8fSczz4TAFxU+edrKFtnytaYkuOMP4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zliUaIFuAopeB3KZQoJf+MOQg1490L4qixnGkVFyCC8=;
 b=eHukesM0YtTP+CcMVbWMvsG0VctEIAigxJcdRi4Mk3f65NzwmjSqOm8TBEQYfUJAYw
 ZjhrZuZX1j/+foD2ejrLqUiLrSNposkc24OvstNCZxiFc32dHWaxIskZq8TElXzI/NwA
 cpNbL5mCGyP7hkrvoFWf3JwRKE9MHuHZPe5Aublh5I/N7ecLp9khU+zLRPHwkKbjhfTP
 1qiBdEBL1pD7haTXFowv0kfQSxhQcqpFAGKyJpqvhx78HLnq1JzfokrN0VxQEUVhBEto
 IekK4U7n6l6TtXGq/y0iD/MkFy6KWNV2RwkbnQha0DwZhI8lHJIkizXdfVdLMQODGGo6
 SDpw==
X-Gm-Message-State: APjAAAUqd1s62Q0c8WztPrXjNcE9f54MTJPvC/tdgZ6yMTviFep9Z0c5
 f5YvCtEY0Th15HLxdIgB/lYqMxo0e0OMt3ozGI8=
X-Google-Smtp-Source: APXvYqwwtK7sYxHHH5uf9Nu/AcA3yUDvbQtCmjTA5L8TRAMuQ1gOKOKzCgr/E3b7OkCOm0usRc+V7A7XnHNRv63ZHAU=
X-Received: by 2002:ac2:549b:: with SMTP id t27mr336621lfk.25.1564821150478;
 Sat, 03 Aug 2019 01:32:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190802094103.163576-1-jiping.ma2@windriver.com>
 <20190802112259.0530a648@gandalf.local.home>
 <20190803082642.GA224541@google.com>
In-Reply-To: <20190803082642.GA224541@google.com>
From: Joel Fernandes <joel@joelfernandes.org>
Date: Sat, 3 Aug 2019 04:32:19 -0400
Message-ID: <CAEXW_YSUgqt2RykAXH+1hbVDka4CipNatK-ktZ5+W1e5nWMQvA@mail.gmail.com>
Subject: Re: [PATCH v3] tracing: Function stack size and its name mismatch in
 arm64
To: Steven Rostedt <rostedt@goodmis.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_013232_656173_F189D6C4 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: Jiping Ma <jiping.ma2@windriver.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>,
 kernel-team <kernel-team@android.com>,
 "moderated list:ARM/STM32 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 3, 2019 at 4:26 AM Joel Fernandes <joel@joelfernandes.org> wrote:
>
> On Fri, Aug 02, 2019 at 11:22:59AM -0400, Steven Rostedt wrote:
> [snip]
> > > There is not PC in ARM64 stack, LR is used to for walk_stackframe in
> > > ARM64. Tere is no the issue in ARM32 because there is PC in ARM32 stack.
> > > PC is used to calculate the stack size in trace_stack.c, so the
> > > function name and its stack size appear to be off-by-one.
> > > ARM64 stack layout:
> > >     LR
> > >         FP
> > >         ......
> > >         LR
> > >         FP
> > >         ......
> >
> > I think you are not explaining the issue correctly. From looking at the
> > document, I think what you want to say is that the LR is saved *after*
> > the data for the function. Is that correct? If so, then yes, it would
> > cause the stack tracing algorithm to be incorrect.
> >
> > Most archs do this:
> >
> > On entry to a function:
> >
> >       save return address
> >       reserve local variables and such for current function
> >
> > I think you are saying that arm64 does this backwards.
> >
> >       reserve local variables and such for current function
> >       save return address (LR)
>
> Actually for arm64 it is like what you said about 'Most archs'. It saves FP
> and LR first onto the current stack frame, then assigns the top of the stack
> to FP (marking the new frame). Then executes branch-link, and then allocates
> space to variables on stack in the callee.

Just to add to that, when the branch-link (BL) instruction is
executed, the Link Register (LR) will contain the return address. This
why the existing LR needs to be saved first before the call. The
existing LR will contain the return address of the caller's original
caller.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
