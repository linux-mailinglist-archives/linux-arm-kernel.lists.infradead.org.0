Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C39D2720
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 12:25:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NGd4k7Wu5hKmx4NI3x6nfGBQOuQ1wwrfpTuls+1u4jQ=; b=PkO3Zkt/loGmPhptEli95EbXl
	gYEqaHvVcIzfjG65vcC9ABwmR0CSgyiZ+Jz0zhVB+i6CZRdlwH2rtkIFE0RaPvkv89rPCOz+uELZ3
	aphZxIadPJRY/YV7iK2F1UphjLUm6eGh2cySIqPvvwxALnqD2wPm/626YeKlNZgQbyZDTuS1+ldl5
	cvyEVTmk/NQVTnx249hYhTnFknpyLFTTW/2plxOH+EVgrguMNxgN1SgtLbOqAKe3esvjfqlUNZg1f
	ImmPUQmvmPOlxGozSecWF4F1jw1+2tZya8aWHCLe1Xt9AkqAz0bmj6kPZ2gocYQy2GZgnl7Dp3MbM
	Uo3bZH+aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIVdF-0004Kh-PT; Thu, 10 Oct 2019 10:25:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIVcy-00048K-Am
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 10:25:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CD1D128;
 Thu, 10 Oct 2019 03:24:56 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4175B3F68E;
 Thu, 10 Oct 2019 03:24:56 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] arm64: Don't use KPTI where we have E0PD
To: Mark Brown <broonie@kernel.org>
References: <20190814183103.33707-1-broonie@kernel.org>
 <20190814183103.33707-3-broonie@kernel.org>
 <20190815163541.yngqvjmehpuf74ye@willie-the-truck>
 <20190816102424.GA28874@arrakis.emea.arm.com>
 <20190816121005.GB4039@sirena.co.uk>
 <6834da7b-553c-2ad3-9b05-25ca982252e9@arm.com>
 <20191009175205.GN2036@sirena.org.uk>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <2d53ed87-34f3-33e1-5501-77895662c47a@arm.com>
Date: Thu, 10 Oct 2019 11:24:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191009175205.GN2036@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_032500_416898_63F9F004 
X-CRM114-Status: GOOD (  19.00  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark

On 09/10/2019 18:52, Mark Brown wrote:
> On Tue, Sep 24, 2019 at 10:13:18AM +0100, Suzuki K Poulose wrote:
>> On 16/08/2019 13:10, Mark Brown wrote:
> 
>>> We definitely need some variable I think, and I think you're right that
>>> making the decision on the boot CPU would simplify things a lot.  The
> 
>> relocating the kernel. So, we may be able to perform "raw cpuid check" on
>> the boot CPU with MMU turned on, before we re-write the pagetables for KASLR
>> displacement and nG if that is needed (by maybe updating SWWAPPER_MMU_FLAGS) for
>> the boot CPU and store this information somewhere. Thus we may be able to
>> avoid another re-write of the pagetables after we have booted the secondaries.
> 
> The boot CPU is straightforward, there is only an issue on the
> secondaries where IIRC the rewrite code needs some updates as we
> get left with non-global mappings lying around.
> 
>> Discussing this with Catalin, he suggests to use a variable for the status
>> of "nG" flag for PTE/PMD_MAYBE_NG, to avoid calling the helper function
>> all the time. By using the per-CPU check we can make sure the flag is uptodate.
> 
> That was the discussion about the variable above.  We need one
> for non-optimization reasons anyway since we can't rely on
> checking the state on the current CPU.
> 
>> Also, we can continue to fail the hotplugged CPUs if we detect that the
>> pagetables are Global and the new CPU requires nG (for heterogeneous
>> systems).
> 
> There's no continuing to reject those CPUs unfortunately, we
> don't reject anything currently.  Any such systems would

In fact we do reject the hotplugged CPUs, after we have finalised
the capabilities for KPTI. So, I don't see how the behavior is different.

Cheers
Suzuki


> experience a regression when moving to a kernel where E0PD is
> enabled which doesn't seem ideal.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
