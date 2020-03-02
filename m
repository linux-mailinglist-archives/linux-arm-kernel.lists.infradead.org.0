Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAE8175BF8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 14:42:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8Vk9156GSMlVWLJLjgSVQPOwnGedYRlVr5xtDTaJvg=; b=KrAojdh4LyWx71
	FQ6RMXVnetOnsY4tdAz+PT9VPwHTd6MX727fBg2JU/NnhZcl2xcJIlbEpPSHrVuw+WbPthFXW2QlD
	Sg4gsL6mEjUaP5EobVYVw5kNuK6700pMotGNe5v0Am1U/FMvoryxCEKJQAPZeAACe4NFEu70bE9mU
	ZIPs3Jlynfv9+ZKjWUG8oskzNIBRXDdIB1xRQNqY/cNs2pgFHmyqsZb4FwqHwLCKfF6KLCYmFhDex
	wv+VKeiWTsSeyy2KVhtJ17aNdCRQIqLDuYNnSJ8XLELMNN1XEi2k7ysgeEIvtfzKLazoi5KelniMg
	dozgo5hbNX/+9uQjT6YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8lLG-0004Vs-6e; Mon, 02 Mar 2020 13:42:42 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8lL7-0004VZ-KR; Mon, 02 Mar 2020 13:42:33 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 1AF62304D2B;
 Mon,  2 Mar 2020 14:40:33 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 9FDE52119B2EA; Mon,  2 Mar 2020 14:42:31 +0100 (CET)
Date: Mon, 2 Mar 2020 14:42:31 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH v2 0/2] sched, arm64: enable CONFIG_SCHED_SMT for arm64
Message-ID: <20200302134231.GB2562@hirez.programming.kicks-ass.net>
References: <20200227191433.31994-1-valentin.schneider@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227191433.31994-1-valentin.schneider@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Ingo Molnar <mingo@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 qperret@google.com, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Will Deacon <will@kernel.org>, morten.rasmussen@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 07:14:31PM +0000, Valentin Schneider wrote:
> Hi,
> 
> Strictly speaking those two patches are independent, but I figured it would
> make sense to send them together (since one led to the other).
> 
> Patch 1 adds a sanity check against EAS + SMT.
> Patch 2 enables CONFIG_SCHED_SMT in the arm64 defconfig.
> 

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
