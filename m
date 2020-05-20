Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5521DB2C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:12:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w75HCSQ4re20bKp5jiRl6wESbYJuX4yAA2a5ENEVq7w=; b=nZVXc9EKejCFKe
	FaibT5lp/ltMByOmXZyRx89r+1RLbzdO6Lu4dT8tJVHiHqL3PhG2sekWf5QC75XL6w8j0O8353IW5
	yapyd4Yx9PdEO/GU/8mL5xlG78KnPNscT55plB1SSosV1TIwrxJBfrZGQamXxdnYJb6xz86yUYxdr
	0IlctyZ6wo7ME6aRKurAWYR2RB/5+NMr7xEEwB4rIf0frnOKPchERmDOSKqx7HDgUDYHZNDGK8I9A
	yMaxdN9L+eClW45GVbh47gB2N9zGDyuk/cyCzG0+NtOQVzQASRdwmpKKhdKBuB1gHOglsz0m0QhQe
	Pf7l+zLf+KZ8pzQskhkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNZg-0001jH-11; Wed, 20 May 2020 12:11:52 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNZU-0001hX-1L
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:11:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1589976698;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=dxK4Z+9yHO4jSPBzrsgC+jQ7JJM6/ROZjhK04+QSi/s=;
 b=L72MUnMJGFYtao72d82KD8w3lzOPdbioUYLkp8jzq1rkP8LPTPGQINrztVWhbZja3H
 xsIXF4urN/EuL71PRwrVv/nhhPHtui0/ZeekRj1pHSsyWgw9dR3h4dtZMGwq8XxV4RNZ
 70tM3Sg8+qc/kFulMvXp6GOTCWb164QJOXQwmhlU2tMmRGV7beGTOmhFVXkbAyye0qhL
 wAkcHsG7JP/R+DYkMhCidWduW7NBT6kuIM4bXc5osDvfHX/hAwigeZU1AYg/HwXcpGQK
 wR6Je9UsID12ZjQ75Rj2kl204l1YJLVKlD+Pz7da6a0ZdP7Z9Wt59iEtG7PP7lzPEawY
 tsAA==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPbI/Sc5g=="
X-RZG-CLASS-ID: mo00
Received: from tauon.chronox.de by smtp.strato.de (RZmta 46.7.0 DYNA|AUTH)
 with ESMTPSA id k09005w4KCBZ5LX
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Wed, 20 May 2020 14:11:35 +0200 (CEST)
From: Stephan Mueller <smueller@chronox.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 1/2] hwrng: iproc-rng200 - Set the quality value
Date: Wed, 20 May 2020 14:11:34 +0200
Message-ID: <3322411.JsYv2Y6bm7@tauon.chronox.de>
In-Reply-To: <CAJKOXPeBkZ3R2wT9-A8LWkFx0W9KY70VW7JNjwp0RMDRc7hkTg@mail.gmail.com>
References: <15745285.MnsZKaK4VV@tauon.chronox.de>
 <2041475.ybOAuNAZB8@tauon.chronox.de>
 <CAJKOXPeBkZ3R2wT9-A8LWkFx0W9KY70VW7JNjwp0RMDRc7hkTg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_051140_663947_865F4AD1 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:12 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, Lukasz Stelmach <l.stelmach@samsung.com>,
 Scott Branden <sbranden@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Ray Jui <rjui@broadcom.com>,
 Markus Elfring <elfring@users.sourceforge.net>,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 20. Mai 2020, 14:00:01 CEST schrieb Krzysztof Kozlowski:

Hi Krzysztof,

> On Wed, 20 May 2020 at 13:53, Stephan Mueller <smueller@chronox.de> wrote:
> > > > That said, the illustrated example is typical for hardware RNGs. Yet
> > > > it is never guaranteed to work that way. Thus, if you can point to
> > > > architecture documentation of your specific hardware RNGs showing that
> > > > the data read from the hardware is pure unconditioned noise data, then
> > > > I have no objections to the patch.
> > > 
> > > I can tell for sure that this is the case for exynos-trng[1].
> > 
> > So you are saying that the output for the exynos-trng is straight from a
> > ring oscillator without any post-processing of any kind?
> 
> Hi,
> 
> I think we will never be able to state this because the manual is
> quite limited in sharing internals. What the driver does and probably
> Lukasz wanted to say is that there is "post processing" block and
> feature which can be disabled. The manual is saying the TRNG block
> generates random data from thermal noise but not how much in a direct
> way. There could be some simple post-processing or not (except the one
> able to on/off). Also manual says this post processing block is there
> to remove statistical weakness from the TRNG block. To me it does not
> prove enough that raw data is really raw...

Unterstood, but can't that statement be added to the commit message?
> 
> Best regards,
> Krzysztof


Ciao
Stephan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
