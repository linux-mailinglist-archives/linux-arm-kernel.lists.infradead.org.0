Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B82FF19BECF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 11:43:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=No8L1SMAPjRboj9xUgAMqhDpPMThfIPyB7FdAY8clbU=; b=s1jBwes4ZeosIU
	S7NUvBTgRowrpog+hu4JvtibJx4xNqj52oLHB6K9Eb/NGNqoDaUZliid9qDiPAR7OTF/XMPq1rxJk
	89hz/QZP5uRZzwjpAhyi/k1UOfqfpynRM2ojHKI2epf2djge3CGpDnkZ4m7oFEQAGtlVQ1p+k/hQ7
	/hkyNF9B1rCHeQq0EIpAaX72Jny/K0hs/U+GOnVJ3tIUimMG8KkXA6kpW+BItkaX84MEKlS1a7KHt
	JNZ3E+2tvIvzuHyZAcjciMpT7C4TU2LvptaAcoPEfZecIDqxNdU7KCf+XX6LclYciAycrHY2A6KlM
	ogaxw9mehA/VXkGEseAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJwNE-0001b1-DS; Thu, 02 Apr 2020 09:42:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJwN5-0001ac-Hm
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 09:42:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AA6C72072E;
 Thu,  2 Apr 2020 09:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585820566;
 bh=Ocr0IjWqiJFKmYYQ7OMkFAY+dmCRv305czhSy6FmIIQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KCLS2ZJ5f+xGIYsOjo6xopsQtTpQmpvdCzLszXHg0WALU9yy4jUWn5COFAGig84Jn
 DTHmnJsijX99dgWnRfxhi1y8v+n46oHmy9M37cA81HKYxw2FdiGV3n1nFTuU44JNfm
 4/ym/T3Vw59zCVGwIHGeKnng5UYSeV9LRTpj9OLU=
Date: Thu, 2 Apr 2020 10:42:40 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH net-next v6 00/11] net: ethernet: ti: add networking
 support for k3 am65x/j721e soc
Message-ID: <20200402094239.GA3770@willie-the-truck>
References: <20200401.113627.1377328159361906184.davem@davemloft.net>
 <20200401223500.224253-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401223500.224253-1-ndesaulniers@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_024247_609548_D5D09919 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, arnd@arndb.de,
 robh@kernel.org, netdev@vger.kernel.org, t-kristo@ti.com, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, peter.ujfalusi@ti.com,
 clang-built-linux@googlegroups.com, m-karicheri2@ti.com, olof@lixom.net,
 kuba@kernel.org, olteanv@gmail.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, rogerq@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 03:35:00PM -0700, Nick Desaulniers wrote:
> >> I think the ARM64 build is now also broken on Linus' master branch,
> >> after the net-next merge? I am not quite sure if the device tree
> >> patches were supposed to land in mainline the way they did.
> >
> >There's a fix in my net tree and it will go to Linus soon.
> >
> >There is no clear policy for dt change integration, and honestly
> >I try to deal with the situation on a case by case basis.
> 
> Yep, mainline aarch64-linux-gnu- builds are totally hosed.  DTC fails the build
> very early on:
> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/311246218
> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/311246270
> There was no failure in -next, not sure how we skipped our canary in the coal
> mine.

Yes, one of the things linux-next does a really good job at catching is
build breakage so it would've been nice to have seen this there rather
than end up with breakage in Linus' tree :(

Was the timing just bad, or are we missing DT coverage or something else?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
