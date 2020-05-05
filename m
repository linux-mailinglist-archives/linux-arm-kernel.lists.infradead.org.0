Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB48C1C53CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:58:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DEwyv41Zg+SiJVCSZbn4NCGtD+ukF3S1hUsOfMlo7I=; b=TY08vS14JaMXqr
	cn5KVPg01i6mdfG1WDOGFFrInqV7hRijRZu2Bff5FJ8J0eKa/tt83L47h5y/QsJrO9TMZ/u/19MhR
	sQUH30lFAOMyO53WZKB0FHeOZ/l+D3fhON7H51kNeqwFn2bOZ95bkoRmLDy+A3iT7uuP7T1dCUjm+
	eANWbDFu3SMi3oylUPLVO62KS+1Iif8oStar9D6eZlK+2FAAlvoQnxkgcVgBANrMM42eF3DWUoNM5
	fHTLijADuNwYcBu3JpgL7SwgvzlwRPfdc7BorE5tsfvh0Uv4wiaBjlXqNOs+MXiBIkLE3EGVB44/Q
	aA+pUFLvyWlSvBB4uexA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVvHN-0002Jy-TW; Tue, 05 May 2020 10:58:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVvHG-0002Ie-Tw
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:58:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AEDCC206A5;
 Tue,  5 May 2020 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588676298;
 bh=kGKEaMOGdWDAoVnU3rzjWdKoL2we/jTZgg/mglaLMyE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=io0hVQK3c32p7zo87nJ8WEyOmN8PemqN6FZgT184MWEXddcmIC016k5WG8coHZygZ
 HnNb/gQoffmsmIVjR3DtHjQK10llOSRu3CQIKj00o0vKxbgaZlsMibJ2jN2sDRJP4s
 Uug8qmab9BvwkBuiO1MKuzZaxwfIlnN4BeguisBs=
Date: Tue, 5 May 2020 11:58:13 +0100
From: Will Deacon <will@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 1/2] arm64: Sort vendor-specific errata
Message-ID: <20200505105811.GD19710@willie-the-truck>
References: <20200416115658.20406-1-geert+renesas@glider.be>
 <20200416115658.20406-2-geert+renesas@glider.be>
 <CAK8P3a14Vk1JKRYZkkAhC9fAV4CMQzvux_FWdNkn39OwsYn4mA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a14Vk1JKRYZkkAhC9fAV4CMQzvux_FWdNkn39OwsYn4mA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_035819_013474_881B02F9 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Wei Xu <xuwei5@hisilicon.com>, Robert Richter <rrichter@marvell.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andy Gross <agross@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 03:06:55PM +0200, Arnd Bergmann wrote:
> On Thu, Apr 16, 2020 at 1:57 PM Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
> >
> > Sort configuration options for vendor-specific errata by vendor, to
> > increase uniformity.
> > Move ARM64_WORKAROUND_REPEAT_TLBI up, as it is also selected by
> > ARM64_ERRATUM_1286807.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> 
> Looks fine to me, though I wonder if we should move the errata
> menu to a separate Kconfig file, given that it's already longer than the
> Kconfig.platforms and Kconfig.debug files at 500 lines.
> 
> Maybe a Kconfig.cpu with both the "ARMv8.x architectural features" and
> errata menus?
> 
> Either way,
> 
> Acked-by: Arnd Bergmann <arnd@arndb.de

I've queued this patch as-is on for-next/kconfig [1]. Happy to take a
follow-up moving things out into Kconfig.cpu.

Will

[1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/kconfig


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
