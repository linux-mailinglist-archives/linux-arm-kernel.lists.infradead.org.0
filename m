Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB38850C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 18:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grz1AlCg00EyFmHAMJrXSCPgXbNvnE3RloaEaq8PrSo=; b=E1Gbbcf9qsyJ6r
	310pArtsbDexngb8ywEiyx2ljFUwdnDt5x55vuXek40IJjg2Yp3q13kPXwJyph5Y+ZdiV2532bhFE
	ce81Bs7C6k9TgH6PRvKMx2HuDYMnqFq2nBXjpGhesfQWSuxXYqXdj/cVcrPmUWKSM2u0Px9jRvTed
	csrAU8W7UaHQB2zoZRZqfoG5Z66IdKh33hsp6HzlfMioAjqd1+MeBA/GegvFqGBJjSzVeTvo/V4Zh
	0Ob345DujYP0YU+LIaB3UYqExMYVsJYCtCyeGb3cikMgQTnYiEG0w/KyexGiZvY3s/TEcetOZ7rl1
	VD/Ty36oKJPARh9iNSdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOYY-0000Yt-NQ; Wed, 07 Aug 2019 16:12:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOYN-0000YV-C0
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 16:12:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D3963344;
 Wed,  7 Aug 2019 09:12:42 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D1FB13F694; Wed,  7 Aug 2019 09:12:41 -0700 (PDT)
Date: Wed, 7 Aug 2019 17:12:39 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <steve.capper@arm.com>
Subject: Re: [PATCH V5 03/12] arm64: kasan: Switch to using KASAN_SHADOW_OFFSET
Message-ID: <20190807161239.GB1766@arrakis.emea.arm.com>
References: <20190807155524.5112-1-steve.capper@arm.com>
 <20190807155524.5112-4-steve.capper@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807155524.5112-4-steve.capper@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_091243_453002_FD27480F 
X-CRM114-Status: GOOD (  19.88  )
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

On Wed, Aug 07, 2019 at 04:55:15PM +0100, Steve Capper wrote:
> KASAN_SHADOW_OFFSET is a constant that is supplied to gcc as a command
> line argument and affects the codegen of the inline address sanetiser.
> 
> Essentially, for an example memory access:
>     *ptr1 = val;
> The compiler will insert logic similar to the below:
>     shadowValue = *(ptr1 >> KASAN_SHADOW_SCALE_SHIFT + KASAN_SHADOW_OFFSET)
>     if (somethingWrong(shadowValue))
>         flagAnError();
> 
> This code sequence is inserted into many places, thus
> KASAN_SHADOW_OFFSET is essentially baked into many places in the kernel
> text.
> 
> If we want to run a single kernel binary with multiple address spaces,
> then we need to do this with KASAN_SHADOW_OFFSET fixed.
> 
> Thankfully, due to the way the KASAN_SHADOW_OFFSET is used to provide
> shadow addresses we know that the end of the shadow region is constant
> w.r.t. VA space size:
>     KASAN_SHADOW_END = ~0 >> KASAN_SHADOW_SCALE_SHIFT + KASAN_SHADOW_OFFSET
> 
> This means that if we increase the size of the VA space, the start of
> the KASAN region expands into lower addresses whilst the end of the
> KASAN region is fixed.
> 
> Currently the arm64 code computes KASAN_SHADOW_OFFSET at build time via
> build scripts with the VA size used as a parameter. (There are build
> time checks in the C code too to ensure that expected values are being
> derived). It is sufficient, and indeed is a simplification, to remove
> the build scripts (and build time checks) entirely and instead provide
> KASAN_SHADOW_OFFSET values.
> 
> This patch removes the logic to compute the KASAN_SHADOW_OFFSET in the
> arm64 Makefile, and instead we adopt the approach used by x86 to supply
> offset values in kConfig. To help debug/develop future VA space changes,
> the Makefile logic has been preserved in a script file in the arm64
> Documentation folder.
> 
> Signed-off-by: Steve Capper <steve.capper@arm.com>

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
