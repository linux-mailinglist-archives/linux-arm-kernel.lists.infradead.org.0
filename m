Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A420812A259
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 15:35:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rPOUJS6o6rA/BqtHQdN3fR9bWeVgNsWooJi4HSu+9TU=; b=KuA790bKQjcvSRD1oDhZufJiLy
	lA3EtqiYWkP258fa+cj8jvvVYyQh6XrHgj9MGtTS5+LwitT+tcNe0P6U9dWQFNclJYk4RtVVRY5rP
	cLVueUV/sZXC3XYxbH+xr4BvFp0p0s6aQL8QUhf0xEdEoVH4XzihAjp5T3jU/JNzDtf3mKaNyEJyU
	je3CaavsYJPpeN0hiun1ut8j3eE4vFs4V0Rdw96qCtR3aqRG9YCLtKiauVWCX07KVOPnsipFs3hnQ
	rZpKED2wTeK2zAUYKeoBWtSM7yL5QhrdEbPkDTEiE5dmc7PD+oA3pKeTnQiyvIt90kDqCbh2KuWF/
	Zzgc0JdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijlHj-00011D-S7; Tue, 24 Dec 2019 14:35:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijlHX-00010r-0s
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 14:35:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C4B3F1FB;
 Tue, 24 Dec 2019 06:35:28 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 53CF43F534;
 Tue, 24 Dec 2019 06:35:28 -0800 (PST)
Subject: Re: [PATCH v2 07/11] firmware: arm_scmi: Skip protocol initialisation
 for additional devices
To: Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20191218111742.29731-1-sudeep.holla@arm.com>
 <20191218111742.29731-8-sudeep.holla@arm.com>
 <CAPKp9uZznwOgpm=CEMMUDFvHVa=jsmG0-fd4q-_=c_d3HqbKTA@mail.gmail.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <4113a9cf-650c-e086-fcd9-b126da1597eb@arm.com>
Date: Tue, 24 Dec 2019 14:35:27 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAPKp9uZznwOgpm=CEMMUDFvHVa=jsmG0-fd4q-_=c_d3HqbKTA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_063531_108311_E7A1CB1E 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 24/12/2019 14:33, Sudeep Holla wrote:
> On Wed, Dec 18, 2019 at 11:19 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>>
>> The scmi bus now supports adding multiple devices per protocol,
>> and since scmi_protocol_init is called for each scmi device created,
>> we must avoid allocating protocol private data and initialising the
>> protocol itself if it is already initialised.
>>
>> In order to achieve the same, we can simple replace the idr pointer
>> from protocol initialisation function to a dummy function.
>>
>> Suggested-by: Cristian Marussi <cristian.marussi@arm.com>
> 
> 
> Hi Cristian,
> 
> Are you fine with this approach ? If yes, I plan to apply this series.
> 

Yes sure...forgot this was pending.

Reviewed-by: Cristian Marussi <cristian.marussi@arm.com>

Cristian
> --
> Regards,
> Sudeep
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
