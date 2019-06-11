Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 081BD3CED9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 16:36:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGD6hE7mOLwH6z4LeSYtMlCbHCjp1qNp8oJ5HXme20w=; b=MEtC2+rM6CBJ1G
	n5QwnEdzqiRXps5l4ena8lc5zlt6w5XtWOcN/Qm/tmDyddDSkIo+ob8ffbhU1j2MnFZJTe5Kmaibf
	44uWNx9XZtMaTDiJiGWbELYJh82OodPfayFzhHXfMLQTUKPa/1QjHkXEBS5NHF0M/U0HCTxaC1E/Z
	HliWbnVev9NC7oGw+0pWAtqTjTtOJUx5APQXBm+c8FdlDEMYI6zRYBwnOavZpxCA8Mj7vS2GOfXEy
	4aLYoIE3/ZWg932zREqYtCtmL/Lo/5I1v/8wylZzk5u5da8ALwFdd6MCTJq52FkkBdR+19ROiEA4b
	Bska46u0bG8Z4bIPUHtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahsa-0001kG-UH; Tue, 11 Jun 2019 14:36:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hahsM-0001jS-28
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 14:35:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6932D337;
 Tue, 11 Jun 2019 07:35:49 -0700 (PDT)
Received: from [10.1.196.129] (ostrya.cambridge.arm.com [10.1.196.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 28CF33F557;
 Tue, 11 Jun 2019 07:35:48 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Subject: Re: [PATCH 1/8] iommu: Add I/O ASID allocator
To: Jonathan Cameron <jonathan.cameron@huawei.com>
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
 <20190610184714.6786-2-jean-philippe.brucker@arm.com>
 <20190611103625.00001399@huawei.com>
Message-ID: <62d1f310-0cba-4d55-0f16-68bba3c64927@arm.com>
Date: Tue, 11 Jun 2019 15:35:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190611103625.00001399@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_073550_201499_A5916259 
X-CRM114-Status: GOOD (  22.17  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 "jacob.jun.pan@linux.intel.com" <jacob.jun.pan@linux.intel.com>,
 will.deacon@arm.com, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/06/2019 10:36, Jonathan Cameron wrote:
>> +/**
>> + * ioasid_alloc - Allocate an IOASID
>> + * @set: the IOASID set
>> + * @min: the minimum ID (inclusive)
>> + * @max: the maximum ID (inclusive)
>> + * @private: data private to the caller
>> + *
>> + * Allocate an ID between @min and @max. The @private pointer is stored
>> + * internally and can be retrieved with ioasid_find().
>> + *
>> + * Return: the allocated ID on success, or %INVALID_IOASID on failure.
>> + */
>> +ioasid_t ioasid_alloc(struct ioasid_set *set, ioasid_t min, ioasid_t max,
>> +		      void *private)
>> +{
>> +	u32 id = INVALID_IOASID;
>> +	struct ioasid_data *data;
>> +
>> +	data = kzalloc(sizeof(*data), GFP_KERNEL);
>> +	if (!data)
>> +		return INVALID_IOASID;
>> +
>> +	data->set = set;
>> +	data->private = private;
>> +
>> +	if (xa_alloc(&ioasid_xa, &id, data, XA_LIMIT(min, max), GFP_KERNEL)) {
>> +		pr_err("Failed to alloc ioasid from %d to %d\n", min, max);
>> +		goto exit_free;
>> +	}
>> +	data->id = id;
>> +
>> +exit_free:
> 
> This error flow is perhaps a little more confusing than it needs to be?
> 
> My assumption (perhaps wrong) is that we only have an id == INVALID_IOASID
> if the xa_alloc fails, and that we will always have such an id value if
> it does (I'm not totally sure this second element is true in __xa_alloc).
> 
> If I'm missing something perhaps a comment on how else we'd get here.

Yes we can simplify this:

		return id;
	exit_free:
		kfree(data)
		return INVALID_IOASID;
	}

The XA API doesn't say that @id passed to xa_alloc() won't be modified
in case of error. It's true in the current implementation, but won't
necessarily stay that way. On the other hand I think it's safe to expect
@id to always be set when xa_alloc() succeeds.

>> +/**
>> + * ioasid_find - Find IOASID data
>> + * @set: the IOASID set
>> + * @ioasid: the IOASID to find
>> + * @getter: function to call on the found object
>> + *
>> + * The optional getter function allows to take a reference to the found object
>> + * under the rcu lock. The function can also check if the object is still valid:
>> + * if @getter returns false, then the object is invalid and NULL is returned.
>> + *
>> + * If the IOASID has been allocated for this set, return the private pointer
>> + * passed to ioasid_alloc. Private data can be NULL if not set. Return an error
>> + * if the IOASID is not found or does not belong to the set.
> 
> Perhaps should make it clear that @set can be null.

Indeed. But I'm not sure allowing @set to be NULL is such a good idea,
because the data type associated to an ioasid depends on its set. For
example SVA will put an mm_struct in there, and auxiliary domains use
some structure private to the IOMMU domain.

Jacob, could me make @set mandatory, or do you see a use for a global
search? If @set is NULL, then callers can check if the return pointer is
NULL, but will run into trouble if they try to dereference it.

> 
>> + */
>> +void *ioasid_find(struct ioasid_set *set, ioasid_t ioasid,
>> +		  bool (*getter)(void *))
>> +{
>> +	void *priv = NULL;
> 
> Set in all paths, so does need to be set here.

Right

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
