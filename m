Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2254810FC7F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 12:28:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S/GUOgv55hK4ckjog+W2iSG8EMbXF2eH5GuXL+jnvXM=; b=TdR1s2tfJJZu3du6soOlDwvPU
	AajvkWVQpbBPjclcnsC9eg/S6kTKOYka933imFQrkVdkyxU4js9qdqh7sGKm7NeO7Zw4lppzbhbm5
	GGF9Jcj0ooxaRMkCPMjFJkBCXN6vjCc+90E49vsTZ5UB7/qp9yfHLSDy1CgrXViyeMO9MeRzEqooc
	5FoOBMxul8zd59dFr5g57UdCWriOVtr7gL17z+dEoQxP+VqBYDCakDzRokMuLRF/rBFXZ6kEtCZz2
	0Kv2EOYZYAsPy4EVDp7tYaiCBJ/0MisWKtf8XZugyAyLaQQMEm/IMjcZc50BsY1A29weHS1N8AiTE
	l1SkEOSuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6MH-00027c-MB; Tue, 03 Dec 2019 11:28:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6M9-000278-58
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 11:28:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D17AA30E;
 Tue,  3 Dec 2019 03:28:34 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 11BDA3F68E;
 Tue,  3 Dec 2019 03:28:33 -0800 (PST)
Subject: Re: [PATCH v5 06/14] coresight: cti: Add device tree support for v8
 arch CTI
To: Mike Leach <mike.leach@linaro.org>
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-7-mike.leach@linaro.org>
 <b2f640d3-c320-82d4-7399-172846820589@arm.com>
 <CAJ9a7VgkgoUTL0+_3kj53go_CKtAH3fO5xF9UNDPPz1se1SKSw@mail.gmail.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <ffda8aff-0904-7292-e2f1-93833b936c49@arm.com>
Date: Tue, 3 Dec 2019 11:28:32 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAJ9a7VgkgoUTL0+_3kj53go_CKtAH3fO5xF9UNDPPz1se1SKSw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_032837_285907_3E10FC21 
X-CRM114-Status: GOOD (  21.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Coresight ML <coresight@lists.linaro.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/12/2019 10:59, Mike Leach wrote:
> Hi Suzuki,
> 
> On Fri, 29 Nov 2019 at 11:33, Suzuki Kuruppassery Poulose
> <suzuki.poulose@arm.com> wrote:
>>
>> On 19/11/2019 23:19, Mike Leach wrote:
>>> The v8 architecture defines the relationship between a PE, its optional ETM
>>> and a CTI. Unlike non-architectural CTIs which are implementation defined,
>>> this has a fixed set of connections which can therefore be represented as a
>>> simple tag in the device tree.
>>>
>>> This patch defines the tags needed to create an entry for this PE/ETM/CTI
>>> relationship, and provides functionality to implement the connection model
>>> in the CTI driver.
>>>
>>> Signed-off-by: Mike Leach <mike.leach@linaro.org>
>>> ---


>>> +#ifdef CONFIG_OF
>>> +/*
>>> + * CTI can be bound to a CPU, or a system device.
>>> + * CPU can be declared at the device top level or in a connections node
>>> + * so need to check relative to node not device.
>>> + */
>>> +static int of_cti_get_cpu_at_node(const struct device_node *node)
>>> +{
>>> +     int cpu;
>>> +     struct device_node *dn;
>>> +
>>> +     if (node == NULL)
>>> +             return -1;
>>> +
>>> +     dn = of_parse_phandle(node, "cpu", 0);
>>> +     /* CTI affinity defaults to no cpu */
>>> +     if (!dn)
>>> +             return -1;
>>> +     cpu = of_cpu_node_to_id(dn);
>>> +     of_node_put(dn);
>>> +
>>> +     /* No Affinity  if no cpu nodes are found */
>>> +     return (cpu < 0) ? -1 : cpu;
>>> +}
>>> +
>>> +static const char *of_cti_get_node_name(const struct device_node *node)
>>> +{
>>> +     if (node)
>>> +             return node->full_name;
>>> +     return "unknown";
>>> +}
>>> +#else
>>> +static int of_cti_get_cpu_at_node(const struct device_node *node)
>>> +{
>>> +     return -1;
>>> +}
>>> +
>>> +static const char *of_cti_get_node_name(const struct device_node *node)
>>> +{
>>> +     return "unknown";
>>> +}
>>> +#endif
>>> +
>>> +static int cti_plat_get_cpu_at_node(struct fwnode_handle *fwnode)
>>> +{
>>
>> You may simply reuse coresight_get_cpu() below, instead of adding this
>> duplicate set of functions. See below.
>>
>>
> 
> No we can't. coresight_get_cpu gets the 'cpu' entry relative to the
> device node, this gets the 'cpu' relative to the supplied node.
> This is very important for the case where a none v8 architected PE is
> attached to a CTI. This will use the devicetree form:-
> 
> cti@<addr> {
>      [ some stuff  ]
>     trig_conns@1 {
>            cpu = <&CPU0>
>            [trigger signal  connection info for this cpu]
>     }
> }
> 
> trig_conns is a child node and we must look for 'cpu' relative to it.

Ok. May be we could refactor the function to find the 'CPU' node
relative to the given "fwnode" and let the coresight_get_cpu() use it ?

int coresight_get_cpu(struct device *dev)
{
	return coresight_get_fwnode_cpu(dev_fwnode(dev));
}

That way it is clear what we are dealing with. i.e, fwnode of any level
(device or an intermediate node).

>>> +     csdev = cti_get_assoc_csdev_by_fwnode(cs_fwnode);
>>> +     if (csdev)
>>> +             assoc_name = dev_name(&csdev->dev);
>>
>> Does it make sense to defer the probing until the ETM device  turn up ?
>> Its fine either way.
>>
> 
> Not really as the ETM is optional but the PE still has a CTI.

Ah, you're right. Please ignore my comment.

Kind regards
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
