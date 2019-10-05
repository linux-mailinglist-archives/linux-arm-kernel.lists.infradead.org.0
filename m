Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F276CCBAE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 19:30:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdJoVIpvZE+tc2lphtDdLm4mwmGqkIKJXefrLe5Pu7k=; b=jBGrZqJcef5s0K
	EY/oRReVwUiJaJ1/mqAYRLYgjNlZ928oj1qcjzXqVH6cdbak0wWFtR8nyVK0687BOX/ZQ3Luu2JtD
	Feu8XpPsdhX+8lh0EhJ9eV0puLA6fLqHNnLChHJWanG16qk07JteMXkqUZB35f3oj6oOYP57t7B9i
	9IxlEZqTrkosmbzMFFp71WQbkqareFqLEGH3JXN16MIpi9nXhVASBqpjfn8QgC/h1xFkErVfJIFjZ
	34CDt4t6rtlJkWB8LLlz+A2HxoUQFK/2OSj3i+mh1y61qwX8WwT6+qA/1fU+NjjZzsXmrMmeawzvX
	G2vj0zbJZZ9D5RVt13fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGnt6-0008Ec-7U; Sat, 05 Oct 2019 17:30:36 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGnsx-0008Dx-S4
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 17:30:30 +0000
Received: by mail-yb1-xb44.google.com with SMTP id v37so3226479ybi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 10:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SFxd5AapzSICM/6Xgqhe/u9Vw5QC679Bx+c0QdN9hnI=;
 b=C4StFwvN+lCG1jC5GtRTymuZCkTXZueajmp5oKh8q2nS/QR4Y2Oo9mBbom6a6lMX/v
 f60G7QcnH8JR/KGokgFN2ry3x3ceJqyt0nyeTAkLqQ7SsSWqzosmkiLWW2dB85RQWaUZ
 84ubNkcrNehQ4E0ryRIKFRdhvYl+I1a/sJrA/gvfYI/XHD28QUBdpd3oOhyXrN43bQK5
 q5eNY46ePlOob7dDWUIctgZzkEKPabn+3FopVzptgyXTYfM8jYbTjnBHttfjXTT6iDQk
 zucn3Ajq0P4wByuR6wWzOPHXuIzhE1ag6cVKPVQBA1dLhD2+UnXqTF4K7mG2A79O+zOM
 ziPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SFxd5AapzSICM/6Xgqhe/u9Vw5QC679Bx+c0QdN9hnI=;
 b=OT1g1JfUsXd7tnoM64nMgPkxS9ZTrc5bSV50TjA2mjdhhihYaLKqrTjHbTtenjnO+J
 UP32xQaVOeWy+H7VWQua0WmZPOhw2+hgcAUBxmk6sP6c60lJviEfN1dxJIgLQ+mER/m9
 2fch3pvmfb6s9L9VQX8yaeJWRL15jTDmOZLk+kNCZTTBAf2JjvmMu1Az1Cqz3gWhK+XJ
 CXFAskzTTPnFOsb2Q4cIdmURa9YlVZOTkue6xbCGG979seDY1XLV1TX/pHQAIxe/PXdN
 SAd4zi0Szn+PR/z1lu76Ftr/3AsEm8FG0vxetV10omdNfcuEXAxeTe3KIsQfvntyiSlO
 0isw==
X-Gm-Message-State: APjAAAVO4EJPHKKTajggxjc38V8ffISJ114fUtjMmgTn+dooL3nY2o+a
 bqBFpdjHXdabZ3T+kHqVosE=
X-Google-Smtp-Source: APXvYqzmQLtqtYywZioGiUcaIwSMLMNOrMMcyq48VNb2gTooHR+RghLWiW32nmaFQGBN3NvDc+DJ6Q==
X-Received: by 2002:a25:7701:: with SMTP id s1mr6210156ybc.286.1570296625972; 
 Sat, 05 Oct 2019 10:30:25 -0700 (PDT)
Received: from icarus (072-189-084-142.res.spectrum.com. [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id 12sm2546780ywu.59.2019.10.05.10.30.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 10:30:25 -0700 (PDT)
Date: Sat, 5 Oct 2019 13:30:04 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Colin King <colin.king@canonical.com>, Jonathan Cameron <jic23@kernel.org>,
 Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] counter: stm32: clean up indentation issue
Message-ID: <20191005173004.GA7431@icarus>
References: <20190925095126.20219-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925095126.20219-1-colin.king@canonical.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_103027_932000_F54F09C6 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-iio@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 10:51:26AM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is an if statement that is indented one level too deeply,
> remove the extraneous tabs.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/counter/stm32-timer-cnt.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/counter/stm32-timer-cnt.c b/drivers/counter/stm32-timer-cnt.c
> index 644ba18a72ad..613dcccf79e1 100644
> --- a/drivers/counter/stm32-timer-cnt.c
> +++ b/drivers/counter/stm32-timer-cnt.c
> @@ -219,8 +219,8 @@ static ssize_t stm32_count_enable_write(struct counter_device *counter,
>  
>  	if (enable) {
>  		regmap_read(priv->regmap, TIM_CR1, &cr1);
> -			if (!(cr1 & TIM_CR1_CEN))
> -				clk_enable(priv->clk);
> +		if (!(cr1 & TIM_CR1_CEN))
> +			clk_enable(priv->clk);
>  
>  		regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN,
>  				   TIM_CR1_CEN);
> -- 
> 2.20.1

Acked-by: William Breathitt Gray <vilhelm.gray@gmail.com>

Fabrice,

I noticed the TIM_CR1_CEN check is happening before the
regmap_update_bits call for the enable path, while the disable path does
the check after. Is this logic is correct.

William Breathitt Gray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
