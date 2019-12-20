Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EA0127AAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 13:05:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p56icB+LQT+k7ypuuwRqHm9udZOLVZZQMWWe3mWZ+1E=; b=Pm5dd9sS0iO3W4
	/vX9+jwVsRVIyhRWxpOvIOPJS+dB46zWAJAmmLjybQk78eKbbubKuDIxIHz6eQyspKyAtXZVvhJLd
	sZcAdy7NYSIVdee6CoTicYGndVSKH4Bknva4AIX/E12DbQES44J3uJgV97l3UE0X3MbOlcOJWLkp4
	Q9Vb+Ot5gQryA8FyHp1nPLMkDiMefzu/ofsktPNJ6sHRJNR3owJi3bH26wUrAQaGo10wkpN2cxCzN
	fhQP0BTOxdY3giWoLQ/Om+nOszHwFxmgdXDB02YG8SPWE/apMVaxD7pwei8w8Ho8GJAJQzpdGIDSE
	eFXu63l/XNi8y8iWeIrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiH2a-0000MY-9R; Fri, 20 Dec 2019 12:05:56 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiH2Q-0000M1-8q
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 12:05:47 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 0ED2E21875;
 Fri, 20 Dec 2019 13:05:44 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id E7CB02186A;
 Fri, 20 Dec 2019 13:05:43 +0100 (CET)
Subject: Re: [RFC PATCH v1] devres: align devres.data strictly only for
 devm_kmalloc()
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <74ae22cd-08c1-d846-3e1d-cbc38db87442@free.fr>
 <bf020a68-00fd-2bb7-c3b6-00f5befa293a@free.fr>
 <20191220102218.GA2259862@kroah.com> <20191220102256.GB2259862@kroah.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <5b12b473-bf9a-6dc9-838c-f9312eb10635@free.fr>
Date: Fri, 20 Dec 2019 13:05:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191220102256.GB2259862@kroah.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Fri Dec 20 13:05:44 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_040546_475817_283AFF4C 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Will Deacon <will@kernel.org>,
 Alexey Brodkin <alexey.brodkin@synopsys.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Tejun Heo <tj@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/12/2019 11:22, Greg Kroah-Hartman wrote:

> On Fri, Dec 20, 2019 at 11:22:18AM +0100, Greg Kroah-Hartman wrote:
>
>> On Fri, Dec 20, 2019 at 11:19:27AM +0100, Marc Gonzalez wrote:
>>
>>> I keep thinking about the memory waste caused by the strict alignment requirement
>>> on arm64. Is there a way to inspect how much memory has been requested vs how much
>>> has been allocated? (Turning on SLAB DEBUG perhaps?)
>>>
>>> Couldn't there be a kmalloc flag saying "this alloc will not require strict
>>> alignment, so just give me something 8-byte aligned" ?
>>
>> Or you can not use the devm interface for lots of tiny allocations :)
> 
> Oh nevermind, "normal" kmalloc allocations are all aligned that way
> anyway, so that's not going to solve anything, sorry.

(For some context, and for what it's worth, my opinion is that device-managed
deallocation is the best thing since sliced bread.)

Typical devm use-case is:
1) user allocates a resource
2) user registers release_func+resource_context to devm

So typically, only 2 pointers (which is no issue when the alignment
requirement is 8 bytes). By nature, these are "small" allocations.

devm_kmalloc does not follow this pattern, it is a kind of optimization.
1) user does not allocate the resource (RAM)...
2) ...because the devm framework "merges" the user's memory request with
its own memory request for storing metadata -- as a memory allocator does
when it stores metadata for the request "in front of" the memory block.
(this is the reason why devm_kmalloc_release() is a noop)


(The following is just random thinking out loud)

If "fixing" the kmalloc strict alignment requirement on arm64 is too
hard, maybe it would be possible to shave some of the devm memory
waste by working with (chained) arrays of devm nodes, instead
of a straight-up linked list. (Akin to a C++ vector) Removal would
be expensive, but that's supposed to be a rare operation, right?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
