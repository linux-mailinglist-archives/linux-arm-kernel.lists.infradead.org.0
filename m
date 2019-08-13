Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DDF8B4BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 12:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/geTHvmyy8KazeINfnFRTsG42yqCTnH1drmGQjcmBMQ=; b=tZkRIljO9cKDyRnYPnrdPlOjb
	6zpTWZczd2dHCXhrU9YesPcaKEytOCGuEzJaSPcUBPF7kaceIREt88QIqHk6EBpUEuazHcTh/N1D8
	U3xmWBDxR00HOv9SKDOrjf58CkuugG+JZNO7Cj8I6ezYiWyA8kTr431gzXXb0XvaEypBz6PGAv0A2
	GxFtgv1sOp0xj8OKn5nQ4SNY5halidEOQAWgRfCQaIgdZOwUyLiU+8ODMvLGyqDMqVJeSGqDLUotV
	VeU/I+QHqooJIe0FGsaoXCXQgYVC8yW+ygoxhAcVXkYg3DpvfIry/lvE1101dAxBIaThH0/OZ7QXY
	1yFU2oqkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxTbD-0004Qs-9F; Tue, 13 Aug 2019 10:00:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxTb0-0003cB-FP
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 10:00:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C4342337;
 Tue, 13 Aug 2019 03:00:00 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2E18F3F706;
 Tue, 13 Aug 2019 03:00:00 -0700 (PDT)
Subject: Re: [PATCH 1/2] arm64: Add initial support for E0PD
To: broonie@kernel.org, catalin.marinas@arm.com, will@kernel.org
References: <20190812125738.17388-1-broonie@kernel.org>
 <20190812125738.17388-2-broonie@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <0e5014d6-83b0-36df-ce6e-f491edffd4f9@arm.com>
Date: Tue, 13 Aug 2019 10:59:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190812125738.17388-2-broonie@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_030002_567258_B01B6E42 
X-CRM114-Status: GOOD (  17.05  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/08/2019 13:57, Mark Brown wrote:
> Kernel Page Table Isolation (KPTI) is used to mitigate some speculation
> based security issues by ensuring that the kernel is not mapped when
> userspace is running but this approach is expensive and is incompatible
> with SPE.  E0PD, introduced in the ARMv8.5 extensions, provides an
> alternative to this which ensures that accesses from userspace to the
> kernel's half of the memory map to always fault with constant time,
> preventing timing attacks without requiring constant unmapping and
> remapping or preventing legitimate accesses.
> 
> This initial patch does not yet integrate with KPTI, this will be dealt
> with in followup patches.  Ideally we could ensure that by default we
> don't use KPTI on CPUs where E0PD is present.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>   arch/arm64/Kconfig                     | 14 +++++++++++++
>   arch/arm64/include/asm/cpucaps.h       |  3 ++-
>   arch/arm64/include/asm/pgtable-hwdef.h |  2 ++
>   arch/arm64/include/asm/sysreg.h        |  1 +
>   arch/arm64/kernel/cpufeature.c         | 27 ++++++++++++++++++++++++++
>   5 files changed, 46 insertions(+), 1 deletion(-)
> 

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
