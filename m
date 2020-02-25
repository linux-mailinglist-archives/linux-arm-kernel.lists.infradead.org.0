Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A5516B78B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 03:07:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cpItAZ+tQXnktiWqXRzAGHlrmE/x3eWUhjYLsdaJGic=; b=JouAEZYEo2uJg4ZlTtFxBqLMH
	b9hDGmcE9ND5cmXPSglhrw4fs+ZSCKNQoGnWii4Fo9fqJ90/EGuSzxUpSCt/aP77q94iqXNBnH1AJ
	Jnub4LZ6qSEhGRTUq9L4VCKbZJT6Yv6ptngW19c4iCAUTZMFlTLwa9qpTpp0CkjO74mCBctXinve0
	f13jZsRUBzjRPG6DAR9e2X6L8dhjkvRvFz4FYBSZcsayrHo4dDpnKBgxVDzKDiqrVPxKZciPgAv+P
	IdyFOjyEOhsd6CG6m/kdT1ITBeI6BJh4TAZHSfYbsBVdoDenxwarriP248bx7904mqWBacoSSIN9s
	n2zz3ag2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Pcs-0004xj-9y; Tue, 25 Feb 2020 02:07:10 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Pch-0004wi-II
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 02:07:01 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 8828C5E565293787A2F6;
 Tue, 25 Feb 2020 10:06:48 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Tue, 25 Feb 2020
 10:06:27 +0800
Subject: Re: [PATCH] irqchip/gic-v3-its: Clear Valid before writing any bits
 else in VPENDBASER
To: Marc Zyngier <maz@kernel.org>
References: <20200224025029.92-1-yuzenghui@huawei.com>
 <bb7cdb29eda9cf160bcf85a58a9fc63d@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <6ce5c751-6d17-b9ee-4054-edad7de075bf@huawei.com>
Date: Tue, 25 Feb 2020 10:06:26 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <bb7cdb29eda9cf160bcf85a58a9fc63d@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_180659_764519_DD972FD2 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: wanghaibin.wang@huawei.com, Yanlei Jia <jiayanlei@huawei.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/2/25 7:47, Marc Zyngier wrote:
> Hi Zenghui,
> 
> On 2020-02-24 02:50, Zenghui Yu wrote:
>> The Valid bit must be cleared before changing anything else when writing
>> GICR_VPENDBASER to avoid the UNPREDICTABLE behavior. This is exactly what
>> we've done on 32bit arm, but not on arm64.
> 
> I'm not quite sure how you decide that Valid must be cleared before 
> changing
> anything else. The reason why we do it on 32bit is that we cannot update
> the full 64bit register at once, so we start by clearing Valid so that
> we can update the rest. arm64 doesn't require that.

The problem came out from discussions with our GIC engineers and what we
talked about at that time was IHI 0069E 9.11.36 - the description of the
Valid field:

"Writing a new value to any bit of GICR_VPENDBASER, other than
GICR_VPENDBASER.Valid, when GICR_VPENDBASER.Valid==1 is UNPREDICTABLE."

It looks like we should first clear the Valid and then write something
else. We might have some mis-understanding about this statement..

> 
> For the rest of discussion, let's ignore GICv4.1 32bit support (I'm
> pretty sure nobody cares about that).
> 
>> This works fine on GICv4 where we only clear Valid for a vPE deschedule.
>> With the introduction of GICv4.1, we might also need to talk something 
>> else
>> (e.g., PendingLast, Doorbell) to the redistributor when clearing the 
>> Valid.
>> Let's port the 32bit gicr_write_vpendbaser() to arm64 so that hardware 
>> can
>> do the right thing after descheduling the vPE.
> 
> The spec says that:
> 
> "For a write that writes GICR_VPENDBASER.Valid from 1 to 0, if
> GICR_VPENDBASER.PendingLast is written as 1 then 
> GICR_VPENDBASER.PendingLast
> takes an UNKNOWN value and GICR_VPENDBASER.Doorbell is treated as being 0."
> 
> and
> 
> "When GICR_VPENDBASER.Valid is written from 1 to 0, if there are 
> outstanding
> enabled pending interrupts GICR_VPENDBASER.Doorbell is treated as 0."
> 
> which indicate that PendingLast/Doorbell have to be written at the same 
> time
> as we clear Valid.

Yes. I obviously missed these two points when writing this patch.

> Can you point me to the bit of the v4.1 spec that makes
> this "clear Valid before doing anything else" requirement explicit?

No, nothing in v4.1 spec supports me :-(  The above has been forwarded
to Hisilicon and I will confirm these with them. It would be easy for
hardware to handle the PendingLast/DB when clearing Valid, I think.


Thank you,
Zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
