Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03582D2F7B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 19:21:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltoZag8AGubSR+3UUyuTcT1xVFrYyonlB+Mitpee3fU=; b=bcX7Z+hu0wsJLp
	VK8iVUjkTgarokoeNUNGokgnoZil41wsrQVHzG4Eabn78OVM7H1HERD9LtoZRy+a3PdUPYaJlUe6n
	wWw8YReB5XftHQQ5STLHaywM3C/qxhKYW4s9UitvtYDQHKAm79q1RWPKci5HzqaDpksoiGgTkpbY3
	WZIPqUg1QoqnUDJaKJJ3Cj+eqY084DCHbzxvia1DibUmxd37FvcjtV8QwPiYNhcIUuzTmmThxdJXK
	k2eU78CHlaJXkhAAxM5+F88G3cyh6mQvw6G9aDyrYegzbi4wcM4WfHUyGzQEthgQMSVMA13ARpRQE
	XNLPyVZdcz57jbmaOhzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIc7i-00024R-0C; Thu, 10 Oct 2019 17:21:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIc7a-00023f-IJ
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 17:21:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E859828;
 Thu, 10 Oct 2019 10:21:01 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 AF9F93F71A; Thu, 10 Oct 2019 10:21:00 -0700 (PDT)
Date: Thu, 10 Oct 2019 18:20:58 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Ionela Voinescu <ionela.voinescu@arm.com>
Subject: Re: [PATCH 1/4] arm64: add support for the AMU extension v1
Message-ID: <20191010172058.GD40923@arrakis.emea.arm.com>
References: <20190917134228.5369-1-ionela.voinescu@arm.com>
 <20190917134228.5369-2-ionela.voinescu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917134228.5369-2-ionela.voinescu@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_102102_648571_6103D993 
X-CRM114-Status: GOOD (  13.71  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-doc@vger.kernel.org,
 maz@kernel.org, corbet@lwn.net, linux-kernel@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ionela,

On Tue, Sep 17, 2019 at 02:42:25PM +0100, Ionela Voinescu wrote:
> +#ifdef CONFIG_ARM64_AMU_EXTN
> +
> +/*
> + * This per cpu variable only signals that the CPU implementation supports the
> + * AMU but does not provide information regarding all the events that it
> + * supports.
> + * When this amu_feat per CPU variable is true, the user of this feature can
> + * only rely on the presence of the 4 fixed counters. But this does not
> + * guarantee that the counters are enabled or access to these counters is
> + * provided by code executed at higher exception levels.
> + */
> +DEFINE_PER_CPU(bool, amu_feat) = false;
> +
> +static void cpu_amu_enable(struct arm64_cpu_capabilities const *cap)
> +{
> +	if (has_cpuid_feature(cap, SCOPE_LOCAL_CPU)) {
> +		pr_info("detected CPU%d: Activity Monitors extension\n",
> +			smp_processor_id());
> +		this_cpu_write(amu_feat, true);
> +	}
> +}

Sorry if I missed anything as I just skimmed through this series. I
can't see the amu_feat used anywhere in these patches, so on its own it
doesn't make much sense.

I also can't see the advantage of allowing mismatched CPU
implementations for this feature. What's the intended use-case?

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
