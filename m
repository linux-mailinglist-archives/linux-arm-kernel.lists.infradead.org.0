Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA5221557
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 10:27:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zs1ZjIAUG3ReUrh+yOKStHLdgQCJdH4k+h/S4aK2dyc=; b=TFUoC1PY6wktXp
	ZKEzw01TpAiIFC+I6gkD5hBmuAQdd+kKpFY9KWviZTC/KHaep/IDMTcYZgIy/OJBN+ZWcxQwfaBKj
	B4NBLzqWShOhsl90W4Uvzkf9OmO7KExBwWrq/GMPWRvWwBChIWyn+sVqxvEpyv9dNkfDCPfvglnKz
	/LPcqREUluCUOaQr7jDwEPNyyms9DYx064umj5zo9L5Fcyme/WxOY5nDj0Sz8HaMapr1Q2GO9skEM
	52+fXineuTM/7YAnRi45+X65WnRNSvmAJRquImeeF+c40H7O9l5C3J/G0gmORp/t+yGWQ7MBKyuqy
	xSAl6om1pY3FA4ueZ0Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRYCl-0001cW-Du; Fri, 17 May 2019 08:27:03 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRYCf-0001bw-3l; Fri, 17 May 2019 08:26:57 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 126B52029F888; Fri, 17 May 2019 10:26:55 +0200 (CEST)
Date: Fri, 17 May 2019 10:26:55 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 4/6] arm64: pmu: Add hook to handle pmu-related undefined
 instructions
Message-ID: <20190517082655.GK2623@hirez.programming.kicks-ass.net>
References: <20190516132148.10085-1-raphael.gault@arm.com>
 <20190516132148.10085-5-raphael.gault@arm.com>
 <20190517071018.GH2623@hirez.programming.kicks-ass.net>
 <20190517080419.dziz4iqc7t4mpoej@blommer>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517080419.dziz4iqc7t4mpoej@blommer>
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 acme@kernel.org, Raphael Gault <raphael.gault@arm.com>, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 09:04:20AM +0100, Mark Rutland wrote:

> Remember that this is in an undefined (trap) handler.
> 
> If userspace _attempts_ to write to the registers, the CPU will trap to the
> kernel. The comment is perhaps misleading; when we "do nothing", the common
> trap handling code will send a SIGILL to userspace.
> 
> It would probably be better to say something like:
> 
> 	/*
> 	 * If userspace is tries to read a counter that doesn't exist on this
> 	 * CPU, we emulate it as reading as zero. This happens if userspace is
> 	 * preempted between reading the idx and actually reading the counter,
> 	 * and the seqlock and idx have already changed, so it's as-if the
> 	 * counter has been reprogrammed with a different event.

Might be good to mention that userspace will/should discard the value it
reads, and therefore any value is good (including 0).

> 	 * We don't permit userspace to write to these registers, and will
> 	 * inject a SIGILL.
> 	 */
> 
> There is one caveat: userspace can write to PMSELR without trapping, so we will
> have to context-switch with the task. That only affects indirect addressing of
> PMU registers, and doesn't have a functional effect on the behaviour of the
> PMU, so that's benign from the PoV of perf.

Sad though; ideally you'd state that indirect addressing is
out-of-bounds and they get to keep the pieces. But I suspect you're
right that people will do it anyway and complain once it comes apart.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
