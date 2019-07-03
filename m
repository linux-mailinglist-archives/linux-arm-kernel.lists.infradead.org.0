Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCDC5E6B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 16:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i/TJhvb0QIlX9SEaqA+sUyPMMmg65bsHInbkMw7TR2o=; b=MlWaUJjhahWrzc
	it0ACj8Sm/o7mEbEqY9KyaVr2nyOTCUGLTbLvPuGYAUKN9z2JWGDvGrGynTxEkGigKhORE8Ffr8vf
	OrWxJgIZ2zSD7OIccwOPw3BfporzCEGgTSkp+lfglI/7viLRAi0GPoht7QRhjiO34yZzaq59vSMog
	i4R/fDoM9vTqp3gZjrgIcyP7LtJgfhtcRYPQb25uLvqXyiIgBK/bXykxVeOEU9hmmd5OJCRawsKbJ
	xTyoLw1svKyRpTPtwxBho4DmR78kW2S2LASBHOhoPIzPQHoAlLNak2WOMDjcqiTK2aE21NXQa6qqA
	kFQsz1VfP1xI2vj2itMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1higGT-0001rj-DZ; Wed, 03 Jul 2019 14:29:41 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1higGE-0001jY-OH
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 14:29:28 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1higGD-0000jF-Ee; Wed, 03 Jul 2019 22:29:25 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1higGC-0000Xk-BF; Wed, 03 Jul 2019 22:29:24 +0800
Date: Wed, 3 Jul 2019 22:29:24 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Lionel Debieve <lionel.debieve@st.com>
Subject: Re: [PATCH 1/1] crypto: stm32/crc32 - rename driver file
Message-ID: <20190703142924.i6y44cqspgklb7ek@gondor.apana.org.au>
References: <20190628112641.9269-1-lionel.debieve@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628112641.9269-1-lionel.debieve@st.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_072926_945005_C9789617 
X-CRM114-Status: UNSURE (   7.28  )
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Fabien Dessenne <fabien.dessenne@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-crypto@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Ludovic Barre <ludovic.barre@st.com>, "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 01:26:41PM +0200, Lionel Debieve wrote:
> Use the same naming convention for all stm32 crypto
> drivers.
> 
> Signed-off-by: Lionel Debieve <lionel.debieve@st.com>
> ---
>  drivers/crypto/stm32/Makefile                         | 2 +-
>  drivers/crypto/stm32/{stm32_crc32.c => stm32-crc32.c} | 0
>  2 files changed, 1 insertion(+), 1 deletion(-)
>  rename drivers/crypto/stm32/{stm32_crc32.c => stm32-crc32.c} (100%)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
