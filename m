Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4451F4830
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 22:35:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l+qsva7xKqv61t2USEO5ANNgXfBZaz1EqSfBNcTrBIY=; b=ILL6a26XfrpbXF
	2UiBjlSvtp7UA3Bz2OseOzhF9H1zPTC/prX7T5rapl7pFNBes4vBHGUULzLksG7RKlk5JZPMQ0DX8
	xUNW7E80M+bbKWS1sHv35Sz58BsMmgZ23I5eccOpY/gno0890mLGP2vYl/HRtoshIL/gqme95BHvJ
	fuQCb8mFJrd/2C/zRv3C2TMIPr0n7/UjDgnswWvOYjyjJskTfHT9FVQdqNWlHedhYlSpONfgbHkCR
	jgMezdjxq8cVWy9fLo3X3Z4qXB9vN9a6m4f53vwYYVfiKR3fSL7SsfIwYJmu3WZMHaLoEDHLBXNv5
	05zzxto5zktvIlF6AqRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jikxy-0003w7-MK; Tue, 09 Jun 2020 20:35:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jikxn-0003LR-Sj
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 20:35:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 821121F1;
 Tue,  9 Jun 2020 13:35:07 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9C8163F73D;
 Tue,  9 Jun 2020 13:35:05 -0700 (PDT)
Date: Tue, 9 Jun 2020 21:35:03 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] arm64: vdso32: add CONFIG_THUMB2_COMPAT_VDSO
Message-ID: <20200609203502.GA21214@gaia>
References: <20200528072031.GA22156@willie-the-truck>
 <20200608205711.109418-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608205711.109418-1-ndesaulniers@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_133515_996203_C11885C6 
X-CRM114-Status: GOOD (  11.30  )
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Stephen Boyd <swboyd@google.com>,
 Robin Murphy <robin.murphy@arm.com>, Masahiro Yamada <masahiroy@kernel.org>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 08, 2020 at 01:57:08PM -0700, Nick Desaulniers wrote:
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 7f9d38444d6d..fe9e6b231cac 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1299,6 +1299,14 @@ config COMPAT_VDSO
>  	  You must have a 32-bit build of glibc 2.22 or later for programs
>  	  to seamlessly take advantage of this.
>  
> +config THUMB2_COMPAT_VDSO
> +	bool "Compile the vDSO in THUMB2 mode"
> +	depends on COMPAT_VDSO
> +	default y
> +	help
> +	  Compile the compat vDSO with -mthumb -fomit-frame-pointer if y, otherwise
> +	  as -marm.

Now that we understood the issue (I think), do we actually need this
choice? Why not going for -mthumb -fomit-frame-pointer always for the
compat vdso?

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
