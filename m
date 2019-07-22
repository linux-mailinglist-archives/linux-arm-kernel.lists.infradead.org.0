Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2466FC65
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 11:42:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTCwM/3aMOUiniC1sdXh0qkGrFPBUaxDw9WaiTd9sC0=; b=YynLU1WprBsE1F
	5HSTEleI/42OT6BXLjcfpuUuTUdYrS3VVRZINnsadUYs2wLKdKMmbRrnJavKM+igG0x8L/NfKrRdE
	2KmA9jP89VXxM63dQPBMrfINVnjXHdMeF6FIxNF1oomxJMcBRvm7Ktl/feeYOxc87jnJn9wkZqJCk
	B9yja2mNQHch/f8GnuH+jNlYiblaJ4vRnQUiTFFXiF/td5DLGWWO3aDHgRVDAFY1cNQNIf7rVptcw
	jhLaBxBqsxytE6m+h0chxUaO9N452/HynE/P6GzmPM26yJ1VZwC6XJPp2izvf07OaQzvQxn36aQkr
	/PMODvC9Bel9wMnY2PYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpUpZ-0001CA-VY; Mon, 22 Jul 2019 09:42:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpUpI-0001Ba-Ln
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 09:41:49 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 557A1218EA;
 Mon, 22 Jul 2019 09:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563788507;
 bh=jauXQmrxA9a72OrrDn+WjHiK7lIIU0c1xKoYSvyMSrM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i9S0FprbkqfyWctXsZA1Cd2EZn1UqTyHuNPYd3xevoBzGz2iC/9Q8PkX3qUESdT6E
 akdBvvhER/yP1ZuvfuQyoQuZmvqG0ZjLipX41kySe+h0cGT3Yz6YONppDnqmfjyJuo
 IpL3qZTrZTilrO9HikY/dNScwqWR7VfIhsD9emg4=
Date: Mon, 22 Jul 2019 10:41:41 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v2] arm64: vdso: Cleanup Makefiles
Message-ID: <20190722094140.giv5vivoqm4bzl5t@willie-the-truck>
References: <20190712153746.5dwwptgrle3z25m7@willie-the-truck>
 <20190719101018.1984-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190719101018.1984-1-vincenzo.frascino@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_024148_725700_D1412558 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, naohiro.aota@wdc.com, sthotton@marvell.com,
 luto@kernel.org, arnd@arndb.de, huw@codeweavers.com, catalin.marinas@arm.com,
 daniel.lezcano@linaro.org, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux@armlinux.org.uk, yamada.masahiro@socionext.com, andre.przywara@arm.com,
 john.stultz@linaro.org, 0x7f454c46@gmail.com, linux@rasmusvillemoes.dk,
 tglx@linutronix.de, salyzyn@android.com, pcc@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 11:10:18AM +0100, Vincenzo Frascino wrote:
> The recent changes to the vdso library for arm64 and the introduction of
> the compat vdso library have generated some misalignment in the
> Makefiles.
> 
> Cleanup the Makefiles for vdso and vdso32 libraries:
>   * Removing unused rules.
>   * Unifying the displayed compilation messages.
>   * Simplifying the generic library inclusion path for
>     arm64 vdso.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/kernel/vdso/Makefile   |  9 +++------
>  arch/arm64/kernel/vdso32/Makefile | 10 +++++-----
>  2 files changed, 8 insertions(+), 11 deletions(-)

Thanks, I'll queue this for -rc2.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
