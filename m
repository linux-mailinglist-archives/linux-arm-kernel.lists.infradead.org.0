Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AB6129E03
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 07:15:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8mFmB8p+2UUYtAS53B5wUFb+JFEvLsvAZZJoIolmRho=; b=MgsIkYBb/kuBnOLcICRUBst//
	7M5mdeilLP52NovjoI4oUlBCRVQb6evPZigwyRvqD3LFScfgROqDzZB3GEwm5qVYBTd391Iweof2G
	c26DYqXgGp9QWcUvquebPeFyqd0cZFbLpN9EOzek2EHEwCZfYzw9Lar05+jA3gKgu6qOli0Jw1sIl
	6QX7rn1zYD/WaPW9Hh3SMNkSJkzzSkUBRG+6/bZ8nPRFPiBrjh0/tE8yw/pxOGkN5w40c5kZSqBds
	GfSmuKNniyypZJQgz5Fnyzd6wXkrbzbqz0H6S7EKzUc3Vk3V7Ndv3a1FYJTh9FfRyGkNg/Uq8K2rR
	Z+f9SKoLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijdTM-0005Ju-5T; Tue, 24 Dec 2019 06:15:12 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijdT3-0005JM-Qt
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 06:14:57 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id A384698883F1BF9557CF;
 Tue, 24 Dec 2019 14:14:42 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Tue, 24 Dec 2019
 14:14:35 +0800
Subject: Re: [PATCH] KVM: arm/arm64: vgic: Handle GICR_PENDBASER.PTZ filed as
 RAZ
To: Auger Eric <eric.auger@redhat.com>, Marc Zyngier <maz@kernel.org>
References: <20191220111833.1422-1-yuzenghui@huawei.com>
 <3a729559-d0eb-e042-d6bd-b69bacb0dd23@huawei.com>
 <c084aa29c029f97cdfb1b5dc9e6b29ac@www.loen.fr>
 <1225d839-3cf7-d513-778e-698e12e94875@huawei.com>
 <12a1e25b-617d-6b04-6a5a-4c67a39565a5@redhat.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <5df2ebf7-f1e0-5d55-cdae-15b2fd1675d6@huawei.com>
Date: Tue, 24 Dec 2019 14:14:33 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <12a1e25b-617d-6b04-6a5a-4c67a39565a5@redhat.com>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_221454_062969_92015508 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: andre.przywara@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 wanghaibin.wang@huawei.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/12/24 12:45, Auger Eric wrote:
> Hi Zenghui,
> 
> On 12/24/19 3:52 AM, Zenghui Yu wrote:
>> Hi Marc, Eric,
>>
>> On 2019/12/23 22:07, Marc Zyngier wrote:
>>> Hi Zenghui,
>>>
>>> On 2019-12-23 13:43, Zenghui Yu wrote:
>>>> I noticed there is no userspace access callbacks for GICR_PENDBASER,
>>>> so this patch will make the PTZ field also 'Read As Zero' by userspace.
>>>> Should we consider adding a uaccess_read callback for GICR_PENDBASER
>>>> which just returns the unchanged vgic_cpu->pendbaser to userspace?
>>>> (Though this is really not a big deal. We now always emulate the PTZ
>>>> field to guest as RAZ. And 'vgic_cpu->pendbaser & GICR_PENDBASER_PTZ'
>>>> only indicates whether KVM will optimize the LPI enabling process,
>>>> where Read As Zero indicates never optimize..)
>>>
>>> I don't think adding a userspace accessor would help much. All this
>>> bit tells userspace is that the guest has programmed a zero filled
>>> table. On restore, we'd avoid a rescan of the table if there was
>>> no LPI mapped.
>>
>> Yes, I agree.
>>
>>> And thinking of it, this fixes a bug for non-Linux guests: If you write
>>> PTZ=1, we never clear it. Which means that if userspace saves and
>>> restores
>>> PENDBASER with PTZ set, we'll never restore the pending bits, which is
>>> pretty bad (see vgic_enable_lpis()).
>>
>> But I'm afraid I can't follow this point. After reading the code (with
>> Qemu) a bit further, the Redistributors are restored before the ITS.
> 
> This is also part of the kernel documentation:
> Documentation/virt/kvm/devices/arm-vgic-its.txt (ITS restore sequence)

Yeah, I see. Thanks for the pointer, Eric!


Zenghui

>   So
>> there should be _no_ LPI has been mapped when we're restoring GICR_CTLR
>> and enabling LPI, which says we will not scan the whole pending table
>> and restore pending by vgic_enable_lpis()/its_sync_lpi_pending_table(),
>> regardless of what the PTZ is.
>>
>> Instead, vgic_its_restore_ite()/vgic_v3_lpi_sync_pending_status() is
>> where we actually read the guest RAM and restore the LPI pending state.
> yes the pending state is restored from
> vgic_its_restore_ite/vgic_add_lpi/vgic_v3_lpi_sync_pending_status and
> this path ignores the PTZ.
> 
> Thanks
> 
> Eric
>> Which means we will still do the right thing even for non-Linux guests.
>> Not sure if I've got things correctly here.
>>
>> In the end, let's keep the patch as it is.
>>
>>>
>>> This patch on its own fixes more than one bug!
>>>
>>
>> If so, just by luck ;-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
