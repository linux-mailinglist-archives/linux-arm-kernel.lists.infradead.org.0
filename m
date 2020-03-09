Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C83617E61B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 18:52:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nj2nk/8wnWPOp//gn34fUSKfC/b6xqHZ6iJpYItOs4M=; b=ecwUt4u7UsCR27
	QXeX7tInhhkB34FZjY8bSaLXNYevlcjSwBm6zFZZawe89y1W6MUG9iSI6nl9nyc/zWZqREuoQ4Ett
	kz3jc+oVd4ey2qSkpyoYu0PsZlkYlvqwXSM0+D/z/D88pwfqdZAlhXCwjTicBTY42QvOzZ1LNk/6R
	UX/FGOTEbgeDtJGG00DkGyUzgeAUpJAyk5Hip6DMbuW2m6kC/B4+9Z4lmtg4pn+I+I2XWmIwz53Kq
	vPpC/xMHdyqT/mmt9Znb1dJ6gWPTYiWUjZfR+ihM+y9ZoDlZc8efsWNj1DSQTSc49JtR6A1SasPIi
	gMqvntb/Pbsyi0p2Oq5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBMZr-00084V-JG; Mon, 09 Mar 2020 17:52:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBMZU-0007uH-BZ
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 17:52:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 743421FB;
 Mon,  9 Mar 2020 10:52:07 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 DC8933F67D; Mon,  9 Mar 2020 10:52:05 -0700 (PDT)
Date: Mon, 9 Mar 2020 17:52:03 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 12/18] arm64: kernel: Convert to modern annotations for
 assembly functions
Message-ID: <20200309175203.GE4124965@arrakis.emea.arm.com>
References: <20200218195842.34156-1-broonie@kernel.org>
 <20200218195842.34156-13-broonie@kernel.org>
 <CAKv+Gu9Bt93hCaOUrgtfYWp+BU4gheVf2Y==PXVyMZcCssRLQg@mail.gmail.com>
 <20200228133718.GB4019108@arrakis.emea.arm.com>
 <20200228152219.GA4956@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228152219.GA4956@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_105208_445221_0112B7DC 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvmarm <kvmarm@lists.cs.columbia.edu>, James Morse <james.morse@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Will Deacon <will@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 03:22:19PM +0000, Mark Brown wrote:
> On Fri, Feb 28, 2020 at 01:37:18PM +0000, Catalin Marinas wrote:
> > I wonder whether it would be easier to merge all these patches at
> > 5.7-rc1, once most of the major changes went in.
> 
> Only thing I can think that doing that might cause issue with is if
> people are doing work that's not likely to make it in this cycle then
> it'd be some extra rebasing or carrying of out of tree patches they'd
> need to do (plus obviously this series might pick up new conflicts
> itself).  It's not a completely automated process unfortunately,
> especially with trying to fix up some of the problems with the existing
> annotations changing the output.  But yeah, we could do that.

I queued this series for 5.7, apart from patch 12. I'll try to fix any
conflicts with whatever patches I'm adding but may drop some of them if
they conflict badly with code in -next (not likely). We'll revisit at
-rc1 to see what's left.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
