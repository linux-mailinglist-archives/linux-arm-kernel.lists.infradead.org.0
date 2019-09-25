Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CB1BD9A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 10:13:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bO8WXIRD2EmJ7n5DkG5CPVv2Ml736k6bsNcc0BDEcnM=; b=PBhGOpevqvkFLOB2BmRCw5XXr
	HxAw4wPNp7Hyymn81sMEK2Lrwg8oQJ9gAfizfgJE+qq/VQJ4wlWbNK/y6Feqx5wgDLWHLf/cu3yCI
	sAFdZ3GSuKXKUPYKAK6f1XovW9DoO/TNjkGqVyaf4O/MqM+H5cmMBBIlZ6cSA2n1PFJacY3xWzLts
	th6jbGzn7a6tq24CGk0oXsoQLZcJazW7OdFzeyNChB211qYTkPNcaqyi2NKEpOdya3UORzwdGWzme
	bv+BbCr5r7FQSH9I4xC6ta0uKTW6RsDyvQQGPGnmojIzWq4/4dyffQTIA3J0oTlxGnbYo0dj8kcFH
	iBGiWWa+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD2QN-0007CD-AR; Wed, 25 Sep 2019 08:13:23 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD2Pp-0007Bo-H6
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 08:12:52 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id EF74175CD047DB4EC037;
 Wed, 25 Sep 2019 16:12:44 +0800 (CST)
Received: from [127.0.0.1] (10.133.216.73) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Wed, 25 Sep 2019
 16:12:35 +0800
Subject: Re: [RFC PATCH 01/12] linux-headers: import arm_sdei.h
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
 <1569338511-3572-2-git-send-email-guoheyi@huawei.com>
 <20190924113640-mutt-send-email-mst@kernel.org>
From: Guoheyi <guoheyi@huawei.com>
Message-ID: <f0096ac1-e7d4-78d2-9e8a-21a7f6f266ad@huawei.com>
Date: Wed, 25 Sep 2019 16:12:33 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20190924113640-mutt-send-email-mst@kernel.org>
X-Originating-IP: [10.133.216.73]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_011249_963705_E0877D11 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Cornelia Huck <cohuck@redhat.com>, qemu-devel@nongnu.org,
 Dave Martin <Dave.Martin@arm.com>, qemu-arm@nongnu.org,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 wanghaibin.wang@huawei.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/9/24 23:39, Michael S. Tsirkin wrote:
> On Tue, Sep 24, 2019 at 11:21:40PM +0800, Heyi Guo wrote:
>> Import Linux header file include/uapi/linux/arm_sdei.h from kernel
>> v5.3 release.
>>
>> This is to prepare for qemu SDEI emulation.
>>
>> Signed-off-by: Heyi Guo <guoheyi@huawei.com>
>> Cc: Peter Maydell <peter.maydell@linaro.org>
>> Cc: Dave Martin <Dave.Martin@arm.com>
>> Cc: Marc Zyngier <marc.zyngier@arm.com>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: James Morse <james.morse@arm.com>
>> Cc: "Michael S. Tsirkin" <mst@redhat.com>
>> Cc: Cornelia Huck <cohuck@redhat.com>
>> Cc: Paolo Bonzini <pbonzini@redhat.com>
> Some issues with this.  First linux-headers is for linux as a host.
> This is for linux as a guest, so belongs in include/standard-headers.
>
> Second, please add to scripts/update-linux-headers.sh in a 1st patch,
> then add the file in the second patch.

Thanks; now I understand the differences. I'll do that in next version.

HG

>
>
>
>> ---
>>   linux-headers/linux/arm_sdei.h | 73 ++++++++++++++++++++++++++++++++++++++++++
>>   1 file changed, 73 insertions(+)
>>   create mode 100644 linux-headers/linux/arm_sdei.h
>>
>> diff --git a/linux-headers/linux/arm_sdei.h b/linux-headers/linux/arm_sdei.h
>> new file mode 100644
>> index 0000000..af0630b
>> --- /dev/null
>> +++ b/linux-headers/linux/arm_sdei.h
>> @@ -0,0 +1,73 @@
>> +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
>> +/* Copyright (C) 2017 Arm Ltd. */
>> +#ifndef _UAPI_LINUX_ARM_SDEI_H
>> +#define _UAPI_LINUX_ARM_SDEI_H
>> +
>> +#define SDEI_1_0_FN_BASE			0xC4000020
>> +#define SDEI_1_0_MASK				0xFFFFFFE0
>> +#define SDEI_1_0_FN(n)				(SDEI_1_0_FN_BASE + (n))
>> +
>> +#define SDEI_1_0_FN_SDEI_VERSION			SDEI_1_0_FN(0x00)
>> +#define SDEI_1_0_FN_SDEI_EVENT_REGISTER			SDEI_1_0_FN(0x01)
>> +#define SDEI_1_0_FN_SDEI_EVENT_ENABLE			SDEI_1_0_FN(0x02)
>> +#define SDEI_1_0_FN_SDEI_EVENT_DISABLE			SDEI_1_0_FN(0x03)
>> +#define SDEI_1_0_FN_SDEI_EVENT_CONTEXT			SDEI_1_0_FN(0x04)
>> +#define SDEI_1_0_FN_SDEI_EVENT_COMPLETE			SDEI_1_0_FN(0x05)
>> +#define SDEI_1_0_FN_SDEI_EVENT_COMPLETE_AND_RESUME	SDEI_1_0_FN(0x06)
>> +#define SDEI_1_0_FN_SDEI_EVENT_UNREGISTER		SDEI_1_0_FN(0x07)
>> +#define SDEI_1_0_FN_SDEI_EVENT_STATUS			SDEI_1_0_FN(0x08)
>> +#define SDEI_1_0_FN_SDEI_EVENT_GET_INFO			SDEI_1_0_FN(0x09)
>> +#define SDEI_1_0_FN_SDEI_EVENT_ROUTING_SET		SDEI_1_0_FN(0x0A)
>> +#define SDEI_1_0_FN_SDEI_PE_MASK			SDEI_1_0_FN(0x0B)
>> +#define SDEI_1_0_FN_SDEI_PE_UNMASK			SDEI_1_0_FN(0x0C)
>> +#define SDEI_1_0_FN_SDEI_INTERRUPT_BIND			SDEI_1_0_FN(0x0D)
>> +#define SDEI_1_0_FN_SDEI_INTERRUPT_RELEASE		SDEI_1_0_FN(0x0E)
>> +#define SDEI_1_0_FN_SDEI_PRIVATE_RESET			SDEI_1_0_FN(0x11)
>> +#define SDEI_1_0_FN_SDEI_SHARED_RESET			SDEI_1_0_FN(0x12)
>> +
>> +#define SDEI_VERSION_MAJOR_SHIFT			48
>> +#define SDEI_VERSION_MAJOR_MASK				0x7fff
>> +#define SDEI_VERSION_MINOR_SHIFT			32
>> +#define SDEI_VERSION_MINOR_MASK				0xffff
>> +#define SDEI_VERSION_VENDOR_SHIFT			0
>> +#define SDEI_VERSION_VENDOR_MASK			0xffffffff
>> +
>> +#define SDEI_VERSION_MAJOR(x)	(x>>SDEI_VERSION_MAJOR_SHIFT & SDEI_VERSION_MAJOR_MASK)
>> +#define SDEI_VERSION_MINOR(x)	(x>>SDEI_VERSION_MINOR_SHIFT & SDEI_VERSION_MINOR_MASK)
>> +#define SDEI_VERSION_VENDOR(x)	(x>>SDEI_VERSION_VENDOR_SHIFT & SDEI_VERSION_VENDOR_MASK)
>> +
>> +/* SDEI return values */
>> +#define SDEI_SUCCESS		0
>> +#define SDEI_NOT_SUPPORTED	-1
>> +#define SDEI_INVALID_PARAMETERS	-2
>> +#define SDEI_DENIED		-3
>> +#define SDEI_PENDING		-5
>> +#define SDEI_OUT_OF_RESOURCE	-10
>> +
>> +/* EVENT_REGISTER flags */
>> +#define SDEI_EVENT_REGISTER_RM_ANY	0
>> +#define SDEI_EVENT_REGISTER_RM_PE	1
>> +
>> +/* EVENT_STATUS return value bits */
>> +#define SDEI_EVENT_STATUS_RUNNING	2
>> +#define SDEI_EVENT_STATUS_ENABLED	1
>> +#define SDEI_EVENT_STATUS_REGISTERED	0
>> +
>> +/* EVENT_COMPLETE status values */
>> +#define SDEI_EV_HANDLED	0
>> +#define SDEI_EV_FAILED	1
>> +
>> +/* GET_INFO values */
>> +#define SDEI_EVENT_INFO_EV_TYPE			0
>> +#define SDEI_EVENT_INFO_EV_SIGNALED		1
>> +#define SDEI_EVENT_INFO_EV_PRIORITY		2
>> +#define SDEI_EVENT_INFO_EV_ROUTING_MODE		3
>> +#define SDEI_EVENT_INFO_EV_ROUTING_AFF		4
>> +
>> +/* and their results */
>> +#define SDEI_EVENT_TYPE_PRIVATE			0
>> +#define SDEI_EVENT_TYPE_SHARED			1
>> +#define SDEI_EVENT_PRIORITY_NORMAL		0
>> +#define SDEI_EVENT_PRIORITY_CRITICAL		1
>> +
>> +#endif /* _UAPI_LINUX_ARM_SDEI_H */
>> -- 
>> 1.8.3.1
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
