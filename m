Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 186CDC8981
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 15:20:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1GWxhxDYEXc9dQTQm92gpCLSNqBwupeKmxOYMdtetM=; b=mKI3akIYDtegid
	FTERqynpVDtaTMfpmziBuxg76KMFNEq88n6M2Qbswd5XZLrOAPuMrGWtfly9GoJnNBWQEkb5RLLOu
	0tXiTjOLkuDZIM3W1oCkIx6DXVaKRcK6sqkOnTtpHOlLDBhBm3HyFdRLHNUoimKYMmT1kXP/k8CQ5
	irXRXe4fTTQdp+iHJV/9aUN5Zf9grP8j7HbOn5j3ZtsFuQoKUfkV4UAonElePUjqclxDf/9lG+Uib
	2l8iKxaXgb+Clu5Dx52gHIktwCuIZ8lOo3cIpcunoZwD41E2H3W2P+DZGEIyepIeIh/uAxq/aIYiL
	T3szswUHp4fvqxgHuivA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFeYW-0004we-RO; Wed, 02 Oct 2019 13:20:36 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFeYP-0004w0-ER
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 13:20:31 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iFeYL-00083Y-Qs; Wed, 02 Oct 2019 15:20:25 +0200
Date: Wed, 2 Oct 2019 14:20:24 +0100
From: Marc Zyngier <maz@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] arm64: errata: Update stale comment
Message-ID: <20191002142024.60c6bab8@why>
In-Reply-To: <20190923091229.14675-1-thierry.reding@gmail.com>
References: <20190923091229.14675-1-thierry.reding@gmail.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: thierry.reding@gmail.com, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_062029_632700_45B667BA 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 23 Sep 2019 11:12:29 +0200
Thierry Reding <thierry.reding@gmail.com> wrote:

> From: Thierry Reding <treding@nvidia.com>
> 
> Commit 73f381660959 ("arm64: Advertise mitigation of Spectre-v2, or lack
> thereof") renamed the caller of the install_bp_hardening_cb() function
> but forgot to update a comment, which can be confusing when trying to
> follow the code flow.
> 
> Fixes: 73f381660959 ("arm64: Advertise mitigation of Spectre-v2, or lack thereof")
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  arch/arm64/kernel/cpu_errata.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
> index 1e43ba5c79b7..f593f4cffc0d 100644
> --- a/arch/arm64/kernel/cpu_errata.c
> +++ b/arch/arm64/kernel/cpu_errata.c
> @@ -128,8 +128,8 @@ static void install_bp_hardening_cb(bp_hardening_cb_t fn,
>  	int cpu, slot = -1;
>  
>  	/*
> -	 * enable_smccc_arch_workaround_1() passes NULL for the hyp_vecs
> -	 * start/end if we're a guest. Skip the hyp-vectors work.
> +	 * detect_harden_bp_fw() passes NULL for the hyp_vecs start/end if
> +	 * we're a guest. Skip the hyp-vectors work.
>  	 */
>  	if (!hyp_vecs_start) {
>  		__this_cpu_write(bp_hardening_data.fn, fn);

Acked-by: Marc Zyngier <maz@kernel.org>

-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
