Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A8B1A7A7B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 14:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ggE002XnfQGLr5wbyBKTxY/23esVOKvApTkt7plJfPQ=; b=OPVw0p93YnD4Pp
	nhItme4b+uZgOy3qtu0Km1uY1awQk54WB+uKHLOgHaoaPVVv2HLTzfoepKBSz2vg9qs0fC1dvQRAV
	iE7V+qCdqIAx5D1sf3TS3xB4jU707FDMQJC2BX56GmAKFM1aW90XHWMx1hO/tEFwWlfLenWboqQU+
	oCjM1KO4SLHGzJN0ERqttFd0eD/9evN1o+whkMtsMq/FUOdeIcoMsLD3+bcDDW79S7QOO/sDxN6XO
	ir88MMWIC6D42ML/jkUDGW7sQnW6y873KZsM73hCwX1bTibqrfDig85FNYi1E85HABPOPPor98Qsa
	rexI+5YLf9xwmpeyB99g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOKUR-0006oG-76; Tue, 14 Apr 2020 12:16:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOKUH-0006nu-Ch
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 12:16:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E1C11FB;
 Tue, 14 Apr 2020 05:16:18 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2AA2C3F6C4;
 Tue, 14 Apr 2020 05:16:17 -0700 (PDT)
Subject: Re: [PATCH] arm64: panic on synchronous external abort in kernel
 context
To: Mark Rutland <mark.rutland@arm.com>, Xie XiuQi <xiexiuqi@huawei.com>
References: <20200410015245.23230-1-xiexiuqi@huawei.com>
 <20200414105923.GA2486@C02TD0UTHF1T.local>
From: James Morse <james.morse@arm.com>
Message-ID: <adc93578-5cfc-09c3-0b88-b265e310ef97@arm.com>
Date: Tue, 14 Apr 2020 13:16:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200414105923.GA2486@C02TD0UTHF1T.local>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_051621_475585_59FED01C 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 tanxiaofei@huawei.com, tglx@linutronix.de, will@kernel.org,
 wangxiongfeng2@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xie,

On 14/04/2020 11:59, Mark Rutland wrote:
> On Fri, Apr 10, 2020 at 09:52:45AM +0800, Xie XiuQi wrote:
>> We should panic even panic_on_oops is not set, when we can't recover
>> from synchronous external abort in kernel context.

Hmm, fault-from-kernel-context doesn't mean the fault affects the kernel. If the kernel is
reading or writing from user-space memory for a syscall, its the user-space memory that is
affected. This thread can't make progress, so we kill it.
If its a kernel thread or we were in irq context, we panic().

I don't think you really want all faults that happen as a result of a kernel access to be
fatal!

[...]

> What exactly are you trying to catch here? If you are seeing a problem
> in practice, can you please share your log from a crash?

Yes please!


I suspect you want to make memory_failure() smarter about faults that affect the kernel
text or data. If so, please do it in memory_failure() where it benefits all architectures,
and all methods of reporting errors.
(we may need a 'synchronous' hint to memory_failure(), it expects everything to be
asynchronous).

If its not memory, we should extend the RAS handling to know what this error is, and that
it is fatal. (e.g. PE state is infected)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
