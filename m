Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1C9202BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 11:41:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vjdZ/f49mZq7OSUtRUxZgCNVBmUNhQBZKpC17hlIuv0=; b=iWfdl/C6vitB4fzGgo3PmbutR
	R9qZayLHR8vJ+mD6/uap8jgXF6ggn6SgNs5RnugTNFu4KicVRO5TauPrkn5P7+JCjl+y7K97IYTWq
	3Ht8laoNYuQg2gMDuvKXk+1QmVWZO02MLWiWn+Mxf0r2vxR4Yz1qBMUtsF4rZmmmm31rGxtJv1bwn
	ee/SqCPENr3peBKzVLIld4WMSwRNxnKMebjYG1KE9u1Ld+TB8S2KX6a5D763GbRtYgOEp4EVSddfU
	I9sZjsrV9tN6aRLgzeB4fIeDpXS/LPsNUgSq4XCuVJEixtDZgS/mMkpKZRArTjGChIY2JLrrVIazx
	xDTnTsshQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRCtN-00089O-Fq; Thu, 16 May 2019 09:41:37 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRCtD-000892-D3
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 09:41:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 713BD174E;
 Thu, 16 May 2019 02:41:26 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E99D63F71E;
 Thu, 16 May 2019 02:41:24 -0700 (PDT)
Subject: Re: [PATCH V2 1/6] coresight: etb10: Properly set AUX buffer head in
 snapshot mode
To: mathieu.poirier@linaro.org
References: <20190514194018.23420-1-mathieu.poirier@linaro.org>
 <20190514194018.23420-2-mathieu.poirier@linaro.org>
 <657f1851-2a97-4efd-6532-fbcb1c927e88@arm.com>
 <CANLsYkwGyazUAB5Xs1PFn+sgT78c7DBqc6VDDPr4iBYx_Os+Ng@mail.gmail.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <d7f7ae43-4c73-724f-7080-c54279a05045@arm.com>
Date: Thu, 16 May 2019 10:41:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CANLsYkwGyazUAB5Xs1PFn+sgT78c7DBqc6VDDPr4iBYx_Os+Ng@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_024127_448235_D64EE76C 
X-CRM114-Status: GOOD (  22.97  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: alexander.shishkin@linux.intel.com, coresight@lists.linaro.org,
 acme@kernel.org, peterz@infradead.org, mingo@redhat.com, leo.yan@linaro.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 15/05/2019 15:28, Mathieu Poirier wrote:
> Good day Suzuki,
> 
> On Wed, 15 May 2019 at 03:45, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>>
>> Hi Mathieu,
>>
>> On 14/05/2019 20:40, Mathieu Poirier wrote:
>>> Unify amongst sink drivers how the AUX ring buffer head is communicated
>>> to user space.  That way the same algorithm in cs_etm_find_snapshot()
>>
>> I would leave the userspace tool's function name out of the commit description
>> and the comment below. We could instead say: "That way the same algorithm can be
>> used by the userspace tool to determine the position and the size of the latest
>> snapshot data."
> 
> I purposely added the name of the function there so that people can
> quickly find it and avoid any misunderstanding about the code in
> question.  But I also have the same information as a comment in the
> code, which should be sufficient.  I'll fix it.
> 

No need to resend the series as it is just the comment and description.
You may fix up both before committing.

>>> diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
>>> index 4ee4c80a4354..60e753b1768d 100644
>>> --- a/drivers/hwtracing/coresight/coresight-etb10.c
>>> +++ b/drivers/hwtracing/coresight/coresight-etb10.c
>>> @@ -548,13 +548,14 @@ static unsigned long etb_update_buffer(struct coresight_device *csdev,
>>>        writel_relaxed(0x0, drvdata->base + ETB_RAM_WRITE_POINTER);
>>>
>>>        /*
>>> -      * In snapshot mode we have to update the handle->head to point
>>> -      * to the new location.
>>> +      * In snapshot mode we simply increment the head by the number of byte
>>> +      * that were written.  User space function  cs_etm_find_snapshot() will
>>> +      * figure out how many bytes to get from the AUX buffer based on the
>>> +      * position of the head.
>>>         */
>>> -     if (buf->snapshot) {
>>> -             handle->head = (cur * PAGE_SIZE) + offset;
>>> -             to_read = buf->nr_pages << PAGE_SHIFT;
>>> -     }
>>> +     if (buf->snapshot)
>>> +             handle->head += to_read;
>>> +
>>>        __etb_enable_hw(drvdata);
>>>        CS_LOCK(drvdata->base);
>>>    out:
>>
>> Otherwise:
>>
>> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> 
> Is this for all the kernel space patches or just this one?

It was initially for the first patch. But now I realize that
all the other patches are of similar approach. I will add a
different tag for better tracking.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
