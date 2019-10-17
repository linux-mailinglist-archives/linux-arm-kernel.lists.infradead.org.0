Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAE9DB11C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 17:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PXmaqZ+62PgyP51O4Ox34pn+UpsnRUH/6Z4jQKwoXXc=; b=uXNZTDNtuR3B0f
	qtV/XOlgGn2FFrSGpDZ8BCdLk61bFw1iSGaQrvryuPgQ5RQC+RMovllJFq/LRAGGhrYyvBKJc3jfu
	ghYfq8amn4PIK3yHzREIpWXxcJNiCMRLqAz84U6+PFBjKNc3VOPsRxVLC5z28e0+zff6b8n3YrJn3
	dK5I7B40GARZQMU2hhoRvjMEDE599XPlzvjRRyct124sy62610wsmaxR49rj56JpncIsLZpb8zQqZ
	3rNi54aC88x1BnKyjhtpoLnAhaAXgPAJ/cWKGqMbYWLa14sUbBni4ft0hxcTWtLrG7xV3dnRp7JhJ
	laQz9mE1Qx0kgMESsrnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL7iC-0007kj-17; Thu, 17 Oct 2019 15:29:12 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL7i3-0007jq-Ju
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 15:29:05 +0000
Received: by mail-wm1-x342.google.com with SMTP id a6so3003474wma.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 08:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8ekt2r633krBIKdm2MRWn1/pbuY6S29TraTxsvnoK4k=;
 b=rtG7U/WFEJB937Z+UVa7zX93QaONAQY6vMOSjaE/oYZkhh4E4IlI7dU+lRGEsJwSyA
 mymkOhBUkVE6YLDzZhDWJIWv/XRTly2XbhE+BioypJNcpOJW7FBP2z/j7nHOhQecV+fu
 fL2/XPHmaAkSk3IaJA+V050VgvfGv2HtmATwlaUVKV6+ePESSqHNCk62XsACKWvn+edL
 HkANTtvyN4Wfo62Boe8Nclhv5FwClad+EPHthVIPdHYQKxQMh4TQjTITGGS0ARd5gkJj
 Op5jHtvoqsuSyRVNPiNSE5/UtL5/7TYcnJ5c2mjYYijHfDfynZOaj2XkOcs5jTbNfNkc
 nErw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8ekt2r633krBIKdm2MRWn1/pbuY6S29TraTxsvnoK4k=;
 b=nLKPV/WSO7QPshwK3G86BPdhKMGI9M3HmIz/XDTf3Zt3ygWh/lfVmP4ravy5EiflIQ
 4l0cIetN7qPqYaEG53FuxneodMm/v2CHziyHJreum1mZ6shcVNZdgvYYMhtHssSBgAbo
 bT9/hwqCi1qTKoQQ4DydEYYrLrIm6Fwa0gPPDq1EfagKVMyCkqM1sAy6sxGzBcp78aZV
 PowtzFuFBsmsO3LvkpZgvHCgOjhooJRix5imtjkB+XhbkvnI3pX02vVuknKvf1bzx2Y7
 x7y80E5HuRrAudkx14PQ7ALQMACx/4bYy7VjPXkd+1R2MwIdeXNSYe/itfV77W7V8WYH
 Veew==
X-Gm-Message-State: APjAAAU1rvuRouwJX4WDIoumoKuCc1+UL/fpYguifq2uqaUxOWuBij3l
 55PB2/lqi9ah/e+zMcRnsb3nJXUuBwz/VYYxyHBVPg==
X-Google-Smtp-Source: APXvYqwQkbkxfA5DYAC5X7GLKci02tkbzr1oFaST60w1ilVREPi79ZyDCQMpkLqMnzKmdtR1QNgJ17evb3jAUFvvsKk=
X-Received: by 2002:a1c:a651:: with SMTP id p78mr3454453wme.53.1571326138344; 
 Thu, 17 Oct 2019 08:28:58 -0700 (PDT)
MIME-Version: 1.0
References: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
 <CGME20191014121950epcas4p18dbe227632fbee9b09f322d80deeb1c1@epcas4p1.samsung.com>
 <20191014121910.7264-8-ard.biesheuvel@linaro.org>
 <c07712f3-dea5-7953-82a0-706c1fe0e5d6@samsung.com>
In-Reply-To: <c07712f3-dea5-7953-82a0-706c1fe0e5d6@samsung.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 17 Oct 2019 17:28:48 +0200
Message-ID: <CAKv+Gu_R1WUn98n1FYdrY0S4B5+a9aKKLCqqKk=_9Q=zjXhaAQ@mail.gmail.com>
Subject: Re: [PATCH 07/25] crypto: s5p - switch to skcipher API
To: Kamil Konieczny <k.konieczny@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_082903_654318_C3834D28 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 Eric Biggers <ebiggers@google.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Vladimir Zapolskiy <vz@mleia.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 Kamil Konieczny <k.konieczny@partner.samsung.com>,
 "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 17 Oct 2019 at 17:18, Kamil Konieczny <k.konieczny@samsung.com> wrote:
>
> Hi,
>
> On 14.10.2019 14:18, Ard Biesheuvel wrote:
> > Commit 7a7ffe65c8c5 ("crypto: skcipher - Add top-level skcipher interface")
> > dated 20 august 2015 introduced the new skcipher API which is supposed to
> > replace both blkcipher and ablkcipher. While all consumers of the API have
> > been converted long ago, some producers of the ablkcipher remain, forcing
> > us to keep the ablkcipher support routines alive, along with the matching
> > code to expose [a]blkciphers via the skcipher API.
> >
> > So switch this driver to the skcipher API, allowing us to finally drop the
> > blkcipher code in the near future.
> >
> > Cc: Krzysztof Kozlowski <krzk@kernel.org>
> > Cc: Vladimir Zapolskiy <vz@mleia.com>
> > Cc: Kamil Konieczny <k.konieczny@partner.samsung.com>
> > Cc: linux-samsung-soc@vger.kernel.org
> > Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > ---
>
> There are comments for hash functions changed, see below.
> With that fixed, you can add my
>
> Reviewed-by: Kamil Konieczny <k.konieczny@samsung.com>
> Tested-by: Kamil Konieczny <k.konieczny@samsung.com>
>

Thanks!

> >  drivers/crypto/s5p-sss.c | 191 ++++++++++----------
> >  1 file changed, 91 insertions(+), 100 deletions(-)
> >  [...]
> > diff --git a/drivers/crypto/s5p-sss.c b/drivers/crypto/s5p-sss.c
> > index 010f1bb20dad..e6f1d4d5186c 100644
> > --- a/drivers/crypto/s5p-sss.c
> > +++ b/drivers/crypto/s5p-sss.c
> > [...]
> > @@ -660,7 +660,7 @@ static irqreturn_t s5p_aes_interrupt(int irq, void *dev_id)
> >  {
> >       struct platform_device *pdev = dev_id;
> >       struct s5p_aes_dev *dev = platform_get_drvdata(pdev);
> > -     struct ablkcipher_request *req;
> > +     struct skcipher_request *req;
> >       int err_dma_tx = 0;
> >       int err_dma_rx = 0;
> >       int err_dma_hx = 0;
>
> These two comments below should not be touched, they are for hash part.
>
> > @@ -1208,7 +1208,7 @@ static int s5p_hash_prepare_sgs(struct s5p_hash_reqctx *ctx,
> >   *
> >   * Note 1: we can have update flag _and_ final flag at the same time.
> >   * Note 2: we enter here when digcnt > BUFLEN (=HASH_BLOCK_SIZE) or
> > - *      either req->nbytes or ctx->bufcnt + req->nbytes is > BUFLEN or
> > + *      either req->cryptlen or ctx->bufcnt + req->cryptlen is > BUFLEN or
> >   *      we have final op
> >   */
> >  static int s5p_hash_prepare_request(struct ahash_request *req, bool update)
> > @@ -1555,7 +1555,7 @@ static int s5p_hash_final_shash(struct ahash_request *req)
> >   * s5p_hash_final() - close up hash and calculate digest
> >   * @req:     AHASH request
> >   *
> > - * Note: in final req->src do not have any data, and req->nbytes can be
> > + * Note: in final req->src do not have any data, and req->cryptlen can be
> >   * non-zero.
> >   *
> >   * If there were no input data processed yet and the buffered hash data is
> > [...]
>
> --
> Best regards,
> Kamil Konieczny
> Samsung R&D Institute Poland
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
