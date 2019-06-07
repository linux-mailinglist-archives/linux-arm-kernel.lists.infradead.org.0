Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7A938725
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 11:39:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3d64eUwoIjAIcSH5AcK/vaegWjTHMuC2FD2B95ZdSvs=; b=dYN0gJGK1X2FaH
	/fZMXdzhQjmyqdOdXWjUINH6QLJpfysks5RR0U8IM/d7dFJV3JZP1MxKNq2OwKMVBZrcvjGrXvLLj
	U3gWjvTPMDMbAk3LmVd3gpuY4rfgTlhGDia/fedOzLMEZ1cX0Spkpm2fpaUzPNWUv6fPVchF4w+zf
	HGRAfCN8uLC+4GCcmWtVy7Vxm8RqHoIOvCmlxpcwS6r5gHmGx94JOOCZB2mApT0cy7cwKIwrp+2AC
	ASHt6Hlx2ShrWpxzSOordUtmHkFguo5a8d+zN80wDamM1OZVlH1kgJOTStS5f5KrfiLcTlSUk2Z/S
	9witkt4xc7FFbDsGFyTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZBL9-000102-Qo; Fri, 07 Jun 2019 09:39:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZBL0-0000zV-2m
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 09:39:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E4EFB360;
 Fri,  7 Jun 2019 02:39:03 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C50F93F96A;
 Fri,  7 Jun 2019 02:39:02 -0700 (PDT)
Date: Fri, 7 Jun 2019 10:38:58 +0100
From: Will Deacon <will.deacon@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 0/2] arm64/sve: Fix mutating register endianness on
 big-endian
Message-ID: <20190607093858.GA21378@fuggles.cambridge.arm.com>
References: <1559839495-22315-1-git-send-email-Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559839495-22315-1-git-send-email-Dave.Martin@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_023906_171754_E6A26469 
X-CRM114-Status: GOOD (  14.72  )
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
Cc: Peter Maydell <peter.maydell@linaro.org>, gdb@sourceware.org,
 Zhang Lei <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alex =?iso-8859-1?Q?Benn=E9e?= <alex.bennee@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 05:44:53PM +0100, Dave Martin wrote:
> By inspection while debugging something else, I noticed that the byte
> order of FPSIMD V-register stores and SVE Z-register stores is not the
> same when running on big-endian.
> 
> This is not properly taken into account when moving between the FPSIMD
> and SVE register views inside the kernel, resulting in the bytes of a
> V-register getting spontaneously reversed in some situations, from
> userspace's point of view.  The signal frame and ptrace interface are
> also affected.  The KVM ABI forbids mixing the two views and so should
> not be affected.
> 
> See patch 2 for details.
> 
> Patch 1 does some trivial preparatory refactoring.

Sorry to be a pain, but would you be able to flip this series round so that
the fix doesn't depend on the refactoring, please? That way we can put it
into stable without the dependency.

> gdb may or may not be affected by this, depending on how it uses the
> NT_PRFPREG and NT_ARM_SVE regsets.  I'll leave it to the developers to
> assess that.

Wouldn't this be easy enough to test?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
