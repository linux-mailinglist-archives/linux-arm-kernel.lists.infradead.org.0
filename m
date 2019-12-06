Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B64D115012
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 12:53:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FlADoV4B/cvHL5g3QSYL8sFRhpFknbwdwd4sgY0OICE=; b=HpqVtoAvul7sNUyq6GsDpKKl5
	Z9MQ9oZhjHIKEcNuUtBSXgFimxMOf0K9dDn2KdyLGCpNrB8CvpgdEuhe0RbexubKYjvs/2GDPs0lD
	y1KclqD2Q1vJwQBSHctp+pyJYNRTSHdD94MOTWohhkJ7XC493ZEh39eRx+sqagFg5c2rAzco9G6KA
	l/L2RXEyqkkgyru1WmyQDEc/ooxIZX4ybSjgifiqOG5ggxn7ngCWzUe6swPoN+9OlU7HgFKP+FURM
	MYL05PNIWVbF+7GrJruO8gmD5R7doQrwwwBjMMZbyc4KnlUpKbyUmfgQqtt8X73+WRUSzHXCyJYnh
	M62rX9rNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idCBG-0007FU-9E; Fri, 06 Dec 2019 11:53:54 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idCB9-0007FB-8D
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 11:53:48 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1idCAz-00025P-1c; Fri, 06 Dec 2019 12:53:37 +0100
To: linmiaohe <linmiaohe@huawei.com>
Subject: Re: [PATCH] KVM: vgic: Fix potential double free dist->spis in
 =?UTF-8?Q?=5F=5Fkvm=5Fvgic=5Fdestroy=28=29?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 06 Dec 2019 11:53:36 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1574923128-19956-1-git-send-email-linmiaohe@huawei.com>
References: <1574923128-19956-1-git-send-email-linmiaohe@huawei.com>
Message-ID: <c786fec1d39fc8beae4bc4fe4269add9@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: linmiaohe@huawei.com, pbonzini@redhat.com,
 rkrcmar@redhat.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, christoffer.dall@arm.com, catalin.marinas@arm.com,
 eric.auger@redhat.com, gregkh@linuxfoundation.org, will@kernel.org,
 andre.przywara@arm.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 linux-kernel@vger.kernel.org, kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_035347_440219_E768EB8B 
X-CRM114-Status: GOOD (  12.22  )
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
Cc: kvm@vger.kernel.org, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 rkrcmar@redhat.com, christoffer.dall@arm.com, linux-kernel@vger.kernel.org,
 eric.auger@redhat.com, andre.przywara@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, gregkh@linuxfoundation.org,
 pbonzini@redhat.com, tglx@linutronix.de, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-28 06:38, linmiaohe wrote:
> From: Miaohe Lin <linmiaohe@huawei.com>
>
> In kvm_vgic_dist_init() called from kvm_vgic_map_resources(), if
> dist->vgic_model is invalid, dist->spis will be freed without set
> dist->spis = NULL. And in vgicv2 resources clean up path,
> __kvm_vgic_destroy() will be called to free allocated resources.
> And dist->spis will be freed again in clean up chain because we
> forget to set dist->spis = NULL in kvm_vgic_dist_init() failed
> path. So double free would happen.
>
> Signed-off-by: Miaohe Lin <linmiaohe@huawei.com>
> ---
>  virt/kvm/arm/vgic/vgic-init.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/virt/kvm/arm/vgic/vgic-init.c 
> b/virt/kvm/arm/vgic/vgic-init.c
> index 53e3969dfb52..c17c29beeb72 100644
> --- a/virt/kvm/arm/vgic/vgic-init.c
> +++ b/virt/kvm/arm/vgic/vgic-init.c
> @@ -171,6 +171,7 @@ static int kvm_vgic_dist_init(struct kvm *kvm,
> unsigned int nr_spis)
>  			break;
>  		default:
>  			kfree(dist->spis);
> +			dist->spis = NULL;
>  			return -EINVAL;
>  		}
>  	}

Applied, thanks.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
