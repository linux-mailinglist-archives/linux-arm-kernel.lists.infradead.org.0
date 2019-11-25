Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E1E10913D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 16:48:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v1nOzrni2ajm9HVzRutT0LLEsUQdUG/SALCH1zuioBA=; b=DLNsvkOdiJ1sPTlLKJrKe31f2
	zqYJcoil6b94odkdXGmrMeEtIlwAwVNgyImvNl5JVzoqq4i3px05k3Egu+JH6oPwI+XeBdOrVYoDZ
	H21IS9Bax2yNUcyecQz7Cnx6Upw+BAYIegKACZea4SZdmCNbFKVoYv4DOClO3uEP92MYDkZgf3sKX
	tr4aWM2j/gAWhjpybbVfdMtvsAeFuN9UuCHXssl4O+a/8TYoMt8BjROi3nCa8gJF50X2NwR00bvnK
	+BnIT/MlKNFV2BnBY6ee0G2749kS7SbfpAA/JYV42qG37hEgGj9gwN7vYb446XcB0feZI2rLvZx26
	pIlX1rNDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZGak-00045Z-MG; Mon, 25 Nov 2019 15:47:58 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZGab-00045D-Mr
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 15:47:51 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iZGaS-00029Q-Ac; Mon, 25 Nov 2019 16:47:40 +0100
To: Jianyong Wu <jianyong.wu@arm.com>
Subject: Re: [RFC PATCH v8 3/8] ptp: Reorganize =?UTF-8?Q?ptp=5Fkvm=20modu?=
 =?UTF-8?Q?les=20to=20make=20it=20arch-independent=2E?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 25 Nov 2019 15:47:40 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191125104506.36850-4-jianyong.wu@arm.com>
References: <20191125104506.36850-1-jianyong.wu@arm.com>
 <20191125104506.36850-4-jianyong.wu@arm.com>
Message-ID: <a13a4f9554f36a46781308358fc63519@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: jianyong.wu@arm.com, netdev@vger.kernel.org,
 yangbo.lu@nxp.com, john.stultz@linaro.org, tglx@linutronix.de,
 pbonzini@redhat.com, sean.j.christopherson@intel.com, richardcochran@gmail.com,
 mark.rutland@arm.com, will@kernel.org, suzuki.poulose@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, steve.capper@arm.com,
 kaly.xin@arm.com, justin.he@arm.com, nd@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_074749_891743_E42BE16C 
X-CRM114-Status: GOOD (  15.23  )
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
Cc: mark.rutland@arm.com, justin.he@arm.com, kvm@vger.kernel.org,
 suzuki.poulose@arm.com, netdev@vger.kernel.org, richardcochran@gmail.com,
 steve.capper@arm.com, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, kaly.xin@arm.com, john.stultz@linaro.org,
 yangbo.lu@nxp.com, pbonzini@redhat.com, tglx@linutronix.de, nd@arm.com,
 will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-25 10:45, Jianyong Wu wrote:
> Currently, ptp_kvm modules implementation is only for x86 which 
> includs
> large part of arch-specific code.  This patch move all of those code
> into new arch related file in the same directory.
>
> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> ---
>  drivers/ptp/Makefile                        |  1 +
>  drivers/ptp/{ptp_kvm.c => ptp_kvm_common.c} | 77 +++++-------------
>  drivers/ptp/ptp_kvm_x86.c                   | 87 
> +++++++++++++++++++++
>  include/asm-generic/ptp_kvm.h               | 12 +++
>  4 files changed, 118 insertions(+), 59 deletions(-)
>  rename drivers/ptp/{ptp_kvm.c => ptp_kvm_common.c} (63%)
>  create mode 100644 drivers/ptp/ptp_kvm_x86.c
>  create mode 100644 include/asm-generic/ptp_kvm.h

[...]

> diff --git a/include/asm-generic/ptp_kvm.h 
> b/include/asm-generic/ptp_kvm.h
> new file mode 100644
> index 000000000000..e5dd386f6664
> --- /dev/null
> +++ b/include/asm-generic/ptp_kvm.h
> @@ -0,0 +1,12 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + *  Virtual PTP 1588 clock for use with KVM guests
> + *
> + *  Copyright (C) 2019 ARM Ltd.

I think you should live the original copyright assignment here.
This really isn't anything new.

> + *  All Rights Reserved
> + */
> +
> +int kvm_arch_ptp_init(void);
> +int kvm_arch_ptp_get_clock(struct timespec64 *ts);
> +int kvm_arch_ptp_get_crosststamp(unsigned long *cycle,
> +		struct timespec64 *tspec, void *cs);

Why is this include file in asm-generic? This isn't a kernel-wide API.

I think it should be sitting in drivers/ptp, as it is only shared 
between
the generic and arch-specific stuff.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
