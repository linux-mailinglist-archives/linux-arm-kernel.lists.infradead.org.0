Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E057C9F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 19:09:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9KOQayj4SkzbDorYtpnCCNLE6C1GDxQhIRDH+VUPsI=; b=tS7ayCGOjZrnS4
	6L/xC7Q+n+s/dWgfjMW/yeRTbwFc0J7Sbll4rRVtaR83J29V+iO+2GaJvulBs3IW0ynRpqjiiz09T
	tBgMLK4dYOs9xvjJSyuXUm7mdPJIUiwaFCjPZG7pUxg4QnMTqvOQQ071ivljM984qGcladLkEs2SZ
	TidVjR+O0oGlO/j9NBidfpr8hux4dAv7/YjwhREo53X8txApqzGrhHOuJkFtnSSnyikATsfXEigPs
	60uBNdqNDBsf7j3dFQOe0ZDfaCYjlbAde4+3vx3/itkA3SGA8FkixtL5ZBpcpYU1dLW2lXKoeKz/5
	yqOgwTKnjYHKiCgPfprw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hss6c-00019l-LV; Wed, 31 Jul 2019 17:09:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hss6W-00018x-F1
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 17:09:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9CD78337;
 Wed, 31 Jul 2019 10:09:31 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B75903F71F; Wed, 31 Jul 2019 10:09:29 -0700 (PDT)
Date: Wed, 31 Jul 2019 18:09:27 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH] arm64: vdso: Fix Makefile regression
Message-ID: <20190731170927.GD17773@arrakis.emea.arm.com>
References: <CAGnkfhyT=2kPsiUy-V=aCA_s-C4BXgD++hAZ9ii1h0p94mMVQA@mail.gmail.com>
 <20190729125421.32482-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729125421.32482-1-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_100932_547875_56BA10D9 
X-CRM114-Status: GOOD (  11.23  )
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
Cc: linux-arch@vger.kernel.org, arnd@arndb.de, pcc@google.com,
 Matteo Croce <mcroce@redhat.com>, 0x7f454c46@gmail.com,
 linux-kernel@vger.kernel.org, salyzyn@android.com, andre.przywara@arm.com,
 luto@kernel.org, linux@rasmusvillemoes.dk, tglx@linutronix.de,
 sthotton@marvell.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 01:54:21PM +0100, Vincenzo Frascino wrote:
> Using an old .config in combination with "make oldconfig" can cause
> an incorrect detection of the compat compiler:
> 
> $ grep CROSS_COMPILE_COMPAT .config
> CONFIG_CROSS_COMPILE_COMPAT_VDSO=""
> 
> $ make oldconfig && make
> arch/arm64/Makefile:58: gcc not found, check CROSS_COMPILE_COMPAT.
> Stop.
> 
> Accordingly to the section 7.2 of the GNU Make manual "Syntax of
> Conditionals", "When the value results from complex expansions of
> variables and functions, expansions you would consider empty may
> actually contain whitespace characters and thus are not seen as
> empty. However, you can use the strip function to avoid interpreting
> whitespace as a non-empty value."
> 
> Fix the issue adding strip to the CROSS_COMPILE_COMPAT string
> evaluation.
> 
> Cc: Will Deacon <will@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Reported-by: Matteo Croce <mcroce@redhat.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Queued for 5.3-rc3. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
