Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F5E1B2925
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:13:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZAIinz8CIaybwIwhozcw1D2PDDhAlmkWp/CKBqmbxfc=; b=Nfhvs6Y4MYF1EBRRLI9ps0dP6
	y+Qt7bUXVmi4ys5jzlUhF/u7pkGMIHvwmaUkNf65mJQP3lYpU3u+G453yQS7Tpwv59kG//AkRDywK
	3bQSC7pZtp9LeedduH7KOfpANYeSlSckI29+2UPI3RRDb0PKrs9TJDq7hRT5A0JbxOPGKQFugWYNy
	cxI3CKRqlVmgwF2iFrwzHxvmJsIKdBUYu58BaHCpRlv/CK1UTdkeC/9HZImHxw4se4s4Y63S/o/ue
	sy7/NLMMoF1AI7R9ongMuT5C4W2G45YOOh5V63m/i6DrFCyZa1vckr+iZB4Axl45foENNS3I5o867
	nDHa40XFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQte5-0004rH-7U; Tue, 21 Apr 2020 14:13:05 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtdv-0004pY-4V
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:12:57 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03LECiI2017761;
 Tue, 21 Apr 2020 09:12:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587478364;
 bh=ElGkPbcupAqEe3NPdkjZhWdkXVXqVGDVIz5MNWLMAtU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Ub0lcGhWdSlaf4EXGPuUOmrlnFsfKFp6N/NxwQMMc+BoLNy4qEQmfZ0nWVK2QIC6k
 uMzRoUL/BhPysQUoyaTUUnmYIu8gDalon8mcC4Rq/3l0od2/qVwLFD7o1BjUiOdYpj
 ydFxtOUtLeliKdLOzvZ77cphfyqxCeDt/6cMlIuw=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03LECibO021697
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 21 Apr 2020 09:12:44 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 21
 Apr 2020 09:12:44 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 21 Apr 2020 09:12:44 -0500
Received: from [10.250.70.56] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03LECh1l124572;
 Tue, 21 Apr 2020 09:12:43 -0500
Subject: Re: [PATCH 1/2] remoteproc: Add prepare and unprepare ops
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20200417002036.24359-1-s-anna@ti.com>
 <20200417002036.24359-2-s-anna@ti.com> <20200421025254.GK1868936@builder.lan>
From: Suman Anna <s-anna@ti.com>
Message-ID: <2feee391-9f8e-410e-2a20-5b5bdd949940@ti.com>
Date: Tue, 21 Apr 2020 09:12:43 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200421025254.GK1868936@builder.lan>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_071255_380028_FBF0AC96 
X-CRM114-Status: GOOD (  21.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Loic Pallardy <loic.pallardy@st.com>, linux-remoteproc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/20/20 9:52 PM, Bjorn Andersson wrote:
> On Thu 16 Apr 17:20 PDT 2020, Suman Anna wrote:
> 
>> From: Loic Pallardy <loic.pallardy@st.com>
>>
>> On some SoC architecture, it is needed to enable HW like
>> clock, bus, regulator, memory region... before loading
>> co-processor firmware.
>>
>> This patch introduces prepare and unprepare ops to execute
>> platform specific function before firmware loading and after
>> stop execution.
>>
>> Signed-off-by: Loic Pallardy <loic.pallardy@st.com>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> 
> Do we have an inbound user of these new oops?

Yes, both the TI K3 R5F and DSP remoteproc drivers use these ops, the 
patches are already on the lists.

regards
Suman

> 
> Regards,
> Bjorn
> 
>> ---
>> v1:
>>   - Make the direct ops into inline helper functions in line
>>     with the comments on the MCU sync series (v1 comments).
>>     No change in functionality.
>>   - Picked up the Reviewed-by tags
>> v0: https://patchwork.kernel.org/patch/11456383/
>>
>>   drivers/remoteproc/remoteproc_core.c     | 15 ++++++++++++++-
>>   drivers/remoteproc/remoteproc_internal.h | 16 ++++++++++++++++
>>   include/linux/remoteproc.h               |  4 ++++
>>   3 files changed, 34 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
>> index d681eeb962b6..e38f627059ac 100644
>> --- a/drivers/remoteproc/remoteproc_core.c
>> +++ b/drivers/remoteproc/remoteproc_core.c
>> @@ -1394,12 +1394,19 @@ static int rproc_fw_boot(struct rproc *rproc, const struct firmware *fw)
>>   		return ret;
>>   	}
>>   
>> +	/* Prepare rproc for firmware loading if needed */
>> +	ret = rproc_prepare_device(rproc);
>> +	if (ret) {
>> +		dev_err(dev, "can't prepare rproc %s: %d\n", rproc->name, ret);
>> +		goto disable_iommu;
>> +	}
>> +
>>   	rproc->bootaddr = rproc_get_boot_addr(rproc, fw);
>>   
>>   	/* Load resource table, core dump segment list etc from the firmware */
>>   	ret = rproc_parse_fw(rproc, fw);
>>   	if (ret)
>> -		goto disable_iommu;
>> +		goto unprepare_rproc;
>>   
>>   	/* reset max_notifyid */
>>   	rproc->max_notifyid = -1;
>> @@ -1433,6 +1440,9 @@ static int rproc_fw_boot(struct rproc *rproc, const struct firmware *fw)
>>   	kfree(rproc->cached_table);
>>   	rproc->cached_table = NULL;
>>   	rproc->table_ptr = NULL;
>> +unprepare_rproc:
>> +	/* release HW resources if needed */
>> +	rproc_unprepare_device(rproc);
>>   disable_iommu:
>>   	rproc_disable_iommu(rproc);
>>   	return ret;
>> @@ -1838,6 +1848,9 @@ void rproc_shutdown(struct rproc *rproc)
>>   	/* clean up all acquired resources */
>>   	rproc_resource_cleanup(rproc);
>>   
>> +	/* release HW resources if needed */
>> +	rproc_unprepare_device(rproc);
>> +
>>   	rproc_disable_iommu(rproc);
>>   
>>   	/* Free the copy of the resource table */
>> diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
>> index b389dc79da81..101e6be8d240 100644
>> --- a/drivers/remoteproc/remoteproc_internal.h
>> +++ b/drivers/remoteproc/remoteproc_internal.h
>> @@ -64,6 +64,22 @@ struct resource_table *rproc_elf_find_loaded_rsc_table(struct rproc *rproc,
>>   struct rproc_mem_entry *
>>   rproc_find_carveout_by_name(struct rproc *rproc, const char *name, ...);
>>   
>> +static inline int rproc_prepare_device(struct rproc *rproc)
>> +{
>> +	if (rproc->ops->prepare)
>> +		return rproc->ops->prepare(rproc);
>> +
>> +	return 0;
>> +}
>> +
>> +static inline int rproc_unprepare_device(struct rproc *rproc)
>> +{
>> +	if (rproc->ops->unprepare)
>> +		return rproc->ops->unprepare(rproc);
>> +
>> +	return 0;
>> +}
>> +
>>   static inline
>>   int rproc_fw_sanity_check(struct rproc *rproc, const struct firmware *fw)
>>   {
>> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
>> index 38607107b7cb..b8481ac969f1 100644
>> --- a/include/linux/remoteproc.h
>> +++ b/include/linux/remoteproc.h
>> @@ -355,6 +355,8 @@ enum rsc_handling_status {
>>   
>>   /**
>>    * struct rproc_ops - platform-specific device handlers
>> + * @prepare:	prepare device for code loading
>> + * @unprepare:	unprepare device after stop
>>    * @start:	power on the device and boot it
>>    * @stop:	power off the device
>>    * @kick:	kick a virtqueue (virtqueue id given as a parameter)
>> @@ -373,6 +375,8 @@ enum rsc_handling_status {
>>    *		panic at least the returned number of milliseconds
>>    */
>>   struct rproc_ops {
>> +	int (*prepare)(struct rproc *rproc);
>> +	int (*unprepare)(struct rproc *rproc);
>>   	int (*start)(struct rproc *rproc);
>>   	int (*stop)(struct rproc *rproc);
>>   	void (*kick)(struct rproc *rproc, int vqid);
>> -- 
>> 2.26.0
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
