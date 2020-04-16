Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9452E1AB558
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 03:18:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jHwPAGT26qNMfqYxi3m67PCtxO3LEvRDF+ir7H59Ulc=; b=sF8hHEDr5owItn1GQcGeAwfT7
	dSAdYcMYZBeF40d/LlZYo7xpAbGTd5FCy7plU40pqcm5AVxYCikgvm+FOfBpheNeve5FNxLfC43yA
	JeBRZzSEdgyJvfEFjKGwWTXqsOzs88GQT5etU93zh1ZBF32vC7prjF1T5AMEZCE2Oeftofb3+uy7h
	ak+TTJiU4WeftRVo862R9rHAdbBQhcDLzGulfwjE5M7uTKeIp82s9l7EykxhBr42AtoRVoXFNIQXC
	BK/k1X2856UDTNeagOKRLQcxFJvyWlOK2c6TtqncsbhLfXJR+T6ldUCb/JIJ7z5o5QPgMP2Cpywff
	o943KVneQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOtAZ-0005tE-5i; Thu, 16 Apr 2020 01:18:19 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOtAQ-0005sY-Id
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 01:18:12 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 35B945A0308DF2F16736;
 Thu, 16 Apr 2020 09:18:04 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.487.0; Thu, 16 Apr 2020
 09:17:55 +0800
Subject: Re: [PATCH 2/2] KVM: arm64: vgic-its: Fix memory leak on the error
 path of vgic_add_lpi()
To: <kvmarm@lists.cs.columbia.edu>
References: <20200414030349.625-1-yuzenghui@huawei.com>
 <20200414030349.625-3-yuzenghui@huawei.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <610f2195-f85d-4beb-b711-47d63bb393d0@huawei.com>
Date: Thu, 16 Apr 2020 09:17:54 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200414030349.625-3-yuzenghui@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_181810_777588_9C0F5CD6 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: suzuki.poulose@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 yezengruan@huawei.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, wanghaibin.wang@huawei.com,
 julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/4/14 11:03, Zenghui Yu wrote:
> If we're going to fail out the vgic_add_lpi(), let's make sure the
> allocated vgic_irq memory is also freed. Though it seems that both
> cases are unlikely to fail.
> 
> Cc: Zengruan Ye <yezengruan@huawei.com>
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
>   virt/kvm/arm/vgic/vgic-its.c | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
> index d53d34a33e35..3c3b6a0f2dce 100644
> --- a/virt/kvm/arm/vgic/vgic-its.c
> +++ b/virt/kvm/arm/vgic/vgic-its.c
> @@ -98,12 +98,16 @@ static struct vgic_irq *vgic_add_lpi(struct kvm *kvm, u32 intid,
>   	 * the respective config data from memory here upon mapping the LPI.
>   	 */
>   	ret = update_lpi_config(kvm, irq, NULL, false);
> -	if (ret)
> +	if (ret) {
> +		kfree(irq);
>   		return ERR_PTR(ret);
> +	}
>   
>   	ret = vgic_v3_lpi_sync_pending_status(kvm, irq);
> -	if (ret)
> +	if (ret) {
> +		kfree(irq);
>   		return ERR_PTR(ret);
> +	}

Looking at it again, I realized that this error handling is still not
complete. Maybe we should use a vgic_put_irq() instead so that we can
also properly delete the vgic_irq from lpi_list.

Marc, what do you think? Could you please help to fix it, or I can
resend it.


Thanks,
Zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
