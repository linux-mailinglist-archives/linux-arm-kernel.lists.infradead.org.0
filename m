Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA09D59277
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 06:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qvqiUftCx6VYA0s1LjxUxnKUVHsLMVNdM0DOLu7iUbA=; b=T7HPZOUbAjBwzg
	A3ljnQO3uZgzu4lgAL6pDWdg9i3K5fv4Y2eDsCFOoznNrLSjSzD2ZChu9q4DyLpWdGEvYgtU1CS43
	+sfLHD4wb4XWds8PjFULdir4tWG5RT5x5vERr/MjSkXuNXZVQt9kPviOmTHI/791bmrWYZsBWbiF1
	qo5yzHcDIeMf/+7XwbR/8yDEoSNnE/JTJ5dLsYBst/hLCiVR9vyxzGHsdmcyP0k37wKTjkiDC/p0u
	2JR7nfdq5yPucaSsqfGyRRBkkHeDjIA7Rq6kIeL2HZaRkkl7Dm+ep77CiYmWFG1d5pMXp24ZOGrzc
	PwBcdofkVFgMK0VLQ9Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgiLt-0000Py-Uq; Fri, 28 Jun 2019 04:19:10 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgiLe-0000Ou-Gy
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 04:18:56 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1hgiLP-0004t1-AS; Fri, 28 Jun 2019 12:18:39 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1hgiLJ-00024w-8D; Fri, 28 Jun 2019 12:18:33 +0800
Date: Fri, 28 Jun 2019 12:18:33 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] crypto: sun4i-ss - reduce stack usage
Message-ID: <20190628041833.olvmbzj5z2hmtruq@gondor.apana.org.au>
References: <20190617132538.2759714-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617132538.2759714-1-arnd@arndb.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_211854_708923_C4B5CAA4 
X-CRM114-Status: GOOD (  13.25  )
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
Cc: Eric Biggers <ebiggers@google.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 03:25:17PM +0200, Arnd Bergmann wrote:
> After the latest addition, the stack usage of sun4i_ss_cipher_poll
> grew beyond the warning limit when KASAN is enabled:
> 
> drivers/crypto/sunxi-ss/sun4i-ss-cipher.c:118:12: error: stack frame size of 1152 bytes in function 'sun4i_ss_cipher_poll' [-Werror,-Wframe-larger-than=]
> static int sun4i_ss_cipher_poll(struct skcipher_request *areq)
> 
> Reduce it in three ways:
> 
> - split out the new code into a separate function so its stack
>   usage can overlap that of the sun4i_ss_opti_poll() code path
> - mark both special cases as noinline_for_stack, which should
>   ideally result in a tail call that frees the rest of the
>   stack
> - move the buf and obuf variables into the code blocks in
>   which they are used.
> 
> The three separate functions now use 144, 640 and 304 bytes of kernel
> stack, respectively.
> 
> Fixes: 0ae1f46c55f8 ("crypto: sun4i-ss - fallback when length is not multiple of blocksize")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/crypto/sunxi-ss/sun4i-ss-cipher.c | 47 +++++++++++++++--------
>  1 file changed, 30 insertions(+), 17 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
