Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FF54A7A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 18:52:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bY7LncuFdkjNu6ru5noMxSYYlfYZGQSmLnnQ8Xt/dY=; b=ExzgZgoPUSIeWB
	dGvy4M/4uuaxWoZwghVcC7YKl0oRt6OWvDKYUJZ2mSDxr+4atoaEU0XRqhWNHjnVbjTjPXD9FucX5
	/fvppgTBjvLIfacSC4pZT0BQo2aofCxyPHOtS5qWQUzAchgvWJ9dofl+o/SbP7hLQkkqrchzZXmqz
	Ghw+hFlxbdZ1hvuQkonK6ITvAiwM1lVO/OOGnPYAJXx0eMoXJ/HKDscMcMDP/8YXrWdv2T12t6Kjj
	9soMd4TmwdqjlPZpWIoXfx1FCCqnyL8sSQr3B4IKh6MPO26Nts5TyqF0K4Ja4G5zlrqRo4eJRb7Nc
	HRBjEtXU8fVkLKGwajwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdHKz-0000kO-SG; Tue, 18 Jun 2019 16:52:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdHKc-0000e3-GA
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 16:51:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0DC5E344;
 Tue, 18 Jun 2019 09:51:38 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 763673F246;
 Tue, 18 Jun 2019 09:51:37 -0700 (PDT)
Date: Tue, 18 Jun 2019 17:51:35 +0100
From: Will Deacon <will.deacon@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 2/2] arm64: Expose FRINT capability to userspace
Message-ID: <20190618165135.GD4270@fuggles.cambridge.arm.com>
References: <20190617112656.2614-1-broonie@kernel.org>
 <20190617112656.2614-2-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617112656.2614-2-broonie@kernel.org>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_095138_619176_52CE23C7 
X-CRM114-Status: GOOD (  12.61  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 12:26:56PM +0100, Mark Brown wrote:
> ARMv8.5 introduces the FRINT series of instructions for rounding floating
> point numbers to integers. Provide a capability to userspace in order to
> allow applications to determine if the system supports these instructions.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  Documentation/arm64/elf_hwcaps.txt  | 4 ++++
>  arch/arm64/include/asm/hwcap.h      | 1 +
>  arch/arm64/include/asm/sysreg.h     | 1 +
>  arch/arm64/include/uapi/asm/hwcap.h | 1 +
>  arch/arm64/kernel/cpufeature.c      | 1 +
>  arch/arm64/kernel/cpuinfo.c         | 1 +
>  6 files changed, 9 insertions(+)
> 
> diff --git a/Documentation/arm64/elf_hwcaps.txt b/Documentation/arm64/elf_hwcaps.txt
> index 08e8e380a826..783e2997a0c0 100644
> --- a/Documentation/arm64/elf_hwcaps.txt
> +++ b/Documentation/arm64/elf_hwcaps.txt
> @@ -227,6 +227,10 @@ HWCAP_PACG
>      ID_AA64ISAR1_EL1.GPI == 0b0001, as described by
>      Documentation/arm64/pointer-authentication.txt.
>  
> +HWCAP_FRINT

HWCAP2_FRINT

> +
> +    Functionality implied by ID_AA64ISAR1_EL1.FRINTTTS == 0b0001.

ID_AA64ISAR1_EL1.FRINTTS

With those:

Acked-by: Will Deacon <will.deacon@arm.com>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
