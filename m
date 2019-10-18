Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5B0DCBFC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GgQ7KHPbprGqjqIvA4zovoln4WgvRTpgPcDfzJoGZlc=; b=at2bQPZmYsF6Ki
	jXndtcLJ1cMsa7wdUHvSVOzXz5PS8qMlyY5CXvidJWOM4L502+L8PnKQz7nSEVP6rJ4ChcazGQsmk
	6vCK3y86GdfBt6htGXOyyN6ivnAcf2cj4s2mZdO2Mk2DRb+kV72yXgnvCVQi1kjsVlVWJ+c1SST8l
	T2reWP1ZfKLzH5XBP7pBqwm3b62OR03Iz9kHPzS/LYD3ayWpfGPW823Sk4BLdXz9OZHBWCRkEZowK
	3GK7vIF4vYLSQGHgC4sewLHTb63nHdUnMhPJ076m6qcmrV7LWkh+grwVHNmLyEbFdBOWG5VzRsbhO
	5lXhERnpTQjsoOPikcdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVWV-0003lP-Kb; Fri, 18 Oct 2019 16:54:43 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVWM-0003kj-KL
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:54:35 +0000
Received: by mail-wr1-x441.google.com with SMTP id p14so7011375wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LS0jfvIIecs+OvBAsmjsVuR4UJ3S5OKog133XvRo+zI=;
 b=G3ODp2LYYhc7I9PzVDJ1ElXhV/36MfDO5Zo+vFWbkekAoLjlWkEoBffhS1py5i3bS2
 jAQtktHkDGE1f1XfFkeEXYYvsQoB4ESDm8sIs/CERJdxv+3OwYAAJRgmKnsPeIEJ1ygB
 SFY96EOTdAs5J/F8BWWGtlAGW0TJ+2eIxcgUI6Epe4ECaeqI2fsxfRqI7gJ5jEKoUY8k
 zWVzSBLaKivNJjdM7Wx9nfJjmP7vy9ZGYobrHtRh1UUOUZHzstZpT3xkkeRVA5zciy+I
 7Y22kqvci3fiWIDEspwZezDEVqouts6IsWsQoRRP0SGO6kK4Y4r4QEs64g65gedgA4th
 B5PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LS0jfvIIecs+OvBAsmjsVuR4UJ3S5OKog133XvRo+zI=;
 b=NM3+80WrU3JmB155tbddWot9E26rnYOTmQrTMy7PUVCdTxYIE7yB2yFdQrGzg069Xq
 uMB8b6tsD3DMnLKteoAo8sSK+QGpb06i2/AhbWkLJywr3GttIGJplZHlWXIFmG2yKavu
 LB30OY1I2dcuVzYzAuYNI3ER/WmBnFI+CsELLqdewVu9LtZyPKKa4bqVUjOPuj4jDb92
 m4l3XBg9Wbdt3WOGYWhMaoeys1gIrU358xqcnlmsRAASr4zQXKNkekD8ZOMljMTZgfj6
 tYSFAHsuaa70HkTGWHGs5Jhjqfc4RJYN5p90nfYmBWBidLWXb96eDTq9rmH0vEfmLznp
 cxKg==
X-Gm-Message-State: APjAAAUc1uMwSVvipdDnW2HJd9NyxmlESkvSKvXGyIEE87BP0V4uCKQ1
 HWU77p1NVsnHa5wIFfP3c+9u31135+AWWw==
X-Google-Smtp-Source: APXvYqzO9oMRXBG5Ptw9stadi08HLw+TY4CT3ikXjwfWs4hMqXSJMurl7l53TfvcJx1KTtMRY2ITzQ==
X-Received: by 2002:adf:d08d:: with SMTP id y13mr8293096wrh.138.1571417672706; 
 Fri, 18 Oct 2019 09:54:32 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id c4sm6007302wru.31.2019.10.18.09.54.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 09:54:31 -0700 (PDT)
Date: Fri, 18 Oct 2019 17:54:30 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 2/4] mfd: cs5535-mfd: Remove mfd_cell->id hack
Message-ID: <20191018165430.abyhbdodrjurx6g7@holly.lan>
References: <20191018125608.5362-1-lee.jones@linaro.org>
 <20191018125608.5362-3-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018125608.5362-3-lee.jones@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_095434_672556_AE92FFF0 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: arnd@arndb.de, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 broonie@kernel.org, dilinger@queued.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 01:56:06PM +0100, Lee Jones wrote:
> The current implementation abuses the platform 'id' mfd_cell member
> to index into the correct resources entry.  If we place all cells
> into their numbered slots, we can cycle through all the cell entries
> and only process the populated ones which avoids this behaviour.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/mfd/cs5535-mfd.c | 31 +++++++++++++------------------
>  1 file changed, 13 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
> index 2c47afc22d24..b01e5bb4ed03 100644
> --- a/drivers/mfd/cs5535-mfd.c
> +++ b/drivers/mfd/cs5535-mfd.c
> @@ -115,16 +110,16 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
>  		return err;
>  
>  	/* fill in IO range for each cell; subdrivers handle the region */
> -	for (i = 0; i < ARRAY_SIZE(cs5535_mfd_cells); i++) {
> -		int bar = cs5535_mfd_cells[i].id;
> -		struct resource *r = &cs5535_mfd_resources[bar];
> +	for (i = 0; i < NR_BARS; i++) {
> +		struct mfd_cell *cell = &cs5535_mfd_cells[i];
> +		struct resource *r = &cs5535_mfd_resources[i];
>  
> -		r->flags = IORESOURCE_IO;
> -		r->start = pci_resource_start(pdev, bar);
> -		r->end = pci_resource_end(pdev, bar);
> +		if (!cell)
> +			continue;

cell will never be null. Should this be cell->num_resources instead?


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
