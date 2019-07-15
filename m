Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CDB692CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 16:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n9LYbK+r1EpNiewNcLxDWvf8Bhxm8gWs76rOuqWTYeE=; b=VbAH0KUX5FSoUIUO8yMDxOo12
	XXF43KxHi0LIV/vHpoPSHTcvPL5r56d4bYcRXqW48LSjQjOVgqcjkIK55jPHTSB7HbnjKH7lzHyoH
	FzrJUaj04Dq/4P5At9F7CUYDBJXcWjBU2ijJGH3X6wpVvugQAMv2++G4ufvSyQI75argEKzMfpnP5
	N3eztCyXeVmSVfD+vcfkYmBZS+yenFIuXoIXhuDFmuLsuK5z1bdVSfvWU33KKd9qMHxa6kuLerF9E
	2r05faNIKKmHR/waq29nlXyFUiAX3mAmphFzUDwovPdVi5aUsn8WN+SCBtH70u/pvwQZYHWx+juQM
	DXwqBvVXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn28F-0007Hg-7C; Mon, 15 Jul 2019 14:39:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hn27q-0007Eu-Ae
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 14:38:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C80BF28;
 Mon, 15 Jul 2019 07:38:44 -0700 (PDT)
Received: from [10.1.196.50] (e108454-lin.cambridge.arm.com [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A1A613F59C;
 Mon, 15 Jul 2019 07:38:43 -0700 (PDT)
Subject: Re: [RFC v2 12/14] arm64/lib: asid: Allow user to update the context
 under the lock
To: James Morse <james.morse@arm.com>
References: <20190620130608.17230-1-julien.grall@arm.com>
 <20190620130608.17230-13-julien.grall@arm.com>
 <c5d1257c-b522-152f-cb2f-d23fd8110609@arm.com>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <446cfa1a-71be-3ae2-4107-02dd0f164843@arm.com>
Date: Mon, 15 Jul 2019 15:38:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <c5d1257c-b522-152f-cb2f-d23fd8110609@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_073846_427300_84C95644 
X-CRM114-Status: GOOD (  17.09  )
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
Cc: julien.thierry@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 suzuki.poulose@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 03/07/2019 18:35, James Morse wrote:
> Hi Julien,

Hi James,

> On 20/06/2019 14:06, Julien Grall wrote:
>> Some users of the ASID allocator (e.g VMID) will require to update the
>> context when a new ASID is generated. This has to be protected by a lock
>> to prevent concurrent modification.
>>
>> Rather than introducing yet another lock, it is possible to re-use the
>> allocator lock for that purpose. This patch introduces a new callback
>> that will be call when updating the context.
> 
> You're using this later in the series to mask out the generation from the atomic64 to
> leave just the vmid.

You are right.

> 
> Where does this concurrent modification happen? The value is only written if we have a
> rollover, and while its active the only bits that could change are the generation.
> (subsequent vCPUs that take the slow path for the same VM will see the updated generation
> and skip the new_context call)
> 
> If we did the generation filtering in update_vmid() after the call to
> asid_check_context(), what would go wrong?
> It happens more often than is necessary and would need a WRITE_ONCE(), but the vmid can't
> change until we become preemptible and another vCPU gets a chance to make its vmid active.

I think I was over cautious. Pre-filtering after asid_check_context() is equally 
fine as long as update_vttbr() is called from preemptible context.

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
