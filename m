Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC2AF0687
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 21:00:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/sQGtGsesQsEZbYUXOohBCEFwiu80X6mnxwFYvrhvIE=; b=cmuLHf05HOu3EyW95qwUXn+OV
	nJ16pJpoyVs0ucNOUAzOtjD6FW6Gq+Qrel7kWtMGYaD2yOVjyJpeSX/xY+rmffKdEDHqnsS4WQaMw
	3ZgUyxGw1e0JsnUHSjm50N6YYGFSbvVTHGOg1TC1Vg3fgxANIZKI2OXS7VT+frYwOafJ+0OSTEFwT
	I+9tbAzjtYBc6zmqxNNmriChVVYyCNQ7Yb0JqTEVdGZRX/ebIaOWErje5r+kjOVRqCp1tV4CiKKwx
	t6h3Dcw/n+N/XmD52wLVswd/xtmWrHWJ91RN/xdakC6rXbwt35KSZSbSXKbvTmOZixW7pIDku3p+6
	ZzdKNi4Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS50E-0003pU-EG; Tue, 05 Nov 2019 20:00:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS4zg-0002Mz-Vw
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 20:00:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DFEB14F2;
 Tue,  5 Nov 2019 11:59:56 -0800 (PST)
Received: from [10.162.40.121] (a075563-lin.blr.arm.com [10.162.40.121])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 33DFF3FB40;
 Mon,  4 Nov 2019 23:02:20 -0800 (PST)
Subject: Re: [PATCHv2 1/8] ftrace: add ftrace_init_nop()
To: Steven Rostedt <rostedt@goodmis.org>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-2-mark.rutland@arm.com>
 <daad0785-a33f-3cfb-cf0f-657b6c677257@arm.com>
 <20191104081136.645e9b1a@grimm.local.home>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <ca7dd81e-5d98-c0f6-3d84-4f2cc20f4676@arm.com>
Date: Tue, 5 Nov 2019 12:29:23 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191104081136.645e9b1a@grimm.local.home>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_120001_068634_6860CA21 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, jthierry@redhat.com,
 linux-parisc@vger.kernel.org, peterz@infradead.org, catalin.marinas@arm.com,
 deller@gmx.de, jpoimboe@redhat.com, linux-kernel@vger.kernel.org,
 James.Bottomley@HansenPartnership.com, takahiro.akashi@linaro.org,
 will@kernel.org, mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org,
 svens@stackframe.org, duwe@suse.de, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/4/19 6:41 PM, Steven Rostedt wrote:
> On Sat, 2 Nov 2019 17:49:00 +0530
> Amit Daniel Kachhap <amit.kachhap@arm.com> wrote:
> 
>> Now that ftrace_init_nop is also an arch implemented function so it may
>> be added in Documentation/trace/ftrace-design.rst along with
>> ftrace_make_nop.
>> In general also, adding some description about patchable-function-entry
>> in kernel Documentation will be useful.
> 
> I think this part is outside the scope of this patch set. Honestly, I
> need to chisel out some time to rewrite the ftrace-design document, as
> that's been long needed. But that can come at a later time. I'm
> currently rewriting some of it now, so it will be best to not waste
> effort to update a document that will soon become stale. ;-)
Yes it makes sense.

Thanks,
Amit
> 
> -- Steve
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
