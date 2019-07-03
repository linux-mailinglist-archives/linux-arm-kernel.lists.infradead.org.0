Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 097AF5EA8B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 19:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bRoRyMhKHVzADesHgswhpCEAqc6ptntVVB75yGiFemU=; b=MF/4ul1pH7zTTM
	kYgnhzmpE7eJGx8dlOf2b0RttciX5muKWqzolHgkQJunls8HzBOMhSJiPWQAZEjiSvoVLOduz+S6i
	+tH+AIQhPNUSrwMZAL8zkOyznhl0solNTdRWrjtIACRHq7aFcs7Rf3a0HYuiqjSoy6lAzIvkUJjiO
	Fe7Z9JHJ453MKiX6BwTs+QrcxO2hHCozUhrztvRtDVfWxs7j7ZRW8i/ZwPjJTjADzuTo/MN9sOWIX
	oSIL1iZEztkedGjOvj/0IKl9GNFUnVw4F5z7yhlVDot8w0tNw+ReY7Ae4kdyyzBxA3q860oogxXsm
	yqndj8h5Y73aGwMpo8rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hijAS-0005Rj-UI; Wed, 03 Jul 2019 17:35:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hijAH-0005RQ-FM
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 17:35:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C437344;
 Wed,  3 Jul 2019 10:35:28 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A38253F718;
 Wed,  3 Jul 2019 10:35:25 -0700 (PDT)
Subject: Re: [RFC v2 12/14] arm64/lib: asid: Allow user to update the context
 under the lock
To: Julien Grall <julien.grall@arm.com>
References: <20190620130608.17230-1-julien.grall@arm.com>
 <20190620130608.17230-13-julien.grall@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <c5d1257c-b522-152f-cb2f-d23fd8110609@arm.com>
Date: Wed, 3 Jul 2019 18:35:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190620130608.17230-13-julien.grall@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_103529_557389_4DFAE2A6 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: julien.thierry@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 suzuki.poulose@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Julien,

On 20/06/2019 14:06, Julien Grall wrote:
> Some users of the ASID allocator (e.g VMID) will require to update the
> context when a new ASID is generated. This has to be protected by a lock
> to prevent concurrent modification.
> 
> Rather than introducing yet another lock, it is possible to re-use the
> allocator lock for that purpose. This patch introduces a new callback
> that will be call when updating the context.

You're using this later in the series to mask out the generation from the atomic64 to
leave just the vmid.

Where does this concurrent modification happen? The value is only written if we have a
rollover, and while its active the only bits that could change are the generation.
(subsequent vCPUs that take the slow path for the same VM will see the updated generation
and skip the new_context call)

If we did the generation filtering in update_vmid() after the call to
asid_check_context(), what would go wrong?
It happens more often than is necessary and would need a WRITE_ONCE(), but the vmid can't
change until we become preemptible and another vCPU gets a chance to make its vmid active.

This thing is horribly subtle, so I'm sure I've missed something here!

I can't see where the arch code's equivalent case is. It also filters the generation out
of the atomic64 in cpu_do_switch_mm(). This happens with interrupts masked so we can't
re-schedule and set another asid as 'active'. KVM's equivalent is !preemptible.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
