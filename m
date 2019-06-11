Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D09613CEE8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 16:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VmYXVoW96scbLOasNELWri83oWWumn1wox9vNACknxQ=; b=bg/6YP3Sc18i58
	Po1X7dF5Bf/xHdGdgkws/bvLeRGVGvCtKDkE6lEXzYm7x8nq4JzttuX8rTDgHYJ5HZi9PaR9nhFHG
	TiRkdfy+K+arl7fwSOitrzpllDj9RhQfgjUTqroGV2G8dHfSUHl037DW5w8f24hBgK5C7kAASAkTn
	KIXDUXYDMo8XzXF7WA2KmifcScPBNiLk3rlrhgGzJ+cT8gFM0GZooz3Pjl7xKl8U6dNwWo4nhHZYH
	XsomNr8SOXi6JMlxFe83nolA6ENSkxrIpJOI47mhLpZ1sMw5XNf+omOfk/RU8UVOdRfI2YFiGezj2
	c+jA96u1AdCrI8Ono+zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahup-0002xF-Og; Tue, 11 Jun 2019 14:38:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hahuc-0002w7-9H
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 14:38:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 35FBD337;
 Tue, 11 Jun 2019 07:38:09 -0700 (PDT)
Received: from [10.1.196.129] (ostrya.cambridge.arm.com [10.1.196.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0C1583F557;
 Tue, 11 Jun 2019 07:38:07 -0700 (PDT)
Subject: Re: [PATCH 1/8] iommu: Add I/O ASID allocator
To: Jacob Pan <jacob.jun.pan@linux.intel.com>
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
 <20190610184714.6786-2-jean-philippe.brucker@arm.com>
 <20190611052626.20bed59a@jacob-builder>
From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Message-ID: <95292b47-4cf4-5fd9-b096-1cb016e2264f@arm.com>
Date: Tue, 11 Jun 2019 15:37:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190611052626.20bed59a@jacob-builder>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_073810_371870_E99D4D1F 
X-CRM114-Status: GOOD (  13.93  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 robh+dt@kernel.org, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/06/2019 13:26, Jacob Pan wrote:
>> +/**
>> + * ioasid_set_data - Set private data for an allocated ioasid
>> + * @ioasid: the ID to set data
>> + * @data:   the private data
>> + *
>> + * For IOASID that is already allocated, private data can be set
>> + * via this API. Future lookup can be done via ioasid_find.
>> + */
>> +int ioasid_set_data(ioasid_t ioasid, void *data)
>> +{
>> +	struct ioasid_data *ioasid_data;
>> +	int ret = 0;
>> +
>> +	xa_lock(&ioasid_xa);
> Just wondering if this is necessary, since xa_load is under
> rcu_read_lock and we are not changing anything internal to xa. For
> custom allocator I still need to have the mutex against allocator
> removal.

I think we do need this because of a possible race with ioasid_free():

         CPU1                      CPU2
  ioasid_free(ioasid)     ioasid_set_data(ioasid, foo)
                            data = xa_load(...)
    xa_erase(...)
    kfree_rcu(data)           (no RCU lock held)
    ...free(data)
                            data->private = foo;

The issue is theoretical at the moment because no users do this, but I'd
be more comfortable taking the xa_lock, which prevents a concurrent
xa_erase()+free(). (I commented on your v3 but you might have missed it)

>> +	ioasid_data = xa_load(&ioasid_xa, ioasid);
>> +	if (ioasid_data)
>> +		rcu_assign_pointer(ioasid_data->private, data);
> it is good to publish and have barrier here. But I just wonder even for
> weakly ordered machine, this pointer update is quite far away from its
> data update.

I don't know, it could be right before calling ioasid_set_data():

	mydata = kzalloc(sizeof(*mydata));
	mydata->ops = &my_ops;			(1)
	ioasid_set_data(ioasid, mydata);
		... /* no write barrier here */
		data->private = mydata;		(2)

And then another thread calls ioasid_find():

	mydata = ioasid_find(ioasid);
	if (mydata)
		mydata->ops->do_something();

On a weakly ordered machine, this thread could observe the pointer
assignment (2) before the ops assignment (1), and dereference NULL.
Using rcu_assign_pointer() should fix that

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
