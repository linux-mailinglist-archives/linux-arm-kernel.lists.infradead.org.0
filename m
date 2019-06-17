Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8770747D6A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 10:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLSJruyQFCkY0QVRusrkz4yNcpC9zbgd1EKgIQoThxs=; b=kAO7ZJUXi1fJor
	oU7n83deAXS2srrenU0D8ySRsLJZzasMcn2UoZ4IfTlRx8qX+FQelMOgkZ5x1PnIGqmtaH1q8B7MD
	Ap7X4hEmSFKjLH4pMOQTBT3w/Eo/qouyYOFGwe2ck/0Zt4XaIAxeXcYd9PhGCJITQIDMXTxb7FXXE
	oLLm6ImfQNY6QCHdkpmQwdkSa68VvIHXYRp7TA0ikA0oN/A+dGZh9AnO1mMd/x4MpNU0i2RScBTZh
	wJXtDkpfLTPH9OtYFpaSYmFagwAmvuhM3kncMgRoMzdi56IADYIZ3WfKuXEtdmuM8+bAjoAWJsoSu
	Jy4mZJNGMXq6GzlaPTYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcnG2-000149-1q; Mon, 17 Jun 2019 08:44:54 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcnFl-000136-Hl
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 08:44:39 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id E0CD46922DA6B0343C85;
 Mon, 17 Jun 2019 16:44:30 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Mon, 17 Jun 2019
 16:44:30 +0800
Subject: Re: [PATCH] MAINTAINERS: Update my email address
To: Marc Zyngier <marc.zyngier@arm.com>
References: <1560586872-40099-1-git-send-email-guohanjun@huawei.com>
 <86k1dkpruy.wl-marc.zyngier@arm.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <3a638192-9ef1-ba4a-9975-6c0b22ce5b64@huawei.com>
Date: Mon, 17 Jun 2019 16:44:19 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <86k1dkpruy.wl-marc.zyngier@arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_014437_827767_F2F2E1AD 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-acpi@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2019/6/17 15:56, Marc Zyngier wrote:
> Hi Hanjun,
> 
> On Sat, 15 Jun 2019 09:21:12 +0100,
> Hanjun Guo <guohanjun@huawei.com> wrote:
>>
>> The @linaro.org address is not working and bonucing, so update the
>> references.
>>
>> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
>> ---
>>  MAINTAINERS | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 57f496c..2fed10f 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -364,7 +364,7 @@ F:	drivers/acpi/fan.c
>>  
>>  ACPI FOR ARM64 (ACPI/arm64)
>>  M:	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
>> -M:	Hanjun Guo <hanjun.guo@linaro.org>
>> +M:	Hanjun Guo <guohanjun@huawei.com>
>>  M:	Sudeep Holla <sudeep.holla@arm.com>
>>  L:	linux-acpi@vger.kernel.org
>>  L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> 
> You may also want to consider adding an entry into .mailmap, so that
> scripts get the right address.

Thank you for the kind reminder, I will send a updated patch.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
