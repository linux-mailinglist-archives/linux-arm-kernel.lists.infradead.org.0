Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE661F7636
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 15:17:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5wYv3mxYPHc8lcQdGCR9tWfH8LgWIMpDgxfvC9FZmBc=; b=pID0whv/WFl2Teav/cWxNXG9G
	F3RPnq4CQIRgigv+blETyFlcdag39kPUx3QC6h0BpHgIHRg0MgIjiTDvLEWx3FQB1+nQWmGVbO1KC
	wVZUdNGBhy5xzLKXiHAkf0dGVB6YoUmdymu/TfDrsfV49MJUTOmECa2P5dB9IpJLlGRtnYDA9gXYn
	MsM270oMHTWM2/naFO59Znre96ktqRj6mkAwf4wEEkeqbhEpp30KuaOFg1Sj9ccyE8k6vuPys0yEL
	6hqzHs/BrTzMfEId0qaeVT75bIGXYB+m6kpxl+79J6uBaPbaOlwo9rUTJvOSqDE2673rgF281tNGb
	NKv143IOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAVy-0006wP-7V; Mon, 11 Nov 2019 14:17:58 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAVq-0006vP-4C
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 14:17:51 +0000
Received: by mail-pl1-x644.google.com with SMTP id y24so7846311plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 06:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=93RdXzsIh7XerKQ70G4SgAWwA1RTqVLA4QVQaE+nVeA=;
 b=vgMKb3pNimrdFifDzpVs92F8cm3CtbjmJ2qeSxmnYx+db60ceBU5VEo+4rWeupA3VS
 P7xdTsj6iT6ndJL+tS06LB9fAN+o/r1NRurzphtvYLN/9dhWkWbFTVmMZLPHCOVbtawN
 0hJcB07YNPifUoYxkiNgd1AEyQWdYcIDPo2yfaLCAuIqDMvNS3QodnGfVC5+mLZOUeQz
 yV1hd9jlOfEIJZ/dhknd+GFtb6an6m+dJBpayVm83blb1+GJyTd+hZCZcZT4r5oRn78l
 nNW4qSeLvRm37RIfygsxJ45JQJBDnlD0zoUUI90Tdbc7HeRz0YKbXoFNTEA2KtU/6sZE
 +xwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=93RdXzsIh7XerKQ70G4SgAWwA1RTqVLA4QVQaE+nVeA=;
 b=G39rzt6jP1w5IgN2BQSv9WmldPRCQpSbhbNKBFVuu/V8st+09CTWARwgjn6VWiUX/f
 8pEnHD3BVqFmyOr2Yj2U5H6bxb+sTrAuSQzaDwgqcy4lZVd6W0PAdsLkxZQNweRTP+dQ
 wlHfZHz/cgUFfVkmX9tfkchcLnGhm44Iyn2iZDTebR/wW6OKkFK6hr+xim20y6hIzT7x
 KBkYCPZQHPkFv8aZ33APHc+ri+L+0kB7l4z5/d8G/7Vj0PWaOj3fChP8QFnWL/yD1jJu
 A+gYfqomKSgIMAlU0QleecLRF+sjXLwlCm5SYMq42jYwgbTflYT1nm0ZzacSit/O43ti
 LcKw==
X-Gm-Message-State: APjAAAWr7uopWSoMY+vbxVupguAm7H2CBP+YzaZ1rzWt5DCu2L7E5mIu
 cCu8HqRGvwy3/rxVzg/Jqag=
X-Google-Smtp-Source: APXvYqyFfD/d/to91cD9Js7V+sQl7S4aV/n6ouG+pxNMxCkhYGyZqnTZZqlJUPWaVA7Ql+w78/EpqQ==
X-Received: by 2002:a17:902:b40b:: with SMTP id
 x11mr24314029plr.252.1573481869532; 
 Mon, 11 Nov 2019 06:17:49 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 n5sm622739pgg.80.2019.11.11.06.17.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 Nov 2019 06:17:48 -0800 (PST)
Subject: Re: [PATCH v2 -next] fsi: aspeed: Use devm_kfree in
 aspeed_master_release()
To: YueHaibing <yuehaibing@huawei.com>, jk@ozlabs.org, joel@jms.id.au,
 eajames@linux.ibm.com, andrew@aj.id.au
References: <20191109033209.45244-1-yuehaibing@huawei.com>
 <20191109033634.30544-1-yuehaibing@huawei.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <c2b2ca4c-d164-5c16-d518-f9040b81c5ea@roeck-us.net>
Date: Mon, 11 Nov 2019 06:17:47 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191109033634.30544-1-yuehaibing@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_061750_170614_470E68E4 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, alistair@popple.id.au,
 linux-kernel@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-fsi@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/8/19 7:36 PM, YueHaibing wrote:
> 'aspeed' is allocated by devm_kzalloc(), it should not be
> freed by kfree().
> 
> Fixes: 1edac1269c02 ("fsi: Add ast2600 master driver")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
> v2: fix log typos
> ---
>   drivers/fsi/fsi-master-aspeed.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/fsi/fsi-master-aspeed.c b/drivers/fsi/fsi-master-aspeed.c
> index 3dd82dd..0f63eec 100644
> --- a/drivers/fsi/fsi-master-aspeed.c
> +++ b/drivers/fsi/fsi-master-aspeed.c
> @@ -361,7 +361,7 @@ static void aspeed_master_release(struct device *dev)
>   	struct fsi_master_aspeed *aspeed =
>   		to_fsi_master_aspeed(dev_to_fsi_master(dev));
>   
> -	kfree(aspeed);
> +	devm_kfree(dev, aspeed);
>   }
>   
>   /* mmode encoders */
> 
Same question as before: Why is there a release function in the first place ?

Guenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
