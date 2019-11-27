Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFFC10B1C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 16:02:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CQpZ5tpL7B1O1Sv8K8LoKN0Qyvuis1oQYlfsopViTg=; b=Qhl4dmpxlIcoJj
	R9Vj6FosH2hgWdFfdPHSTo5HnjRHotmP47J5bRFDzHBFUjFbZz20n9h0AIsF8iO4jpPbWWsTlaA/R
	ypgzw3Tf6dgM1aHJKtu2cJ8eHh1jBN6le8uITePffFgxDSjpE6hV3TQSrv/Sg4Y7jltT94f/T3Gc5
	oE/LyyjfFDJ1rIf9Lv9AUDeAzoo2gbf0MnTf+e1BuGZmANIIJlte5G1FzWKfQALL2C1ex8K4vjHvZ
	YQaOVocbZ3iUdS/8v1rFMWVKb/WLkaxk7JqHUzn4azN0WKSv3tuKqnq91l5h1lK6doLAZAbSsY+pZ
	Y7gvcBeC33HVFhNKeE3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZypI-0005jB-7Z; Wed, 27 Nov 2019 15:01:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZyp7-0005iQ-3K
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 15:01:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A53ED30E;
 Wed, 27 Nov 2019 07:01:42 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DFC373F68E;
 Wed, 27 Nov 2019 07:01:39 -0800 (PST)
Date: Wed, 27 Nov 2019 15:01:37 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH v2 2/3] arm64: remove uaccess_ttbr0 asm macros from cache
 functions
Message-ID: <20191127150137.GB51937@lakrids.cambridge.arm.com>
References: <20191122022406.590141-1-pasha.tatashin@soleen.com>
 <20191122022406.590141-3-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122022406.590141-3-pasha.tatashin@soleen.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_070145_189352_3BCF0DE9 
X-CRM114-Status: GOOD (  12.09  )
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
Cc: catalin.marinas@arm.com, stefan@agner.ch, linux@armlinux.org.uk,
 yamada.masahiro@socionext.com, will@kernel.org, boris.ostrovsky@oracle.com,
 sashal@kernel.org, sstabellini@kernel.org, jmorris@namei.org,
 linux-arm-kernel@lists.infradead.org, xen-devel@lists.xenproject.org,
 vladimir.murzin@arm.com, marc.zyngier@arm.com, alexios.zavras@intel.com,
 tglx@linutronix.de, allison@lohutok.net, jgross@suse.com, steve.capper@arm.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, james.morse@arm.com,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On Thu, Nov 21, 2019 at 09:24:05PM -0500, Pavel Tatashin wrote:
> Replace the uaccess_ttbr0_disable/uaccess_ttbr0_enable via
> inline variants, and remove asm macros.

A commit message should provide rationale, rather than just a
description of the patch. Something like:

| We currently duplicate the logic to enable/disable uaccess via TTBR0,
| with C functions and assembly macros. This is a maintenenace burden
| and is liable to lead to subtle bugs, so let's get rid of the assembly
| macros, and always use the C functions. This requires refactoring
| some assembly functions to have a C wrapper.

[...]

> +static inline int invalidate_icache_range(unsigned long start,
> +					  unsigned long end)
> +{
> +	int rv;
> +#if ARM64_HAS_CACHE_DIC
> +	rv = arch_invalidate_icache_range(start, end);
> +#else
> +	uaccess_ttbr0_enable();
> +	rv = arch_invalidate_icache_range(start, end);
> +	uaccess_ttbr0_disable();
> +#endif
> +	return rv;
> +}

This ifdeffery is not the same as an alternative_if, and even if it were
the ARM64_HAS_CACHE_DIC behaviour is not the same as the existing
assembly.

This should be:

static inline int invalidate_icache_range(unsigned long start,
					  unsigned long end)
{
	int ret;

	if (cpus_have_const_cap(ARM64_HAS_CACHE_DIC)) {
		isb();
		return 0;
	}
	
	uaccess_ttbr0_enable();
	ret = arch_invalidate_icache_range(start, end);
	uaccess_ttbr0_disable();

	return ret;
}

The 'arch_' prefix should probably be 'asm_' (or have an '_asm' suffix),
since this is entirely local to the arch code, and even then should only
be called from the C wrappers.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
