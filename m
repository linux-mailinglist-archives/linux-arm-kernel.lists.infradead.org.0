Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4326B686B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 18:46:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XMgkCdS+4RZ9BnzTwq3MynY9hzmHXqRP+N2MzRpuerM=; b=FRqT2l/FRaDM/R
	MTZe3FVkR2p8D1Fvu7LMNswOZYla5MCSCMdu2ztLdL88s0+c6vVg1HwFutWIorb8cRVuGFQlezS4T
	630HNjrfEtsgQ8C1DPk1Ua9K17e5twJYMv2asgI1KLQRGAdcxvi2LR8DESF5hulTycL5DtlYzbBjS
	boLhb0XNT5U9NDcjMUu5KyBMwsjYmtm0pE2EQw+eOOQWlq5BWG008jE6ctpvyaWxFwwiGccByU9bv
	nkq9NvA37ltzqboCYbyjKJiYh7hUkrpM5BuSI/CSlxhw+lEPsVKh7x8iBKXDDbKLf+pqGg0xvQzQ9
	4ouo6ne7PS9YKODVF3Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAd5h-0006iG-Ae; Wed, 18 Sep 2019 16:46:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAd5W-0006hW-Hj
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 16:45:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B8647337;
 Wed, 18 Sep 2019 09:45:51 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 1356A3F59C; Wed, 18 Sep 2019 09:45:48 -0700 (PDT)
Date: Wed, 18 Sep 2019 17:45:47 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v4 1/3] arm64: cpufeature: introduce helper cpu_has_hw_af()
Message-ID: <20190918164546.GA41588@arrakis.emea.arm.com>
References: <20190918131914.38081-1-justin.he@arm.com>
 <20190918131914.38081-2-justin.he@arm.com>
 <78881acb-5871-9534-c8cc-6f54937be3fd@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78881acb-5871-9534-c8cc-6f54937be3fd@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_094554_633502_446269B3 
X-CRM114-Status: GOOD (  12.64  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 Ralph Campbell <rcampbell@nvidia.com>, Jia He <justin.he@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 Jun Yao <yaojun8558363@gmail.com>, linux-mm@kvack.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Punit Agrawal <punitagrawal@gmail.com>, hejianet@gmail.com,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Alex Van Brunt <avanbrunt@nvidia.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 03:20:41PM +0100, Suzuki K Poulose wrote:
> On 18/09/2019 14:19, Jia He wrote:
> > diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
> > index c96ffa4722d3..206b6e3954cf 100644
> > --- a/arch/arm64/include/asm/cpufeature.h
> > +++ b/arch/arm64/include/asm/cpufeature.h
> > @@ -390,6 +390,7 @@ extern DECLARE_BITMAP(boot_capabilities, ARM64_NPATCHABLE);
> >   	for_each_set_bit(cap, cpu_hwcaps, ARM64_NCAPS)
> >   bool this_cpu_has_cap(unsigned int cap);
> > +bool cpu_has_hw_af(void);
> >   void cpu_set_feature(unsigned int num);
> >   bool cpu_have_feature(unsigned int num);
> >   unsigned long cpu_get_elf_hwcap(void);
> > diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> > index b1fdc486aed8..c5097f58649d 100644
> > --- a/arch/arm64/kernel/cpufeature.c
> > +++ b/arch/arm64/kernel/cpufeature.c
> > @@ -1141,6 +1141,12 @@ static bool has_hw_dbm(const struct arm64_cpu_capabilities *cap,
> >   	return true;
> >   }
> > +/* Decouple AF from AFDBM. */
> > +bool cpu_has_hw_af(void)
> > +{
> Sorry for not having asked this earlier. Are we interested in,
> 
> "whether *this* CPU has AF support ?" or "whether *at least one*
> CPU has the AF support" ? The following code does the former.
> 
> > +	return (read_cpuid(ID_AA64MMFR1_EL1) & 0xf);

In a non-preemptible context, the former is ok (per-CPU).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
