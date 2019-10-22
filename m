Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72228DFDD4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 08:53:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o4JGwuIKgLn01lvUvXvPZK/KpTmDktbzovt2SjyUDlc=; b=Fx9P3Jwh2lXhQc
	5peV83TVbFUxtxZGnUEkeoF27AAurmbok3t7IVikCFQNcKKprsni8qp4ZjxFVS3DEoT8ZHF1Zvkrk
	TqgWyG3ris1zVs8kj8xfPWeg1JirOGk80V64phxB6jNcv5ndhT+HgKnjg/n3RW3fEr6EtoYZRGup1
	ppb93lBq6YhVpyRnw2wCaRmmfMmMB+OEfEoOpYBY405QRhTZ9S3RJTzsTpmgXnUAr8Se2fyyWYY7g
	KCB74hElsCXwM6ivxNq0patxGUcia5dchUx2gkPgksI7jQK2ZtelcxqdqyLoUIk89ycisUDl9Jl/H
	UZJQwDi0o10LQgTYKhzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMo2L-0005ky-Mg; Tue, 22 Oct 2019 06:52:57 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMo2C-0005jn-TX
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 06:52:50 +0000
Received: by mail-wr1-x443.google.com with SMTP id e11so7918348wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 23:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AISJc1XvrmnIpso64z8g6LZ/bevEJjj83TATYb74pYo=;
 b=AooQH+XRch+bHwmHSd4H6i3xy7cp+tvKXha0NZgaXyVPI3MTu+Tic956lfE2hBFsV2
 Ml/UfQEpMDRTuMw/1QfXHmAUYiNlpO3hqGt/LSYsja4O+XXuWci9+7yVFCB4k4kWz2Od
 ympptz7kZCS/ah+4u+kjTZpuV5Y3ZcEyMXVisvvnksiHYisJ4l68rR9DW3bTOVtp4lQ/
 bAlUlFc+w0tx2JctuK4E/ULOZixVD6O0aMgXh7wefTXyaQq3EPNsbXijE3NBKytDSiI/
 6pYDIVITFothm3GvxRUiwUhdW/3UaELPkICFnyJWH2KBspB+7p+Nf22EkM3KddGLaitq
 IHxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AISJc1XvrmnIpso64z8g6LZ/bevEJjj83TATYb74pYo=;
 b=i5AIar/OpOmcx7SJw+FDOM1FZbyQozEOv8p8Vow1diboA1kfThFJgtt1PxSDyHW6UP
 Tg0oFYaqlX0VLoIYk566aguidxKzOT/T85jEGTvn/8IByL8uunWIqaRo3z8/osYNPe70
 HOBH3EhzSgYjBPpWLfc134SNm3oQcMjQmj6TwTFtSduSzcNW57XkTNIrPz9teZLYdqXU
 V9+c5O0jUsW2o6oXqJndoj9/38pPcwx29dgnEW2EJWOEHLbOfHtySaUE9/Jk/uEUCFWT
 N+eN2Og6+6mXmOWBbtEsVKVY3BzPEg1MHir7sgAJJQCBLSvlR29tKw415Z8T15Qo4UhE
 sSQw==
X-Gm-Message-State: APjAAAXjhaUKd5QWO6rdg4FST34xf6jkT8xKytmYSxIxHSLOGhbayCS2
 EzCgy/IjcPtMCQgmJ6/V/4xmwglMaa+xxqoM8OGzWA==
X-Google-Smtp-Source: APXvYqwuHDK286BWgfauPhSidbsCRJAUk7XSDtTyO0Owe3sAhYGiH4QGZzsFBVlFaAPhIpI0H2PadWa8Y4yDD93HyRY=
X-Received: by 2002:adf:f685:: with SMTP id v5mr1981749wrp.246.1571727165046; 
 Mon, 21 Oct 2019 23:52:45 -0700 (PDT)
MIME-Version: 1.0
References: <a33932c9-2975-4fcc-ba07-7c54df4eae27@huawei.com>
In-Reply-To: <a33932c9-2975-4fcc-ba07-7c54df4eae27@huawei.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 22 Oct 2019 08:52:40 +0200
Message-ID: <CAKv+Gu-qAy9iLbR97=Kz90+-YLLvz0nmTZtxhByeOXEG3xvaBQ@mail.gmail.com>
Subject: Re: [PATCH] crypto: arm64/aes-neonbs - remove redundant code in
 __xts_crypt()
To: Yunfeng Ye <yeyunfeng@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_235248_956804_6A4CFA1D 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 "hushiyuan@huawei.com" <hushiyuan@huawei.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linfeilong@huawei.com" <linfeilong@huawei.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 22 Oct 2019 at 08:42, Yunfeng Ye <yeyunfeng@huawei.com> wrote:
>
> A warning is found by the static code analysis tool:
>   "Identical condition 'err', second condition is always false"
>
> Fix this by removing the redundant condition @err.
>
> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>

Please don't blindly 'fix' crypto code without reading it carefully
and without cc'ing the author.

The correct fix is to add the missing assignment of 'err', like so

diff --git a/arch/arm64/crypto/aes-neonbs-glue.c
b/arch/arm64/crypto/aes-neonbs-glue.c
index ea873b8904c4..e3e27349a9fe 100644
--- a/arch/arm64/crypto/aes-neonbs-glue.c
+++ b/arch/arm64/crypto/aes-neonbs-glue.c
@@ -384,7 +384,7 @@ static int __xts_crypt(struct skcipher_request
*req, bool encrypt,
                        goto xts_tail;

                kernel_neon_end();
-               skcipher_walk_done(&walk, nbytes);
+               err = skcipher_walk_done(&walk, nbytes);
        }

        if (err || likely(!tail))

Does that make the warning go away?


> ---
>  arch/arm64/crypto/aes-neonbs-glue.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/crypto/aes-neonbs-glue.c b/arch/arm64/crypto/aes-neonbs-glue.c
> index ea873b8904c4..7b342db428b0 100644
> --- a/arch/arm64/crypto/aes-neonbs-glue.c
> +++ b/arch/arm64/crypto/aes-neonbs-glue.c
> @@ -387,7 +387,7 @@ static int __xts_crypt(struct skcipher_request *req, bool encrypt,
>                 skcipher_walk_done(&walk, nbytes);
>         }
>
> -       if (err || likely(!tail))
> +       if (likely(!tail))
>                 return err;
>
>         /* handle ciphertext stealing */
> --
> 2.7.4.3
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
