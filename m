Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76378905FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 18:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+4chrVUY80AqfXrsUOiiRGNG/G7SeEWKymXsMV0FXE=; b=aMYZtkeHKs6If3
	pyNDvthJWmZ80wzCB6RrLMHonbl0vBYBga5G2lXcumHl8+TjZ2xti7nHHRxBZHWvlPvYZiqKmoGIf
	XA4SEd///JrPdZ5G6dx4PyPuJwuJV3IZ08YDWabGzU+97ALWr6egZqJBEwp/9S2K20UQM2khTzO8O
	LkKhW3JRLUaAQkmvuUfapCwY7r6T/Om0g8H2UaFYgVitHykmF5pv7KngQGP4mYpgDfVkUZwLfXkZe
	n90lQsR4xZhLx7AdBy7YJkpiT7HI0iL7BuR4LEmTYSRs94OM8yNdmaxeWplQj/HY8xASQFDZgbYEU
	13+1hVLOPfShmRZpjBaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyfHa-000144-DI; Fri, 16 Aug 2019 16:40:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyfHO-00013Z-9f
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 16:40:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9B15528;
 Fri, 16 Aug 2019 09:40:36 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 CC39A3F694; Fri, 16 Aug 2019 09:40:35 -0700 (PDT)
Date: Fri, 16 Aug 2019 17:40:33 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: ftrace: Ensure module ftrace trampoline is
 coherent with I-side
Message-ID: <20190816164033.GA36069@arrakis.emea.arm.com>
References: <20190816135743.13683-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816135743.13683-1-will@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_094042_383457_F00DCB36 
X-CRM114-Status: GOOD (  10.66  )
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
Cc: James Morse <james.morse@arm.com>, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 02:57:43PM +0100, Will Deacon wrote:
> The initial support for dynamic ftrace trampolines in modules made use
> of an indirect branch which loaded its target from the beginning of
> a special section (e71a4e1bebaf7 ("arm64: ftrace: add support for far
> branches to dynamic ftrace")). Since no instructions were being patched,
> no cache maintenance was needed. However, later in be0f272bfc83 ("arm64:
> ftrace: emit ftrace-mod.o contents through code") this code was reworked
> to output the trampoline instructions directly into the PLT entry but,
> unfortunately, the necessary cache maintenance was overlooked.
> 
> Add a call to __flush_icache_range() after writing the new trampoline
> instructions but before patching in the branch to the trampoline.
> 
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: <stable@vger.kernel.org>
> Fixes: be0f272bfc83 ("arm64: ftrace: emit ftrace-mod.o contents through code")
> Signed-off-by: Will Deacon <will@kernel.org>

Queued for 5.3. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
