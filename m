Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDBB82DD1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 10:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DzKWz4Ye6Vs34SH4oN1diKVeQfZx/MYQIiZbxaATJKo=; b=sXskEJXNWdMZUs
	lwYvM/LiqKGIuLIo2ObnmpJyXk7pdtan1SHMDKlzGcFh3APIX62bM5YxP8Os5SwPnf40bT0YnQUEe
	aOXivhQHL3vO6T4/PuQviIs777ee7wCMuMUA1r4nj6epxLP6IUzKjJDlAbSL4L2lf2n/OQ5xZh1Gy
	5L4JusHYwHi2J9Z/g4F/82X5lCJPzjYtFQosZQM9gZrww/w8QX134unechTa7lpqmCe86PRLTzsRo
	yMyVp1uWxdaWQ2A3l8xu6+ZAz8yCGNFSUmSxSQx6+LD2UVbWR7D3fAiiPSp57FXvSeGifA3316y0W
	JaUibOV9vc69SdJMKFKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huuwv-0005pX-E7; Tue, 06 Aug 2019 08:36:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huuwj-0005p0-RP
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 08:35:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E8EB3337;
 Tue,  6 Aug 2019 01:35:52 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 DF5A73F706; Tue,  6 Aug 2019 01:35:51 -0700 (PDT)
Subject: Re: [PATCH 1/2] KVM: arm64: Don't write junk to sysregs on reset
To: Zenghui Yu <yuzenghui@huawei.com>, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
References: <20190805121555.130897-1-maz@kernel.org>
 <20190805121555.130897-2-maz@kernel.org>
 <01b74492-c59f-dfd9-e439-752e6b1c53dc@huawei.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <7b36f1dd-e44f-af75-0e51-8f6e705e81f6@kernel.org>
Date: Tue, 6 Aug 2019 09:35:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <01b74492-c59f-dfd9-e439-752e6b1c53dc@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_013553_940031_F9F5C255 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Andrew Jones <drjones@redhat.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/08/2019 07:29, Zenghui Yu wrote:
> Hi Marc,
> 
> On 2019/8/5 20:15, Marc Zyngier wrote:
>> At the moment, the way we reset system registers is mildly insane:
>> We write junk to them, call the reset functions, and then check that
>> we have something else in them.
>>
>> The "fun" thing is that this can happen while the guest is running
>> (PSCI, for example). If anything in KVM has to evaluate the state
>> of a system register while junk is in there, bad thing may happen.
>>
>> Let's stop doing that. Instead, we track that we have called a
>> reset function for that register, and assume that the reset
>> function has done something. This requires fixing a couple of
>> sysreg refinition in the trap table.
>>
>> In the end, the very need of this reset check is pretty dubious,
>> as it doesn't check everything (a lot of the sysregs leave outside of
>> the sys_regs[] array). It may well be axed in the near future.
>>
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
> 
> (Regardless of whether this check is needed or not,) I tested this patch
> with kvm-unit-tests:
> 
> for i in {1..100}; do QEMU=/path/to/qemu-system-aarch64 accel=kvm 
> arch=arm64 ./run_tests.sh; done
> 
> And all the tests passed!

Great! Can I take this as a 'Tested-by:'?

Thanks,

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
