Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B855F2FC90
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 15:43:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+JQI7n2y7+8yX1jLwIkYcclm+9rlma8+VwGQ8rxIGBw=; b=LnMFeA+LeP0WjC
	mUaO1oXBGJaJSmk/sPYn2YKx4Eun8EQtJ/v3FjyNqXoKcKGz9eZVZi/teNpt+hgA4aEgxJfR4QrvN
	SiD1+2XETFq3pFZO9oQBX6lsGO4oeODJCcSodjLO86JFy6HwzXl31Dr2hvPgH2z6EfMvb1dIivHHl
	jjFlp6CwBcthe0RGqt5fkwD2iKdF2/Rhphf4dLEUYH2tc9YCWx3fJKRUePhRPtm/1HT45LAHoG8+o
	8mluFnJO9srbMOfv15CON/4+I81L8SRljamtd/cw3ZTU541gCoz2GwGj8BA1OvG0JuXyUZUwDVRPu
	eBzMopjiFYm6hclZ9g7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWLKf-0003l5-5j; Thu, 30 May 2019 13:43:01 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWLKX-0003kJ-Qp
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 13:42:55 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1hWLKM-0005dG-Lx; Thu, 30 May 2019 21:42:42 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1hWLKI-0003fX-HI; Thu, 30 May 2019 21:42:38 +0800
Date: Thu, 30 May 2019 21:42:38 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH] crypto: jitterentropy - change back to module_init()
Message-ID: <20190530134238.y6pwi2ybib5vdk4p@gondor.apana.org.au>
References: <20190521183417.GA121164@gmail.com>
 <20190521184622.37202-1-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521184622.37202-1-ebiggers@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_064254_014927_927E6090 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, linux-crypto@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 11:46:22AM -0700, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
> 
> "jitterentropy_rng" doesn't have any other implementations, nor is it
> tested by the crypto self-tests.  So it was unnecessary to change it to
> subsys_initcall.  Also it depends on the main clocksource being
> initialized, which may happen after subsys_initcall, causing this error:
> 
>     jitterentropy: Initialization failed with host not compliant with requirements: 2
> 
> Change it back to module_init().
> 
> Fixes: c4741b230597 ("crypto: run initcalls for generic implementations earlier")
> Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Signed-off-by: Eric Biggers <ebiggers@google.com>
> ---
>  crypto/jitterentropy-kcapi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
