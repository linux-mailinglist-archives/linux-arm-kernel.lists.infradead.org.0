Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFB319AC0E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 14:53:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vgPXOmPUQLBvFYLMUgpMgu8npks2cEQHpM7qDPpjN+M=; b=sCeraLuDwMo7tm9zwrntKlfLZ
	/KvNvWgzNnu0qEPzhzRa1j+74Aa+NeOSLnUXYjCZrKMFJYmb1JEBZmsE8tUjo5DHUsPHvd3IDwX45
	KSHcYVu2CK7KKdYjr0/D1+d5N7XPrv61v6Er8mEy6htIynadr6wsLqwW5VvZs02AhwIYOl9rMTEGo
	E1mTaEGvWE3dA4gT0sqm8hhSvL+s+tsTLbcG6q+WB1rVgGCx0vePgGlizCcRiDXBagJPusTa2AZo3
	HJuoFzfedPFnmFFdT1XqHAhOeZUX5RJbQzNl44MKV2h5PC90lxfzfxc4YIhWQAFph2zicu/OMs8A/
	/zRdHPaPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJcrZ-0001Cd-57; Wed, 01 Apr 2020 12:52:57 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJcrS-0001Aw-Kp
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 12:52:52 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 59BA9BD97E6FA23F202D;
 Wed,  1 Apr 2020 20:52:32 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.487.0; Wed, 1 Apr 2020
 20:52:22 +0800
Subject: Re: [PATCH] KVM: arm64: vgic-v3: Clear pending bit in guest memory
 after synchronization
To: Marc Zyngier <maz@kernel.org>
References: <20200331031245.1562-1-yuzenghui@huawei.com>
 <20200331090709.17d2087d@why>
 <fe30a834-fdb0-e1ca-5e4a-0c7863236c5f@huawei.com>
 <20200401112757.6716cbf3@why>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <bb59df5a-be43-1132-e78a-3c6b354694d6@huawei.com>
Date: Wed, 1 Apr 2020 20:52:20 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200401112757.6716cbf3@why>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_055250_869786_7CF31395 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: suzuki.poulose@arm.com, andre.przywara@arm.com,
 linux-kernel@vger.kernel.org, eric.auger@redhat.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/4/1 18:27, Marc Zyngier wrote:

>>> And I think there is a similar issue in vgic_v3_lpi_sync_pending_status().
>>> Why sync something back from the pending table when the LPI wasn't
>>> mapped yet?
>>
>> vgic_v3_lpi_sync_pending_status() can be called on the ITE restore path:
>> vgic_its_restore_ite/vgic_add_lpi/vgic_v3_lpi_sync_pending_status.
>> We should rely on it to sync the pending bit from guest memory (which
>> was saved on the source side).
> 
> The fact that we have *two* paths to restore pending bits is pretty
> annoying. There is certainly some scope for simplification here.

One thing need to be clarified first (if we're going to do some 
simplification here) is that if we follow the "ITS Restore Sequence"
rule (in Documentation/virt/kvm/devices/arm-vgic-its.rst, which says
that all redistributors are restored *before* ITS table data), then
the pending bits will *only* be restored on the ITE restore path.

When we're restoring the GICR_CTLR, we invoke vgic_enable_lpis()->
its_sync_lpi_pending_table(). But since no LPI has been restored yet,
we will get an empty lpi_list snapshot from vgic_copy_lpi_list().
No pending table synchronization will happen on this path.

I think this is what we have in the current code.


Thanks,
Zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
