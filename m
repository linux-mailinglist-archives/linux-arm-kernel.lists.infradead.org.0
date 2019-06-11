Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F823D384
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V135PASNICfPqwtyF0aRh42TLaeZgD6CejQba1AcpBE=; b=VJFehISrKrH67o
	19QbYyN/E8H3Cx4NV+RXZuE4wdNmFa+2XMJtbevpvuBxhk+VudCBXjX5dIDFJ843BXkT3+r7qsz/j
	Rpq1JvYoydN4j7DWLxzWGGJ0I2YWUDdPpuWy+chLr5pfvqXghnIZfkgH2+zlz2PKJX/MQswQc/QUM
	yxiAHQTtd2gHvG1sWdzzYxfhH9YjF7GLVwBLoT4HfW0ELQUwC4YBx3gMuH4jWPsX0dPSx6+a8WZ2k
	j6zWOIa3z7gVAYTr7UUgz6ZJAQH+TmkSjrlKwzab1KIXhtwNUFgbxQz4j+etUwBIN6OY4abG4WnUP
	YhHpA0gQbpyt7Dvvt3jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakFY-0004nH-H1; Tue, 11 Jun 2019 17:07:56 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hakFN-0004mo-JI
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 17:07:46 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 10:07:44 -0700
X-ExtLoop1: 1
Received: from jacob-builder.jf.intel.com (HELO jacob-builder) ([10.7.199.155])
 by orsmga006.jf.intel.com with ESMTP; 11 Jun 2019 10:07:44 -0700
Date: Tue, 11 Jun 2019 10:10:52 -0700
From: Jacob Pan <jacob.jun.pan@linux.intel.com>
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Subject: Re: [PATCH 1/8] iommu: Add I/O ASID allocator
Message-ID: <20190611101052.35af46df@jacob-builder>
In-Reply-To: <95292b47-4cf4-5fd9-b096-1cb016e2264f@arm.com>
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
 <20190610184714.6786-2-jean-philippe.brucker@arm.com>
 <20190611052626.20bed59a@jacob-builder>
 <95292b47-4cf4-5fd9-b096-1cb016e2264f@arm.com>
Organization: OTC
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_100745_690713_BE688DBE 
X-CRM114-Status: GOOD (  20.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 jacob.jun.pan@linux.intel.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 robh+dt@kernel.org, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 11 Jun 2019 15:37:42 +0100
Jean-Philippe Brucker <jean-philippe.brucker@arm.com> wrote:

> On 11/06/2019 13:26, Jacob Pan wrote:
> >> +/**
> >> + * ioasid_set_data - Set private data for an allocated ioasid
> >> + * @ioasid: the ID to set data
> >> + * @data:   the private data
> >> + *
> >> + * For IOASID that is already allocated, private data can be set
> >> + * via this API. Future lookup can be done via ioasid_find.
> >> + */
> >> +int ioasid_set_data(ioasid_t ioasid, void *data)
> >> +{
> >> +	struct ioasid_data *ioasid_data;
> >> +	int ret = 0;
> >> +
> >> +	xa_lock(&ioasid_xa);  
> > Just wondering if this is necessary, since xa_load is under
> > rcu_read_lock and we are not changing anything internal to xa. For
> > custom allocator I still need to have the mutex against allocator
> > removal.  
> 
> I think we do need this because of a possible race with ioasid_free():
> 
>          CPU1                      CPU2
>   ioasid_free(ioasid)     ioasid_set_data(ioasid, foo)
>                             data = xa_load(...)
>     xa_erase(...)
>     kfree_rcu(data)           (no RCU lock held)
>     ...free(data)
>                             data->private = foo;
> 
make sense, thanks for explaining.

> The issue is theoretical at the moment because no users do this, but
> I'd be more comfortable taking the xa_lock, which prevents a
> concurrent xa_erase()+free(). (I commented on your v3 but you might
> have missed it)
> 
Did you reply to my v3? I did not see it. I only saw your comments about
v3 in your commit message.

> >> +	ioasid_data = xa_load(&ioasid_xa, ioasid);
> >> +	if (ioasid_data)
> >> +		rcu_assign_pointer(ioasid_data->private, data);  
> > it is good to publish and have barrier here. But I just wonder even
> > for weakly ordered machine, this pointer update is quite far away
> > from its data update.  
> 
> I don't know, it could be right before calling ioasid_set_data():
> 
> 	mydata = kzalloc(sizeof(*mydata));
> 	mydata->ops = &my_ops;			(1)
> 	ioasid_set_data(ioasid, mydata);
> 		... /* no write barrier here */
> 		data->private = mydata;		(2)
> 
> And then another thread calls ioasid_find():
> 
> 	mydata = ioasid_find(ioasid);
> 	if (mydata)
> 		mydata->ops->do_something();
> 
> On a weakly ordered machine, this thread could observe the pointer
> assignment (2) before the ops assignment (1), and dereference NULL.
> Using rcu_assign_pointer() should fix that
> 
I agree it is better to have the barrier. Just thought there is already
a rcu_read_lock() in xa_load() in between. rcu_read_lock() may have
barrier in some case but better not count on it. No issues here. I will
integrate this in the next version.

> Thanks,
> Jean

[Jacob Pan]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
