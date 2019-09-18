Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B18B687A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 18:49:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0O7gTl6Fhg57uYd9siIOFmkCDumlae4Fq8SCGlbmfQ=; b=rZhYsi8RqaeFdj
	KKbQkl8NkaqCckq/sA37sX1HVxwRnkUC/XyQ1KqUt0NEUyGCNmfym6X9CYAsr1WTJInxg+DURXJ5f
	X31OgxUhwTcbA/bF9hysQdrJLuv6cBUYScrCbRHxJQA3b5SAkdfla8ZusMrUFmjv2zXqT4roZi2iD
	WQgTQ1AraZ642BANnJ58vp6N5w5Hel5pil6gWZxdZdZzjFn/F/btouTc0GXVfOa2jP3tX9POlqugz
	jgaTYRc7FdDS1LRRebC8tXn0c9ZH4LMwyZhYhW4bGj6AOXbpVuC7L1kAb7sXwz15lbMC1usir5Klm
	himEpj30Eob/7xR8BboQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAd9D-00076K-4a; Wed, 18 Sep 2019 16:49:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAd91-00075y-FU
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 16:49:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A0961337;
 Wed, 18 Sep 2019 09:49:30 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 F0AAA3F59C; Wed, 18 Sep 2019 09:49:27 -0700 (PDT)
Date: Wed, 18 Sep 2019 17:49:25 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH v4 1/3] arm64: cpufeature: introduce helper cpu_has_hw_af()
Message-ID: <20190918164925.GB41588@arrakis.emea.arm.com>
References: <20190918131914.38081-1-justin.he@arm.com>
 <20190918131914.38081-2-justin.he@arm.com>
 <20190918142017.GC9880@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918142017.GC9880@bombadil.infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_094931_563606_55217C59 
X-CRM114-Status: GOOD (  11.78  )
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
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
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

On Wed, Sep 18, 2019 at 07:20:17AM -0700, Matthew Wilcox wrote:
> On Wed, Sep 18, 2019 at 09:19:12PM +0800, Jia He wrote:
> > +/* Decouple AF from AFDBM. */
> > +bool cpu_has_hw_af(void)
> > +{
> > +	return (read_cpuid(ID_AA64MMFR1_EL1) & 0xf);
> > +}
> > +
> 
> Do you really want to call read_cpuid() every time?  I would have thought
> you'd want to use the static branch mechanism to do the right thing at
> boot time.  See Documentation/static-keys.txt.

We do have a static branch mechanism for other CPU features but mostly
because on some big.LITTLE systems, the CPUs may differ slightly so we
only advertise the common features.

I guess here the additional instructions for reading and checking the
CPUID here would be lost in the noise compared to the actual page
copying.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
