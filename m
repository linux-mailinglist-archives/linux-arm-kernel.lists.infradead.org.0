Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F013018167C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 12:03:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ALLdmpoYAroXuFH7eZiqd42bTlkN7shCmgDhbjEa70=; b=AkC9nUJLIkEGWE
	83HfwzgbtWM2N8RA08TMqBl07RQGD5SEooUDFJ0n4JZhnTvMYXGOyTUk1v7gf6i0bV2ua/9wrrFPu
	EL43Mk58KtlAdUJe+Zdo40HWA+2/LAtBlX1Wwig45XrwHccCNJrJTuILaGGCT3u1SYD+LSrAWhFNQ
	lOtvtGv/+JvJab8GkkXroFg/2G20QQZdcvV7SO2M5wrPuQayHgXMfZmMV53/CFf+lR9YWtFAIDf3h
	t+y5ZrwroTh6aGuAm632a7MqUCjrpJ5KVQvTPEnF34PId9jBzwjA64A1mmwi2Zvu1+6yDD8JrMWbF
	ORlLJMCnYZsWz1PgC/Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBz9E-00066F-R8; Wed, 11 Mar 2020 11:03:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBz8x-00060S-JL
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 11:03:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 062A91FB;
 Wed, 11 Mar 2020 04:03:19 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 5BB533F6CF; Wed, 11 Mar 2020 04:03:17 -0700 (PDT)
Date: Wed, 11 Mar 2020 11:03:15 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v6 08/18] arm64: cpufeature: handle conflicts based on
 capability
Message-ID: <20200311110315.GB3216816@arrakis.emea.arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-9-git-send-email-amit.kachhap@arm.com>
 <d0f66afd-3cf3-77eb-9aa6-703f6201bc47@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d0f66afd-3cf3-77eb-9aa6-703f6201bc47@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_040319_695933_0645438F 
X-CRM114-Status: GOOD (  11.79  )
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
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 12:31:56PM +0000, Vincenzo Frascino wrote:
> On 3/6/20 6:35 AM, Amit Daniel Kachhap wrote:
> 
> [...]
> 
> >  
> > +static bool
> > +cpucap_panic_on_conflict(const struct arm64_cpu_capabilities *cap)
> > +{
> > +	return !!(cap->type & ARM64_CPUCAP_PANIC_ON_CONFLICT);
> > +}
> > +
> 
> If there is no specific reason in the previous patch for changing the signature,
> could you please make "inline" even this function, for symmetry with the others?

Please don't add new 'inline' unless you have a real justification (in
which case __always_inline is better suited). Also symmetry with others
is not a good argument.

https://www.kernel.org/doc/html/latest/process/coding-style.html#the-inline-disease

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
