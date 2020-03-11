Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CAB181DE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 17:31:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gOkyqeHcckYIe1NG1l0dSH8XTOoaC1bDAUgZTcjt+YM=; b=T/qX+sfugsp60U
	TEanQoQrciBoZ8N/MqDlhq/GEogsGUSSRzI57wNk8MhRNSCdqO0JbeBnYDyqSkuiM+E2D/MzOXlOT
	Bj70KAkBi/Hwl8FyYcqXK7skvOckon5ecSkYNKw+niDFkue+bvPyOgeBp9SZNKJBzoX74DG1arNf+
	jGi6ZRFkHQmT5EGzi/0C6y7QlCDpno8ViJQzK7qeenXge+mUAG4S1KT1H/DQYqbyjQqQcYRNFWpZ4
	HV/BaWC2lfWvk1VS9xDRDUWGN7mWZsA2r33yjcaO57Gl0mf60LjYDkTqVVBoUEOUB++NJ5qmHO1bv
	/DspVSvlE4/9H1kJHaFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4GN-0002aD-OZ; Wed, 11 Mar 2020 16:31:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4GD-0002Xm-Jz
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 16:31:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E968E31B;
 Wed, 11 Mar 2020 09:31:08 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D8A643F6CF; Wed, 11 Mar 2020 09:31:05 -0700 (PDT)
Date: Wed, 11 Mar 2020 16:31:03 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v8 03/11] arm64: Basic Branch Target Identification support
Message-ID: <20200311163103.GL3216816@arrakis.emea.arm.com>
References: <20200227174417.23722-1-broonie@kernel.org>
 <20200227174417.23722-4-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227174417.23722-4-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_093109_698558_6A190971 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, "H . J . Lu " <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 05:44:09PM +0000, Mark Brown wrote:
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 0b30e884e088..e37f4f07b990 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1519,6 +1519,28 @@ endmenu
>  
>  menu "ARMv8.5 architectural features"
>  
> +config ARM64_BTI
> +	bool "Branch Target Identification support"
> +	default y
> +	help
> +	  Branch Target Identification (part of the ARMv8.5 Extensions)
> +	  provides a mechanism to limit the set of locations to which computed
> +	  branch instructions such as BR or BLR can jump.
> +
> +	  To make use of BTI on CPUs that support it, say Y.
> +
> +	  BTI is intended to provide complementary protection to other control
> +	  flow integrity protection mechanisms, such as the Pointer
> +	  authentication mechanism provided as part of the ARMv8.3 Extensions.
> +	  For this reason, it does not make sense to enable this option without
> +	  also enabling support for pointer authentication.  Thus, when
> +	  enabling this option you should also select ARM64_PTR_AUTH=y.
> +
> +	  Userspace binaries must also be specifically compiled to make use of
> +	  this mechanism.  If you say N here or the hardware does not support
> +	  BTI, such binaries can still run, but you get no additional
> +	  enforcement of branch destinations.

To keep the series bisectable, I'd move the Kconfig into a separate
patch towards the end. It looks like the feature is only partially
supported after patch 3, so let's not advertise it here.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
