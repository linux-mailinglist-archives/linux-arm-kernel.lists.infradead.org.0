Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FA8D7D9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8taF24Nfzi677rbKz54y++mI8rrgiIWeZKWQKaZoeog=; b=Gq9UdRNQeQW1WI
	6Le6mjJSbxm27L7zB7uNsO1/qOnGXrpl9vG2vRaM4BmwNWTd2yF3YyYqDhlXswhh8TPA9n/Au0a4F
	eNe+yAlXzYlIuIQNVifESxW1smMI3yKb35SgWLZgb5zKaaWsjCdDDghwtKJZPesGo4Tj5a29qmAgC
	mWrG4Q+xpyfEcMgPjXZYw18Wu8+QRlyUYhVygC4j19G2lioXkB2edc96Hzc4MMWhcXgJv16XsSfg4
	bcL379tEP/WchM5UipIjCyRo1w94AVzBztwuNEJ9YMxSnN1GI6af/PN6FqabqXwM/eOUDVZFUXNQq
	FgmKPEsM/CUdovU8Ijmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQZR-00021w-J2; Tue, 15 Oct 2019 17:25:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQZ8-0001zD-U7
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:25:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 53CC0337;
 Tue, 15 Oct 2019 10:24:58 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 000F23F68E;
 Tue, 15 Oct 2019 10:24:55 -0700 (PDT)
Date: Tue, 15 Oct 2019 18:24:53 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Jianyong Wu <jianyong.wu@arm.com>
Subject: Re: [PATCH v5 1/6] psci: Export psci_ops.conduit symbol as modules
 will use it.
Message-ID: <20191015172453.GE24604@lakrids.cambridge.arm.com>
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-2-jianyong.wu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015104822.13890-2-jianyong.wu@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_102459_011184_C69BC47C 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: maz@kernel.org, justin.he@arm.com, kvm@vger.kernel.org,
 suzuki.poulose@arm.com, netdev@vger.kernel.org, richardcochran@gmail.com,
 Steve.Capper@arm.com, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, Kaly.Xin@arm.com, john.stultz@linaro.org,
 yangbo.lu@nxp.com, pbonzini@redhat.com, tglx@linutronix.de, nd@arm.com,
 will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 06:48:17PM +0800, Jianyong Wu wrote:
> If arm_smccc_1_1_invoke used in modules, psci_ops.conduit should
> be export.
> 
> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>

I have a patch queued [1] in the arm64 tree which adds
arm_smccc_1_1_get_conduit() for this purpose.

Please use that, adding an EXPORT_SYMBOL() if necessary.

Thanks,
Mark.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/commit/?h=for-next/smccc-conduit-cleanup&id=6b7fe77c334ae59fed9500140e08f4f896b36871

> ---
>  drivers/firmware/psci/psci.c | 6 ++++++
>  include/linux/arm-smccc.h    | 2 +-
>  include/linux/psci.h         | 1 +
>  3 files changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
> index f82ccd39a913..35c4eaab1451 100644
> --- a/drivers/firmware/psci/psci.c
> +++ b/drivers/firmware/psci/psci.c
> @@ -212,6 +212,12 @@ static unsigned long psci_migrate_info_up_cpu(void)
>  			      0, 0, 0);
>  }
>  
> +enum psci_conduit psci_get_conduit(void)
> +{
> +	return psci_ops.conduit;
> +}
> +EXPORT_SYMBOL(psci_get_conduit);
> +
>  static void set_conduit(enum psci_conduit conduit)
>  {
>  	switch (conduit) {
> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> index 552cbd49abe8..a6e4d3e3d10a 100644
> --- a/include/linux/arm-smccc.h
> +++ b/include/linux/arm-smccc.h
> @@ -357,7 +357,7 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
>   * The return value also provides the conduit that was used.
>   */
>  #define arm_smccc_1_1_invoke(...) ({					\
> -		int method = psci_ops.conduit;				\
> +		int method = psci_get_conduit();			\
>  		switch (method) {					\
>  		case PSCI_CONDUIT_HVC:					\
>  			arm_smccc_1_1_hvc(__VA_ARGS__);			\
> diff --git a/include/linux/psci.h b/include/linux/psci.h
> index a8a15613c157..e5cedc986049 100644
> --- a/include/linux/psci.h
> +++ b/include/linux/psci.h
> @@ -42,6 +42,7 @@ struct psci_operations {
>  	enum smccc_version smccc_version;
>  };
>  
> +extern enum psci_conduit psci_get_conduit(void);
>  extern struct psci_operations psci_ops;
>  
>  #if defined(CONFIG_ARM_PSCI_FW)
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
