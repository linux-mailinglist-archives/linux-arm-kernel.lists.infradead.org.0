Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11842C8700
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 13:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZQtX/W38uZ+YtsmsxgMPe06N7pajq7jF3tVl9T5YdpM=; b=qEp+QYu4Bnk6aJZiDVyNOjGa+
	KCMXPlfeU444nBswuww+J4k77LVT5n/cMNonwrJnKNgEOXDu/F7oc5aBR2KEktV/h9hAhOFEH6uYa
	QLw8h0s/aSbpqLrM/LaBe79CN44tBYXEYFO0PZVVonWgBXbGLn0a2Ksi37AtzjWcjqQ87LNmMxVWp
	sRWELNxDlMsUecYd3H6XPaXFCt4bAq/6uo3tDWqoGm0LNRfYJ3I9GQpWgHjyfMJ9W8zzLRzaq1fqx
	temz10TOUDJbGMltG9PIqujVVbR7jT4pdrS4sjFKQRwuSkqvg72zmY5yMScqsbvWJsjMymH3YYz1a
	IP3bQo7qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFcVc-00074r-Ll; Wed, 02 Oct 2019 11:09:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFcVQ-00074X-CJ
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 11:09:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC5AC1000;
 Wed,  2 Oct 2019 04:09:14 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6F0943F739;
 Wed,  2 Oct 2019 04:09:14 -0700 (PDT)
Subject: Re: SMMU performance
To: Will Deacon <will@kernel.org>
References: <20190930110047.GF25745@shell.armlinux.org.uk>
 <cf3ac700-1954-8800-6ce4-9983ab27707b@arm.com>
 <20190930115405.phkllciuv62cz2fk@willie-the-truck>
 <250d78f8-a4d1-5ff0-e537-e7c2a49c0bf4@arm.com>
 <20191002090233.rqpmhyax2qztyhsr@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <7e85cfeb-138e-2651-800f-c878b707e2d9@arm.com>
Date: Wed, 2 Oct 2019 12:09:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191002090233.rqpmhyax2qztyhsr@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_040916_456097_F221E11E 
X-CRM114-Status: GOOD (  17.92  )
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
Cc: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/10/2019 10:02, Will Deacon wrote:
> On Mon, Sep 30, 2019 at 01:00:00PM +0100, Robin Murphy wrote:
>> On 30/09/2019 12:54, Will Deacon wrote:
>>> On Mon, Sep 30, 2019 at 12:45:28PM +0100, Robin Murphy wrote:
>>>> The major changes in 5.4 are for SMMUv3, so won't impact your platform.
>>>
>>> I was wondering whether rigging up the gather stuff would help here but,
>>> looking at the backtrace, the time is spent on the sync itself so I suspect
>>> it won't help. Hmm... I wonder if we can do better using a sequence number
>>> so that we can ride off the back of somebody else's sync?
>>
>> The trouble with v2 is that then we'd have to introduce locking around the
>> invalidates as well, in order to keep track of what the last 'command'
>> issued in each context was - that's almost certainly going to have far more
>> overhead than eliding syncs could possibly save.
> 
> I was thinking along the lines of allocating an ID to each flush, and then
> updating a sync ID on sync, so you can elide the sync if the sync ID is
> greater than your flush ID. But it's vague and I didn't try to implement
> anything.

I don't think that works:

	  A		  B

	start flush 1
	TLBI
			start flush 2
	TLBI
			TLBI
			SYNC(2)
	TLBI
	TLBI
	...
	SYNC(1)

Even considering your idea upside-down, it seems unlikely to be 
beneficial for thread B to sit and wait however long for sync 1 to be 
issued just to nominally save issuing sync 2.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
