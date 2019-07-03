Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B995E69C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 16:28:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGd8szwFZXyfi8bT5tlX7pnzAU6oTToGZ/HP5jUkMSY=; b=ZPfWVZ5VUlc6zm
	PxqEyUcQluPcV76TKAwF0kUerIA/wSAwM11XLs+VQprWtPOp5K3ls3t5mNK15reRAupFWvXUzJ/sy
	eagkStLNoISDf57pxTpreCdRnmKZpHAODq4eGjkgEVqw6ha0ojHrSC5kVV10gWDo+sBRmFBLl5jur
	jjc9EjLbAS8jW3IXTN9wV6DWMMscrjr4sFSHGzCgoNhPz97uI9uGF3jvKUOGXf1+gRdQaT3zpZ2wL
	Qsy9uXvRtbAGIHLX07GYux5BVrOJKINpiKN+xrBqOugC+2P92/TGVS32s0hCZaPQLAJYwrScLv3x1
	XK4GkP4Ws4bBj4wF0G3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1higEs-0001LP-LV; Wed, 03 Jul 2019 14:28:02 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1higEf-0001KL-Tx
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 14:27:51 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1higEZ-0000dZ-Er; Wed, 03 Jul 2019 22:27:43 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1higEW-0000Uz-3u; Wed, 03 Jul 2019 22:27:40 +0800
Date: Wed, 3 Jul 2019 22:27:40 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH 0/2] crypto: arm64/aes-ce - implement 5-way interleave
 for some modes
Message-ID: <20190703142740.55cpcpkas4zhgxx5@gondor.apana.org.au>
References: <20190624173831.8375-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624173831.8375-1-ard.biesheuvel@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_072750_123776_9368D6DD 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: ebiggers@kernel.org, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, steve.capper@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 07:38:29PM +0200, Ard Biesheuvel wrote:
> As it turns out, even a 4-way interleave is not sufficient to saturate
> the ThunderX2 pipeline with AES instructions, so this series implements
> 5-way interleave for modes that can be modified without running out of
> registers to maintain chaining mode state across the encryption operation,
> i.e., ECB, CBC-decryption and CTR.
> 
> Ard Biesheuvel (2):
>   crypto: arm64/aes-ce - add 5 way interleave routines
>   crypto: arm64/aes-ce - implement 5 way interleave for ECB, CBC and CTR
> 
>  arch/arm64/crypto/aes-ce.S    |  60 ++++++----
>  arch/arm64/crypto/aes-modes.S | 118 +++++++++++++++-----
>  arch/arm64/crypto/aes-neon.S  |  48 +-------
>  3 files changed, 127 insertions(+), 99 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
