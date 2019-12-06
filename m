Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E63114FE7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 12:43:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jm6425jw3yad8AD05e6YdwQ78Q9hYBt0RjrFlkqRl1I=; b=uA0IRQcTp/uDJLLNdag2+izr9
	cxzVwWU7Ao2/IlIxGlKR0G92JJqparmfMNALC7patsEKlEt4TNx7jfZEitU9i5a8nlAIIhv3cst8y
	6g4Kfb52I1hJuZ0kNBlZYQ2HCiedPQ8GBSV7YAm/r9qL1f226mmiE7W/PAtVSejaCOVdzL+y5SYa9
	lpQ0dsKpcUHpXU5JIdRko2rYxkM7RfZb9tYV5GvybnrvUyaBgdhAxrRaL7VN1XF3l0L7KlAc0ne8U
	4Jlk0NfrB5FmYbJ9QrM0hZ2hqCC31JIg4agKeaEEzQeN+4fCXKyerxbAAIIJcNl0j0EHOFVaUYWDl
	aVn4K986A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idC0y-0002Pa-Hh; Fri, 06 Dec 2019 11:43:16 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idC0r-0002PE-FX
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 11:43:10 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1idC0j-0001qF-ES; Fri, 06 Dec 2019 12:43:01 +0100
To: linmiaohe <linmiaohe@huawei.com>
Subject: Re: [PATCH] KVM: arm: get rid of unused arg in
 =?UTF-8?Q?cpu=5Finit=5Fhyp=5Fmode=28=29?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 06 Dec 2019 11:43:01 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1574320559-5662-1-git-send-email-linmiaohe@huawei.com>
References: <1574320559-5662-1-git-send-email-linmiaohe@huawei.com>
Message-ID: <2ca295ccc30b53b4d57098d9718f8aa3@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: linmiaohe@huawei.com, pbonzini@redhat.com,
 rkrcmar@redhat.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-kernel@vger.kernel.org,
 kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_034309_665686_6462ADFA 
X-CRM114-Status: GOOD (  11.16  )
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
Cc: kvm@vger.kernel.org, suzuki.poulose@arm.com, rkrcmar@redhat.com,
 linux-kernel@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, pbonzini@redhat.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-21 07:15, linmiaohe wrote:
> From: Miaohe Lin <linmiaohe@huawei.com>
>
> As arg dummy is not really needed, there's no need to pass
> NULL when calling cpu_init_hyp_mode(). So clean it up.
>
> Signed-off-by: Miaohe Lin <linmiaohe@huawei.com>
> ---
>  virt/kvm/arm/arm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index 86c6aa1cb58e..a5470f1b1a19 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -1315,7 +1315,7 @@ long kvm_arch_vm_ioctl(struct file *filp,
>  	}
>  }
>
> -static void cpu_init_hyp_mode(void *dummy)
> +static void cpu_init_hyp_mode(void)
>  {
>  	phys_addr_t pgd_ptr;
>  	unsigned long hyp_stack_ptr;
> @@ -1349,7 +1349,7 @@ static void cpu_hyp_reinit(void)
>  	if (is_kernel_in_hyp_mode())
>  		kvm_timer_init_vhe();
>  	else
> -		cpu_init_hyp_mode(NULL);
> +		cpu_init_hyp_mode();
>
>  	kvm_arm_init_debug();

Applied, thanks.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
