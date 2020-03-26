Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E918E194948
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 21:36:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XvA6CpLTL12C2X903fy3Ye/owlPDcUbudojyOvvw/3E=; b=BriQjJ7gH/RJLJ
	tJvXZYjWFlMJWtitnbO+2rfHRCv7W5KTGMBD09QKfIPl69snOK3lfBmL5ETxT816yZCpNjirmatOm
	bUIHKOt6w1WuvtXBZvG9yHZz16gDzZFyu4ugUM2Hn92aFD0SPgdjB5ZGc5fs9SaZnsNlfm9JVMwJJ
	3u7ROQ2G0ioniOb5EYDIBxJYk88/6bCTcO5F8nW1AkU8N5mQO7tVXdkbpfiQ5GGEI3RmJi8TlQIPy
	9oKyX6DiZyOPElKH8wChqcOzjHarf4AxQZisJXyz4eizQGzheU5N53Yi2iqtqfSl+D8VOWi4E5vbC
	73gMcjz/IW9xvkEQV+4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHZEH-0004qq-WD; Thu, 26 Mar 2020 20:35:54 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHZEA-0004qC-8S
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 20:35:47 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02QKZdhx019913;
 Thu, 26 Mar 2020 15:35:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585254939;
 bh=7oFxOrVn9kAxU5Nag+rYJqlAUCr7/ru9mGgP0JQb4HQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=kJztcR/o4CVsqS6x4WZ9NlGs+bgrwSaib49+8okz9XJQRXtS62aEoVnugub56k2Sc
 WuLMDvLnv65nGcdbIPLUCkvF4v5jrFVpBnF4nw4DXbZFwJj/YNInbBvJhLdBhgqFJO
 P1mSzrTDbPsbvBeMl5R+UkY3WPTNWowBN0WI9rQY=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02QKZdnb079059;
 Thu, 26 Mar 2020 15:35:39 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 26
 Mar 2020 15:35:38 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 26 Mar 2020 15:35:38 -0500
Received: from [10.250.86.212] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02QKZcFK118216;
 Thu, 26 Mar 2020 15:35:38 -0500
Subject: Re: [PATCH 2/7] remoteproc: use a local copy for the name field
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20200324201819.23095-1-s-anna@ti.com>
 <20200324201819.23095-3-s-anna@ti.com> <20200326054234.GA59436@builder>
 <2089a4a8-d5e4-e4f5-e7bc-7d053f654204@ti.com>
 <20200326194304.GB59436@builder>
From: Suman Anna <s-anna@ti.com>
Message-ID: <3c38485d-5bae-a759-833c-45ddb0e6cfcd@ti.com>
Date: Thu, 26 Mar 2020 15:35:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200326194304.GB59436@builder>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_133546_385816_683ECF84 
X-CRM114-Status: GOOD (  23.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/26/20 2:43 PM, Bjorn Andersson wrote:
> On Thu 26 Mar 07:01 PDT 2020, Suman Anna wrote:
> 
>> Hi Bjorn,
>>
>> On 3/26/20 12:42 AM, Bjorn Andersson wrote:
>>> On Tue 24 Mar 13:18 PDT 2020, Suman Anna wrote:
>>>
>>>> The current name field used in the remoteproc structure is simply
>>>> a pointer to a name field supplied during the rproc_alloc() call.
>>>> The pointer passed in by remoteproc drivers during registration is
>>>> typically a dev_name pointer, but it is possible that the pointer
>>>> will no longer remain valid if the devices themselves were created
>>>> at runtime like in the case of of_platform_populate(), and were
>>>> deleted upon any failures within the respective remoteproc driver
>>>> probe function.
>>>>
>>>> So, allocate and maintain a local copy for this name field to
>>>> keep it agnostic of the logic used in the remoteproc drivers.
>>>>
>>>> Signed-off-by: Suman Anna <s-anna@ti.com>
>>>> ---
>>>>  drivers/remoteproc/remoteproc_core.c | 9 ++++++++-
>>>>  include/linux/remoteproc.h           | 2 +-
>>>>  2 files changed, 9 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
>>>> index aca6d022901a..6e0b91fa6f11 100644
>>>> --- a/drivers/remoteproc/remoteproc_core.c
>>>> +++ b/drivers/remoteproc/remoteproc_core.c
>>>> @@ -1989,6 +1989,7 @@ static void rproc_type_release(struct device *dev)
>>>>  
>>>>  	kfree(rproc->firmware);
>>>>  	kfree(rproc->ops);
>>>> +	kfree(rproc->name);
>>>>  	kfree(rproc);
>>>>  }
>>>>  
>>>> @@ -2061,7 +2062,13 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
>>>>  	}
>>>>  
>>>>  	rproc->firmware = p;
>>>> -	rproc->name = name;
>>>> +	rproc->name = kstrdup(name, GFP_KERNEL);
>>>
>>> Let's use kstrdup_const() instead here (and kfree_const() instead of
>>> kfree()), so that the cases where we are passed a constant we won't
>>> create a duplicate on the heap.
>>>
>>> And the "name" in struct rproc can remain const.
>>
>> Agreed, that's better functions to use for this.
>>
>>>
>>>> +	if (!rproc->name) {
>>>> +		kfree(p);
>>>> +		kfree(rproc->ops);
>>>> +		kfree(rproc);
>>>> +		return NULL;
>>>
>>> Perhaps we can rearrange the hunks here slightly and get to a point
>>> where we can rely on the release function earlier?
>>
>> Not sure I understand. I don't see any release function, all failure
>> paths in rproc_alloc() directly unwind the previous operations. You mean
>> move this to before the alloc for rproc structure, something similar to
>> what we are doing with firmware?
>>
> 
> Look at the failure for ida_simple_get(), there we're past the setup of
> rproc->dev.type, so the rproc_type->release function will be invoked as
> we call put_device().
> 
> So if you move the initialization of rproc->dev up right after the
> allocation of rproc we should be able to rely on that to clean up all
> these for us.

Yeah ok. That's cleanup though, and probably a patch of its own, and not
directly related to the subject of this patch. Yeah, I can rework this
patch to sit on top of that cleanup patch.

regards
Suman

> 
> Regards,
> Bjorn
> 
>> regards
>> Suman
>>
>>
>>>
>>> Regards,
>>> Bjorn
>>>
>>>> +	}
>>>>  	rproc->priv = &rproc[1];
>>>>  	rproc->auto_boot = true;
>>>>  	rproc->elf_class = ELFCLASS32;
>>>> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
>>>> index ddce7a7775d1..77788a4bb94e 100644
>>>> --- a/include/linux/remoteproc.h
>>>> +++ b/include/linux/remoteproc.h
>>>> @@ -490,7 +490,7 @@ struct rproc_dump_segment {
>>>>  struct rproc {
>>>>  	struct list_head node;
>>>>  	struct iommu_domain *domain;
>>>> -	const char *name;
>>>> +	char *name;
>>>>  	char *firmware;
>>>>  	void *priv;
>>>>  	struct rproc_ops *ops;
>>>> -- 
>>>> 2.23.0
>>>>
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
