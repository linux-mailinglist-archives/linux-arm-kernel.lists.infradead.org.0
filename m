Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D0FF056E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 19:54:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4BVMH1B7q3AIq1wcPbbeOr6uVgYgymu5IGifDSSJPc=; b=AruDWNORzJhMDJ
	ymqRwOhVa7013Bz8xCnuztznAiDil+jkR3oPv2N++EZ0e6kh6ZBQWV2J1vX1wLQoOpK5EmEnQaOVl
	mEdNEc+V7ll+7oFvrgiPooWnJMoOvhGdEfO9G68R35XXsSOSlRXxJMOfobhGFqHwnQwaAqLuJg21A
	pXiEMltL+cBMYQ9ovTsB0/xQh3GA/IB4r6Bm/0MTjvBej8g9eHzeFIUhFEVhEh+kvEDPIGyM08rbd
	lXg2eyRAicQlDhbL72qK0aRWaTWH4BUqRxvzbVidjngxsc3oiTPmejRrsIftS1A6k323Kk4cw0yMI
	SP2qRPFaja23TN6LQ5uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS3y8-0005hb-6y; Tue, 05 Nov 2019 18:54:20 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS3y1-0005h5-9T
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 18:54:14 +0000
Received: by mail-wm1-x344.google.com with SMTP id m17so480885wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 10:54:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=b9rW8VZViOmPb822P4rTXW5hH1eEjWz5hKDflWqqe0g=;
 b=EK5sMnNEwW2daVmWRVcLyyw1FC+4JyswMKLusVZq8o/UnMsna5IpLiTn0sv0DWQRFl
 0b08GdzAsYXcxtgKKkZb3l6ajQZ3h9d3JNUuW4Wm++lIL5mXODgzwaL9F4YS492T4M5m
 /uKQlWcRNKFRPohmntNUjrf/8FmGrPys58cCVg+qome0g+KXd3uARt4UPU3N0CvqS928
 zhf2yXpIg2wl4+qaqPb5P3s7eB0iMdKGP4/RDXEkIjA404AoEXJhz8WkfCz76w4A7jsq
 vztuGcfPMG/yFcxVeltIKEC4K6PKNANgyh6l+SjFnatfGRnm7oQPtPq7rbucpeqv13v0
 tG8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=b9rW8VZViOmPb822P4rTXW5hH1eEjWz5hKDflWqqe0g=;
 b=Q3MaZnUvptfBFSGuL78A9zLGd3aafqBItI0Pf7Z9UeVUP0FyG9SoDXGk/2qxtydyWN
 Q6oIi8H2Rw1PIuvaxWuqQNBCFm9kWnwDRrZv8340yX819o8tD3zQbWs0I70kBWZWcFS3
 iTnEWDRQc9gy7R8Pjvnd2sHmaGrn2X6fRkDdXAsUi3oSrvC5HqcQzydrCMi5XWtabGL5
 uGBlEKO0a1dmTZX4eDXID5tsodQ1rynRryGXmy9LnjGg6AqO0bSs4CJiuWcycGne7ju7
 0LP6eDwXem507rt6/DSwvz6Bu9vrlpoW4hdHxJJ12fjQ9dV74LWwR2pCr4dPFwfMdVz1
 /XAQ==
X-Gm-Message-State: APjAAAXQYArF2z2+oTcIyG7RdI2nmhIXdQt+573UCb1KFsi00uzPfu4V
 6jrB/KFOTCDhW5nVSkrempg=
X-Google-Smtp-Source: APXvYqxE0qQ3loLdW8eDE6haw+ABArPyrk5GG0qXr0rhedvoZMm3o2CDogwV5/da5RXup6KDE5Kn4g==
X-Received: by 2002:a7b:c748:: with SMTP id w8mr461960wmk.114.1572980051604;
 Tue, 05 Nov 2019 10:54:11 -0800 (PST)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id w4sm262251wmi.39.2019.11.05.10.54.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 10:54:11 -0800 (PST)
Date: Tue, 5 Nov 2019 19:54:09 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next][V2] crypto: allwinner: fix some spelling mistakes
Message-ID: <20191105185409.GA16603@Red>
References: <20191105150359.61379-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105150359.61379-1-colin.king@canonical.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_105413_351805_59CC10A7 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-crypto@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 03:03:59PM +0000, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There are spelling mistakes in dev_warn and dev_err messages. Fix these.
> Change "recommandation" to "recommendation" and "tryed" to "tried".
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
> 
> V2: Fix "tryed"
> 
> ---
>  drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c | 4 ++--
>  drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
> index 8e4eddbcc814..73a7649f915d 100644
> --- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
> +++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
> @@ -469,7 +469,7 @@ static int sun8i_ce_get_clks(struct sun8i_ce_dev *ce)
>  		}
>  		if (ce->variant->ce_clks[i].max_freq > 0 &&
>  		    cr > ce->variant->ce_clks[i].max_freq)
> -			dev_warn(ce->dev, "Frequency for %s (%lu hz) is higher than datasheet's recommandation (%lu hz)",
> +			dev_warn(ce->dev, "Frequency for %s (%lu hz) is higher than datasheet's recommendation (%lu hz)",
>  				 ce->variant->ce_clks[i].name, cr,
>  				 ce->variant->ce_clks[i].max_freq);
>  	}
> @@ -513,7 +513,7 @@ static int sun8i_ce_register_algs(struct sun8i_ce_dev *ce)
>  			break;
>  		default:
>  			ce_algs[i].ce = NULL;
> -			dev_err(ce->dev, "ERROR: tryed to register an unknown algo\n");
> +			dev_err(ce->dev, "ERROR: tried to register an unknown algo\n");
>  		}
>  	}
>  	return 0;
> diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
> index e58407ac256b..b90c2e6c1393 100644
> --- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
> +++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
> @@ -446,7 +446,7 @@ static int sun8i_ss_register_algs(struct sun8i_ss_dev *ss)
>  			break;
>  		default:
>  			ss_algs[i].ss = NULL;
> -			dev_err(ss->dev, "ERROR: tryed to register an unknown algo\n");
> +			dev_err(ss->dev, "ERROR: tried to register an unknown algo\n");
>  		}
>  	}
>  	return 0;
> @@ -502,7 +502,7 @@ static int sun8i_ss_get_clks(struct sun8i_ss_dev *ss)
>  		}
>  		if (ss->variant->ss_clks[i].max_freq > 0 &&
>  		    cr > ss->variant->ss_clks[i].max_freq)
> -			dev_warn(ss->dev, "Frequency for %s (%lu hz) is higher than datasheet's recommandation (%lu hz)",
> +			dev_warn(ss->dev, "Frequency for %s (%lu hz) is higher than datasheet's recommendation (%lu hz)",
>  				 ss->variant->ss_clks[i].name, cr,
>  				 ss->variant->ss_clks[i].max_freq);
>  	}
> -- 
> 2.20.1
> 

Acked-by: Corentin Labbe <clabbe.montjoie@gmail.com>

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
