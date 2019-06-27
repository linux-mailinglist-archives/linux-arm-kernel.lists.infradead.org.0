Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8347858745
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 18:39:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7EY4g2KzpvTSW/UyR9/spq7RXGgwQS0ZC2iF4AKN3U=; b=kB0qj8mz9G5fy4
	UphlTTZmLNlOkKu6lFJ4CtrbGI0CmXzR8xbD1RWZAxTr5NpyfIlnOhq+sjbxIhR94YHmJv4I+vs4c
	TFlboxP77APoXQ+tFYPJrsKTEzKp8B5n0GBPxVOq8d1i2juBsQDFrdwxNtwhu29xmIjXwfa4RGe8X
	tZC/mmjs+YmvBeQJtA6sYQODETQhDKCrz/X1RasQZoZWWfHyVoOBYgteBXxvwQl+FLuTMyp9X/0ey
	b5g0pAB9IXt84BKKhaRPwJ6OHKEa4cbCS6L72MyGNE8v/gAC16fzsoU6GtHIyLbI56yY5LUDmQq06
	FRNL8qpLM2sGLV3+95Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgXRD-0001W0-0o; Thu, 27 Jun 2019 16:39:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgXQz-0001Vd-1X
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 16:39:42 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 690152146E;
 Thu, 27 Jun 2019 16:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561653580;
 bh=fnhL5XMcFhypArWy/fUX1Dvznt3/2i/Ai/n6WqTzdNE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Za0iuVbFK6Fac/03nrT+yjWpU0UY61Yfwf6C0tkVzOV2o0ISWKoYUF3XJmYIqKCxv
 fQfybbnnIVGCWdi2pWYjKVB91K2Fg4WWS9kt/vnYeZX1PCYdTFrwbJ7F/1elpejVqR
 EnJouM6X811U7f29xeb6CTVRSjVPAygobnNcghdQ=
Date: Thu, 27 Jun 2019 09:39:38 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v5 2/7] fs: crypto: invoke crypto API for ESSIV handling
Message-ID: <20190627163938.GD686@sol.localdomain>
References: <20190626204047.32131-1-ard.biesheuvel@linaro.org>
 <20190626204047.32131-3-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626204047.32131-3-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_093941_108388_4B40E95B 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, linux-fscrypt@vger.kernel.org,
 Gilad Ben-Yossef <gilad@benyossef.com>, dm-devel@redhat.com,
 linux-crypto@vger.kernel.org, Milan Broz <gmazyland@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 10:40:42PM +0200, Ard Biesheuvel wrote:
> diff --git a/fs/crypto/keyinfo.c b/fs/crypto/keyinfo.c
> index dcd91a3fbe49..82c7eb86ca00 100644
> --- a/fs/crypto/keyinfo.c
> +++ b/fs/crypto/keyinfo.c
> @@ -19,8 +19,6 @@
>  #include <crypto/skcipher.h>
>  #include "fscrypt_private.h"

Can you remove the includes that become unused as a result of this patch?

#include <crypto/aes.h>
#include <crypto/sha.h>

> @@ -495,7 +412,6 @@ static void put_crypt_info(struct fscrypt_info *ci)
>  		put_master_key(ci->ci_master_key);
>  	} else {
>  		crypto_free_skcipher(ci->ci_ctfm);
> -		crypto_free_cipher(ci->ci_essiv_tfm);
>  	}
>  	kmem_cache_free(fscrypt_info_cachep, ci);

Nit: should remove the curly braces here.

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
