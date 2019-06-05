Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 825F63570B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 08:34:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ZbeD0wJsbK6+WFPDdVqjq+WYDIGegenNO42IUkhxdQ=; b=ENuclNZLs0qgfO
	8ZIOUs80OvW/O0XNl+TWodYacry1kRX49LiuZzslPUN5MufzjDVgyJJXTwVSFhzJSofBc0ztnE9Zh
	rnGC19TqTLJWB1ihihsfUFA2Z0Ltbt1iDWDjjSbdYqyZhnwbmTjD0ieJGBvwTGU9XJa0kQp3dIq7N
	krxh/3YT4lfZBOAmwE/N4u1flRc+JQ0U5sT6C8FIDZOMQqNiL6zKpEiHNk0IcSOUlAF0cNkx6nuLd
	juGdQu1aXeH+EHvfSt667jeU0prEEgtCCEmGy9RoqZuu5HZKXAsWrX2aMFufib5SomxqoLCvY+hqm
	/lgCWcOU/R3EsZKxsX2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYPVL-0005kq-8v; Wed, 05 Jun 2019 06:34:35 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPVA-0005cP-7l
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 06:34:28 +0000
Received: by mail-pg1-x544.google.com with SMTP id v9so11811020pgr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 23:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MDnhT69i4+3igVNMGRO0Olac0iYlmd7+e9rYlDGKlMQ=;
 b=b0zeeCKtZnHGuRksL/MviXPn9ETjzaS+XVRjInqPSn3MmRYG1h2xHNGblAhI+hwSgW
 27ZfCX1Gruevo4QQpULxZqIYe5C+Zgz/G1c55aHrsLCR1l4SuO6Zl2rqHMz/HhFh9Z9Q
 QxMw+vu3nl1p1nftk6+cafNIaL0Qc2EIwNB2KxZMrgxWW1jAV1G6l5NzkuLcxcGZCAGE
 4WVEq1fL81w0hRjY+jxAYMV+Z8z5ugYVoDpGILoXwPvhIzQqgv5xTEOy7KxvxfLB+J1S
 ODzal5jdUT/lQkiRAr2R384iYKbide9/PJ3H67SHJn10yNgF/PbuaKGoJUtwsqQIGR2B
 g+0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MDnhT69i4+3igVNMGRO0Olac0iYlmd7+e9rYlDGKlMQ=;
 b=QUeB16ST388x8yf6nRzQyhHnUswO5Q7cikGVMyDHEHsqVs3hjDJVwu1PqY3wJgrAkG
 umkGyqm/rP3t3MK1GxcnQ5889eaOWG0atz8FyKANFkWfp5+PsjF1wpd7qOdy80le9x6D
 qUw73IDhhPR0NnB5A4Boz0i1qsaec4A+ABAZvCo1LiGXL4bHmHfRu1GJbx7/cimija+d
 q/SZhdGh3ajglaIKWgCAxcfGeNb4Qa42lk9Pe+I89Ktyfis6HzCuuAbEHwobvt44RBkl
 1rv2pockNxTZc+jKHuf5gcBk+oX77gVZxRT8sbQuq3tHOuMKc5aN6wHBr8D1G+gbE95l
 6Whg==
X-Gm-Message-State: APjAAAXgbRVPFTCNyTZ8g4POqhEBlTBVZthE8dw8kQDrLBUxebLlfiDQ
 FPNrGoEB6pVLyRer5K4cc7glSA==
X-Google-Smtp-Source: APXvYqy3bNsHWjS/PwRCl4JZk2sWXQhzg3FwJWCnisZBOEnbpp0qgkByrv0MfZW4pI4x2RdDmUP25g==
X-Received: by 2002:a63:f146:: with SMTP id o6mr2228929pgk.179.1559716463205; 
 Tue, 04 Jun 2019 23:34:23 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id k8sm8144854pfk.177.2019.06.04.23.34.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Jun 2019 23:34:22 -0700 (PDT)
Date: Tue, 4 Jun 2019 23:35:07 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 6/8] usb: dwc3: qcom: Add support for booting with ACPI
Message-ID: <20190605063507.GM22737@tuxbook-pro>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-6-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604104455.8877-6-lee.jones@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_233425_164335_33CA4B6C 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 david.brown@linaro.org, alokc@codeaurora.org, kramasub@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 04 Jun 03:44 PDT 2019, Lee Jones wrote:
> diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
[..]
> @@ -373,7 +416,7 @@ static int dwc3_qcom_clk_init(struct dwc3_qcom *qcom, int count)
>  
>  	qcom->num_clocks = count;
>  
> -	if (!count)
> +	if (!count || ACPI_HANDLE(dev))
>  		return 0;

Afaict you call this with count = of_count_phandle_with_args(), which
should be 0. But why not skip calling this at all?

>  
>  	qcom->clks = devm_kcalloc(dev, qcom->num_clocks,
> @@ -409,12 +452,28 @@ static int dwc3_qcom_clk_init(struct dwc3_qcom *qcom, int count)
>  	return 0;
>  }
>  
> +static const struct dwc3_acpi_pdata sdm845_acpi_pdata = {
> +	.qscratch_base_offset = SDM845_QSCRATCH_BASE_OFFSET,
> +	.qscratch_base_size = SDM845_QSCRATCH_SIZE,
> +	.dwc3_core_base_size = SDM845_DWC3_CORE_SIZE,
> +	.hs_phy_irq_index = 1,
> +	.dp_hs_phy_irq_index = 4,
> +	.dm_hs_phy_irq_index = 3,
> +	.ss_phy_irq_index = 2
> +};
> +
> +static const struct acpi_device_id dwc3_qcom_acpi_match[] = {
> +	{ "QCOM2430", (unsigned long)&sdm845_acpi_pdata },
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(acpi, dwc3_qcom_acpi_match);

Analog to of_device_get_match_data() there seems to be a
acpi_device_get_match_data(), if you use this you should be able to
have you acpi_device_id array next to the of_device_id.

> +
>  static int dwc3_qcom_probe(struct platform_device *pdev)

It seems that all that's left unconditional on ACPI_HANDLE() in this
function are the optional pieces and the tail. Wouldn't it be cleaner to
split it out in different functions?

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
