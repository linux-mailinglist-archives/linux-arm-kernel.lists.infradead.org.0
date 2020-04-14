Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 047C51A7855
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 12:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HCkaBPqDi2vs03TOVy4QRTkVejC/QmqpEK6wZnNkmLs=; b=S5bI1c0MnJJtiTR4I5uHEUEZ1
	Eg2T/D5Mrdp8TC+5jzm+xrfGumgvw6vVOpW72xpu/LdVgPLHhrN7UCjoM/i8fVgT5h/pSqyutjhl+
	kbtV0lmbiu/Mu7s/QN31u/RsFgbOguDE7fortZZllR1eqlTVZaamlm4fcoD9n9A4hTAHYEk7dua/a
	bu/S1NakIwU+V1sEMvVYFl83i0Rc7dPfXz1btyD+WC/vyrrIxN9sBS5JYJT63in01UchBiga28CsJ
	i69ft+igvXsEusIedW6ibG9LN3EgICfClpbIwyexD6do5rJtnz20ZLSFhmpQwYD1vkkYmydZZ8gFP
	VwrdPzA3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOIgz-0002MW-Qo; Tue, 14 Apr 2020 10:21:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIgs-0002M1-1U
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 10:21:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA7FF1FB;
 Tue, 14 Apr 2020 03:21:11 -0700 (PDT)
Received: from [10.37.12.1] (unknown [10.37.12.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3A4FE3F6C4;
 Tue, 14 Apr 2020 03:21:10 -0700 (PDT)
Subject: Re: [PATCH] coresight: Fix support for sparsely populated ports
To: mathieu.poirier@linaro.org
References: <20200409110316.409148-1-suzuki.poulose@arm.com>
 <20200410181745.GA13684@xps15>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <e63508ed-44ca-3844-809c-a8b356a89bf4@arm.com>
Date: Tue, 14 Apr 2020 11:25:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200410181745.GA13684@xps15>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_032114_125302_BA3C6692 
X-CRM114-Status: GOOD (  20.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: saiprakash.ranjan@codeaurora.org, linux-arm-msm@vger.kernel.org,
 coresight@lists.linaro.org, linux-kernel@vger.kernel.org, swboyd@chromium.org,
 leo.yan@linaro.org, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 04/10/2020 07:17 PM, Mathieu Poirier wrote:
> Hi Suzuki,
> 
> On Thu, Apr 09, 2020 at 12:03:16PM +0100, Suzuki K Poulose wrote:
>> On some systems the firmware may not describe all the ports
>> connected to a component (e.g, for security reasons). This
>> could be especially problematic for "funnels" where we could
>> end up in modifying memory beyond the allocated space for
>> refcounts.

...

>> @@ -672,10 +687,14 @@ static int acpi_coresight_parse_graph(struct acpi_device *adev,
>>   			return dir;
>>   
>>   		if (dir == ACPI_CORESIGHT_LINK_MASTER) {
>> -			pdata->nr_outport++;
>> +			if (ptr->outport > pdata->nr_outport)
>> +				pdata->nr_outport = ptr->outport;
>>   			ptr++;
>>   		} else {
>> -			pdata->nr_inport++;
>> +			WARN_ON(pdata->nr_inport == ptr->child_port);
>> +			/* Do not move the ptr for input connections */
>> +			if (ptr->child_port > pdata->nr_inport)
>> +				pdata->nr_inport = ptr->child_port;
> 
> How you are using the current ptr as a scratch pad for input port was definitely
> a brain twister this morning...  I would certainly appreciate a richer comment
> so that I (or anyone else) doesn't have to go through the same process the next
> time around.
> 

Sure, it deserves a better comment. I will add something like :

	/*
	 * We don't track input connection details for a device,
	 * except for the highest input port number. Thus we could
	 * reuse the current record as a scratch pad and reuse it
	 * by not moving the ptr ahead.
	 */



>>   /**
>> - * struct coresight_platform_data - data harvested from the DT specification
>> - * @nr_inport:	number of input ports for this component.
>> - * @nr_outport:	number of output ports for this component.
>> - * @conns:	Array of nr_outport connections from this component
>> + * struct coresight_platform_data - data harvested from the firmware
>> + * specification.
>> + *
>> + * @nr_inport:	Number of elements for the input connections.
>> + * @nr_outport:	Number of elements for the output connections.
>> + * @conns:	Sparse arrray of nr_outport connections from this component.
> 
> s/arrray/array
> 
> Please rebase your work on my the coresight-next branch.  Other than the above
> this patch looks fine to me.

Thanks for the heads up, will do.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
