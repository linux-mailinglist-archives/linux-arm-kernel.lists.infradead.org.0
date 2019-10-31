Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A99AEEAB67
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 09:13:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5UROl5Da0s9zsgtMZnJ+LzCChL3gWtiDwE+SG72n+Nc=; b=HCSygjOcc4sFpl
	lzbWJDxsoUSUyXKFMff3r5qkrAZZCmZHj+WODYT1WyTJ4d1LygHu/jrTOxzVwRuvJWbaQWRsiT6nN
	4ahyqrgh+PIlBof9IYaq5oDrV9WtsFiBB22UMKO1pQmOJv3nSWv3MOUxbtIx6Ra5JzhAvWFJejhrB
	3rO841enIObALYGnLU7Mb8D+x44HYetFkjMHXdszRHKunC4gTqpDh4K0L4Md7HZuLb3koPqZyYU6W
	gaTLdOeAQ1z3EAxf1JSe3Tx1yChApLOx+1D6mU+93YMtYDsApDxqqyGl46k+ncYNCrkI8Ithrt1nX
	On9Wivy3eC5M39xPp1WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ5aJ-0007FS-Qs; Thu, 31 Oct 2019 08:13:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ5aC-0007En-NE
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 08:13:30 +0000
Received: by mail-wr1-x441.google.com with SMTP id v9so5152860wrq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 01:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cVTpH9x5w5p5t2TLyqv/I4Qxh336u+KvXbCEegt8Uv0=;
 b=c14BIyVgJODeeLH4b+TJ4cZ3xE088RbzxSHE1oTs79eyAHCgcKk3JXB0jSQIKMQBnF
 14T+VdlXD9Yhegoso0KsMVDY8BamFtWhmdyNa8fck76+mXM51IIrNkdguUrXkvA4gtj0
 lb1GzN5v4I9LbC+uEo91w4pMPlRwq5lQlQ1TYYB7KJT1hmZQQCsC96cvUOG6Pwg0ICSm
 P1NMe+P4DWXxpyUfW2mH9OoZ6RS2AylG1gmVsVTuUOrNiQXuC+S1BYcijFNSWxXd2n3D
 4prXedSxCp0ksj6cqn8BrOVUvrR9qh2IlvII0AkqKmYmSBuB3BB7RSvVICzQFd33hlME
 x5Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cVTpH9x5w5p5t2TLyqv/I4Qxh336u+KvXbCEegt8Uv0=;
 b=al2rqpvaYXjmd3PBZm8q/7lrzvrULz8oO+V8T8d15uQEH+lcNjSyyl4zJVlVXl1eFf
 I+M7bkojSw0G3FtiC3GpB+43jdHMYQOfENjkhm7xnc4ZOVU3+uqcEwsX9nGNI+Hvw4ur
 2oP2hAGKaF1vRlhbbftvT7yk+M6avSoYFzLXXeHW3yeiOuyGsulzjXGJ/0nIMY8lJxhl
 2uVh00op0OY1BkBM5kMR/AFqauLiR1uN0xdp+3iKs4bbR5HYtVnTLOFEEltSjRtnCG2l
 Ssx07Arb4YRVBQH+IvFNJhKnn3Nj2kvny91bjmLcdy1zC4QP/PdTH8MpXZAvlKYbODBm
 mA8Q==
X-Gm-Message-State: APjAAAWY5F2c9dUUeMKzjkays7rFB7F0/2Vs+4cuTd+6/+fUh0msZWNS
 3ey5vFKL2fQGr41v7bzRPjC6Pe/NBraWAw5HK1kprg==
X-Google-Smtp-Source: APXvYqz6adAsRCPRenCDRosUSP27YreZHLiRCFj8jQzS6Tz09/zC+Fh0l+FEOJ0uIHx4MuiYSdWocUlHuB9/hM3TrEg=
X-Received: by 2002:a5d:6b0a:: with SMTP id v10mr3981224wrw.32.1572509602778; 
 Thu, 31 Oct 2019 01:13:22 -0700 (PDT)
MIME-Version: 1.0
References: <aaf0f585-3a06-8af1-e2f1-ab301e560d49@huawei.com>
 <32b39396-d514-524f-a85c-3bc627454ba7@huawei.com>
In-Reply-To: <32b39396-d514-524f-a85c-3bc627454ba7@huawei.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 31 Oct 2019 09:13:10 +0100
Message-ID: <CAKv+Gu8A+kDK0Jtmu6oOO6jhgFkgYQ7=4tw_eMStmYPMkMp6iQ@mail.gmail.com>
Subject: Re: [PATCH v3] crypto: arm64/aes-neonbs - add return value of
 skcipher_walk_done() in __xts_crypt()
To: Yunfeng Ye <yeyunfeng@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_011328_758919_55DF18DE 
X-CRM114-Status: GOOD (  16.96  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, hushiyuan@huawei.com,
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

On Thu, 31 Oct 2019 at 08:02, Yunfeng Ye <yeyunfeng@huawei.com> wrote:
>
> A warning is found by the static code analysis tool:
>   "Identical condition 'err', second condition is always false"
>
> Fix this by adding return value of skcipher_walk_done().
>
> Fixes: 67cfa5d3b721 ("crypto: arm64/aes-neonbs - implement ciphertext stealing for XTS")
> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
> Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Please don't send the exact same patch twice, and when you feel the
need to do so, just ask instead whether your patch was received or
not.

I'm sure Herbert will pick it up shortly.

> ---
> v2 -> v3:
>  - add "Acked-by:"
>
> v1 -> v2:
>  - update the subject and comment
>  - add return value of skcipher_walk_done()
>
>  arch/arm64/crypto/aes-neonbs-glue.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/crypto/aes-neonbs-glue.c b/arch/arm64/crypto/aes-neonbs-glue.c
> index ea873b8904c4..e3e27349a9fe 100644
> --- a/arch/arm64/crypto/aes-neonbs-glue.c
> +++ b/arch/arm64/crypto/aes-neonbs-glue.c
> @@ -384,7 +384,7 @@ static int __xts_crypt(struct skcipher_request *req, bool encrypt,
>                         goto xts_tail;
>
>                 kernel_neon_end();
> -               skcipher_walk_done(&walk, nbytes);
> +               err = skcipher_walk_done(&walk, nbytes);
>         }
>
>         if (err || likely(!tail))
> --
> 2.7.4.3
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
