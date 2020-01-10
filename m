Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 059D21370D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:12:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yRwktvGqAfWFsviu2KLipvLo+ncZ5fyccm0jmSsE+sE=; b=HuCyBZaZKVDLUg
	BmDCwbohYLRoqi56QmAQuOt0f6qhzxwx3os3FFockmH2H6G/vuDfFGKfyjIGttebjKYHMYdrHmh3r
	DVLveWk2n8kCiT96qOZQ1jwt7kckkVqnTqtkZ0ANhqMEtnE58/ziXbERhZYCRvrSjZm7LMaOfaM1T
	yOhxo0ybe+PTNs79UMldpMMI/q8GFp2dApXKNUad6aRFVoYEc5BW2AsrgZD4NXpPg6zqvhH6M6Fs0
	4jyXC7aM+KboKRSDpsR3Oy49AuDuBQmsUHjKxBUTL/HQ8b/fbbC4uhz4g5Z+vJ9I9IsYLEEcGz0Z2
	Tiyk7t3IOWGMS5O8hYdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvxx-0000xP-8C; Fri, 10 Jan 2020 15:12:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvxk-0000wH-28
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:12:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 65720DA7;
 Fri, 10 Jan 2020 07:12:35 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 16A6E3F6C4; Fri, 10 Jan 2020 07:12:33 -0800 (PST)
Date: Fri, 10 Jan 2020 15:12:32 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 5/7] arm64: ptrace: nofpsimd: Fail FP/SIMD regset
 operations
Message-ID: <20200110151231.GG8786@arrakis.emea.arm.com>
References: <20191217183402.2259904-1-suzuki.poulose@arm.com>
 <20191217183402.2259904-6-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217183402.2259904-6-suzuki.poulose@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_071236_143038_E5443D63 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 christoffer.dall@arm.com, will@kernel.org, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 06:34:00PM +0000, Suzuki K Poulose wrote:
> diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
> index 6771c399d40c..0135b944b8db 100644
> --- a/arch/arm64/kernel/ptrace.c
> +++ b/arch/arm64/kernel/ptrace.c
> @@ -637,6 +637,9 @@ static int fpr_get(struct task_struct *target, const struct user_regset *regset,
>  		   unsigned int pos, unsigned int count,
>  		   void *kbuf, void __user *ubuf)
>  {
> +	if (!system_supports_fpsimd())
> +		return -EINVAL;
> +
>  	if (target == current)
>  		fpsimd_preserve_current_state();

I checked the coredump code (fill_thread_core_info) and works correctly
if we return -EINVAL here. But for completeness, we could add an
fpr_active() callback to aarch{32,64}_regsets (x86 does the same).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
