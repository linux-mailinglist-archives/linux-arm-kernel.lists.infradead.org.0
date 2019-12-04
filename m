Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC7511224C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 06:00:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ItC8rPJVCQ2fCFKv1ZA2ESGWMgLMITdXb86xVfX+m2g=; b=WPzI4x0ZNrscC7
	jf/SYufVPqWKhOj/p4c7T9mNWN7hDJaWFqXJWpQJSaYnOPLu+IHtM3ywA0gTzdaF7xzeiKX2cWsnl
	Q+V9dUanPxd0nQbZ9ERflqYG3k8xNxDbwCHHP1yHy5PfHFBcjrK8BJKPX79W8IHWcTiOwxTos2mLJ
	imDRQElJxuPef14fHF5cf3RecI9wUcXqVWs2wwR+TFGL7BqJXe6mlBJHXUzxjJCKNVhe1+JHgnI5N
	xvezi+VhiuHHXOpzAJhSBumA4cDjP/TWXC6C+B2MI2JggaqHgUjP7CzQx8tfGPBjrLc3LYywasgUy
	O1jniuStXFMzjOOQ1rxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icMlw-0001Wv-Fu; Wed, 04 Dec 2019 05:00:20 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icMlp-0001Vy-Q1; Wed, 04 Dec 2019 05:00:15 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1icMlT-0001HY-8t; Wed, 04 Dec 2019 12:59:51 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1icMlK-0003XT-8n; Wed, 04 Dec 2019 12:59:42 +0800
Date: Wed, 4 Dec 2019 12:59:42 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v3 0/4] Raspberry Pi 4 HWRNG Support
Message-ID: <20191204045942.g3qmhpshphblgxhc@gondor.apana.org.au>
References: <20191120031622.88949-1-stephen@brennan.io>
 <3e78d01f-f7a4-b3c4-4d23-7be7d6ad764d@gmail.com>
 <20191121053046.coobocevp4uwwugb@gondor.apana.org.au>
 <5beb190c-fa77-6693-aead-4030930f5b8a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5beb190c-fa77-6693-aead-4030930f5b8a@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_210014_004513_3F4AEB18 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, Stephen Brennan <stephen@brennan.io>,
 Matt Mackall <mpm@selenic.com>, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 08:55:04PM -0800, Florian Fainelli wrote:
>
> Rob has provided his Acked-by for the binding patch, are you targeting
> these changes for 5.5 or 5.6 at this point?

They are too late for 5.5 so it's going to be 5.6.

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
