Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CC2173F49
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 19:19:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4w4TreWvr1lJoKwt/EspfxDj4IPmH3mq5UuQ6OrGgl4=; b=M3i2rLutnA3MKi
	nLoh22mf27mi8EVXpEkmexSeTHR9quKwX0ant3HA3hYrtOTOJn4aPC03ljcuAEg4gmiGVxi7rjke+
	QmQfPQoQLbLv/6eRInKXJBTTMxvp52ypKYiG8tCK3/huzU9l1nijIlRIOUUVcn3F/2y3CwSSWgjHN
	x+zfwcgWEbKF9iz20Vn+KIc9OKgO2nf9RGuYKtHHQdrJUA1C1FvwvXkzF2hQkYW0aoaiYbyclnoR/
	9t7T0lV3wXjbTpcvYwl7w4fWi8cip+MatHqrMWS5C7arjHeiNvxINq3TyAUZwPu4tr+oBPMRyP3K1
	FxPkqwAA2MnvX0Ym3p4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7kDn-0001AL-OM; Fri, 28 Feb 2020 18:18:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7kDc-00019s-Ut
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 18:18:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B577E31B;
 Fri, 28 Feb 2020 10:18:35 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 152293F7B4; Fri, 28 Feb 2020 10:18:33 -0800 (PST)
Date: Fri, 28 Feb 2020 18:18:32 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v5 07/17] arm64: cpufeature: handle conflicts based on
 capability
Message-ID: <20200228181832.GI4019108@arrakis.emea.arm.com>
References: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
 <1581931668-11559-8-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581931668-11559-8-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_101837_040609_FA5D3306 
X-CRM114-Status: GOOD (  11.37  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 02:57:38PM +0530, Amit Daniel Kachhap wrote:
> diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
> index 8c80483..1e88aee 100644
> --- a/arch/arm64/include/asm/cpufeature.h
> +++ b/arch/arm64/include/asm/cpufeature.h
> @@ -352,6 +360,12 @@ cpucap_late_cpu_permitted(const struct arm64_cpu_capabilities *cap)
>  	return !!(cap->type & ARM64_CPUCAP_PERMITTED_FOR_LATE_CPU);
>  }
>  
> +static inline bool
> +cpucap_panic_on_conflict(const struct arm64_cpu_capabilities *cap)
> +{
> +	return !!(cap->type & ARM64_CPUCAP_PANIC_ON_CONFLICT);
> +}

Does this need to be in the header file? If not, please move it to
cpufeature.c (and drop 'inline' if moved).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
