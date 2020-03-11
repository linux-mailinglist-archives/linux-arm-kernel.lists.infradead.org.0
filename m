Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACD5181627
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 11:50:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ICXq176Rsa3B6BD9xzL4/gHRci+MBPf5tBF7OgLBxgg=; b=AJJ+iGFXF8cHwd
	AO4nj+Pbp7LMu1QDHu9L5ZiCQSPNRXeGRAKvxGgie1aOrCWcWJErxXnuhI2lICy/0r0ItMuwCGTGS
	lSkHAqcCwSgjNonTeuXbZgWb8peddwZh9tAgbxEwY4jWz/qlm9wIIBbpSBNBlGqF887Y4D6sxTxxR
	0zCVd88a/+ulq6N7NdhkmoLZXbzateH6du7YDdT0Gs47CVKdZkfdNnQoMdYh/F5TORCPUSVR+/NNn
	C5hV80iVHSaiD94zufHH/FAzRILSX9PlRS+cGwnkfbylDFjOOglDV2Ce+5VeWpypdo86R+ofiAqt0
	QmcJilqTKWkOqBZSH/bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBywd-00081m-VI; Wed, 11 Mar 2020 10:50:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBywU-00081O-G2
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 10:50:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CBB891FB;
 Wed, 11 Mar 2020 03:50:23 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 2E9303F6CF; Wed, 11 Mar 2020 03:50:22 -0700 (PDT)
Date: Wed, 11 Mar 2020 10:50:20 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v6 07/18] arm64: cpufeature: Move cpu capability helpers
 inside C file
Message-ID: <20200311105020.GA3216816@arrakis.emea.arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-8-git-send-email-amit.kachhap@arm.com>
 <eb3acde3-ba4c-162d-b1d2-54183ab4e921@arm.com>
 <e3749f3f-e314-c3b8-cf71-b1ea9d699f4e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e3749f3f-e314-c3b8-cf71-b1ea9d699f4e@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_035026_580926_F57FE5C0 
X-CRM114-Status: GOOD (  16.60  )
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
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 06:23:15PM +0530, Amit Kachhap wrote:
> On 3/10/20 5:50 PM, Vincenzo Frascino wrote:
> > On 3/6/20 6:35 AM, Amit Daniel Kachhap wrote:
> > 
> > [...]
> > 
> > > -static inline bool
> > > -cpucap_late_cpu_optional(const struct arm64_cpu_capabilities *cap)
> > > -{
> > > -	return !!(cap->type & ARM64_CPUCAP_OPTIONAL_FOR_LATE_CPU);
> > > -}
> > > -
> > > -static inline bool
> > > -cpucap_late_cpu_permitted(const struct arm64_cpu_capabilities *cap)
> > > -{
> > > -	return !!(cap->type & ARM64_CPUCAP_PERMITTED_FOR_LATE_CPU);
> > > -}
> > > -
> > >   /*
> > >    * Generic helper for handling capabilties with multiple (match,enable) pairs
> > >    * of call backs, sharing the same capability bit.
> > > diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> > > index b12e386..865dce6 100644
> > > --- a/arch/arm64/kernel/cpufeature.c
> > > +++ b/arch/arm64/kernel/cpufeature.c
> > > @@ -1363,6 +1363,19 @@ static bool can_use_gic_priorities(const struct arm64_cpu_capabilities *entry,
> > >   }
> > >   #endif
> > > +/* Internal helper functions to match cpu capability type */
> > > +static bool
> > > +cpucap_late_cpu_optional(const struct arm64_cpu_capabilities *cap)
> > > +{
> > > +	return !!(cap->type & ARM64_CPUCAP_OPTIONAL_FOR_LATE_CPU);
> > > +}
> > > +
> > > +static bool
> > > +cpucap_late_cpu_permitted(const struct arm64_cpu_capabilities *cap)
> > > +{
> > > +	return !!(cap->type & ARM64_CPUCAP_PERMITTED_FOR_LATE_CPU);
> > > +}
> > > +
> > >   static const struct arm64_cpu_capabilities arm64_features[] = {
> > >   	{
> > >   		.desc = "GIC system register CPU interface",
> > > 
> > 
> > Seems that the signature of the functions above is changed during the migration.
> > In particular you dropped "inline". Is there any specific reason?
> 
> Earlier Catalin pointed me here [1]. I guess its not a hot-path function.
> 
> [1]: https://www.spinics.net/lists/arm-kernel/msg789696.html

Indeed, it had to be static inline in a header but not anymore in a .c
file. Also if it's really essential to be inlined and the compiler
doesn't do this automatically, use __always_inline. But my preference is
not to bother unless you back it up by numbers.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
