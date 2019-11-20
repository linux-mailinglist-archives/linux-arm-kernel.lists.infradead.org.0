Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D5210329D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 05:50:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GuY/YHY27y25btTtyBAvFsugMTC0vO6WleiQtUH6yuo=; b=dUCYZY9frPWM/l8lqZy97U4Mq9
	gEw35OHKHXE4V6oZncW6Y8U9HtDf9Futalcp5Ur9LZqzMXpLkaVN0h5B9fB1vwFIbxaainyPAydn6
	DkWCt0zEIouaTpGdTs3PY2Uc7CkM3ZYB51GriGSClqhupQPHGBYogf4YVItpJrwtxaW9fSx6Iu8AE
	T+l+kcQQlPfRZq+l2lNM37yQuqqlTf3NgamRjw7hdmdesKC3AL0oKb6z2YZYMnN7c8Ah+DkOV/NQ6
	VKkOOfZpofGCZIkSquG6MPZ5gSmpQGvvgShvh0dmNSztpiBLQHe1POyOkz9z61l8P6E5+w+q8R5L/
	AlePb1lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXHwm-0006Lf-6O; Wed, 20 Nov 2019 04:50:32 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXHwd-0006KN-IY; Wed, 20 Nov 2019 04:50:25 +0000
Received: from tarshish (unknown [10.0.8.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id EB6BA440428;
 Wed, 20 Nov 2019 06:50:16 +0200 (IST)
References: <20191120031622.88949-1-stephen@brennan.io>
 <20191120031622.88949-2-stephen@brennan.io>
User-agent: mu4e 1.2.0; emacs 26.1
From: Baruch Siach <baruch@tkos.co.il>
To: Stephen Brennan <stephen@brennan.io>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/4] dt-bindings: rng: add BCM2711 RNG compatible
In-reply-to: <20191120031622.88949-2-stephen@brennan.io>
Date: Wed, 20 Nov 2019 06:50:16 +0200
Message-ID: <87ftijgnhz.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_205023_844306_FCC03B3A 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, Stefan Wahren <wahrenst@gmx.net>,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, stephen@brennan.io,
 Ray Jui <rjui@broadcom.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen, Stefan,

On Wed, Nov 20 2019, Stephen Brennan wrote:

> From: Stefan Wahren <wahrenst@gmx.net>
>
> The BCM2711 has a RNG200 block, so document its compatible string.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Signed-off-by: Stephen Brennan <stephen@brennan.io>

Isn't that duplicate of Florian's commit 6223949a1531?

> ---
>  Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt b/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt
> index c223e54452da..802523196ee5 100644
> --- a/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt
> +++ b/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt
> @@ -2,6 +2,7 @@ HWRNG support for the iproc-rng200 driver
>  
>  Required properties:
>  - compatible : Must be one of:
> +	       "brcm,bcm2711-rng200"
>  	       "brcm,bcm7211-rng200"

Isn't this clear text duplication? Am I missing something obvious?

I was looking at versions of this patch series wondering why no one
noticed that.

baruch

>  	       "brcm,bcm7278-rng200"
>  	       "brcm,iproc-rng200"

-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
