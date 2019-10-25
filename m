Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56577E48CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 12:46:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AXIUKpoHpmFiPJgd6ganGfNBrJIL7g9VfwtTV+uKAQo=; b=NyfYmEQcqJN857F+ojkCrN8IP
	9lG4o2PgmHs50tHqDIGulF7eQRzGIhEtXvd+wg4YC80BTbgPOffilUwUheqmcF8hdQAvJN/QwO+vj
	9L3G5NVg7H3FZq4GNUAe55i/1W7MKUn7VrQnnWfI4WNf4hrVQpuv1y3m4QLi4fbHDPw19NW40Ku2z
	2lGV34jAk2L4w1Q5XwNCwuRNIeooQjJikkxdI1gL08sgM3EndEkK9u7fbuhgNcoFKDo6xCQve4KbZ
	q36YYtl7MKZtXdzV/0cCxVkQCVW+kp8rQATSL1o1LCo6YG6LOMNzAzDcZNqomURrkqFMPUzLqkv0U
	9pYw0sGHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNx6k-0003Aa-3m; Fri, 25 Oct 2019 10:46:14 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNx6Z-0003A5-KS
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 10:46:05 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iNx6Y-0003Co-4m; Fri, 25 Oct 2019 12:46:02 +0200
To: Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [RFC PATCH 1/2] dt-bindings: irqchip: Update bindings to drop the
 usage of gic as parent
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 25 Oct 2019 11:46:02 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <ec871172-02c0-3699-88b5-c213854c9b41@ti.com>
References: <20190923042405.26064-1-lokeshvutla@ti.com>
 <20190923042405.26064-2-lokeshvutla@ti.com> <20191002135757.28901015@why>
 <72a061dc-3573-9e78-42cd-39809f1b9685@ti.com>
 <e11f6407-261d-8d7e-7ecd-df638a850f04@ti.com>
 <ec871172-02c0-3699-88b5-c213854c9b41@ti.com>
Message-ID: <2331f04eacee3b06cc152fc609225233@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: lokeshvutla@ti.com, nm@ti.com,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_034603_820289_C952DF49 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Nishanth Menon <nm@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-24 11:22, Lokesh Vutla wrote:
> Hi Marc,
>
> On 09/10/19 10:30 AM, Lokesh Vutla wrote:
>> Hi Marc,
>>
>> On 03/10/19 6:45 PM, Lokesh Vutla wrote:
>>> Hi Marc,
>>>
>>> On 02/10/19 6:27 PM, Marc Zyngier wrote:
>>>> On Mon, 23 Sep 2019 09:54:04 +0530
>>>> Lokesh Vutla <lokeshvutla@ti.com> wrote:
>>>>
>>>>> Drop the firmware related dt-bindings and use the hardware 
>>>>> specified
>>>>> interrupt numbers within Interrupt Router. This ensures interrupt 
>>>>> router
>>>>> DT node need not assume any interrupt parent type.
>>>>>
>>>>> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
>>>>> ---
>>>>>  .../interrupt-controller/ti,sci-intr.txt      | 28 
>>>>> +++++++++----------
>>>>>  1 file changed, 13 insertions(+), 15 deletions(-)
>>>>>
>>>>> diff --git 
>>>>> a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt 
>>>>> b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
>>>>> index 1a8718f8855d..de5de2a4b467 100644
>>>>> --- 
>>>>> a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
>>>>> +++ 
>>>>> b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
>>>>> @@ -44,15 +44,14 @@ Required Properties:
>>>>>  			4: If intr supports level triggered interrupts.
>>>>>  - interrupt-controller:	Identifies the node as an interrupt 
>>>>> controller
>>>>>  - #interrupt-cells:	Specifies the number of cells needed to 
>>>>> encode an
>>>>> -			interrupt source. The value should be 2.
>>>>> -			First cell should contain the TISCI device ID of source
>>>>> -			Second cell should contain the interrupt source offset
>>>>> -			within the device.
>>>>> +			interrupt source. The value should be 1.
>>>>> +			First cell should contain interrupt router input number
>>>>> +			as specified by hardware.
>>>>
>>>> This is breaking compatibility with existing kernels. Why isn't 
>>>> that a
>>>> problem?
>>>
>>> Yes, I am not denying that backward compatibility is broken. But I 
>>> feel this is
>>> a good cleanup for representing INTR interrupts. With this child 
>>> nodes will pass
>>> the INTR specific number rather the device specific offset. 
>>> Actually I tried
>>> following as what GIC is representing.
>>>
>>> As there are only two users upstreamed, I though it is better to 
>>> clean it up
>>> asap. Do you prefer maintaining the existing usage with a different 
>>> compatible?
>>
>> Just looking for your opinion here. If I try to maintain DT backward 
>> compatible,
>> are you okay with the overall approach. Will clean and repost 
>> patches once
>> firmware is ready.
>
> Gentle ping, can you provide your thoughts here?

Preserving backward compatibility is only required if you have 
deployment of
this in the wild. If nobody is using the stuff, then it's fine to break 
it.
If people are actively using it, then preserving compatibility is 
mandatory.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
