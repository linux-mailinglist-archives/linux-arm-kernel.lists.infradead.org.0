Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C700136FFC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 15:50:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=li/G7JYGJdAbqsxT4eKaqyeqWd29hHuTnUKtGixz/Ws=; b=g++t+x6yirnRzr
	agk8mubWiWVqNYXKUVxVyUZ7V5xKbpefP8WBDFvdC4FJlsAlzBoZhXRT7NisdKbSwDgBmeqfcKshB
	cPIaiavKCvc3AVQob2mml2wfR0uckVOFL4hCuN8lh8Td7V9ILd35oi1rbv98tWyTZ25JpsvColqyH
	+DZ0nLXLKu3tgJf53Ys3aL7EfVTgzCIFt9tCzcXCcmGOAns1igF507Oqexg2GhpuoTHrZvS0ATB9x
	5UCMFRFnxkJurBhtO5NTNNr0u8KZdr88liM54a8Rv5kUWNaoS/7Gi3LohXyVsxBCF3LNdFYyj4Ufj
	2N1oqZoUikx1IDh5yv0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvcb-000215-IQ; Fri, 10 Jan 2020 14:50:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvcG-0001td-Gs
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 14:50:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 383B6328;
 Fri, 10 Jan 2020 06:50:23 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 DE2443F6C4; Fri, 10 Jan 2020 06:50:21 -0800 (PST)
Date: Fri, 10 Jan 2020 14:50:19 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 1/7] arm64: Introduce system_capabilities_finalized()
 marker
Message-ID: <20200110145019.GD8786@arrakis.emea.arm.com>
References: <20191217183402.2259904-1-suzuki.poulose@arm.com>
 <20191217183402.2259904-2-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217183402.2259904-2-suzuki.poulose@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_065024_613988_07192E1E 
X-CRM114-Status: GOOD (  14.50  )
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

On Tue, Dec 17, 2019 at 06:33:56PM +0000, Suzuki K Poulose wrote:
> We finalize the system wide capabilities after the SMP CPUs
> are booted by the kernel. This is used as a marker for deciding
> various checks in the kernel. e.g, sanity check the hotplugged
> CPUs for missing mandatory features.
> 
> However there is no explicit helper available for this in the
> kernel. There is sys_caps_initialised, which is not exposed.
> The other closest one we have is the jump_label arm64_const_caps_ready
> which denotes that the capabilities are set and the capability checks
> could use the individual jump_labels for fast path. This is
> performed before setting the ELF Hwcaps, which must be checked
> against the new CPUs. We also perform some of the other initialization
> e.g, SVE setup, which is important for the use of FP/SIMD
> where SVE is supported. Normally userspace doesn't get to run
> before we finish this. However the in-kernel users may
> potentially start using the neon mode. So, we need to
> reject uses of neon mode before we are set. Instead of defining
> a new marker for the completion of SVE setup, we could simply
> reuse the arm64_const_caps_ready and enable it once we have
> finished all the setup. Also we could expose this to the
> various users as "system_capabilities_finalized()" to make
> it more meaningful than "const_caps_ready".
> 
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
