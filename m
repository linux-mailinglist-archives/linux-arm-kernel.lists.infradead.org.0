Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B73642400
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ERfyiPGaCxuhY8+FCklptvxy3jNnVoLJWpv0fZBlvYw=; b=YHhyyN6ZLTriDV
	YyvHHUr9PfegL/WxCwiEZYHU3OisE3gwATqud9xjthvJWkpop0r36dk23vVZZEyyt5vMk92IVFW2k
	nJQGzM6UNOUltI5k7krECSz9T4D43k/g0gY49lEWrzN+i8EpsmLGe8biLvQUMIMy+zUZNmiwzkA4K
	rOl8aA2xpt3LyMGpKLgS3i29ezorXSQwEoTkqrLvfe99O0pM8q8/iYzG9HnoHqc8Rku5Sg6+0Z0ID
	l9CCwBUXf/BVbETN5cpIMRUVu810eaW7fmlIJL5zhogp0FatHghgVmwPSL+sAEo5KLy9yYes8jkdO
	fGipwCeO0ZqvCTftGnUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1Sr-0000A5-6O; Wed, 12 Jun 2019 11:30:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1Sd-000085-SL
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:30:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4F9C428;
 Wed, 12 Jun 2019 04:30:33 -0700 (PDT)
Received: from [10.1.196.129] (ostrya.cambridge.arm.com [10.1.196.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C93383F246;
 Wed, 12 Jun 2019 04:32:14 -0700 (PDT)
Subject: Re: [PATCH 1/8] iommu: Add I/O ASID allocator
To: Jacob Pan <jacob.jun.pan@linux.intel.com>
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
 <20190610184714.6786-2-jean-philippe.brucker@arm.com>
 <20190611052626.20bed59a@jacob-builder>
 <95292b47-4cf4-5fd9-b096-1cb016e2264f@arm.com>
 <20190611101052.35af46df@jacob-builder>
From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Message-ID: <f68f4ccb-1422-4f93-dc9c-2bcdf61c9ed4@arm.com>
Date: Wed, 12 Jun 2019 12:30:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190611101052.35af46df@jacob-builder>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_043035_965818_5B6ABD61 
X-CRM114-Status: GOOD (  16.23  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Will Deacon <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Robin Murphy <Robin.Murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/06/2019 18:10, Jacob Pan wrote:
>> The issue is theoretical at the moment because no users do this, but
>> I'd be more comfortable taking the xa_lock, which prevents a
>> concurrent xa_erase()+free(). (I commented on your v3 but you might
>> have missed it)
>>
> Did you reply to my v3? I did not see it. I only saw your comments about
> v3 in your commit message.

My fault, I sneaked the comments in a random reply three levels down the
thread:
https://lore.kernel.org/linux-iommu/836caf0d-699e-33ba-5303-b1c9c949c9ca@arm.com/

(Great, linux-iommu is indexed by lore! I won't have to Cc lkml anymore)

>>>> +	ioasid_data = xa_load(&ioasid_xa, ioasid);
>>>> +	if (ioasid_data)
>>>> +		rcu_assign_pointer(ioasid_data->private, data);  
>>> it is good to publish and have barrier here. But I just wonder even
>>> for weakly ordered machine, this pointer update is quite far away
>>> from its data update.  
>>
>> I don't know, it could be right before calling ioasid_set_data():
>>
>> 	mydata = kzalloc(sizeof(*mydata));
>> 	mydata->ops = &my_ops;			(1)
>> 	ioasid_set_data(ioasid, mydata);
>> 		... /* no write barrier here */
>> 		data->private = mydata;		(2)
>>
>> And then another thread calls ioasid_find():
>>
>> 	mydata = ioasid_find(ioasid);
>> 	if (mydata)
>> 		mydata->ops->do_something();
>>
>> On a weakly ordered machine, this thread could observe the pointer
>> assignment (2) before the ops assignment (1), and dereference NULL.
>> Using rcu_assign_pointer() should fix that
>>
> I agree it is better to have the barrier. Just thought there is already
> a rcu_read_lock() in xa_load() in between. rcu_read_lock() may have
> barrier in some case but better not count on it. 

Yes, and even if rcu_read_lock() provided a barrier I don't think it
would be sufficient, because acquire semantics don't guarantee that
prior writes appear to happen before the barrier, only the other way
round. A lock operation with release semantics, for example
spin_unlock(), should work.

Thanks,
Jean

> No issues here. I will
> integrate this in the next version.
> 
>> Thanks,
>> Jean
> 
> [Jacob Pan]
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
