Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4081DD738
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 21:29:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7X8x/ngiYhn+h6BzS8DA8Nq4och7wHxU1wDJCrpMyPM=; b=HN+6VPhJ1GFGtzCplqc11avyC
	jvVaKheIoAlsi6rykISiV9v8fqlrG2NFDgpYBvlaac4nutkbitBtJ3f+yGDw/GJLJ9/kbfS+51r4N
	vxdiabSAMEHR1MCHW7xPXgRVlYyv1cIdGQGcsuWbwXtC7BfmFQ4kbaDeO692GQWOHXWnbqRydxGaK
	vBngjHY6ewWkA9AsFp56kvbpqpLR8DQ59Qqb8IyocMIXKuv0IwMxDnSXjtvcDrMYEBSB8vblRvOBr
	BUAshXZomyFfDONNMCA837oq5Mwsk/7o+zOi5u97+x0qpEaDuik2TH55qcfO6DM1DLOote5QoMqCe
	F1P/bvFqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbqsm-0001Ml-Uu; Thu, 21 May 2020 19:29:32 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbqsd-0001MJ-LF
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 19:29:25 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04LJTC58043109;
 Thu, 21 May 2020 14:29:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590089352;
 bh=5cVvI02ABWumpoVFjgbtGBb7mRTK+933hQtYxfCzASg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=TZPonNeTFavlWc0GMMWmkDac2ZYs5xQd9GeA8E7KLrefaT+Udbnq7bXlJMCi8y0Yn
 ZgW9xJMzipd7hq8Mc61geOed1EZcJBFsS7aQb1E9C9LePJ3gek2LT03HTLK/N7+nGo
 KR0KHjFEAGziMGVf9v2uCoxTMyoLcc3zzMgoXb6k=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04LJTC9c127528
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 21 May 2020 14:29:12 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 May 2020 14:29:12 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 May 2020 14:29:12 -0500
Received: from [10.250.48.148] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04LJTB1p074206;
 Thu, 21 May 2020 14:29:12 -0500
Subject: Re: [PATCH 2/4] remoteproc: introduce version element into resource
 type field
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20200325204701.16862-1-s-anna@ti.com>
 <20200325204701.16862-3-s-anna@ti.com> <20200521175421.GI408178@builder.lan>
 <b338480e-c586-f988-f5b6-784551b7beb6@ti.com>
 <20200521192146.GO408178@builder.lan>
From: Suman Anna <s-anna@ti.com>
Message-ID: <57ae5678-fd0a-07a8-6165-a2cf7ccdef88@ti.com>
Date: Thu, 21 May 2020 14:29:11 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200521192146.GO408178@builder.lan>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_122923_773663_9EDCAC6B 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Loic Pallardy <loic.pallardy@st.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-kernel@vger.kernel.org, Clement Leger <cleger@kalray.eu>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/21/20 2:21 PM, Bjorn Andersson wrote:
> On Thu 21 May 12:06 PDT 2020, Suman Anna wrote:
> 
>> Hi Bjorn,
>>
>> On 5/21/20 12:54 PM, Bjorn Andersson wrote:
>>> On Wed 25 Mar 13:46 PDT 2020, Suman Anna wrote:
>>>
>>>> The current remoteproc core has supported only 32-bit remote
>>>> processors and as such some of the current resource structures
>>>> may not scale well for 64-bit remote processors, and would
>>>> require new versions of resource types. Each resource is currently
>>>> identified by a 32-bit type field. Introduce the concept of version
>>>> for these resource types by overloading this 32-bit type field
>>>> into two 16-bit version and type fields with the existing resources
>>>> behaving as version 0 thereby providing backward compatibility.
>>>>
>>>> The version field is passed as an additional argument to each of
>>>> the handler functions, and all the existing handlers are updated
>>>> accordingly. Each specific handler will be updated on a need basis
>>>> when a new version of the resource type is added.
>>>>
>>>
>>> I really would prefer that we add additional types for the new
>>> structures, neither side will be compatible with new versions without
>>> enhancements to their respective implementations anyways.
>>
>> OK.
>>
>>>
>>>> An alternate way would be to introduce the new types as completely
>>>> new resource types which would require additional customization of
>>>> the resource handlers based on the 32-bit or 64-bit mode of a remote
>>>> processor, and introduction of an additional mode flag to the rproc
>>>> structure.
>>>>
>>>
>>> What would this "mode" indicate? If it's version 0 or 1?
>>
>> No, for indicating if the remoteproc is 32-bit or 64-bit and adjust the
>> loading handlers if the resource types need to be segregated accordingly.
>>
> 
> Sorry, I think I'm misunderstanding something. Wouldn't your 64-bit
> remote processor need different firmware from your 32-bit processor
> anyways, if you want to support the wider resource? And you would pack
> your firmware with the appropriate resource types?

Yes, that's correct.

> 
> Afaict the bit width of your remote processor, busses or memory is
> unrelated to the choice of number of bits used to express things in the
> resource table.

I would have to add the new resource type to the loading_handlers right, 
so it is a question of whether we want to impose any restrictions in 
remoteproc core or not from supporting a certain resource type (eg: I 
don't expect RSC_TRACE entries on 64-bit processors).

regards
Suman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
