Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12407DFE89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 09:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dri8CyfnxR6oAQ5j8keWjD/6MFwo6DV3ymdTl4ZYXLc=; b=mnvzKf7KSXEbAv
	MmS1Ub0l22UTJLedI88CRZqlvX7p4QSn907uZ8SxungtFLe/IEX/qj10wM9lnm5RNhSAyzGCkBvOv
	Aj/dv6/E3XptFsD0FBQlR9DOs8fUqe4Zb8fBuy4wNn0SXg6QEVMJmMorEgJxTSWLPoOJvoMl9MWzr
	0wOBMvzIgYeWDUFRADxt46isJrnaC9CrHfyEwiv84C4FcmIyJCtk3tl9VWIHWWuCeme8SHCqfuOTG
	vXv/eeX/Ksm1b5HiY0w/fPJzh8SbK+rJk2pHHwdKxeBLg2LWVZqJ+nDpUJM5kWHnaVcV58XRh+IhN
	oK5Y66XID7n+7zwVgRzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMop2-0001zu-IO; Tue, 22 Oct 2019 07:43:16 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMoos-0001yr-ST
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 07:43:08 +0000
Received: by mail-wm1-x342.google.com with SMTP id g24so6777905wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 00:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Nh2LJWcAA6+F58FkBmsDYADEarvpFUTo1V/7oVQrNLc=;
 b=dnADVe925smBvR+rSpyj4PtIlJk5/q3GB4C2JSunmryH/ihy/PAiXj+FVebkWFYq7h
 Vhy49WWqi7OJpoWSOJ9a/i3mE2seYWQfEvw/wTU/QS7L/aD4oysMQQ3jgn7MhGSO2G2R
 qv88wCmhp/vLRFQnQUR9IL1SUsC2x33PjpeCdt2aVQelQWXkF6ZxD5VpPOMVgJ0KRrub
 rfLOd9AJiPeOyFEKQT+skRwT7ZYS4zmIsbUxzvYwJRaypgVAMGDfjmP/91MRWtuHkCb5
 W+iZfnoUhIBqsXz47EwLknza6gSLZUpCm/lXGzfu0LlKxgP2yGGFY1VNnaHnSNo1WBFE
 fOBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nh2LJWcAA6+F58FkBmsDYADEarvpFUTo1V/7oVQrNLc=;
 b=UBhvlS7uQSvz69m/igNVW1SERkwRQoK5KyzGbbRAMNw8W+TFJVS/h6F5uXsgZb0odh
 dREbt6w1Nd6fGE0l3HhzqOmO59OfA28v7y1HbHXxzMdU60Bob0dgZ1BxDai89nUVfMgo
 4b7yLem0ngP/KsiHDQ5W4D9PHAIKj2Bb5xjZpdl2fjt2wp7iBBDz8VCr5epZQP24DsCo
 8JHe9rLn1nNw/lP8c5d43hiqXfx68b+IGAj5w2TJjSKDE5d8A4ZF+71j/sLJ16XR8N8c
 SD7qyAbjLKovyquFGpQ4L40Ofw9+kEyu8Dqk4wJmEI/FNLrmkgE9pfDuU43u5OIMWc4s
 rBXQ==
X-Gm-Message-State: APjAAAXPF2F/CERtd1euVxVWwVxLvN1Ct6z7XJVdOWk34M3LFQD//cfK
 OCQsbdV8hfiaW4OQ/+nt2IgyZh/vFimokVpPp33Uxw==
X-Google-Smtp-Source: APXvYqzja7xl0D4V5WYVo1mTlFrVTbTKv6QHAypbeOH/fy5ot9cR72w/UPWY151nEVaz/vrxF6wPxmJhMQmVAt9CRLA=
X-Received: by 2002:a05:600c:2214:: with SMTP id
 z20mr1719270wml.10.1571730185195; 
 Tue, 22 Oct 2019 00:43:05 -0700 (PDT)
MIME-Version: 1.0
References: <0812dca3-8447-be46-b84c-e89f25176cbf@huawei.com>
In-Reply-To: <0812dca3-8447-be46-b84c-e89f25176cbf@huawei.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 22 Oct 2019 09:43:00 +0200
Message-ID: <CAKv+Gu_+ab6KuvFdp+=F4M4JYm+eO7tN0ea=1ePrwEdG9tLNmQ@mail.gmail.com>
Subject: Re: [PATCH v2] crypto: arm64/aes-neonbs - add return value of
 skcipher_walk_done() in __xts_crypt()
To: Yunfeng Ye <yeyunfeng@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_004306_925705_953CBCA8 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, hushiyuan@huawei.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linfeilong@huawei.com, "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 22 Oct 2019 at 09:28, Yunfeng Ye <yeyunfeng@huawei.com> wrote:
>
> A warning is found by the static code analysis tool:
>   "Identical condition 'err', second condition is always false"
>
> Fix this by adding return value of skcipher_walk_done().
>
> Fixes: 67cfa5d3b721 ("crypto: arm64/aes-neonbs - implement ciphertext stealing for XTS")
> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>

Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

> ---
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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
