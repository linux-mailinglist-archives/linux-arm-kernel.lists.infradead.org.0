Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B0D91F49
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 10:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bL8WW+yy6UhCNIo+KRDSF8NFgJa2qhiF228ZMDjbr90=; b=Gr2nuJiP3v0jyU
	GaQS66ZKj4vhh79aWp9IJKqUjWfjWARoXLsiGKnnn61aaBRzMlJApav+IWAocErIIFX+wz9JhW8RH
	Gyg8YMwx/Dm5QTbMjsBNRu1/xudxJbVMIYcrJa8MZ4BLYR5ZHcA1DgLghW9bGwsxFWeoJE+Po+C+B
	gSvBMGw2edXBhibJUfjE3cw453XOUneI8lHZYUSMRuHBBwwYFCekbhw+/VlgUQGXEhsYnwIx23Ox7
	Ctxza+k84uwl4HFMQDFstE0/sMkL2FoT7CqXHZ1camWuAkVDBmJApzIBc7SKzy9QT7OIErSAHuEHn
	VG/sPKDimlIsuUVgD/Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdJR-0006pt-3C; Mon, 19 Aug 2019 08:46:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdJ4-0006ir-Nb
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 08:46:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BDFE3344;
 Mon, 19 Aug 2019 01:46:25 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 8352C3F718; Mon, 19 Aug 2019 01:46:24 -0700 (PDT)
Subject: Re: [PATCH] KVM: arm/arm64: vgic: Allow more than 256 vcpus for
 KVM_IRQ_LINE
To: Will Deacon <will@kernel.org>
References: <20190818140710.23920-1-maz@kernel.org>
 <20190819074150.jv3dyyxqazoawgds@willie-the-truck>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <a7573176-6375-a7df-6fae-ab93155a824c@kernel.org>
Date: Mon, 19 Aug 2019 09:46:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190819074150.jv3dyyxqazoawgds@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_014626_938793_24D33D8B 
X-CRM114-Status: GOOD (  15.46  )
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
Cc: Peter Maydell <peter.maydell@linaro.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, qemu-arm@nongnu.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Zenghui Yu <yuzenghui@huawei.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/08/2019 08:41, Will Deacon wrote:
> On Sun, Aug 18, 2019 at 03:07:10PM +0100, Marc Zyngier wrote:
>> While parts of the VGIC support a large number of vcpus (we
>> bravely allow up to 512), other parts are more limited.
>>
>> One of these limits is visible in the KVM_IRQ_LINE ioctl, which
>> only allows 256 vcpus to be signalled when using the CPU or PPI
>> types. Unfortunately, we've cornered ourselves badly by allocating
>> all the bits in the irq field.
>>
>> Since the irq_type subfield (8 bit wide) is currently only taking
>> the values 0, 1 and 2 (and we have been careful not to allow anything
>> else), let's reduce this field to only 4 bits, and allocate the
>> remaining 4 bits to a vcpu2_index, which acts as a multiplier:
>>
>>   vcpu_id = 256 * vcpu2_index + vcpu_index
>>
>> With that, and a new capability (KVM_CAP_ARM_IRQ_LINE_LAYOUT_2)
>> allowing this to be discovered, it becomes possible to inject
>> PPIs to up to 4096 vcpus. But please just don't.
> 
> Do you actually need a new capability for this? Older kernels reject
> non-zero upper bits in the 'irq_type', so isn't that enough to probe
> for this directly?

'Probing' is a bit of an overstatement. You'll get an error back when
userspace will try to inject a PPI into a vcpu whose ID is in the new
range. But nothing at VM creation time will indicate the interrupt
injection API supports more than 256 vcpus.

I think userspace should be able to fail the creation of such large VM
immediately, before actually running it.

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
