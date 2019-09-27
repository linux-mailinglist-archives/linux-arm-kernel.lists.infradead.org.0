Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B4EC035A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 12:23:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f2Wvk/g+re/CpGv0/Ka1AOm+cpy9KNcn1M4X5yglvmk=; b=NOOTlgcdoiZ3PG+pY5MZxL+oD
	i2FJNoPsuBRztRAZssl4XemovTJyqfshXsuHYpc+o7AQKC+qJBjlxLsBxZU2nOe2ggaAf7W2xDqsT
	HLXMQd5Sba71ysJ5HJoTf1rHvKVbbjdY2zYc77Dok9S5+3JqZchmc4v2n3/769yEjfyfonKHTb4d+
	fnci8tfZVI4yGTkLXTHHiLkjZB87/v3ZU0Pzkvyj+jh88VXe4DAX7jVqVu3QA57U/WYeaFMZ+LikE
	BgXGpWHFH9YD1TIF+tCmQwE4PFp1m73j1QJBT+3JzEiesxKBg/0G1DXjJ4FM4aEw8OvtRb0KYB1bp
	CfbIvI+DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDnP9-00077V-MU; Fri, 27 Sep 2019 10:23:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDnP3-00076o-0F
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 10:23:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB44528;
 Fri, 27 Sep 2019 03:23:07 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7D4163F534;
 Fri, 27 Sep 2019 03:23:05 -0700 (PDT)
Subject: Re: [RFC PATCH v4 2/5] ptp: Reorganize ptp_kvm modules to make it
 arch-independent.
To: Jianyong Wu <jianyong.wu@arm.com>, netdev@vger.kernel.org,
 yangbo.lu@nxp.com, john.stultz@linaro.org, tglx@linutronix.de,
 pbonzini@redhat.com, sean.j.christopherson@intel.com, maz@kernel.org,
 richardcochran@gmail.com, Mark.Rutland@arm.com, Will.Deacon@arm.com
References: <20190926114212.5322-1-jianyong.wu@arm.com>
 <20190926114212.5322-3-jianyong.wu@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <47ceb25c-c9ff-e284-43bf-6cac7e128a98@arm.com>
Date: Fri, 27 Sep 2019 11:23:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20190926114212.5322-3-jianyong.wu@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_032309_086476_D9BC035A 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: justin.he@arm.com, kvm@vger.kernel.org, Steve.Capper@arm.com,
 linux-kernel@vger.kernel.org, Kaly.Xin@arm.com, nd@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 26/09/2019 12:42, Jianyong Wu wrote:
> Currently, ptp_kvm modules implementation is only for x86 which includs
> large part of arch-specific code.  This patch move all of those code
> into new arch related file in the same directory.
> 
> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>

...

> +int kvm_arch_ptp_get_clock_fn(unsigned long *cycle, struct timespec64 *tspec,
> +			      struct clocksource **cs)


> diff --git a/include/asm-generic/ptp_kvm.h b/include/asm-generic/ptp_kvm.h
> new file mode 100644
> index 000000000000..208e842bfa64
> --- /dev/null
> +++ b/include/asm-generic/ptp_kvm.h

> +int kvm_arch_ptp_get_clock_fn(long *cycle,
> +		struct timespec64 *tspec, void *cs);
> 

Conflicting types for kvm_arch_ptp_get_clock_fn() ?

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
