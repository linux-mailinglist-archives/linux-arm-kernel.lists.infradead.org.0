Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BDC8D225
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wg5Fae3HvmU7slMJVCZdDfrxkxIbZiC5J7OXLlk0QIg=; b=a08oJwi+qrDWrW
	d7qauReBI5Zq87ybF6iqRQs/puqLheJlBMdUoiEjt3yt3PhIsThCfYbeuiKaNrd48gYjXQNHtpX+i
	95Ad5168DQzgaD8OCpMLJDUtMgbiDSi4aWmSi223jlpBGvnMc46D0jQQv7H9T8Bpqd9gC2F9ETxpH
	wP4cemNx6HXdaR8NmPQji4hlnGp7kglEzIGDo368rwfFPBUa/tIlxUYSTNP1x6aAY4sTAPEIKt0+m
	14OkN8AD/YiTPqVu2HSrwpeg2c8rMYeLaHqk5nmFKwGZ42rh21Q3AlwCsHh+mhV9WAaEnbuz6kEsn
	iVVUNVTI6RoVKlZMp6IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrTJ-0008JK-T7; Wed, 14 Aug 2019 11:29:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxrT6-0008J0-Sq
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:29:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 10E3928;
 Wed, 14 Aug 2019 04:29:28 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D45B3F706;
 Wed, 14 Aug 2019 04:29:26 -0700 (PDT)
Date: Wed, 14 Aug 2019 12:29:24 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 0/8] Fix issues with 52-bit kernel virtual addressing
Message-ID: <20190814112924.GD17931@lakrids.cambridge.arm.com>
References: <20190813170149.26037-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813170149.26037-1-will@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_042928_976203_0B51E1D0 
X-CRM114-Status: GOOD (  14.93  )
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
Cc: Steve Capper <steve.capper@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Qian Cai <cai@lca.pw>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 06:01:41PM +0100, Will Deacon wrote:
> Hi all,
> 
> This patch series addresses some issues with 52-bit kernel VAs reported
> by Qian Cai and Geert. It's all confined to asm/memory.h and I got a bit
> carried away cleaning that thing up so the patches get more worthless
> as you go through the series. Still, I'd like to queue this on top of
> the 52-bit VA stuff currently sitting in -next.
> 
> Although Geert and Steve tested my initial hacks, I dropped the tags
> because I've split things up and could've easily broken things again.
> 
> Cheers,
> 
> Will
> 
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Steve Capper <steve.capper@arm.com>
> Cc: Qian Cai <cai@lca.pw>
> Cc: Andrey Konovalov <andreyknvl@google.com>
> Cc: Geert Uytterhoeven <geert@linux-m68k.org>

Other than the comments I've made, for the series:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

If you want, I can spin a fix / cleanup for the VA_START issues I
mentioned atop of this series.

Thanks,
Mark.

> 
> --->8
> 
> Will Deacon (8):
>   arm64: memory: Fix virt_addr_valid() using __is_lm_address()
>   arm64: memory: Ensure address tag is masked in conversion macros
>   arm64: memory: Rewrite default page_to_virt()/virt_to_page()
>   arm64: memory: Simplify virt_to_page() implementation
>   arm64: memory: Simplify _VA_START and _PAGE_OFFSET definitions
>   arm64: memory: Implement __tag_set() as common function
>   arm64: memory: Add comments to end of non-trivial #ifdef blocks
>   arm64: memory: Cosmetic cleanups
> 
>  arch/arm64/include/asm/memory.h | 89 ++++++++++++++++++++---------------------
>  1 file changed, 44 insertions(+), 45 deletions(-)
> 
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
