Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4007B1C9596
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/ZmOCi/42b5JX32X2cLYmpvbqneasEXVex+zZAGNB4=; b=LqOncH436PgNCK
	66BInDoDM0JDHi5GvQ69STuJAQRBwsUEebf/WybF0KNH3czkzI5MysKyDMA0E+rEM0v5OoXg4jXO5
	+ihVENKYXd3tMVh38tcFVbioCuGhE0nNZX/p/IxhM8oD/FyeZTUfQV8iNi4fmadfB6IRhJ6Z2F+VO
	z0v9sJtreliXNYkjnRz1OTQBTaKKNt4vZ2VRey2mpO7veM3lRhV5jOIW3zyxejs6gUsB2MrRMoLPK
	G0Oq2RZCJoz6y7JEiI0WJwnO32+IsG6NJCcXXkzJBY+cPivT0kIsCezPw7E1SmpR7d+ggOyTj8GRt
	bvOmZebodNOxoKjcoryw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWis6-0001dF-UF; Thu, 07 May 2020 15:55:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWirx-0001cj-Jv
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:55:30 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C202F20659;
 Thu,  7 May 2020 15:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588866929;
 bh=t90ugTOqIx/hQvdIGv6U8Xp3VutlAoEGGP+S2wrK+xI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ojgbGwWEv+V/iV9tuNm3S3RDODaQnmjZ6e83z1DG6xudIdccxWilWpFGP0jUAEIpC
 a+D1lVURrMAwGa+CTnjGp5zaHMwtKEUO85wkpxcGbJ/dMbVSH05V07K8NgdDx+fhVH
 sAkCTjA5u4icJkcwRTpUFACo6H43euJs7NqnMmIc=
Date: Thu, 7 May 2020 16:55:24 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 00/11] arm64: BTI kernel and vDSO support
Message-ID: <20200507155523.GB2648@willie-the-truck>
References: <20200506195138.22086-1-broonie@kernel.org>
 <20200507143332.GB1422@willie-the-truck>
 <20200507143547.GC1422@willie-the-truck>
 <20200507145901.GA1938@willie-the-truck>
 <20200507150905.GB6183@sirena.org.uk>
 <20200507151848.GA2294@willie-the-truck>
 <20200507154854.GC6183@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507154854.GC6183@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_085529_674822_96EA3B69 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kees Cook <keescook@chromium.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 04:48:54PM +0100, Mark Brown wrote:
> On Thu, May 07, 2020 at 04:18:48PM +0100, Will Deacon wrote:
> > On Thu, May 07, 2020 at 04:09:06PM +0100, Mark Brown wrote:
> 
> > > Can you share a .config?
> 
> > allmodconfig
> 
> Right, I'm seeing it here now - it's when CONFIG_GCOV_KERNEL is enabled
> and happens for clang-10 as well but not a GCC 10 prerelease build.

Interesting. Is that because GCC doesn't emit out-of-line GCOV functions,
or does it emit PAC/BTI instructions for them instead? (you can disassemble
one of the problematic opjects to have a look).

> Adding
> 
> 	depends !(CC_IS_CLANG && GCOV_KERNEL)
> 
> avoids the warning but obviously we should actually fix the issue.

I can't immediately see how to fix it, so your hack above might be the best
bet for now. I'm just a little wary that it might not be limited to GCOV,
but rather anything where the compiler provides a form of runtime.

Anyway, I'll try your hack and see if I run into any more issues.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
