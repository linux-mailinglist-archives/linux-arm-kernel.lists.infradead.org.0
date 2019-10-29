Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5B7E8890
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 13:45:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4/hsTB4hl4n/GBHp3zwmE073hYmLjKX39oOzQYIJ6QY=; b=CRkqJBeG92xjN5nhKcoSH6SN0
	g2ZhmLPmS7NzL5KSirnVFy6Bjl2m5k3/kCP6zn6RrnEBjraPuPFbhiDXwSQ7zf18uKu0GEsHvQEs0
	pHjj9aybaroPXcq6Ij9bSAApC+fJbMEdnsHI2+i3OD/FRnBtkcU/MXqQtPBe96YZzvFJp14kdrIbi
	E4dwGTh/kkL21AdzTVuxpBYi9pkeAuQZtwV+8v6FEewa5NPhbgC+m5mfjhqV1oLtBrqmaUEynHfTE
	CkA/rQn4w6nUmQWxuT+sFgKeOwOpz372Ipip8zxOPi4GheSxwqByiheC9on+Y4BdaN8qSt/zhtO9P
	ZGwocI2ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQsb-00069R-Ah; Tue, 29 Oct 2019 12:45:45 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQsL-00062t-P1
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 12:45:31 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 5FDA78BCD0989B2D6C0A;
 Tue, 29 Oct 2019 20:45:26 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Tue, 29 Oct 2019
 20:45:17 +0800
Subject: Re: [PATCH 2/3] KVM: arm/arm64: vgic: Fix some comments typo
To: Marc Zyngier <maz@kernel.org>
References: <20191029071919.177-1-yuzenghui@huawei.com>
 <20191029071919.177-3-yuzenghui@huawei.com> <86o8xzylb1.wl-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <7055e836-cdad-1cfa-66f3-fba88dad5f5b@huawei.com>
Date: Tue, 29 Oct 2019 20:45:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <86o8xzylb1.wl-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_054530_387803_850A23D5 
X-CRM114-Status: GOOD (  16.19  )
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/10/29 17:04, Marc Zyngier wrote:
> Hi Zenghui,
> 
> On Tue, 29 Oct 2019 07:19:18 +0000,
> Zenghui Yu <yuzenghui@huawei.com> wrote:
>>
>> s/vgic_its_save_pending_tables/vgic_v3_save_pending_tables/
>> s/then/the/
>>
>> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
>> ---
>>   include/kvm/arm_vgic.h      | 2 +-
>>   virt/kvm/arm/vgic/vgic-v3.c | 2 +-
>>   virt/kvm/arm/vgic/vgic-v4.c | 2 +-
>>   3 files changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
>> index 0fb240ec0a2a..01f8b3739a09 100644
>> --- a/include/kvm/arm_vgic.h
>> +++ b/include/kvm/arm_vgic.h
>> @@ -240,7 +240,7 @@ struct vgic_dist {
>>   	 * Contains the attributes and gpa of the LPI configuration table.
>>   	 * Since we report GICR_TYPER.CommonLPIAff as 0b00, we can share
>>   	 * one address across all redistributors.
>> -	 * GICv3 spec: 6.1.2 "LPI Configuration tables"
>> +	 * GICv3 spec "LPI Configuration tables"

Ah, this part shouldn't have been in this patch, as the description in
the commit message.
(And I remember the reason is just that, it it "6.1.1" in IHI 0069E but
"6.1.2" in some older versions.)

> 
> Why the change here? Pointing to the chapter in the spec is pretty
> helpful, given that it is 800 pages long (although it should mention
> what revision of the spec this refers to). For example, it should say
> something like "IHI 0069E 6.1.1 ...".

Yes, I agreed with you.  Marc, please feel free to drop this part,
or I can resend it with your suggestion.


Thanks,
Zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
