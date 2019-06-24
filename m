Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D800D5040F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 09:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+nPrXoYijvwZv7GdiYrszmM0ydjQTjfx7OkPZWZDhw=; b=XCFrsnBJw4Cadq
	GOWBESOb61Z7lDAF9lWyZDmKGlZ94kGzycO1JD5GQIY5Gp8CVfZhjzrFV7bnHDBlUZZCUmabgcxr0
	OlhX/K6XJgOAnT+kixzveZR1lvj9yXaVtLLltNyCGYn0MT/qvNpjfx5jYG4R/0trOACrrT247/HlO
	xeMsjtrs0IWWmjHrlDPZynVbGbj2g5L6KNxnZfLjIGs4ICu7H3yfSUITACZiqfjAgTLeD3N5aH0z6
	SYC7gzGJR44rUcKPLWamMTVdVd7K5Uoq/dZriOvi6A3k1PpDhhARaG8tyC8sNg89zccc+Gi7kfxwN
	rC8AR4Y3ipYp7vCQtmFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJtB-000244-Ud; Mon, 24 Jun 2019 07:59:45 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJsz-00023e-PQ
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 07:59:35 +0000
Received: by mail-ot1-f66.google.com with SMTP id e8so12578673otl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 00:59:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y5rTUEYsELOvvw4ngFAJeKVFrPW5LktCBQ0fE2buR+k=;
 b=NeavkNJpQ4x9qTUXAiJSxgZN16+vBqHOLSq6kiLY9QAs8Ab+Add+ADCi0UP+BcqUH/
 91sZwUEQc06ackJo2jr2IZU/AZWOJO21KT0hVMBGdMbQnP1ne1L+7nnEkdkKDyS9IyVJ
 VMmktIxHVOX7K31yMpZwl0QIQZPkoyck0D1EymyPAZkN263d0RQVUs0GF69/fc1GZDEG
 3UGNgVNigFmqydfiyiLODo7R7iekfoAQOTEXB+X9/C+rBn0K87gOTk8++OZ2hh0JtjOz
 rYlXjv6WJr/893SIinmjYsjSLp61zRsap6MddyZAVkY2U/oiSLE9XS+saXFBMay2LMsD
 0tbw==
X-Gm-Message-State: APjAAAW0SHgA+An0y/S6Q9CtMLM5di6eEwK9zDzU8TuT3dsgox8bu0eQ
 nDeF7ZFY4Kj9FFN6I3Sbm1V2MWXehZ1Rq2HiyICy/Q==
X-Google-Smtp-Source: APXvYqxZq+86CfX0eMEndXfGqzlMquFnxv7MRNp1HZttJvo4RvO8uiNDODAZ3uGhr+Q/FFza7QtsQab+jUEGzZopOyY=
X-Received: by 2002:a9d:7a45:: with SMTP id z5mr10818120otm.197.1561363169678; 
 Mon, 24 Jun 2019 00:59:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
 <20190624073818.29296-2-ard.biesheuvel@linaro.org>
In-Reply-To: <20190624073818.29296-2-ard.biesheuvel@linaro.org>
From: Ondrej Mosnacek <omosnace@redhat.com>
Date: Mon, 24 Jun 2019 09:59:18 +0200
Message-ID: <CAFqZXNt4PgTB1Ocmui4CCYTCbguAqmcrdA=ZMbA6anH3LBX9EQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] crypto: aegis128 - use unaliged helper in unaligned
 decrypt path
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_005933_825488_E706BF8D 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Steve Capper <steve.capper@arm.com>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Eric Biggers <ebiggers@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ard,

On Mon, Jun 24, 2019 at 9:38 AM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> Use crypto_aegis128_update_u() not crypto_aegis128_update_a() in the
> decrypt path that is taken when the source or destination pointers
> are not aligned.
>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  crypto/aegis128.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/crypto/aegis128.c b/crypto/aegis128.c
> index d78f77fc5dd1..125e11246990 100644
> --- a/crypto/aegis128.c
> +++ b/crypto/aegis128.c
> @@ -208,7 +208,7 @@ static void crypto_aegis128_decrypt_chunk(struct aegis_state *state, u8 *dst,
>                         crypto_aegis_block_xor(&tmp, &state->blocks[1]);
>                         crypto_xor(tmp.bytes, src, AEGIS_BLOCK_SIZE);
>
> -                       crypto_aegis128_update_a(state, &tmp);
> +                       crypto_aegis128_update_u(state, &tmp);

The "tmp" variable used here is declared directly on the stack as
'union aegis_block' and thus should be aligned to alignof(__le64),
which allows the use of crypto_aegis128_update_a() ->
crypto_aegis_block_xor(). It is also passed directly to
crypto_aegis_block_xor() a few lines above. Or am I missing something?


>
>                         memcpy(dst, tmp.bytes, AEGIS_BLOCK_SIZE);
>
> --
> 2.20.1
>

--
Ondrej Mosnacek <omosnace at redhat dot com>
Software Engineer, Security Technologies
Red Hat, Inc.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
