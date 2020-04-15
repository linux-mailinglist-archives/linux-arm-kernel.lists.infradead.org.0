Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5351AAC2F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 17:45:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9U7PDptNhHMYg6KvtM3g0oK8+evOO1sBpg1K73rUReg=; b=RcMqn78jrHvHuD
	ifahXnXY953b340LiPo2vllkpXWDXpxIgl4ClXkhteLlauJQIUboClg1nkupFpKJIX7aceA39UV6s
	gcBwNk0cEhv9OMhkU+IuYMAAewVR7oWLWGGQzjwNuViBFEEhZNBYrsPXi2+Eqi9FT9wzCK5EuJ0h/
	Mi/79Ra3IzBFJG6y0v0mD/6LnvM6zoqprysKjQkP1SHm3R1qmoTGaZP7QzQGVWVqX4xlzJLLBswF8
	Ej6j0bjsZDxjvyVgiSJL+srJyC/5ibBCI5WZJFdHXjQtPAgRH0vuIKZ+80g/VWytQgZt53DaaoX+p
	w2WKlgf/Zxgt5l8zbTcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkEC-0003Bw-0I; Wed, 15 Apr 2020 15:45:28 +0000
Received: from mail-eopbgr70047.outbound.protection.outlook.com ([40.107.7.47]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOkDU-0000iV-Mx
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 15:44:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DobL3y49WFZmiN+Kk7uJuLc98yJODv7kHvgxrREdfystqsd+edzbm6oxGBqpynaGRXuE1T4aePOVQz+SObDVYq0AMbRkoViAsaL8ozMzFs9RtxqlCw+7RGsuab13JxKjDyZU/39JQclpzUudyruPBvr+S0YP2iF8rhOKUVgmKjf67LiN67GoPTmPH/G+CuQWMmjs3GRmcgVTDS5G3+H6m4qzVS+FKiSIz7YWKUo6WpWVSabn1Z9q05BmFEa9YRhoF6iFBTyPrXX1w0FERomN0bD1104qitjJopoxzxgMoAxKZ9B4QHjUnSEoEY2AuVj5vL7jvilY+H8fMSnYf9xaMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NG7u7oInyd7r5/WGiMmjcVsWtHWJxpPcpFGoaVCr2S0=;
 b=AiuKV/nd5jR4OZCCMjnZLEOx5PZrcx0S17HEFioKbhnTqHM310G0SfbeoKaPIRBDE5bmXUGv3GXDfYx90I0SimaHPFOH8EHBP5VzOKcduIf5maQYvZEXJikKbiAcJtvmcp302rcNnglwqcNormCUp5lZnA/AJVSiQA1eiGsKrUJxnVD/QHDSXenwYVIXCeBKSBNrOLlj6OxvnFvey3rBj39nz68kwESDYAXUBLGMCNzo0/lfUQU8HwzIT0m6Qy/GBmRjYaw0CMhKvwtmGqjn7hWAh519LfR2FAKR7C4yXtsYetdZovro4q63k/4tn081wSN+JFJj7wy/YqOQ8ZubIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NG7u7oInyd7r5/WGiMmjcVsWtHWJxpPcpFGoaVCr2S0=;
 b=lUSUCKU9fkmQk6XUcP5zmuZaAFI7iI7MfHIsEv6WF2aym4Law05O17rgpXzOYRxUo9Neu5ufeiG3oxmr0c1af5DqNg8vgVgcSn9MZno1KPxNZE7asVWlFMHLgAyCLXvtA0/VPDm+eWPePp20+8+zzYD2GXzk6V5pSkQOnULUbG0=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com (2603:10a6:20b:ab::19)
 by AM6PR04MB6181.eurprd04.prod.outlook.com (2603:10a6:20b:b6::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Wed, 15 Apr
 2020 15:44:39 +0000
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e]) by AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e%5]) with mapi id 15.20.2900.028; Wed, 15 Apr 2020
 15:44:39 +0000
Subject: Re: [RFC PATCH 1/4] bus: fsl-mc: add custom .dma_configure
 implementation
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20200227100542.13819-1-laurentiu.tudor@nxp.com>
 <20200325125109.GA5430@red-moon.cambridge.arm.com>
 <499fbf9a-416f-d7c7-0655-881d92138a6c@nxp.com>
 <20200414143211.GA14905@red-moon.cambridge.arm.com>
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Message-ID: <d37ca4e3-58cb-9d6f-3a98-5e4a21ca948b@nxp.com>
Date: Wed, 15 Apr 2020 18:44:37 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <20200414143211.GA14905@red-moon.cambridge.arm.com>
Content-Language: en-US
X-ClientProxiedBy: AM4PR0902CA0007.eurprd09.prod.outlook.com
 (2603:10a6:200:9b::17) To AM6PR04MB5925.eurprd04.prod.outlook.com
 (2603:10a6:20b:ab::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.107] (86.123.59.151) by
 AM4PR0902CA0007.eurprd09.prod.outlook.com (2603:10a6:200:9b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25 via Frontend
 Transport; Wed, 15 Apr 2020 15:44:38 +0000
X-Originating-IP: [86.123.59.151]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ecc254c3-d157-4b2f-27c9-08d7e153e877
X-MS-TrafficTypeDiagnostic: AM6PR04MB6181:|AM6PR04MB6181:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB61814DCC7253C4E31F6FD801ECDB0@AM6PR04MB6181.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0374433C81
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB5925.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(39860400002)(396003)(346002)(366004)(136003)(6486002)(6916009)(16526019)(186003)(5660300002)(316002)(31686004)(478600001)(52116002)(26005)(16576012)(7416002)(4326008)(8936002)(36756003)(53546011)(66946007)(81156014)(8676002)(66556008)(66476007)(2616005)(86362001)(956004)(44832011)(31696002)(2906002)(142923001);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SQAklGVwvYvyfbw/5G3gOXNUaEDK/XnXhk2NGHE1IMhfzrcaT8M4pyQxTwLMeZbNU3hF/Mikd6pi9VmP2f3GB9kPvt4iYNjwRnxPKldmnUn4v9iyjPkCHl3d3QAE17BLLdx852HCT5hYfIpRMtC9boqEtKKhq/b8vU/v83Tzrg7H6kGgTVVq5CdQwYrhLIyDF0Fx+ccjL5gs26qeFJ1fHjto2bJPT2lUEtRb9grXWe3xfYSXnF3/34aLHyCg5uUjdZEgbdLjpPQFhompq2cEAjfgdVI1xPjCcgyOd/7SOn31PY8tPXmAr0W8YvUU4q2ZJ2DGCXHS4V12NtEnJbNdGxyZznQbqEJBW9DA129knPI3r3eR+9BQHZ1Q5ROLOSaM2PqWqlZXap8oA6VWrhT64t7ITz8NX08SiSCrCfogm23VGArUVrmGBYMrTw23xsP4gc2M1qVF/nMHJkIQ1BBUbwMkc8ZyT/7wgL5O45ZmqFxWkaVt2z6YOGVvRLdkB88j
X-MS-Exchange-AntiSpam-MessageData: EHWpPtq8Q7XwM4DcNqcP/ZPtx4Nz5/llcntdxSNU4qUyn7uNFB6dEXx7MVZQRtJvj8vN698lxiQeTepvqrnYVeEtI5QPBTtEYY4pm/kT/j77ysPzPzgrAJhxUjOcj1+tknoJ9CM3WeSzXgKswDH2FA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecc254c3-d157-4b2f-27c9-08d7e153e877
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 15:44:39.7481 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YGlPy53PCxU6iafh52UAz2FflAVHkjtIa2VU//dVA9yPxltFFHI3nRgIR29gTKY38wV0ccJLnBE04BYNQ4qUMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6181
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_084444_895853_6B77D57D 
X-CRM114-Status: GOOD (  24.34  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.47 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.47 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: jason@lakedaemon.net, calvin.johnson@nxp.com, ard.biesheuvel@linaro.org,
 maz@kernel.org, pankaj.bansal@nxp.com, diana.craciun@oss.nxp.com,
 jon@solid-run.com, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
 cristian.sovaiala@nxp.com, tglx@linutronix.de, makarand.pawagi@nxp.com,
 ioana.ciornei@nxp.com, Stuart.Yoder@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, linux-arm-kernel@lists.infradead.org, V.Sethi@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/14/2020 5:32 PM, Lorenzo Pieralisi wrote:
> On Wed, Mar 25, 2020 at 06:48:55PM +0200, Laurentiu Tudor wrote:
>> Hi Lorenzo,
>>
>> On 3/25/2020 2:51 PM, Lorenzo Pieralisi wrote:
>>> On Thu, Feb 27, 2020 at 12:05:39PM +0200, laurentiu.tudor@nxp.com wrote:
>>>> From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
>>>>
>>>> The devices on this bus are not discovered by way of device tree
>>>> but by queries to the firmware. It makes little sense to trick the
>>>> generic of layer into thinking that these devices are of related so
>>>> that we can get our dma configuration. Instead of doing that, add
>>>> our custom dma configuration implementation.
>>>>
>>>> Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
>>>> ---
>>>>  drivers/bus/fsl-mc/fsl-mc-bus.c | 31 ++++++++++++++++++++++++++++++-
>>>>  1 file changed, 30 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
>>>> index 36eb25f82c8e..eafaa0e0b906 100644
>>>> --- a/drivers/bus/fsl-mc/fsl-mc-bus.c
>>>> +++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
>>>> @@ -132,11 +132,40 @@ static int fsl_mc_bus_uevent(struct device *dev, struct kobj_uevent_env *env)
>>>>  static int fsl_mc_dma_configure(struct device *dev)
>>>>  {
>>>>  	struct device *dma_dev = dev;
>>>> +	struct iommu_fwspec *fwspec;
>>>> +	const struct iommu_ops *iommu_ops;
>>>> +	struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);
>>>> +	int ret;
>>>> +	u32 icid;
>>>>  
>>>>  	while (dev_is_fsl_mc(dma_dev))
>>>>  		dma_dev = dma_dev->parent;
>>>>  
>>>> -	return of_dma_configure(dev, dma_dev->of_node, 0);
>>>> +	fwspec = dev_iommu_fwspec_get(dma_dev);
>>>> +	if (!fwspec)
>>>> +		return -ENODEV;
>>>> +	iommu_ops = iommu_ops_from_fwnode(fwspec->iommu_fwnode);
>>>> +	if (!iommu_ops)
>>>> +		return -ENODEV;
>>>> +
>>>> +	ret = iommu_fwspec_init(dev, fwspec->iommu_fwnode, iommu_ops);
>>>> +	if (ret)
>>>> +		return ret;
>>>> +
>>>> +	icid = mc_dev->icid;
>>>> +	ret = iommu_fwspec_add_ids(dev, &icid, 1);
>>>
>>> I see. So with this patch we would use the MC named component only to
>>> retrieve the iommu_ops
>>
>> Right. I'd also add that the implementation tries to follow the existing
>> standard .dma_configure implementations, e.g. of_dma_configure +
>> of_iommu_configure. I'd also note that similarly to the ACPI case, this
>> MC FW device is probed as a platform device in the DT scenario, binding
>> here [1].
>> A similar approach is used for the retrieval of the msi irq domain, see
>> following patch.
>>
>>> - the streamid are injected directly here bypassing OF/IORT bindings translations altogether. 
>>
>> Actually I've submitted a v2 [2] that calls into .of_xlate() to allow
>> the smmu driver to do some processing on the raw streamid coming from
>> the firmware. I have not yet tested this with ACPI but expect it to
>> work, however, it's debatable how valid is this approach in the context
>> of ACPI.
> 
> Actually, what I think you need is of_map_rid() (and an IORT
> equivalent, that I am going to write - generalizing iort_msi_map_rid()).
> 
> Would that be enough to enable IORT "normal" mappings in the MC bus
> named components ?
> 

At a first glance, looks like this could very well fix the ACPI
scenario, but I have some unclarities on the approach:
 * are we going to rely in DT and ACPI generic layers even if these
devices are not published / enumerated through DT or ACPI tables?
 * the firmware manages and provides discrete streamids for the devices
it exposes so there's no translation involved. There's no
   requestor_id / input_id involved but it seems that we would still do
some kind of translation relying for this on the DT/ACPI functions.
 * MC firmware has its own stream_id (e.g. on some chips 0x4000, others
0xf00, so outside the range of stream_ids used for the mc devices)
   while for the devices on this bus, MC allocates stream_ids from a
range (e.g. 0x17 - 0x3f). Is it possible to describe this in the IORT table?
 * Regarding the of_map_rid() use you mentioned, I was planning to
decouple the mc bus from the DT layer by dropping the use of
of_map_rid(), see patch 4.
I briefly glanced over the iort code and spotted this static function:
iort_iommu_xlate(). Wouldn't it also help, of course after making it public?

---
Thanks & Best Regards, Laurentiu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
