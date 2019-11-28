Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1CB10C587
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 09:57:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bUehQYmv2m2V8KM4NyHo9tgp5S847mtUNNubUHbnIPM=; b=PisHhOxweShpXd
	LACjMg8hpIDdQmd5FTpCjwuNcNw189lNpVl0T/+woHK9CTwpBnj8/ON7fUmT1klulVSn1O+hZCHeW
	L84Yi3UK+4MGviAHhY+PwbfgAfWKPBiJasQdRB9VQlMihuUCw6ZGqm0YUwAR4bK91Pgu97wqKxziR
	BCByXDJDkQbBIx1bSkfBMA24CKJh6seAHbBMafk1rI1795Eif4H84U+6aLhF8fPD2RQgvc0ak0l6J
	B8m5ff7LkMW6d4xphH+uZG54FtBrQJ4ZqmAL0NsrVt51jg/1wNrOsOkcukNgxYp3x45bOE/RMR/DM
	k/CGNlqyDDGIApaDwIuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaFbw-00067A-RB; Thu, 28 Nov 2019 08:57:16 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaFbn-000666-W8
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 08:57:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574931426;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UTqyxfqplr5cCVGYbvk1+6dr+xn0FSeXRHiQCzbM5Do=;
 b=gLy9OlMfaMj5GVvF5/GIc3JFmn9VlDnDDzCGMETRVFHDBgwHwyw+NDQgXrVB2QWM5QZwHV
 kwqhyYHvVmQ9b08JPAA44jEpVJ0xLLJUjNyj/YTN+EZ9qHIlNOT8i+sTQj2fjeqxXRLBvh
 ApAYcVboUsuv3v5B+RgsboaMkeruG68=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-223-tdG362LsNXq1vxkm-wtRyA-1; Thu, 28 Nov 2019 03:57:04 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5381018B9FC1;
 Thu, 28 Nov 2019 08:57:02 +0000 (UTC)
Received: from [10.36.116.37] (ovpn-116-37.ams2.redhat.com [10.36.116.37])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B57B600C8;
 Thu, 28 Nov 2019 08:56:56 +0000 (UTC)
Subject: Re: [PATCH] KVM: arm64: eliminate unnecessary var err and jump label
 in set_core_reg()
To: linmiaohe <linmiaohe@huawei.com>, maz@kernel.org, pbonzini@redhat.com,
 rkrcmar@redhat.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, christoffer.dall@arm.com, catalin.marinas@arm.com,
 gregkh@linuxfoundation.org, will@kernel.org, andre.przywara@arm.com,
 tglx@linutronix.de
References: <1574910598-14468-1-git-send-email-linmiaohe@huawei.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <7210b73f-66a0-e276-74b4-83d011b57d21@redhat.com>
Date: Thu, 28 Nov 2019 09:56:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <1574910598-14468-1-git-send-email-linmiaohe@huawei.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: tdG362LsNXq1vxkm-wtRyA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_005708_110694_32216BDA 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 11/28/19 4:09 AM, linmiaohe wrote:
> From: Miaohe Lin <linmiaohe@huawei.com>
> 
> The var err and jump label out isn't really needed in
> set_core_reg(). Clean them up.
> Signed-off-by: Miaohe Lin <linmiaohe@huawei.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric

> ---
>  arch/arm64/kvm/guest.c | 13 ++++---------
>  1 file changed, 4 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
> index 3b836c91609e..88eb6e5399ed 100644
> --- a/arch/arm64/kvm/guest.c
> +++ b/arch/arm64/kvm/guest.c
> @@ -159,7 +159,6 @@ static int set_core_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
>  	__uint128_t tmp;
>  	void *valp = &tmp;
>  	u64 off;
> -	int err = 0;
>  
>  	/* Our ID is an index into the kvm_regs struct. */
>  	off = core_reg_offset_from_id(reg->id);
> @@ -173,10 +172,8 @@ static int set_core_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
>  	if (KVM_REG_SIZE(reg->id) > sizeof(tmp))
>  		return -EINVAL;
>  
> -	if (copy_from_user(valp, uaddr, KVM_REG_SIZE(reg->id))) {
> -		err = -EFAULT;
> -		goto out;
> -	}
> +	if (copy_from_user(valp, uaddr, KVM_REG_SIZE(reg->id)))
> +		return -EFAULT;
>  
>  	if (off == KVM_REG_ARM_CORE_REG(regs.pstate)) {
>  		u64 mode = (*(u64 *)valp) & PSR_AA32_MODE_MASK;
> @@ -200,14 +197,12 @@ static int set_core_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
>  				return -EINVAL;
>  			break;
>  		default:
> -			err = -EINVAL;
> -			goto out;
> +			return -EINVAL;
>  		}
>  	}
>  
>  	memcpy((u32 *)regs + off, valp, KVM_REG_SIZE(reg->id));
> -out:
> -	return err;
> +	return 0;
>  }
>  
>  #define vq_word(vq) (((vq) - SVE_VQ_MIN) / 64)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
