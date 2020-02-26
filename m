Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 116D3170210
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 16:15:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7dFn6bILVY72HzTBNzsI89McMNxJpT5buJKp43zjAbw=; b=oMSZUxbKhQak6c
	zPiH0ygF47kw3AcvzOEmG15OQ3zNHlIC3/e0GNcEaLGQIRzXxwnLvWLEC/NF2B5i9j5PAeMkxXK6o
	SevVeGrqAW4fRgy8nPj6fBYfyRZgYAizRzWZBsOX3oLFVngeeFPD3RjePBwecdCbuxg6NKG0QdYHu
	nmCJUE4quxpJmBz0KzCN0bG8FClPVPICV+LYevAo7PPm8i4MZUh9gHEt49hUz4k4u0EBKT0puU6KS
	EmNNC9hOm/5KbhP77dhypfbXzjGT72RoPvaCwTB9qnI8tBvy+ZRyzmgTTkbFfhu/ubhSWLtmapTTD
	P/XyEzf9YY44qeIo22ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6yOe-0004oF-Mj; Wed, 26 Feb 2020 15:14:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6yOU-0004nS-7f
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 15:14:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 260B430E;
 Wed, 26 Feb 2020 07:14:34 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 530F33F819;
 Wed, 26 Feb 2020 07:14:33 -0800 (PST)
Subject: Re: [PATCH] trace: ras: print the raw data of arm processor error info
To: Xie XiuQi <xiexiuqi@huawei.com>
References: <20191214121109.8349-1-xiexiuqi@huawei.com>
 <20200109114603.GC5603@zn.tnic>
 <3086a22d-6d66-df74-5878-60a8fc0f1499@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <e391ed52-d861-0149-33eb-f55122b6bd6c@arm.com>
Date: Wed, 26 Feb 2020 15:14:30 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <3086a22d-6d66-df74-5878-60a8fc0f1499@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_071438_318524_0CFA55F9 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: tony.luck@intel.com, Borislav Petkov <bp@alien8.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xie,

On 13/01/2020 14:10, Xie XiuQi wrote:
> What do you think of this patch?
> 
> On 2020/1/9 19:46, Borislav Petkov wrote:
>>>  );
>>>  
>>>  /*

What patch?!

(digs in the headers)
https://lore.kernel.org/linux-edac/20191214121109.8349-1-xiexiuqi@huawei.com/

>>> -- 
>> That's for ARM folks to decide whether they wanna shuffle raw error
>> records into userspace like that. CCed.

Hmm, this dumps more of 'CPER_SEC_PROC_ARM' to user-space. But not all of it ... (ugh,
this is the thing with three variable length fields in it!) I would like to be able to
parse these in the kernel eventually, but that doesn't matter right now.

I agree privileged user-space should be able to collect all the CPER for some tool to
analyse it. (what else would we do with 'vendor specific error info'?). I'm not totally
convinced tracepoints are the right thing for big blobs of data like this, but its what
we're using today.


I'll show my ignorance about trace points:

How does rasdaemon react to you expanding the trace point like this? I recall they are
self-describing, if user-space doesn't hard code the layout...

You export what may be kernel pointers with the virtual fault address. Is there any way an
unprivileged user can get hold of these?
(its somewhat pointless as user-space can't know what that pointer means)



Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
