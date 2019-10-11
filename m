Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E08D3D8E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 12:39:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPFdMxa8+hZsPPkY17JC4ngKdjGagSU1mlbZBy6ZpgA=; b=uzGmsfRhzuOjuk
	vO3PKFJwX+2k7SkMnIL25rVVWqrU0Ca1Q+fJ2+5+Jb9nxgIOAALQZT4L8riuv7sGKcnuFhM98aoeA
	j4Ajfd9eM6LY6VGtjBFNNit/p0VEZlokzbX0HXXGAkDvS/dxWEwMSj4rcz5BCySZlbJzCHQEbNaV7
	mRhwZTFWSHyBs53BwpEp4r2KYobD9H7muKcFVT6G/Pu4IDljZbnCwMvhIkISc5a1ussvrhQG95o1V
	3jxaezbTEgHqiChZOVIY2AukEtq0jQC5Iu/S3ae5Nkj8ZV44YXMmWYQAxYv0aV6ZMpaG3ru4pDMjI
	4Y/WK8yQ2vncn+LPOBFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsKJ-0005Bo-F7; Fri, 11 Oct 2019 10:39:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIsK7-0005B8-TW
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 10:39:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4536F28;
 Fri, 11 Oct 2019 03:39:03 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 E26D63F703; Fri, 11 Oct 2019 03:39:00 -0700 (PDT)
Date: Fri, 11 Oct 2019 11:38:58 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: "Justin He (Arm Technology China)" <Justin.He@arm.com>
Subject: Re: [PATCH v11 1/4] arm64: cpufeature: introduce helper
 cpu_has_hw_af()
Message-ID: <20191011103857.GB54842@arrakis.emea.arm.com>
References: <20191009084246.123354-1-justin.he@arm.com>
 <20191009084246.123354-2-justin.he@arm.com>
 <20191010164312.GB40923@arrakis.emea.arm.com>
 <DB7PR08MB3082E71F1FF5FE8462F88B8BF7970@DB7PR08MB3082.eurprd08.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR08MB3082E71F1FF5FE8462F88B8BF7970@DB7PR08MB3082.eurprd08.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_033903_999642_7722980B 
X-CRM114-Status: GOOD (  12.37  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 "x86@kernel.org" <x86@kernel.org>, "hejianet@gmail.com" <hejianet@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, James Morse <James.Morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, nd <nd@arm.com>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 01:16:36AM +0000, Justin He (Arm Technology China) wrote:
> From: Catalin Marinas <catalin.marinas@arm.com>
> > On Wed, Oct 09, 2019 at 04:42:43PM +0800, Jia He wrote:
> > > +		u64 mmfr1 = read_cpuid(ID_AA64MMFR1_EL1);
> > > +
> > > +		return !!cpuid_feature_extract_unsigned_field(mmfr1,
> > > +
> > 	ID_AA64MMFR1_HADBS_SHIFT);
> > 
> > No need for !!, the return type is a bool already.
> 
> But cpuid_feature_extract_unsigned_field has the return type "unsigned int" [1]
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/include/asm/cpufeature.h#n444

And the C language gives you the automatic conversion from unsigned int
to bool without the need for !!. The reason we use !! in some places is
for converting long to int (not bool) and losing the top 32-bit. See
commit 84fe6826c28f ("arm64: mm: Add double logical invert to pte
accessors") for an explanation.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
