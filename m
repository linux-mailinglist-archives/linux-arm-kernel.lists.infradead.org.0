Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C54A334E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 18:25:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bAh6ILRpnB2jUUSHvSc4IfEN1OST4ebpS2+82a8FEcc=; b=nCwO3IxVlwrDiC
	ZSruLQJY6ZsQbeYdrp5AlyIDyVZ9JZcUQ/zAYhFHlD+WolvItYNPaqGiGigBhIDqtDYAKWZyHzLwq
	jijVtQQ5izt9bHkhWomEpbnGCZKm/OWO1IK4FHaQCv2YJPplpBAHs9PQzPJxf62ne0YrL5Tbnz/Xz
	WMWXMxiLUSBeC9EH1m3bc2WYTeElinmY/TnBedKI7/SS1cfXAFwPVhkmgkwa1AXumpxBrx6VILt0N
	trseWkoE8oi/hCFIYKyrkCOVGUpYK7du2BvOMrM+oDPUAnvm2PVX+gtQKnouXFoEVd68K7Go9TkI0
	wH22ntEp5AwOYFBrNW9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXpmM-0004m1-Sd; Mon, 03 Jun 2019 16:25:46 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXpmG-0004lM-07
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 16:25:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 54CBA80D;
 Mon,  3 Jun 2019 09:25:39 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 3D64E3F5AF; Mon,  3 Jun 2019 09:25:37 -0700 (PDT)
Date: Mon, 3 Jun 2019 17:25:34 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [PATCH v5 3/3] arm64/fpsimd: Don't disable softirq when touching
 FPSIMD/SVE state
Message-ID: <20190603162534.GF63283@arrakis.emea.arm.com>
References: <20190521172139.21277-1-julien.grall@arm.com>
 <20190521172139.21277-4-julien.grall@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521172139.21277-4-julien.grall@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_092540_045168_87F7E776 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: ard.biesheuvel@linaro.org, julien.thierry@arm.com, marc.zyngier@arm.com,
 Dave.Martin@arm.com, suzuki.poulose@arm.com, will.deacon@arm.com,
 christoffer.dall@arm.com, linux-kernel@vger.kernel.org, james.morse@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 06:21:39PM +0100, Julien Grall wrote:
> Since a softirq is supposed to check may_use_simd() anyway before
> attempting to use FPSIMD/SVE, there is limited reason to keep softirq
> disabled when touching the FPSIMD/SVE context. Instead, we can simply
> disable preemption and mark the FPSIMD/SVE context as in use by setting
> CPU's fpsimd_context_busy flag.
[...]
> +static void get_cpu_fpsimd_context(void)
> +{
> +	preempt_disable();
> +	__get_cpu_fpsimd_context();
> +}

Is there anything that prevents a softirq being invoked between
preempt_disable() and __get_cpu_fpsimd_context()?

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
