Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C213ADE8FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 12:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6FcgPGtY4bSLOG32JwYp325ahAoPH09i1dHd6f28t8=; b=csyJ4y62lwaidG
	fT4Mlpur4TFngrQhbImgu1lW+PKTdmx/ho2xWhYXx8kl+9GtpQuBpMkoLbiPJY1R+V/VfuDkWU/Jd
	9WTVL5nLI5gt+8Y+vEDLoOpd2JB9chxbLQl94G8kIEYlccA77GmYZk34Kjy+mu5ZziVFlHUKaftcn
	qdCRQyHXLG6QFkKy9/uZn/CijPoQxl+yal5BccKmoKK6JQ8+t5pWSdBVZ3OdzpBB1oh+1ymDuDpre
	SaRiVlToCHJOrtZ9A9eE74kpbsxfv+ldzBRks33R8svQtaqFODhXSz5M0dO9zWPKo24jSJ8++ROGL
	XXwFk/h0vepdY2f+fDSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMUZC-0002gm-Lk; Mon, 21 Oct 2019 10:05:34 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMUZ2-0002gI-Hh
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:05:25 +0000
Received: by mail-ed1-f67.google.com with SMTP id b72so588379edf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 03:05:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VIly/GOwYf9JLFy1KZhN7RsSTWZDQWPbQNHGbDM5vaQ=;
 b=WE3NoZbWuE6bwjCn+enqrmH/k/7aEizBvA5s/r5HGgn6PZKOPE9B/xMGE4uK2kww98
 Y1xlxMWc/Gq18IEAIM5SKdeJAO3pMUBUyKA0ZSllAk+aOqZJUzbu4dT8kcAz6UTUdvxQ
 726bi8Z3qPttHXJa2bCulExg97t7eqKik+qDxtRTzw8foV4QzeLJ5qvE8hfWUI4JXzbM
 99xv5tePqMuu0mIG1dsQN1VYo1A7TH6quZkRrQoT5POXiSj0DlC+L0SphHOzebndr6rb
 kcP40IavXIIfNJtOxPb+HuVHa7UMtpSRJWdUfWSyuULqm0gshuv5tfcVKNsPLpeRW1m3
 iUVA==
X-Gm-Message-State: APjAAAU20sdFK4xUwR/hNcVLNi69dImyRH6l2WSmnCgetpGhGwsI8XfT
 ivhqQ/3nmQ0byQ4hzu9crKA=
X-Google-Smtp-Source: APXvYqxQjjcwyceE7CWb0t81HxVmTXnzUIM+gkThYKYGIul4COny7XO62D/6deIRXBTPxyD2sN9ecg==
X-Received: by 2002:a05:6402:88c:: with SMTP id
 e12mr10387252edy.170.1571652320623; 
 Mon, 21 Oct 2019 03:05:20 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id y7sm253102edb.97.2019.10.21.03.05.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 03:05:19 -0700 (PDT)
Date: Mon, 21 Oct 2019 12:05:17 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH 07/25] crypto: s5p - switch to skcipher API
Message-ID: <20191021100517.GA1780@pi3>
References: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
 <20191014121910.7264-8-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014121910.7264-8-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_030524_585251_A461451E 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 linux-crypto@vger.kernel.org,
 Kamil Konieczny <k.konieczny@partner.samsung.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 02:18:52PM +0200, Ard Biesheuvel wrote:
> Commit 7a7ffe65c8c5 ("crypto: skcipher - Add top-level skcipher interface")
> dated 20 august 2015 introduced the new skcipher API which is supposed to
> replace both blkcipher and ablkcipher. While all consumers of the API have
> been converted long ago, some producers of the ablkcipher remain, forcing
> us to keep the ablkcipher support routines alive, along with the matching
> code to expose [a]blkciphers via the skcipher API.
> 
> So switch this driver to the skcipher API, allowing us to finally drop the
> blkcipher code in the near future.
> 
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: Vladimir Zapolskiy <vz@mleia.com>
> Cc: Kamil Konieczny <k.konieczny@partner.samsung.com>
> Cc: linux-samsung-soc@vger.kernel.org
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  drivers/crypto/s5p-sss.c | 191 ++++++++++----------
>  1 file changed, 91 insertions(+), 100 deletions(-)
> 
> diff --git a/drivers/crypto/s5p-sss.c b/drivers/crypto/s5p-sss.c
> index 010f1bb20dad..e6f1d4d5186c 100644
> --- a/drivers/crypto/s5p-sss.c
> +++ b/drivers/crypto/s5p-sss.c
> @@ -303,7 +303,7 @@ struct s5p_aes_dev {
>  	void __iomem			*aes_ioaddr;
>  	int				irq_fc;
>  
> -	struct ablkcipher_request	*req;
> +	struct skcipher_request	*req;

You mix here indentation.

Beside that:

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
