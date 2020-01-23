Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AABD14664E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:07:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TznrYoFaK41a99Ul0Fg/7ez07tAgS5t9MtThj13+/RA=; b=b38gSJyO0x647A
	NEJKZyzLTKPRvo88+7PqVgm1KSOAylOOMygwfeb+suRjFD/5qzsMmkigUoyqTGJKnXm7VR7/tieYp
	ew4zoxTMJ2CGLPYnW/qA/ZMn7fPStVGWbUDIdXYcy/wONBHpkXMggJq6hJ7RQ+dP+MGMVyqN7ZN0z
	7EgvwezEeLrC8FbPpkFc6svM+OXd+xkiLmweWuhzJgRFeMSN236OnVqPKcbDrow3xuZI4TyJdgVtY
	p6XovqPh58SkWuYQPBCQuxBwyBPEOeudb8huC6AncFeFEh4j10DYbB7tHMu2buQDHU4GWwBgmZjnS
	+dhUUW79+0X9xlarybVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuaK3-0002ix-N1; Thu, 23 Jan 2020 11:06:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuaJt-0002iT-8c
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:06:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 50A1531B;
 Thu, 23 Jan 2020 03:06:40 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4E7AB3F6C4;
 Thu, 23 Jan 2020 03:06:39 -0800 (PST)
Subject: Re: [PATCH V3] firmware: arm_scmi: Make scmi core independent of the
 transport type
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <4b74f1b6c1f9653241a1b5754525e230b3d76a3f.1579595093.git.viresh.kumar@linaro.org>
 <3a8836dd-99d3-faff-af05-2032d609f594@arm.com>
 <20200123023924.roqc2iyx4wmukk4p@vireshk-i7>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <d5d71818-e68f-7688-4378-64d96bea922d@arm.com>
Date: Thu, 23 Jan 2020 11:06:38 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200123023924.roqc2iyx4wmukk4p@vireshk-i7>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_030641_348063_6F76CDE5 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: peng.fan@nxp.com, arnd@arndb.de, jassisinghbrar@gmail.com,
 linux-kernel@vger.kernel.org, peter.hilber@opensynergy.com,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/01/2020 02:39, Viresh Kumar wrote:
> On 22-01-20, 12:44, Cristian Marussi wrote:
>> On 21/01/2020 08:27, Viresh Kumar wrote:
>> commment is obsolete
> 
> Right, they need to be checked everywhere again. Sorry for missing
> that earlier.
> 
>>> +struct scmi_chan_info {
>>> +	struct scmi_info *info;
>>> +	struct device *dev;
>>> +	struct scmi_handle *handle;
>>> +	void *transport_info;
>>> +};
>>> +
>>> +/**
>>> + * struct scmi_transport_ops - Structure representing a SCMI transport ops
>>> + *
>>> + * @send_message: Callback to send a message
>>> + * @mark_txdone: Callback to mark tx as done
>>> + * @chan_setup: Callback to allocate and setup a channel
>>> + * @chan_free: Callback to free a channel
>>> + */
>> commment is obsolete but I would also ask: are all of these operations supposed to be mandatory supported
>> on any possible foreseeable transport ? (beside the obviously needed like send_message)
>>
>> I'm asking because they are all called straight away from the driver core without any NULL check
>> so that if a new transport should not need one of them it will be forced to anyway implement a dummy one
>> to comply, which it will be needlessly invoked every time.
> 
> They are kept as mandatory for now as we don't really know how it
> will look for other transport types. Lets make them optional only when
> someone don't need to define them. It would be a simple change anyway.

Ok, fine.
> 
>>>  /* Each compatible listed below must have descriptor associated with it */
>>>  static const struct of_device_id scmi_of_match[] = {
>>> -	{ .compatible = "arm,scmi", .data = &scmi_generic_desc },
>>> +	{ .compatible = "arm,scmi", .data = &scmi_mailbox_desc },
>>>  	{ /* Sentinel */ },
>>>  };
>>
>> minor thing: shouldn't the chosen transport being configurable at compile time with some
>> option like CONFIG_SCMI_TRANSPORT_MBOX ? or via DT ?
> 
> It is configurable via DT. The compatible should look different in
> that case, something like: "arm,scmi-<newtranport>".
> 

Ah ok, we're assuming mailbox transport as the default, being the only one existing as of now.
Fine for me, thanks for the explanation.

Reviewed-by: Cristian Marussi <cristian.marussi@arm.com>

Regards

Cristian


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
