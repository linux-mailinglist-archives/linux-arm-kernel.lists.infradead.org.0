Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 315EA1A7F03
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0w23RjT2WRBw1Rz2bMjWDYmyjYralEo4BYyqmiMgVFo=; b=H5/RAzwk/t2W5I
	Rx3+SnF3vAhkvB2h5zbVFizUXvvqMqdUFmXtqaKlKgGtpDtKmCF+oFDl2NU7Vn44Ytpn6h4bQAioC
	aJI0lBv1orq3nhdylUSGz0oLbhpmsmZCJrc10EByvCNEdQW88ZRTbn4ypl6le9JQ/1/qLRJhpDU5T
	nJ7hbkL3/98aoCSFhs+X12PDYy6cjmEJJRipOBwiiot4VlKp49VRVzngRvU495Z+wPLb6JKwGLa9+
	dC3zSA1Ys9JKNKCPCNg5/58C7RpgT3B0MyFvePF/LOPQflU5BRLjPswfhDtFF88mLtgIuhXMzvs5i
	EN5Bbw9wfgFn0TKa5IJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOM5n-00005h-9b; Tue, 14 Apr 2020 13:59:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOM5e-000051-P4
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:59:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1B73230E;
 Tue, 14 Apr 2020 06:59:02 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.30.4])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A28CD3F73D;
 Tue, 14 Apr 2020 06:59:00 -0700 (PDT)
Date: Tue, 14 Apr 2020 14:58:57 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64: drop duplicate definitions of ID_AA64MMFR0_TGRAN
 constants
Message-ID: <20200414135857.GH2486@C02TD0UTHF1T.local>
References: <20200414134706.8435-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414134706.8435-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_065902_856602_7DA71A42 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 03:47:06PM +0200, Ard Biesheuvel wrote:
> A bunch of ID_AA64MMFR0_TGRAN_* constant definitions appear twice
> in arch/arm64/include/asm/sysreg.h, so drop the duplicates.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Whoops. Looks like these were added in commit:

4bf8b96ed3f7e114 ("arm64: Check for selected granule support")

... and then duplicated along with all the other registers in commit:

3c739b5710843621 ("arm64: Keep track of CPU feature registers")

This patch looks sound to me, so:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/include/asm/sysreg.h | 12 ------------
>  1 file changed, 12 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index ebc622432831..b7e62b4f73af 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -783,18 +783,6 @@
>  #define MVFR1_FPDNAN_SHIFT		4
>  #define MVFR1_FPFTZ_SHIFT		0
>  
> -
> -#define ID_AA64MMFR0_TGRAN4_SHIFT	28
> -#define ID_AA64MMFR0_TGRAN64_SHIFT	24
> -#define ID_AA64MMFR0_TGRAN16_SHIFT	20
> -
> -#define ID_AA64MMFR0_TGRAN4_NI		0xf
> -#define ID_AA64MMFR0_TGRAN4_SUPPORTED	0x0
> -#define ID_AA64MMFR0_TGRAN64_NI		0xf
> -#define ID_AA64MMFR0_TGRAN64_SUPPORTED	0x0
> -#define ID_AA64MMFR0_TGRAN16_NI		0x0
> -#define ID_AA64MMFR0_TGRAN16_SUPPORTED	0x1
> -
>  #if defined(CONFIG_ARM64_4K_PAGES)
>  #define ID_AA64MMFR0_TGRAN_SHIFT	ID_AA64MMFR0_TGRAN4_SHIFT
>  #define ID_AA64MMFR0_TGRAN_SUPPORTED	ID_AA64MMFR0_TGRAN4_SUPPORTED
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
