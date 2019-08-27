Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 956239F5E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 00:17:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7kE57vPa4qQFUuQ16H1sSshgXVBTQe5OmEJE0749yo=; b=C8yVompnojUbN/
	srb2e4CuzZqhkN7bh/CicXMZDGK1CJ4crolZQ6XxEWjQVjpomQfSrz0RPtsHOvaY48qq7kDOtPHtK
	l+rUVovt5bBUQUzTGSuDtPVepsD2BaI8KbP2rvU0sLbBI/4sS4N2UJqcjhQdpTaIBm1Pk3B0JU3M1
	BlQzHFxq1AzNoNM8dEfbTYkUCQTbi8ENVJ5QJhh2K2PpXUlwbn9yKqte0ykGoQbnkVZ+j5y6v6B97
	yKRiIaSdpWQm2HUz9OWOPEZ4x27+6B/fQPX4u0pK/EgNJB92dy+ufxtMsdm3twVqfGoKzKmZojtkl
	bxyIkOmUiOsIyyUCwgdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2jmb-0005EX-Os; Tue, 27 Aug 2019 22:17:46 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2jmN-0005EA-Vn
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 22:17:33 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7RMHTR8103928;
 Tue, 27 Aug 2019 17:17:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566944249;
 bh=nvLDApQhxExLfj35o+dlzYSpdH8NwxDvB4z1k8JjXPo=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=xTTKaHbo8ygsoxEN/RVyZMc625z1AE05HTdWjKG7HGzzFNQU48W5F1+Qkx2WhobDv
 sDIvJY5EiWVyYIa4wbuWNb0DoB8YeYfEuHPyy3jqCnIzo/1+PDHhpobe27UVI1KJxs
 KtoZQ4/5sLj10kZvdbLp/sbzi3CpEIoN61RW7g14=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7RMHT88097318
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 27 Aug 2019 17:17:29 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 27
 Aug 2019 17:17:29 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 27 Aug 2019 17:17:29 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7RMHSQg128133;
 Tue, 27 Aug 2019 17:17:28 -0500
Subject: Re: [PATCH] rpmsg: virtio_rpmsg_bus: replace "%p" with "%pK"
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20181024011909.21674-1-s-anna@ti.com>
 <40831f80-1e36-66ca-b8e5-684d46ba167e@ti.com> <20190827051007.GK1263@builder>
 <8d36d695-dd66-c21f-f49e-f6dc3dbdfc5a@ti.com> <20190827220711.GK6167@minitux>
 <619b06b0-c3cc-e36f-c3e5-d13e98520c9c@ti.com>
Message-ID: <9c5f95a0-c95b-bf68-e78f-6e3d4d837b1e@ti.com>
Date: Tue, 27 Aug 2019 17:17:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <619b06b0-c3cc-e36f-c3e5-d13e98520c9c@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_151732_109284_6000429A 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Loic Pallardy <loic.pallardy@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/27/19 5:15 PM, Suman Anna wrote:
> On 8/27/19 5:07 PM, Bjorn Andersson wrote:
>> On Tue 27 Aug 13:25 PDT 2019, Suman Anna wrote:
>>
>>> Hi Bjorn,
>>>
>>> On 8/27/19 12:10 AM, Bjorn Andersson wrote:
>>>> On Fri 09 Aug 13:25 PDT 2019, Suman Anna wrote:
>>>>
>>>>> Hi Bjorn,
>>>>>
>>>>
>>>> Hi Suman
>>>>
>>>>> On 10/23/18 8:19 PM, Suman Anna wrote:
>>>>>> The virtio_rpmsg_bus driver uses the "%p" format-specifier for
>>>>>> printing the vring buffer address. This prints only a hashed
>>>>>> pointer even for previliged users. Use "%pK" instead so that
>>>>>> the address can be printed during debug using kptr_restrict
>>>>>> sysctl.
>>>>>
>>>>> Seems to have been lost among the patches, can you pick up this trivial
>>>>> patch for 5.4? Should apply cleanly on the latest HEAD as well.
>>>>>
>>>>
>>>> I share Andrew's question regarding what benefit you have from knowing
>>>> this value. Should we not just remove the va from the print? Or do you
>>>> actually have a use case for it?.
>>>
>>> I mainly use it during debug when comparing against kernel_page_tables
>>> and vmallocinfo. The pools that we use are not always guaranteed to be
>>> from linear memory, and behavior changes when using with CMA or DMA pools.
>>>
>>
>> Thanks Suman. It seems to me that there's room for improvement to aid
>> this kind of debugging. But your usecase seems reasonable, so I'm
>> merging the patch.
> 
> Thanks Bjorn.

Btw, looks like you applied the patch against rproc-next instead of
rpmsg-next.

regards
Suman

> 
>>
>>> Note that usage of %pK does not leak the addresses automatically, but
>>> atleast enables me to get the values when needed. The changes also bring
>>> the usage in rpmsg core in sync with the remoteproc core.
>>>
>>
>> Sounds like shouldn't have merged them in remoteproc then ;P
> 
> Slightly different reasoning looking at the commit, it was probably when
> %p was leaking the addresses.
> 
> regards
> Suman
> 
>>
>> Thanks,
>> Bjorn
>>
>>> regards
>>> Suman
>>>
>>>>
>>>> Regards,
>>>> Bjorn
>>>>
>>>>> regards
>>>>> Suman
>>>>>
>>>>>>
>>>>>> Signed-off-by: Suman Anna <s-anna@ti.com>
>>>>>> ---
>>>>>>  drivers/rpmsg/virtio_rpmsg_bus.c | 2 +-
>>>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>>
>>>>>> diff --git a/drivers/rpmsg/virtio_rpmsg_bus.c b/drivers/rpmsg/virtio_rpmsg_bus.c
>>>>>> index f29dee731026..1345f373a1a0 100644
>>>>>> --- a/drivers/rpmsg/virtio_rpmsg_bus.c
>>>>>> +++ b/drivers/rpmsg/virtio_rpmsg_bus.c
>>>>>> @@ -950,7 +950,7 @@ static int rpmsg_probe(struct virtio_device *vdev)
>>>>>>  		goto vqs_del;
>>>>>>  	}
>>>>>>  
>>>>>> -	dev_dbg(&vdev->dev, "buffers: va %p, dma %pad\n",
>>>>>> +	dev_dbg(&vdev->dev, "buffers: va %pK, dma %pad\n",
>>>>>>  		bufs_va, &vrp->bufs_dma);
>>>>>>  
>>>>>>  	/* half of the buffers is dedicated for RX */
>>>>>>
>>>>>
>>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
