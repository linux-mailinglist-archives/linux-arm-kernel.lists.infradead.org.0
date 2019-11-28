Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BFF10CE34
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 19:00:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4RAr/QFG2Q5KykM2baE2FG7+75BG6DWwWHxpan/zOz0=; b=FVn7GsN0bVUXgnLd2eG+Kt9QP
	bgGKZ24X0BvnO52XqPgbnILovuyoMN+bvDoJBjM8Lw14NL/Y9F6qtwdhTkXeAO9Yhbs5igUPsJ3mB
	eulEvKth5N8/oeODg7OrLLh1Y5qytR0QBfmujgQAaX7DbR956rX0CxmC2H3mYs1RdHqr0UPCRPiEC
	5XTKzMlOSi7bcFBqHFBmos/mXU0gOx14H2VLV4xB5uWkBz/0i7M6Z1F8XGmdpP3dBYLViPdRQ0eox
	GUj4wT7gRm2XfGY4RNcLRjuBFvnuga/NRo4491oPEvkJPyN6BtLsNXbgkTiB0gmpxckqE2uskMRV0
	CU4mzl+TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaO62-0003HD-M2; Thu, 28 Nov 2019 18:00:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaO5r-0003FI-AV
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 18:00:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18CC71FB;
 Thu, 28 Nov 2019 10:00:42 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 40B553F6C4;
 Thu, 28 Nov 2019 10:00:41 -0800 (PST)
Subject: Re: [PATCH v5 03/14] coresight: cti: Add sysfs access to program
 function regs
To: Mathieu Poirier <mathieu.poirier@linaro.org>
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-4-mike.leach@linaro.org>
 <cc0eb144-48a2-bde5-4790-2fd5e1168360@arm.com>
 <CANLsYkzsn6UWjjXLDSx+2hbXV26Qf-6FMqE7xURPgPzxOYpVbw@mail.gmail.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <f2ccaef9-2bd4-77a6-750b-e4eca4158ab1@arm.com>
Date: Thu, 28 Nov 2019 18:00:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CANLsYkzsn6UWjjXLDSx+2hbXV26Qf-6FMqE7xURPgPzxOYpVbw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_100043_407964_56FE5EF8 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Coresight ML <coresight@lists.linaro.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 28/11/2019 17:20, Mathieu Poirier wrote:
> On Thu, 28 Nov 2019 at 03:54, Suzuki Kuruppassery Poulose
> <suzuki.poulose@arm.com> wrote:
>>
>> On 19/11/2019 23:19, Mike Leach wrote:
>>> Adds in sysfs programming support for the CTI function register sets.
>>> Allows direct manipulation of channel / trigger association registers.
>>>
>>> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
>>> Signed-off-by: Mike Leach <mike.leach@linaro.org>
>>
>>
>>> +/*
>>> + * #define CTI_DEBUG_INTEGRATION_CTRL to enable the access to the integration
>>> + * control registers. Normally only used to investigate connection data.
>>> + */
>>
>> On a second thought, I have some comments on this symbol.
>>
>> Given that the integration control registers may be useful for people to
>> find the device connections, I strongly feel that this is provided
>> via a CONFIG symbol rather than a  debug symbol within the code.
> 
> Device connections can be discovered with the dynamic sysfs connection
> entries added as part of patch 09.  In cases where that is not

Yes, that correct. That happens only if the DT/ACPI describes the
connections.

> sufficient and people really need to use the integration control
> registers they are probably instrumenting the code anyway.

In this case given the CTI number of triggers and connections, this
step is to identify the connections in the first place, so that they
can be described in the DT/ACPI. Of course this is not a common
activity, but more of a board bring up activity. Thus, we can't expect
the board bringup engineer to necessarily know how to modify
the driver to get this exposed. Having a Kconfig entry, with
a help text makes this easier for them to avoid fiddling with
the code. Hope this is clearer now.

Cheers
Suzuki


> 
>>
>> i.e, CONFIG_CTI_DEBUG_INTEGRATION_CTRL, to help the people better.
>> Codewise this doesn't make much difference, but it certainly makes
>> it more easier for people to use it.
> 
> I agree that code-wise it doesn't make much difference but I'm really
> not convinced it makes the driver easier to use, and one needs to
> recompile their kernel for production systems anyway.
> 
> Thanks,
> Mathieu
> 
>>
>> We have used debug symbols elsewhere in the drivers for pure functional
>> debugging purposes. However I feel this is case is superior.
>>
>>
>> Cheers
>> Suzuki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
