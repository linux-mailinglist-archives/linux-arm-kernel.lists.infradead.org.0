Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8A1DEB82
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 14:01:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8AHa4J5FLYIwnEcOhYtft6GQRRk/FyVXPrrQqOxmCiE=; b=Cmxd+pUlE781qs
	9ftMTfAdpRIZUEgaGtruc87XjBtFYmKZ9+RMKqPXR9eT9b0Fg+8xoAJAVtxDEw32+5Ur4NJeD7WBP
	aI4DJZdkav7puqtB6LefqqRp2GCee/OUKQ4vh6xVPn3cggYAPGk2orQf3lJL53hf0iTPHwm1WXoQf
	mc7CJy2t/DMjaKAKXAuuTaFu1vDfVtVUA6A5mLUrDACDYmpr5LtIMUZWPeUDvGrf5/T8p4MGfqtRg
	7K84IBfvr49P9wR7fTKFWnHINgId9kB/g8o7lEzbGdWI4DImZB4LcsXq2sbByhg6StJHb/Q9u+QFx
	Mo6bYmzQ2IW6ZYjQuZ4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWNA-0007kC-6h; Mon, 21 Oct 2019 12:01:16 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWN1-0007jm-GD
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 12:01:08 +0000
Received: by mail-wr1-x441.google.com with SMTP id w18so13104426wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 05:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mWEB9osAQee35AyhlgRxJbWS6irJ5cvGkHpX55XRn1E=;
 b=DZayBbwzidagHXfjzo+vzE7AoicDQbfH28tq6Q3lvonVDXLWmKQFdudte2p5G1rCYp
 RVCcVYLiRDHe1rxz+iGD1bJ19a2LoAC5z0miBg8I788Def1js93fq7drRVXZdNS26R13
 UnnRmVsYQpkMOQqyFLSt6RoynkjorxsG76w0WY9nzHxR3eknHms4r6T1PRRybxDGFUz7
 X6O82uWSVvSR5YTRhUvqJeUZihX/r7KOV478vNKXthZopVovLmhUu5PLjXBG8sTKgQ9m
 amHtltZ0/s0L/DU1nqWZ3iNpJkbb7B6kjHoNQTSeFULE+WdU31YltZ0C/osAUTntiGEl
 l4yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mWEB9osAQee35AyhlgRxJbWS6irJ5cvGkHpX55XRn1E=;
 b=aGVv/Zg5kcdxarbXq/9CeIHkjkI3jr03tAcAFSth5p4aAy79HCIt5+f3ERCC2CQ4IJ
 HR2UJfQhPjJOvc/bTTz0asFNU/0shLK9Ylbi4fKwiwpBbmw7u+5qW+s98WjXoul13gf7
 B3cCCTXpv5Po8bm00IQbxKeR3XUrK2YpwWki452/brS0Ra0/ukKWGoSXkhCs0UpMCa23
 JnNaV7Y1bR9E9ubR9qUdovqbV+LNFVf0sEqNC3K+6HxcQxpYEVgXTK2wDXdn7NYhgArS
 Ka+bOoIWiwXteSKi2jOCByu6/uzObUrHhhBFi49wzoiun9aKAThdEtk2MArserzCWi0J
 H5zg==
X-Gm-Message-State: APjAAAXhuRBssjf0N5v8ES1n6iY4ljwrHYNNosKo37u8SZyCRtLaraKQ
 e7ymhQZHSDSMC3fd+Yeq727mVrdme3UVse1UPFmRJQ==
X-Google-Smtp-Source: APXvYqyi04G4z3qmQczX0PrqdoD0ePmtzfbw4P+sB+JZvmXhdomvbxqXJ3pHKBiLdD/c9bC+H9OTsi2VKUlpDUvwjCE=
X-Received: by 2002:adf:f685:: with SMTP id v5mr16542105wrp.246.1571659265641; 
 Mon, 21 Oct 2019 05:01:05 -0700 (PDT)
MIME-Version: 1.0
References: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
 <20191014121910.7264-8-ard.biesheuvel@linaro.org> <20191021100517.GA1780@pi3>
In-Reply-To: <20191021100517.GA1780@pi3>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 21 Oct 2019 14:00:59 +0200
Message-ID: <CAKv+Gu8AK+oTRw5Q1NMWkxmycAD+tkqeiqBM-kV_oeebu2sYug@mail.gmail.com>
Subject: Re: [PATCH 07/25] crypto: s5p - switch to skcipher API
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_050107_604732_0A40785C 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 Eric Biggers <ebiggers@google.com>, Vladimir Zapolskiy <vz@mleia.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 Kamil Konieczny <k.konieczny@partner.samsung.com>,
 "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 21 Oct 2019 at 12:05, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Mon, Oct 14, 2019 at 02:18:52PM +0200, Ard Biesheuvel wrote:
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
> >  drivers/crypto/s5p-sss.c | 191 ++++++++++----------
> >  1 file changed, 91 insertions(+), 100 deletions(-)
> >
> > diff --git a/drivers/crypto/s5p-sss.c b/drivers/crypto/s5p-sss.c
> > index 010f1bb20dad..e6f1d4d5186c 100644
> > --- a/drivers/crypto/s5p-sss.c
> > +++ b/drivers/crypto/s5p-sss.c
> > @@ -303,7 +303,7 @@ struct s5p_aes_dev {
> >       void __iomem                    *aes_ioaddr;
> >       int                             irq_fc;
> >
> > -     struct ablkcipher_request       *req;
> > +     struct skcipher_request *req;
>
> You mix here indentation.
>

Will fix

> Beside that:
>
> Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
>

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
