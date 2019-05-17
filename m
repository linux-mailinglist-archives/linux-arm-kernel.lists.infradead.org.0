Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3408621402
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 09:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0EIGPox3RjM5HU4skXV6Zuhy+EU/nhC9M6wCAoVOdc=; b=ZMfY6BD0mmfJBu
	ZcxAvdDMxJQTkSyK2FdpGK5Fb47bQE68T1GT5UWBDjRhoHvKjFi/bd5eKp5cOpVW5NyYoQdb7LNbc
	C7SY5lzryWh1uixM4A+nNxTA3ElmtibBqAq5e93oNEkZKepy0lOjvRz24SE5qZYEHmgNofVwMv4tZ
	BtDFL5ajwDsJniliRiomgvrBOkaD/inRnNpzxXKN6G92xAi4+fEojQ/0KsikQ+kH68g1LVYGoiKYq
	px4AqkAHji/IvK0hXWgIggzLWdHW6uZLKGw906i8RXBMVdxKUcMM7ouYUtbkD1ymf4uv+dA/eHL24
	TiQxCCyneQeZk4FcRFlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRX0h-0000Tw-7s; Fri, 17 May 2019 07:10:31 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRX0a-0000Tn-Nv
 for linux-arm-kernel@bombadil.infradead.org; Fri, 17 May 2019 07:10:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HxUFN7ImIherhziAwE4B0zMLXT1M0ngsvbs97gyVEkE=; b=j/4yVJSH4JiFFugtuMOtwB4uo
 78y9tzESi7HMzHX+wUzTEMVSYVKslEfJ6H8nXugzN1VipITSGlrQuXBMgNEEnYkaQhr/UhTfm2Ejl
 dIL/1/zxXPGhWOfioAkX91ZIXv46+8o3PVtSoVJSf44rKSWOwO7vCIgpToAECIXCgS8LQvHnLw2NO
 Pmhi9uJb0PK4BQJP3fjY123u+cdfxjV4nTpRCvL+oN12r4nKs6c8gOa4e1l2+afp1OYbf1WGsNndF
 yjMkl9tFuUnLwzpUH/3ekvZc3g/5ojgqQ2le3qK5UjvcsGxc6lLh1tMFN0cS3gcCJNbZFfvPBqu5E
 pXwh+QQjw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRX0X-00075i-Do; Fri, 17 May 2019 07:10:21 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 9ED092029906B; Fri, 17 May 2019 09:10:18 +0200 (CEST)
Date: Fri, 17 May 2019 09:10:18 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [PATCH 4/6] arm64: pmu: Add hook to handle pmu-related undefined
 instructions
Message-ID: <20190517071018.GH2623@hirez.programming.kicks-ass.net>
References: <20190516132148.10085-1-raphael.gault@arm.com>
 <20190516132148.10085-5-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516132148.10085-5-raphael.gault@arm.com>
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, acme@kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 02:21:46PM +0100, Raphael Gault wrote:
> In order to prevent the userspace processes which are trying to access
> the registers from the pmu registers on a big.LITTLE environment we
> introduce a hook to handle undefined instructions.
> 
> The goal here is to prevent the process to be interrupted by a signal
> when the error is caused by the task being scheduled while accessing
> a counter, causing the counter access to be invalid. As we are not able
> to know efficiently the number of counters available physically on both
> pmu in that context we consider that any faulting access to a counter
> which is architecturally correct should not cause a SIGILL signal if
> the permissions are set accordingly.

The other approach is using rseq for this; with that you can guarantee
it will never issue the instruction on a wrong CPU.

That said; emulating the thing isn't horrible either.

> +	/*
> +	 * We put 0 in the target register if we
> +	 * are reading from pmu register. If we are
> +	 * writing, we do nothing.
> +	 */

Wait _what_ ?!? userspace can _WRITE_ to these registers?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
