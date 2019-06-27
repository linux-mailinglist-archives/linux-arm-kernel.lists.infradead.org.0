Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0304D57CAE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 09:04:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J0/t6hdoqFdNe4nM7TFoiqdhHxWtYnDlYMPGpH4FMoA=; b=OPVkj5o0ffFpqS
	aHPcRP9IS+PhEJ5hNmExPbDER3QIKu6u+3xO1z6z8T37UXOdBb87GkPEmYYYlf+F5BUsv5xl30Uia
	bn1fCNuIfklpuxdKf4LSRztacqHoS09iLJaLAI3SmeTVSni80GqvJa54rb9o0xZIS3XIhX9bRxd6A
	NK3JucBlQgidFW8/NqHCqTQbUPXILK+sGmFu9Bohc3SpQ8f0Grxff6oVy8a2kM9nGDMBrCF+rkPmP
	rmd/c6ho9anL+cbuyLxo7hq8DZBlu/hV8/d9c4oBH+xGpT6wUCajpI9IMoPC59+Tvrmhov8k3HOY1
	0jzwmh1Qz188RdVnHSgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOSi-0006Cw-Gl; Thu, 27 Jun 2019 07:04:52 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgOSI-0006Cc-FT
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 07:04:28 +0000
Received: by mail-io1-xd41.google.com with SMTP id h6so2491851ioh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 00:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AZmkg14rhmcX5Dvn99I9Bdojb+GxN0kaY+JY2CKjAGo=;
 b=vbR3WYhUS9HeIiQnXzqMjOMfF59F2nBROJQUUfNES1Cd8B0fbpsjXssBRAwBd4OJWb
 UCpNtnUJlqgzQGSq6iTYX6coyVr/A4iw4si1tGeljV3UibLsB4dpN7hiG8JSFpTgw/O+
 Ud4ifzxOXHzXuDDLlYp0GOuHO2/CPZtQf8hCGmP+qIwKsbIcgxDo4T4DVrrwnLutmHVl
 zbqqUHgT1TnteK5e0ksflhMCgTp2MLDb4JZtBvfrENyu4SEt1xhsANAccIFeIhkB6a94
 XykjByBhbk34K9b33OPIQG+ZGnUDzklMMdD3fqmUXLson+2cL1cBzrus+P0MH0xC1eSY
 scug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AZmkg14rhmcX5Dvn99I9Bdojb+GxN0kaY+JY2CKjAGo=;
 b=hTcPlK/PXDK4QWcMIPH5l+xIfBdCZ5RkFaDKMRlXH+X8tvcVQ2eUUWc0WuwV0fF7cR
 bkB59UvubhxCvRObdwq7LSPDHxYdzaemvQsBSsmqEAL1jUD4LUMng+jatnab/5m5SKXQ
 8+ncgvC6aSL0Zl+f2lHgjPNYjmR1UR9JMkPllN4nMQKRbnd4dMSnkUEexjcdcbQDwIqD
 peGzd/B3qYyIQ497famUx3hTz3Y3NxnKbIEsNbdV02X+OrmCwO4k7RaKiQhjl6uniCo1
 kouUfCPqShDuTxZBw4bdkbchcg9d5yRrFaGh2I1kGh3JgKGJxViyGhWA82hw22lvgctn
 ocwg==
X-Gm-Message-State: APjAAAWGKHUndVmzIEE7TGqmGaEvsfDMal0/xwrjpjlI6FZ/xhLpzmZg
 tgcRKBHpGORto1OmHoBvhbF03X+48QaBLS52ZKYT9w==
X-Google-Smtp-Source: APXvYqyQ8lEGEOe574tAaBoj1hNDqt9LhwaGLmd8WzETW0ivzLxr8aw/A+Me4o6JpnjnyIzfoRf+ZGTv19sNDODhzm8=
X-Received: by 2002:a6b:7312:: with SMTP id e18mr2631988ioh.156.1561619065452; 
 Thu, 27 Jun 2019 00:04:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190626204047.32131-1-ard.biesheuvel@linaro.org>
 <20190626204047.32131-2-ard.biesheuvel@linaro.org>
In-Reply-To: <20190626204047.32131-2-ard.biesheuvel@linaro.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 27 Jun 2019 09:04:10 +0200
Message-ID: <CAKv+Gu8ivcjgM0hjLHrf55kWHpoV8ZYYYLkPuaapMe6Yj37Zbg@mail.gmail.com>
Subject: Re: [PATCH v5 1/7] crypto: essiv - create wrapper template for ESSIV
 generation
To: "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_000426_530151_73DA0E6E 
X-CRM114-Status: GOOD (  22.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Eric Biggers <ebiggers@google.com>, linux-fscrypt@vger.kernel.org,
 Gilad Ben-Yossef <gilad@benyossef.com>,
 device-mapper development <dm-devel@redhat.com>,
 Milan Broz <gmazyland@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Jun 2019 at 22:40, Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
>
> Implement a template that wraps a (skcipher,cipher,shash) or
> (aead,cipher,shash) tuple so that we can consolidate the ESSIV handling
> in fscrypt and dm-crypt and move it into the crypto API. This will result
> in better test coverage, and will allow future changes to make the bare
> cipher interface internal to the crypto subsystem, in order to increase
> robustness of the API against misuse.
>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  crypto/Kconfig  |   4 +
>  crypto/Makefile |   1 +
>  crypto/essiv.c  | 636 ++++++++++++++++++++
>  3 files changed, 641 insertions(+)
>
...
> diff --git a/crypto/essiv.c b/crypto/essiv.c
> new file mode 100644
> index 000000000000..fddf6dcc3823
> --- /dev/null
> +++ b/crypto/essiv.c
> @@ -0,0 +1,636 @@
...
> +static void essiv_aead_done(struct crypto_async_request *areq, int err)
> +{
> +       struct aead_request *req = areq->data;
> +       struct essiv_aead_request_ctx *rctx = aead_request_ctx(req);
> +
> +       if (rctx->iv)
> +               kfree(rctx->iv);
> +       aead_request_complete(req, err);
> +}
> +
> +static int essiv_aead_crypt(struct aead_request *req, bool enc)
> +{
> +       gfp_t gfp = (req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP) ? GFP_KERNEL
> +                                                                : GFP_ATOMIC;
> +       struct crypto_aead *tfm = crypto_aead_reqtfm(req);
> +       const struct essiv_tfm_ctx *tctx = crypto_aead_ctx(tfm);
> +       struct essiv_aead_request_ctx *rctx = aead_request_ctx(req);
> +       struct aead_request *subreq = &rctx->aead_req;
> +       struct scatterlist *sg;
> +       int err;
> +
> +       crypto_cipher_encrypt_one(tctx->essiv_cipher, req->iv, req->iv);
> +
> +       /*
> +        * dm-crypt embeds the sector number and the IV in the AAD region, so
> +        * we have to copy the converted IV into the source scatterlist before
> +        * we pass it on. If the source and destination scatterlist pointers
> +        * are the same, we just update the IV copy in the AAD region in-place.
> +        * However, if they are different, the caller is not expecting us to
> +        * modify the memory described by the source scatterlist, and so we have
> +        * to do this little dance to create a new scatterlist that backs the
> +        * IV slot in the AAD region with a scratch buffer that we can freely
> +        * modify.
> +        */
> +       rctx->iv = NULL;
> +       if (req->src != req->dst) {
> +               int ivsize = crypto_aead_ivsize(tfm);
> +               int ssize = req->assoclen - ivsize;
> +               u8 *iv;
> +
> +               if (ssize < 0 || sg_nents_for_len(req->src, ssize) != 1)
> +                       return -EINVAL;
> +
> +               if (enc) {
> +                       rctx->iv = iv = kmemdup(req->iv, ivsize, gfp);

This allocation is not really needed - I'll enlarge the request ctx
struct instead so I can incorporate it as an anonymous member.

> +                       if (!iv)
> +                               return -ENOMEM;
> +               } else {
> +                       /*
> +                        * On the decrypt path, the ahash executes before the
> +                        * skcipher gets a chance to clobber req->iv with its
> +                        * output IV, so just map the buffer directly.
> +                        */
> +                       iv = req->iv;
> +               }
> +
> +               sg_init_table(rctx->sg, 4);
> +               sg_set_page(rctx->sg, sg_page(req->src), ssize, req->src->offset);
> +               sg_set_buf(rctx->sg + 1, iv, ivsize);
> +               sg = scatterwalk_ffwd(rctx->sg + 2, req->src, req->assoclen);
> +               if (sg != rctx->sg + 2)
> +                       sg_chain(rctx->sg, 3, sg);
> +               sg = rctx->sg;
> +       } else {
> +               scatterwalk_map_and_copy(req->iv, req->dst,
> +                                        req->assoclen - crypto_aead_ivsize(tfm),
> +                                        crypto_aead_ivsize(tfm), 1);
> +               sg = req->src;
> +       }
> +
> +       aead_request_set_tfm(subreq, tctx->u.aead);
> +       aead_request_set_ad(subreq, req->assoclen);
> +       aead_request_set_callback(subreq, aead_request_flags(req),
> +                                 essiv_aead_done, req);
> +       aead_request_set_crypt(subreq, sg, req->dst, req->cryptlen, req->iv);
> +
> +       err = enc ? crypto_aead_encrypt(subreq) :
> +                   crypto_aead_decrypt(subreq);
> +
> +       if (rctx->iv && err != -EINPROGRESS)
> +               kfree(rctx->iv);
> +
> +       return err;
> +}
> +
...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
