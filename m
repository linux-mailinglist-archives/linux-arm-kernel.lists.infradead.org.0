Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1E57C838
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vxKM4hzavX/uCVnMYccbfxeVQL0p/zHYffkmbHbAy60=; b=BgwxmvarCWAz7V
	Je3sRD2mgZ/ohCV/Q3fvLh/9ayjgfvoY26CLRS+Ea6XjyNLdUz02uiEq7pjgOTf64LH1G2wPM/wq1
	fVZsfEeYh2MCFPrU57BceKbwYNO5Sa5Ps4Z9HC5pz4Q2O3VbIunICXFXBHuipevrcZChxup0W1jvk
	bkuJV6EAFgNl/zezuB1LLBGJdkpgFPOUuwt17OqtgP9z4xObYP52KpVWKlTPKp6upsxdsvVYKnu+3
	hPpAx5xK6XD6lmabRGLpytNvVit5s0p/CDvgBroYIfuLpuyp4HYQWHA57Xakbh+XxHNGJ/LkSqOSa
	CMfJ9PZMf/KDVamWe9DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrBw-0007NH-E5; Wed, 31 Jul 2019 16:11:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrBl-0007Mn-E1
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:10:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EDEF5206A3;
 Wed, 31 Jul 2019 16:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564589453;
 bh=WCCv3Aec470dqenJ3D0yJXfNnDANp7cVqdAtXPLEgsM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O0oO6ADuBpn0GsCzed/V3vKsIofX8heKLLg1altER77SX8nvqgWsXXTEM1v+taPPH
 EIwclnx482U7aJLNBxzEszh8K/nBVMDE9WWJ3rSKcTQBSk8H0adilY4q0TaGfAK9h8
 GAMdp9Q3T2fvoMqUn4p9KL2EwGx5PxfqoHpuEndc=
Date: Wed, 31 Jul 2019 17:10:48 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [RFC 1/2] mm/sparsemem: Add vmem_altmap support in
 vmemmap_populate_basepages()
Message-ID: <20190731161047.ypye54x5c5jje5sq@willie-the-truck>
References: <1561697083-7329-1-git-send-email-anshuman.khandual@arm.com>
 <1561697083-7329-2-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561697083-7329-2-git-send-email-anshuman.khandual@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_091054_289925_70573D46 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Fenghua Yu <fenghua.yu@intel.com>, Tony Luck <tony.luck@intel.com>,
 linux-ia64@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Will Deacon <will.deacon@arm.com>,
 x86@kernel.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Andy Lutomirski <luto@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 10:14:42AM +0530, Anshuman Khandual wrote:
> Generic vmemmap_populate_basepages() is used across platforms for vmemmap
> as standard or as fallback when huge pages mapping fails. On arm64 it is
> used for configs with ARM64_SWAPPER_USES_SECTION_MAPS applicable both for
> ARM64_16K_PAGES and ARM64_64K_PAGES which cannot use huge pages because of
> alignment requirements.
> 
> This prevents those configs from allocating from device memory for vmemap
> mapping as vmemmap_populate_basepages() does not support vmem_altmap. This
> enables that required support. Each architecture should evaluate and decide
> on enabling device based base page allocation when appropriate. Hence this
> keeps it disabled for all architectures to preserve the existing semantics.

This commit message doesn't really make sense to me. There's a huge amount
of arm64-specific detail, followed by vague references to "this" and
"those" and "that" and I lost track of what you're trying to solve.

However, I puzzled through the code and I think it does make sense, so:

Acked-by: Will Deacon <will@kernel.org>

assuming you rewrite the commit message.

However, this has a dependency on your hot remove series which has open
comments from Mark Rutland afaict.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
