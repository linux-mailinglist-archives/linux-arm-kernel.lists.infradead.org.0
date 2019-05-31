Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DAD30A43
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 10:27:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXbF4C4s2921aFwhy58dMG6idSefVsmDP2RO73h0Mls=; b=rY/zNf/5tVtIm1
	25hn6AqPofrZ/3jEUOsWgZC2nsaivaaiHk6PzFApa7eT3bCYtMKEbcXUWYAkyxSvq/kG06YzlFnsI
	2tMDx1WPIu/s9GYINelIOJ4NrbdkIAHFoNGAVCGau08CKNoUvdNP870ElMz9NCEQOcIrLZ2Y7mal8
	NHhB8gZks5RQVzQDR0W1R088qRBKCqJkAu7QjyqYxqgKSVeqs41Am6yKVkc1LxKoHC9QaW0vehH4N
	SfkRe4vCTFW4XpQK35u9j3SPgRmwka/8MeRR3RnfGQRiUByqEn1cAD5py3b5BvQTmpaDbTPhnavKg
	UmuH0hOQzkZIdtQNBpYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWcsz-00007G-G8; Fri, 31 May 2019 08:27:37 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWcst-000071-1C; Fri, 31 May 2019 08:27:31 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id A7EE4201B8CFE; Fri, 31 May 2019 10:27:28 +0200 (CEST)
Date: Fri, 31 May 2019 10:27:28 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] Stacktrace in ARM32 architecture has jumped the first 2
 layers, which may ignore the display of save_stack_trace_tsk.
Message-ID: <20190531082728.GK2623@hirez.programming.kicks-ass.net>
References: <1559228799-84473-1-git-send-email-liucheng32@huawei.com>
 <20190530162219.dtooagpeyczfaazb@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530162219.dtooagpeyczfaazb@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: gregkh@linuxfoundation.org, tglx@linutronix.de,
 l00383200 <liucheng32@huawei.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 05:22:19PM +0100, Russell King - ARM Linux admin wrote:
> On Thu, May 30, 2019 at 11:06:39PM +0800, l00383200 wrote:
> > Without optimization, both save_stack_trace_tsk and __save_stack_trace
> > will have stacktrace information in ARM32.
> > 
> > In this situation, "data.skip += 2" operation will skip the first two layers,
> > which may make the stacktrace strange and different from other architectures.
> > 
> > A simple example is as follows:
> > In ARM32 architecture:
> > [<ffffff80083cb3f8>] proc_pid_stack+0xac/0x12c
> > [<ffffff80083c7c70>] proc_single_show+0x5c/0xa8
> > [<ffffff800838aca8>] seq_read+0x130/0x420
> > [<ffffff8008365c54>] __vfs_read+0x60/0x11c
> > [<ffffff80083665dc>] vfs_read+0x8c/0x140
> > [<ffffff800836717c>] SyS_read+0x6c/0xcc
> > [<ffffff8008202cb8>] __sys_trace_return+0x0/0x4
> > [<ffffffffffffffff>] 0xffffffffffffffff
> > 
> > In some other architectures(ARM64):
> > [<ffffff8008209be0>] save_stack_trace_tsk+0x0/0xf0
> > [<ffffff80083cb3f8>] proc_pid_stack+0xac/0x12c
> > [<ffffff80083c7c70>] proc_single_show+0x5c/0xa8
> > [<ffffff800838aca8>] seq_read+0x130/0x420
> > [<ffffff8008365c54>] __vfs_read+0x60/0x11c
> > [<ffffff80083665dc>] vfs_read+0x8c/0x140
> > [<ffffff800836717c>] SyS_read+0x6c/0xcc
> > [<ffffff8008202cb8>] __sys_trace_return+0x0/0x4
> > [<ffffffffffffffff>] 0xffffffffffffffff
> > 
> > Therefore, we'd better just jump only one layer to ensure accuracy and consistency.
> 
> Why do we want to log the function we called to save the stack trace
> _in_ the stack trace?  What useful purpose does it serve?
> 
> I've always taken the attitude that if we want a stack trace from a
> certain point in the function, then that's the point that the stack
> trace should start.  It's entirely sensible.

Agreed, also the .skip interface sucks and is slated for replacement
(whenever we get around to it).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
