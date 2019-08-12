Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFEE8A3B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 18:48:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eiBJ0od8nHmes5lf8q42vhonWYw5r5zvvB0OHj0q0O0=; b=YmT05ktBygi4Mx
	dKbIWBP9qEPNcwGzq+0Bil21o9OwaqrrVITF9tzVcXvmAqDLQ8XZW95Gs8uA9pQ1MW7t9/rcmil9s
	/WY1PrYorI8UKOBPUJV0i9iUk84iT3rMSPAESqqlcOEkEQM3tWlzzYadcDMDQqwGXo+Vr7aiXTw1t
	suJPx4cYV9GoVDoLLe/16nnHCw6KakoPlc9Egtqg2PDQlM/8q3ZKFSxa7S9sf6ZNNk4bI/6VMVncx
	r9FrhwaAjh0dDsztikXuO/8jXsszQNqbaUcuOIAIcmS4kP8OZy8z3tOYc+EcJdJHgQvdGZcuuYl89
	QILgE+c8HFQN7ey5m3YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxDUr-0001jK-TD; Mon, 12 Aug 2019 16:48:37 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxDUh-0001iT-3I
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 16:48:28 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7CGmPFa126458;
 Mon, 12 Aug 2019 11:48:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565628505;
 bh=K2kWznbWIdZ/ricVAmUmB19KtEM09fU55kzjXYmQvME=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=EtBAz1CBkH6KcNuHZ+Xzm2pfaPkKbZD01UtweuaQzS5/iMmyGZ3UADy2KWVd9o/HU
 HdfJuEV/QBDS7wWe3EFjlqJ5dpmbrFARrTynOdIS2Knqb5eNkdxR4GLd5/M8y+Ru0l
 APAEACMfboFZtCAGY99C7YtiMJo+DWXjnVMBuYeg=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7CGmP2G090732
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 12 Aug 2019 11:48:25 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 12
 Aug 2019 11:48:25 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 12 Aug 2019 11:48:25 -0500
Received: from [10.250.88.190] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7CGmOjZ130439;
 Mon, 12 Aug 2019 11:48:24 -0500
Subject: Re: [PATCH] rpmsg: virtio_rpmsg_bus: replace "%p" with "%pK"
To: Suman Anna <s-anna@ti.com>, Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20181024011909.21674-1-s-anna@ti.com>
 <1cc3d697-6fde-901b-2e35-2e2b53b44425@ti.com>
 <2ef5e274-df09-c3a0-41ed-a945d1902eaf@ti.com>
 <92dc4403-8782-8dbf-b912-cc832ac748a7@ti.com>
 <ea1efb4e-43be-4efc-10f8-9d182313bf12@ti.com>
From: "Andrew F. Davis" <afd@ti.com>
Message-ID: <292d913f-7f4e-52ee-13bc-36014acee646@ti.com>
Date: Mon, 12 Aug 2019 12:48:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <ea1efb4e-43be-4efc-10f8-9d182313bf12@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_094827_248552_2F191C81 
X-CRM114-Status: GOOD (  19.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Loic Pallardy <loic.pallardy@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/12/19 12:39 PM, Suman Anna wrote:
> On 8/12/19 11:36 AM, Andrew F. Davis wrote:
>> On 8/12/19 12:28 PM, Suman Anna wrote:
>>> On 8/12/19 10:47 AM, Andrew F. Davis wrote:
>>>> On 10/23/18 9:19 PM, Suman Anna wrote:
>>>>> The virtio_rpmsg_bus driver uses the "%p" format-specifier for
>>>>> printing the vring buffer address. This prints only a hashed
>>>>> pointer even for previliged users. Use "%pK" instead so that
>>>>> the address can be printed during debug using kptr_restrict
>>>>> sysctl.
>>>>>
>>>>
>>>>
>>>> s/previliged/privileged
>>>
>>> Bjorn,
>>> Can you fix this up when applying.
>>>
>>>>
>>>> You describe what the code does, but not why you need this. %pK is used
>>>> for only about 1% of pointer printing, why do you want to leak this
>>>> address to userspace at all?
>>>
>>> Andrew,
>>> Default behavior of %pK is same as %p, but it does allow you to control
>>> the print. The reason is clearly mentioned in the last sentence in the
>>> patch description.
>>>
>>
>>
>> Let me rephrase then, why would you ever set 'kptr_restrict' to anything
>> other than 0, or why do you want to be able to leak this address to
>> userspace at all? If the answer is just because you can, then all 12,000
>> instances of %p in kernel could be converted for the same reason.
> 
> It is a dev_dbg statement, so it is already under dynamic debug control.
> We would only ever use it during debug.
> 


Most pointer printings are in debug statements..

I'm simply not seeing what this helps us do. The DMA address I can
understand, it may be given to a remote core so we may want to verify it
is the same on both sides, but the actual virtual kernel address is of
no value to us, a hash to track it across uses is just as good.

Andrew


> regards
> Suman
> 
>>
>> Andrew
>>
>>
>>> regards
>>> Suman
>>>
>>>>
>>>> Andrew
>>>>
>>>>
>>>>> Signed-off-by: Suman Anna <s-anna@ti.com>
>>>>> ---
>>>>>  drivers/rpmsg/virtio_rpmsg_bus.c | 2 +-
>>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/rpmsg/virtio_rpmsg_bus.c b/drivers/rpmsg/virtio_rpmsg_bus.c
>>>>> index f29dee731026..1345f373a1a0 100644
>>>>> --- a/drivers/rpmsg/virtio_rpmsg_bus.c
>>>>> +++ b/drivers/rpmsg/virtio_rpmsg_bus.c
>>>>> @@ -950,7 +950,7 @@ static int rpmsg_probe(struct virtio_device *vdev)
>>>>>  		goto vqs_del;
>>>>>  	}
>>>>>  
>>>>> -	dev_dbg(&vdev->dev, "buffers: va %p, dma %pad\n",
>>>>> +	dev_dbg(&vdev->dev, "buffers: va %pK, dma %pad\n",
>>>>>  		bufs_va, &vrp->bufs_dma);
>>>>>  
>>>>>  	/* half of the buffers is dedicated for RX */
>>>>>
>>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
