Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A76F7A0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 18:36:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CwOj9jfkSaB/e7HikAlYIgar8Wfm3koYOSweEjFtxA0=; b=IshyBoiuX4jnUnVE91t6mOWrb
	FByh0Dnq6rJiywUcm4bJDGeGrcQ9AEQzH3w4PldvDFi9mxjQXMezzpDtBUxoXbwbocaDKWInE27CW
	eH3AwkNmsBwjG38FGYX90Cch8xnlHqHwAaoEPQjoTHUlSEBbEzguFmFizoRZuHG9Qfuk2JhJ/j4C+
	MI2/V3P6pP0SbqZwmv1UlTSvLLC/W3XWezbm8gzTChThTCedbOGuQid5nXCOUdJuVQGPYiRwrcNQb
	Zur1J6l1zERNwtA4hlxYeC0frAN4tt7IYiJnhyYZ5Pd2+sYfXf3aP2HlihV1zOBLXuAbjMBR3fnz7
	hXrB7cYIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUDc5-0004B0-T6; Mon, 11 Nov 2019 17:36:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUDbx-0004Ab-SD
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 17:36:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC47D31B;
 Mon, 11 Nov 2019 09:36:20 -0800 (PST)
Received: from localhost.localdomain (unknown [10.1.196.67])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3ECD93F534;
 Mon, 11 Nov 2019 09:36:20 -0800 (PST)
Subject: Re: [PATCH v8 3/4] arm64: Don't use KPTI where we have E0PD
To: Mark Brown <broonie@kernel.org>
References: <20191108170116.32105-1-broonie@kernel.org>
 <20191108170116.32105-4-broonie@kernel.org>
 <5d846391-8d16-4b85-a83f-b48e636e2834@arm.com>
 <20191111163630.GB4264@sirena.co.uk>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <c5c94d94-d3f0-4444-3a1e-15bfaf912c72@arm.com>
Date: Mon, 11 Nov 2019 17:36:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191111163630.GB4264@sirena.co.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_093622_019706_67F1F789 
X-CRM114-Status: GOOD (  17.19  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/11/2019 16:36, Mark Brown wrote:
> On Mon, Nov 11, 2019 at 02:36:34PM +0000, Suzuki K Poulose wrote:
>> On 08/11/2019 17:01, Mark Brown wrote:
> 
>>> +	/*
>>> +	 * E0PD does a similar job to KPTI so can be used instead
>>> +	 * where available. This will only run before the cpufeature
> 
>> s/This will only run/This will run/ ?
> 
> Both with and without patch 4 we only check this when cpucaps aren't
> ready - with just this patch this is done in arm64_kernel_use_ng_mappings()

I feel the statement

"This will only run before the cpufeature code has usefully run and we
eventually check on all CPUs so we can and must check locally."

is confusing and I don't see how it implies :

"the code is run early enough in the boot *and* also from the cpufeature
framework."

It would be good to rephrase it, if that is not what you mean.

> where it has a check for caps being ready prior to checking if KASLR
> requirs KPTI, or otherwise the checks are from the cpufeature code while
> it's running.  With patch 4 it's only called from the cpufeature code or
> from the early init check.

It may be a good idea to reword it.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
