Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 675CE16872B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 20:01:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=62M2jAGVuW1BTYxpZyvb/N1WYXPeB36xRAMNItvVl34=; b=mw7L7UkMzChvZl
	kEijNABn1YV3JVstgw4ZgkgMowmfB7MowN7RZb7CkLN4xdqXjx09CpZE1xAFGMPpKZc+KeKpxO3iu
	sTKlIaz1Sc5+UHaHg4F01yulobIiDBNuC5tNOlgVqQ4Le5GTqZ1IYJI5y1gFFkaoXjqHIP4dP1s8N
	TE0QyOxVJj+xcYHTpbroB3CA/Z49eiGKBxeBFub/KiyrhsXzCrlHr7HarCz2H19WM+vpLhJs6wnoT
	05nFUsL0CpbNjTA5iPdKyFzwDR82LPoBrP+fECKur8oCnmgxfjylFEgFFR5U2FfQTn5+V7Izff+PD
	u7aTYdjfDNucPjLNRLxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5DYK-0000Zj-9O; Fri, 21 Feb 2020 19:01:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5DYA-0000Yf-4X
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 19:01:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1341A30E;
 Fri, 21 Feb 2020 11:01:19 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0EC233F6CF;
 Fri, 21 Feb 2020 11:01:17 -0800 (PST)
Subject: Re: [RFC PATCH v2 07/13] firmware: arm_scmi: Add notification
 dispatch and delivery
To: Lukasz Luba <lukasz.luba@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200214153535.32046-1-cristian.marussi@arm.com>
 <20200214153535.32046-8-cristian.marussi@arm.com>
 <e45e87e2-aaaf-c35b-b864-c080fd6e0ba6@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <d59c3f3e-324b-05fe-547d-1e64bf4c6a69@arm.com>
Date: Fri, 21 Feb 2020 19:01:16 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <e45e87e2-aaaf-c35b-b864-c080fd6e0ba6@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_110122_222216_DBD251A7 
X-CRM114-Status: GOOD (  22.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Jonathan.Cameron@Huawei.com, james.quinlan@broadcom.com,
 sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lukasz

Thanks for your feedback !

On 21/02/2020 13:25, Lukasz Luba wrote:
> Hi Cristian,
> 
> I didn't want to jump into your discussion with Jim in other broader
> thread with this small thought, so I added a comment below.
> 
> On 2/14/20 3:35 PM, Cristian Marussi wrote:
>> Add core SCMI Notifications dispatch and delivery support logic which is
> [snip]
> 
>>   
>> @@ -840,6 +1071,11 @@ static struct scmi_notify_ops notify_ops = {
>>    */
>>   int scmi_notification_init(struct scmi_handle *handle)
>>   {
>> +	scmi_notify_wq = alloc_workqueue("scmi_notify",
>> +					 WQ_UNBOUND | WQ_FREEZABLE, 0);
> 
> I think it might limit some platforms. It depends on their workload.
> If they have some high priority workloads which rely on this mechanisms,
> they might need a RT task here. The workqueues would be scheduled in
> CFS, so it depends on workload in there (we might even see 10s ms delays
> in scheduling-up them). If we use RT we would grab the CPU from CFS.
> 
> It would be good if it is a customization option: which mechanism
> to use based on some a parameter. Then we could create:
> a) workqueue with the flags above
> b) workqueue with WQ_HIGHPRI (limited by minimum nice)
> c) kthread_create_worker() with RT/DL/FIFO sched policy
>    (with also a parameterized priority) 
> In default clients might use a) but when they want to tune their
> platform, they might change only a parameter in their scmi code,
> not maintaining a patch for the RT function out of tree.

In this series, I have not addressed configurability issues at all (as noted in the cover):
in fact I was thinking that stuff like WQ_HIGHPRI flags and per-protocol queue sizes could
be beneficial to be customizable depending on the specific platform, but I had not gone to
the extreme of thinking of adopting a dedicated RT kthread as a worker...good point...it
makes surely sense to have this configurable option to try to reduce the latency where possible.

I think it's important to give the user the possibility to configure the deferred worker
as you suggested, if the user decides to rely on Linux to handle a critical notification,
but I'd prefer queuing up this work you suggested on a different series on top of this one.
(which is starting to be a little to much voluminous...for being just the core support)

Regards

Cristian

> 
> Regards,
> Lukasz
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
