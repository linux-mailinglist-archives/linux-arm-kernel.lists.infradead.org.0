Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC65C35754
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 09:02:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ImP7ky/t41614Ed0x8OQhizemVTW11p5z+C/Whpxluc=; b=KG534rjsjRh4eY
	mXzcCe+/92NgTdwIaR52hJz4l0SFJ6mL6X0NOHOJYK4bBWG+eTJHFt5DzqfYEQ/NWPUI8Zuwv92+a
	YRFjD2jJcMT5BvnWErJOyCQB68VlvdjH5Gg1M81d7V50H2l2v9SM73TBJztJjmLDNg6jPbSzfqKAl
	P4yD45RVcBR9Ld3hX71BD6zcDbhQ+DXIQPRZ1MxgvEMGcMWz1Kj+kwkgEY+NAQphH6u2/9k90RMhp
	1NCCYvX7QANjtIt0AU/e5LkBJegEfeHnzoOJTAS00SDTUyfKmeWXse/ZDcdTo6a7HRESiDQXrTspp
	Mzx3pg6hcCGpomImgyRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYPwk-0008Eu-04; Wed, 05 Jun 2019 07:02:54 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPwc-0008EN-KO
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 07:02:47 +0000
Received: by mail-pf1-x441.google.com with SMTP id i189so2286527pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 00:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uz4rW4hom4PNyImhqoO7mrnt+7yVJFQ+a19gRd/J1UQ=;
 b=k2mgUNFS8mlgZJLWSI2R4t0x6v3cRS5Cibzq9KsQeI9KAoK6H7pBodfPO0qs0J/hBF
 UnokjKUh6mu48Jv152LXpaxAIemY3F4zfzFSo9NysiwGnJDt8ax3RxYRET3ra0TkQP/i
 GPnwx+W3Hhu5yRpNgUdOJGq+0KClDNJKtGTSYKeDaXwRrQBMN/34vs9cIw762gGL2S2X
 aCq0lADu9jfpEF0rmoDeGo70ZA4BURwaE5YhZ1GEYO/HYwHMaLZ9hL3hbjNuPqnF1VEN
 qBKuQPkKiY/bWef19eOPrZkK5kuzU+JYYp1dQcFzU8F63bw09h+yuZibsYe9AOcoI0tB
 VAcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uz4rW4hom4PNyImhqoO7mrnt+7yVJFQ+a19gRd/J1UQ=;
 b=moV3Nak6dA/XLJZSrveTVhvpwbVpQXqPfBMLCEByYilt017QiI0K3LVVsv17GfaeLx
 ogTDWHHMAkvf+8LDtJ0T16DcuUrCFdNGBX68+8Vl1RWmTsmtmIEjSVX0nthY4+6gblSX
 apC+23FzevKEiYEh0cIfx+lKTunVU4Mkd2ETwUgnpKxRwhohYBY0edJAS+1LjkLAhBlT
 y9l5LQwde4L6JgrJCnhlCOmwWjQXH3qLYvZ9FvLJvueR/oWhcEyBMd4kRY2yPhfvM94z
 xgwQYrxN/35WRQkhQ0Rut9v+1exbP/DipmOxxM/wg1j5HovVyrSJzmFRPtMD92UbFc9y
 vmdQ==
X-Gm-Message-State: APjAAAX7fj8HXxxIXMBBGWUMRKmFC4P4POWXfnZBofbTAj5FKSilkfRb
 ojKAGMmfkPy1ck+JPWdCb6gTog==
X-Google-Smtp-Source: APXvYqxbp1TM7o6DxILTBx5tTuqENvUDU+OcxxTSnQwTp/YO/ccBSoR/xNWDWoB8WKd14PCiX3fHZQ==
X-Received: by 2002:a63:fa16:: with SMTP id y22mr2444462pgh.15.1559718165590; 
 Wed, 05 Jun 2019 00:02:45 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id w62sm7765452pfw.132.2019.06.05.00.02.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 00:02:45 -0700 (PDT)
Date: Wed, 5 Jun 2019 00:03:30 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 8/8] usb: dwc3: qcom: Improve error handling
Message-ID: <20190605070330.GO22737@tuxbook-pro>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-8-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604104455.8877-8-lee.jones@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_000246_683487_FACB1625 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

> dwc3_qcom_clk_init() is called with of_count_phandle_with_args() as an
> argument.  If of_count_phandle_with_args() returns an error, the number
> of clocks will be a negative value and will lead to undefined behaviour.
> 
> Ensure we check for an error before attempting to blindly use the value.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/usb/dwc3/dwc3-qcom.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
> index f21fdd6cdd1a..633482926497 100644
> --- a/drivers/usb/dwc3/dwc3-qcom.c
> +++ b/drivers/usb/dwc3/dwc3-qcom.c
> @@ -419,6 +419,9 @@ static int dwc3_qcom_clk_init(struct dwc3_qcom *qcom, int count)
>  	if (!count || ACPI_HANDLE(dev))
>  		return 0;
>  
> +	if (count < 0)
> +		return count;
> +
>  	qcom->clks = devm_kcalloc(dev, qcom->num_clocks,
>  				  sizeof(struct clk *), GFP_KERNEL);
>  	if (!qcom->clks)
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
