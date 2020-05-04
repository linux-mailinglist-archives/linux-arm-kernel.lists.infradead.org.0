Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B061C3D79
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 16:48:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/VNBTdRGEvbNLXbZjvLCMQ68vFyuR9zif1T5pg8FyE=; b=rC/8lQl2sFnOir
	5HTSAj6mu3/RCARXWul9zhG7JR/VH+LmtC2ch9Ht5nldH+b+QrtcXJCP0qlIaFcJb6uH+Ncl/cRiJ
	LIIlIINq5+3bHhPEPYseuVSxH5tepln/bh1heAYCiBCgWzS4+3la4n9V3jPL/dPe7vcmV/OhyurzG
	A19izqdsEH7VT1Pk6X6iS565+bDsxUGJRohoZZLhdf734Anlx1q1D8trnA7bejmOP7nJC4Fe4kcMJ
	as9Bl7sq818KSFUUa1F46zoge/Kn6+lcjLJSFYKXwyq3I/ysfWamDo7gCMn/OEjDa9O5QJAbCIIAw
	ZCc2x0Vqf7jClULwdPCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVcO0-00032H-Bm; Mon, 04 May 2020 14:48:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVcNu-00030u-Gr
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 14:47:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 881211FB;
 Mon,  4 May 2020 07:47:52 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 018C53F305;
 Mon,  4 May 2020 07:47:50 -0700 (PDT)
Date: Mon, 4 May 2020 15:47:44 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v3 01/23] arm64: alternative: Allow alternative_insn to
 always issue the first instruction
Message-ID: <20200504144743.GB2884@gaia>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-2-catalin.marinas@arm.com>
 <20200427165737.GD15808@arm.com> <20200428114354.GE3868@gaia>
 <20200429102600.GA30377@arm.com> <20200429140425.GC10651@gaia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429140425.GC10651@gaia>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_074754_605602_9D822E3E 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Will Deacon <will@kernel.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 03:04:25PM +0100, Catalin Marinas wrote:
> From 73f3869cb68fab1505d7b400ae8a39a19c5fc9e9 Mon Sep 17 00:00:00 2001
> From: Catalin Marinas <catalin.marinas@arm.com>
> Date: Wed, 27 Nov 2019 09:07:30 +0000
> Subject: [PATCH] arm64: alternative: Always emit the first instruction in
>  ALTERNATIVE blocks
> 
> Currently with the ALTERNATIVE macro or alternative_insn, the cfg (or
> enable) arguments disable the entire asm block. Change the macros to
> only omit the alternative block on !IS_ENABLED(cfg). In addition, remove
> the cfg arguments to to ALTERNATIVE in those few calls where it is still
> passed. There is no change to the resulting kernel image with defconfig.
> 
> alternative_insn's enable argument will be used in a subsequent patch
> and we are keeping the ALTERNATIVE C macro arguments in line with the
> asm version.
> 
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>

I no longer need this patch as I moved the page tag zeroing from
clear_page to the actual mte.S file (called via set_pte_at()). So don't
bother reviewing this.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
