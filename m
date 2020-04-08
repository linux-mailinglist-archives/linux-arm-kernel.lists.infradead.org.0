Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 983AD1A2C81
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 01:40:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJ1Q19c7Qhc4ZRSmRVE07QzxWDsvFkNPBBSMgPWUVaY=; b=V8awiSwcZdntXy
	yk/+BoP/T+2SMVnEWyXHLHp7MLtoFr5pPa3nG4SNPnHV1LbKdqkfHE1f4LVrL25ZtCOGdsqmJWsKU
	kSKMF8LkOUZUubz1wOp1nY1pruZ3McVl9CPzk2POxPlSyLzLlP14q/BVfvhFep8cWaPZsiLKsHaDm
	sgTW5v1+QlnvYaTjzTdJ8qfhzwaG6CrI4gunFadzR/JjtZb1bu7xYXIQ593yyEuw29QsY5fnyHngv
	aNAoDMCyZ1k4QVp1vh74MiM1a+rLIf9dLr2owyRP06op//8FTBbhJjLluXVlIOEc8HPKt0z53wFcR
	7qz9DLZqkk9PzXBdzgRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMKIV-0000iN-Rc; Wed, 08 Apr 2020 23:39:55 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMKIN-0000hm-E5
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 23:39:49 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 038Ndhfx027199;
 Wed, 8 Apr 2020 18:39:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1586389183;
 bh=dNLr8EfQEXOPmFeqYhnB4WKln9Z3bKnjLvo8cSm4Gh0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=lSP9Dzy49fvXCphbuMSVSaoWvHFMRMYVfQ/a5EQHFMjSQFbIEemgllMqQM5g3wyw7
 5ALK4dq/xgrov9t/SyT5oS7bClMmt+k0JKn1hXKVT/Cm7U5IVulRTBvvjdcaRbxEiN
 6r8cVq36hN6S9zSP93+dW+SAmrPL96M0y3510sN8=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 038NdhN8127485
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 8 Apr 2020 18:39:43 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 8 Apr
 2020 18:39:43 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 8 Apr 2020 18:39:43 -0500
Received: from [10.250.86.212] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 038NdgBU041435;
 Wed, 8 Apr 2020 18:39:42 -0500
Subject: Re: [PATCH 1/7] remoteproc: add prepare and unprepare ops
To: Mathieu Poirier <mathieu.poirier@linaro.org>
References: <20200324201819.23095-1-s-anna@ti.com>
 <20200324201819.23095-2-s-anna@ti.com> <20200406172018.GA11572@xps15>
From: Suman Anna <s-anna@ti.com>
Message-ID: <042074fb-46b3-f6d9-8203-27a8bc540666@ti.com>
Date: Wed, 8 Apr 2020 18:39:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200406172018.GA11572@xps15>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_163947_552816_2AD84B15 
X-CRM114-Status: GOOD (  24.61  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Loic Pallardy <loic.pallardy@st.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 4/6/20 12:20 PM, Mathieu Poirier wrote:
> Good morning Suman,
> 
> I have started to work on this set - comments will come in over the next few
> days...
> 
> On Tue, Mar 24, 2020 at 03:18:13PM -0500, Suman Anna wrote:
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
>> ---
>>  drivers/remoteproc/remoteproc_core.c | 20 +++++++++++++++++++-
>>  include/linux/remoteproc.h           |  4 ++++
>>  2 files changed, 23 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
>> index 26f6947267d2..aca6d022901a 100644
>> --- a/drivers/remoteproc/remoteproc_core.c
>> +++ b/drivers/remoteproc/remoteproc_core.c
>> @@ -1394,12 +1394,22 @@ static int rproc_fw_boot(struct rproc *rproc, const struct firmware *fw)
>>  		return ret;
>>  	}
>>  
>> +	/* Prepare rproc for firmware loading if needed */
>> +	if (rproc->ops->prepare) {
>> +		ret = rproc->ops->prepare(rproc);
> 
> In my patchset on MCU synchronisation I have moved ops->{start/stop} to
> remoteproc_internal.h and called them rproc_start/stop_device() (after Loic's
> suggestion).  In order to be consistent and remove boiler plate code in the core
> we could do the same, i.e have rproc_prepare/unprepare_device() in
> remoteproc_internal.h .

Yes, I will update so for v2. I plan to separate out this patch and the
next patch for v2 to go alongside your cleanup and Alex's patch on the
idr_init move.

regards
Suman

> 
> With the above:
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> 
> Thanks,
> Mathieu
> 
>> +		if (ret) {
>> +			dev_err(dev, "can't prepare rproc %s: %d\n",
>> +				rproc->name, ret);
>> +			goto disable_iommu;
>> +		}
>> +	}
>> +
>>  	rproc->bootaddr = rproc_get_boot_addr(rproc, fw);
>>  
>>  	/* Load resource table, core dump segment list etc from the firmware */
>>  	ret = rproc_parse_fw(rproc, fw);
>>  	if (ret)
>> -		goto disable_iommu;
>> +		goto unprepare_rproc;
>>  
>>  	/* reset max_notifyid */
>>  	rproc->max_notifyid = -1;
>> @@ -1433,6 +1443,10 @@ static int rproc_fw_boot(struct rproc *rproc, const struct firmware *fw)
>>  	kfree(rproc->cached_table);
>>  	rproc->cached_table = NULL;
>>  	rproc->table_ptr = NULL;
>> +unprepare_rproc:
>> +	/* release HW resources if needed */
>> +	if (rproc->ops->unprepare)
>> +		rproc->ops->unprepare(rproc);
>>  disable_iommu:
>>  	rproc_disable_iommu(rproc);
>>  	return ret;
>> @@ -1838,6 +1852,10 @@ void rproc_shutdown(struct rproc *rproc)
>>  	/* clean up all acquired resources */
>>  	rproc_resource_cleanup(rproc);
>>  
>> +	/* release HW resources if needed */
>> +	if (rproc->ops->unprepare)
>> +		rproc->ops->unprepare(rproc);
>> +
>>  	rproc_disable_iommu(rproc);
>>  
>>  	/* Free the copy of the resource table */
>> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
>> index 07bd73a6d72a..ddce7a7775d1 100644
>> --- a/include/linux/remoteproc.h
>> +++ b/include/linux/remoteproc.h
>> @@ -355,6 +355,8 @@ enum rsc_handling_status {
>>  
>>  /**
>>   * struct rproc_ops - platform-specific device handlers
>> + * @prepare:	prepare device for code loading
>> + * @unprepare:	unprepare device after stop
>>   * @start:	power on the device and boot it
>>   * @stop:	power off the device
>>   * @kick:	kick a virtqueue (virtqueue id given as a parameter)
>> @@ -371,6 +373,8 @@ enum rsc_handling_status {
>>   * @get_boot_addr:	get boot address to entry point specified in firmware
>>   */
>>  struct rproc_ops {
>> +	int (*prepare)(struct rproc *rproc);
>> +	int (*unprepare)(struct rproc *rproc);
>>  	int (*start)(struct rproc *rproc);
>>  	int (*stop)(struct rproc *rproc);
>>  	void (*kick)(struct rproc *rproc, int vqid);
>> -- 
>> 2.23.0
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
