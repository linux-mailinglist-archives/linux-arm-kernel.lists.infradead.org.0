Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17936B65B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 16:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F25XcCPzhvNajM3UQMRVOXgVvbjGAVLgtRsXu1zGhqc=; b=HwxxRHHiSjuTfJ
	sKlAQleu68ewGQNJtuyUiX4n7eSCFbRTDxrYlg2LHDdd+eBecRiDE0A6lxunKkDIz+ZW7EQ34H39h
	vb7bUnRIf/4tgGs6TUMesS1pwkB9e2ThZf+CqvzeM7Efm6vVboNwj5X3FvISNKj/waP7TioOZgfji
	pViVFY7NqekgwQzBfnGZZe6NxJh8Pod5yls1Eus+VXLZePjdZFdVTD9XhmPooitQ21UBIexkDIWoj
	3l2DjuHB0fSdPd00Gm6pSZz65Zfr9Rb5cvgttRJedRMVWP+hz1MlMs0UYXTzUzI9CCUuDXpZp7sE5
	vOusJsLsVIaDNIUc3rdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAaos-0006iu-4O; Wed, 18 Sep 2019 14:20:34 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iAaob-0006gt-J4; Wed, 18 Sep 2019 14:20:17 +0000
Date: Wed, 18 Sep 2019 07:20:17 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Jia He <justin.he@arm.com>
Subject: Re: [PATCH v4 1/3] arm64: cpufeature: introduce helper cpu_has_hw_af()
Message-ID: <20190918142017.GC9880@bombadil.infradead.org>
References: <20190918131914.38081-1-justin.he@arm.com>
 <20190918131914.38081-2-justin.he@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918131914.38081-2-justin.he@arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
 Ralph Campbell <rcampbell@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Jun Yao <yaojun8558363@gmail.com>, linux-mm@kvack.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Punit Agrawal <punitagrawal@gmail.com>, Marc Zyngier <maz@kernel.org>,
 hejianet@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Alex Van Brunt <avanbrunt@nvidia.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 09:19:12PM +0800, Jia He wrote:
> +/* Decouple AF from AFDBM. */
> +bool cpu_has_hw_af(void)
> +{
> +	return (read_cpuid(ID_AA64MMFR1_EL1) & 0xf);
> +}
> +

Do you really want to call read_cpuid() every time?  I would have thought
you'd want to use the static branch mechanism to do the right thing at
boot time.  See Documentation/static-keys.txt.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
