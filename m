Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E128353A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 17:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o0gGgoVTHO9cYWgQLPkzzt2hDB+mG86jGusmt5yIsYg=; b=dU8UfbPfrfKVvT
	u6Bzz2iGprTJNr5KjzBfhth2h3d57VJF7HfNTx5d6se7h8iPs0+5QiyU1hF7/UZpRUkO6CmBTVYUq
	dsEpV9ShDmNe4VqlP3vy3qSz/qa5YgDdVX0O53uQPDM7uYXff5lPZ+LPPsgpGBpz0/0l1/b07txZE
	/bVFoybL/ppnGHxJO7gpCC+zjxMzENAO/LaqmzwvrC6Uci6YhbT1XfyoQbCCURWOhOApewOrHAlTW
	Om3QQZkdw2Z8n37Iwp5ckw/0RGoLafZI+ldbnfuebmOS1ivRIBmczF4/6HWfO8NWBGnNb63FJUHNe
	NRR34Y6zg41cnovaOK5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv1NL-0000qN-TT; Tue, 06 Aug 2019 15:27:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hv1ND-0000pb-Vj
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 15:27:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 02353344;
 Tue,  6 Aug 2019 08:27:38 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 F2E323F706; Tue,  6 Aug 2019 08:27:36 -0700 (PDT)
Date: Tue, 6 Aug 2019 16:27:34 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <steve.capper@arm.com>
Subject: Re: [PATCH V4 11/11] docs: arm64: Add layout and 52-bit info to
 memory document
Message-ID: <20190806152734.GH30716@arrakis.emea.arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
 <20190729162117.832-12-steve.capper@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729162117.832-12-steve.capper@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_082740_109296_A331C9C1 
X-CRM114-Status: GOOD (  13.29  )
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 bhsharma@redhat.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 05:21:17PM +0100, Steve Capper wrote:
> +AArch64 Linux memory layout with 4KB pages + 4 levels (48-bit)::
>  
>    Start			End			Size		Use
>    -----------------------------------------------------------------------
>    0000000000000000	0000ffffffffffff	 256TB		user
> -  ffff000000000000	ffffffffffffffff	 256TB		kernel
> -
> -
> -AArch64 Linux memory layout with 64KB pages + 2 levels::
> +  ffff000000000000	ffff7fffffffffff	 128TB		kernel logical memory map
> +  ffff800000000000	ffff9fffffffffff	  32TB		kasan shadow region
> +  ffffa00000000000	ffffa00007ffffff	 128MB		bpf jit region
> +  ffffa00008000000	ffffa0000fffffff	 128MB		modules
> +  ffffa00010000000	fffffdffbffeffff	 ~93TB		vmalloc
> +  fffffdffbfff0000	fffffdfffe5f8fff	~998MB		[guard region]
> +  fffffdfffe5f9000	fffffdfffe9fffff	4124KB		fixed mappings
> +  fffffdfffea00000	fffffdfffebfffff	   2MB		[guard region]
> +  fffffdfffec00000	fffffdffffbfffff	  16MB		PCI I/O space
> +  fffffdffffc00000	fffffdffffdfffff	   2MB		[guard region]
> +  fffffdffffe00000	ffffffffffdfffff	   2TB		vmemmap
> +  ffffffffffe00000	ffffffffffffffff	   2MB		[guard region]
[...]
> +AArch64 Linux memory layout with 64KB pages + 3 levels (52-bit with HW support)::
>  
> -For details of the virtual kernel memory layout please see the kernel
> -booting log.
> +  Start			End			Size		Use
> +  -----------------------------------------------------------------------
> +  0000000000000000	000fffffffffffff	   4PB		user
> +  fff0000000000000	fff7ffffffffffff	   2PB		kernel logical memory map
> +  fff8000000000000	fffd9fffffffffff	1440TB		[gap]
> +  fffda00000000000	ffff9fffffffffff	 512TB		kasan shadow region
> +  ffffa00000000000	ffffa00007ffffff	 128MB		bpf jit region
> +  ffffa00008000000	ffffa0000fffffff	 128MB		modules
> +  ffffa00010000000	fffff81ffffeffff	 ~88TB		vmalloc
> +  fffff81fffff0000	fffffc1ffe58ffff	  ~3TB		[guard region]
> +  fffffc1ffe590000	fffffc1ffe9fffff	4544KB		fixed mappings
> +  fffffc1ffea00000	fffffc1ffebfffff	   2MB		[guard region]
> +  fffffc1ffec00000	fffffc1fffbfffff	  16MB		PCI I/O space
> +  fffffc1fffc00000	fffffc1fffdfffff	   2MB		[guard region]
> +  fffffc1fffe00000	ffffffffffdfffff	3968GB		vmemmap
> +  ffffffffffe00000	ffffffffffffffff	   2MB		[guard region]

Since we risk getting these out of sync, I'd rather only maintain two
entries: defconfig (4K pages, 48-bit VA) and the largest (64K pages,
52-bit with HW support).


> +52-bit VA support in the kernel
> +-------------------------------
> +If the ARMv8.2-LVA optional feature is present, and we are running
> +with a 64KB page size; then it is possible to use 52-bits of address
> +space for both userspace and kernel addresses. However, any kernel
> +binary that supports 52-bit must also be able to fall back to 48-bit
> +at early boot time if the hardware feature is not present.
> +
> +This fallback mechanism necessitates the kernel .text to be in the
> +higher addresses s.t. they are invariant to 48/52-bti VAs. Due to

The 's.t.' abbreviation always confused me. Could you please change it
to "so that" in the documentation? (I'm not too bothered about the
commit logs).

Also fix s/bti/bit/.

Otherwise:

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
