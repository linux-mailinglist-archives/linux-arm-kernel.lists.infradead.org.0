Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D9539ACA
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 06:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGX45lOk/eS63q5+xKXVUxau2SOf4KOpXgZaaHNsFvU=; b=BQr23G8CAQVeV4
	1VdEseo6pEwKM3gdrW5XHXpjY3Pg0pTxYky7Hgm2Bw+ELVX2UvDzRp0otDZKCLAZ6IOc2Ojgrw5Vi
	xmfG2alZsuRHA48Iv4yuIrQf90dGz9UHqOt/PD/76Yqvv7mZghJqMynZw9hhdSc0trZb4jl7A2eWM
	zgKwVH/1O/kOz6r3w2QlYXvAlXPT4YoGpAgKSdWRsyOS/AsVrPIT8gom9XDC5y06BcV0NQqsszLhn
	4e18pUh7gCPWOkNM6JKsmLA8zmPP/VW0K1rb1BbLOcpkE7UJI/qNtq/NHEC0UOCx1cV7noZZBpGRz
	l6nd+HKYpfyhaLOEpH4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZScg-00083z-MT; Sat, 08 Jun 2019 04:06:31 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZScQ-00083P-4q
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 04:06:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id 20so2156052pgr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 21:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PyDG+UhX2LZRYYvLv1SMUrMAsUP6kJRuwP4hHbbu49Q=;
 b=oLKZl8BdcEWgS/7tCRrkGaQMn1rEE6eyguMA2c78pPAYogjbKRnBM1xcCeAfZACA9I
 NJV4ImdEnOXKA/I3EPaZORfJraLb/NutjShfO67Pqz0H7NtYZkJ2kPeg3tU4fvDfwcoK
 br3Z73zRlWDv2Y7oto2BUFTRcmhS/WJcydY4ZJhpRhAMCtpEqdZ4vsaeH37KCIFlSpH4
 BVF3w9RXQArA/DN7z3f4EP68SjpdeEJ2pgwbIpwoR+106HXUh3/jNFq8VYxDZzQSOaED
 n8qfxLKDWqJRevB7KEyW+qfYyCmFAUoPpouaJ0fXCOI7slFBh31W9jxCLpnFYXdNjXmi
 thGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PyDG+UhX2LZRYYvLv1SMUrMAsUP6kJRuwP4hHbbu49Q=;
 b=d1G67oF83OyCe68Gq4xMUVfYaLMsxXfGgdOroilmWJOKPUwhNQGCXTpK5DWv7EuTrQ
 ANU+C0Wj3/WoFU5h0MmBb5ZBhrWQrYNt3jjiqn9vqsPWWYDyb24D7njdoZ/s7n0bS3xF
 ZOQJfBQBN1x46oiZicLv7VUbfEvhRkItuYzDxexDN8AZtlwNYL7C7+qPvIuhyF7l7Q7Y
 bFon5p0MeJQs4ZkKY64slciH2K2kOJC6uHmovOXf0omao4XQHouX2CIK0/nDHidwV4WH
 BMJgCb50AN0g/gCP5xmm60urD5AzW8cfalubg14aaAcqbnVgkfEspRwlStUI6GLyom4J
 CEIg==
X-Gm-Message-State: APjAAAXWIzG3qNnlHOBL6pwV3TcXMyVMJ0MBvwRJ4OTCu5AQ/Fgnxmmp
 2qHzxqyIorqPFb/Pg50J/b9KQw==
X-Google-Smtp-Source: APXvYqxxX8LNDTro0dbkyH+JE1KcQfRwMQkC/TP2PYlKUX5c3Htw8meTgL4m1176HNvjepcvPVQ9RA==
X-Received: by 2002:a62:e403:: with SMTP id r3mr31613379pfh.37.1559966773330; 
 Fri, 07 Jun 2019 21:06:13 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id y6sm6668288pfo.38.2019.06.07.21.06.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 21:06:12 -0700 (PDT)
Date: Fri, 7 Jun 2019 21:06:10 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 3/8] pinctrl: msm: Add ability for drivers to supply a
 reserved GPIO list
Message-ID: <20190608040610.GJ24059@builder>
References: <20190605114302.22509-1-lee.jones@linaro.org>
 <20190605114302.22509-3-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605114302.22509-3-lee.jones@linaro.org>
User-Agent: Mutt/1.10.0 (2018-05-17)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_210614_215245_6879F21E 
X-CRM114-Status: GOOD (  22.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 david.brown@linaro.org, alokc@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, jlhugo@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 05 Jun 04:42 PDT 2019, Lee Jones wrote:

> When booting MSM based platforms with Device Tree or some ACPI
> implementations, it is possible to provide a list of reserved pins
> via the 'gpio-reserved-ranges' and 'gpios' properties respectively.
> However some ACPI tables are not populated with this information,
> thus it has to come from a knowledgable device driver instead.
> 
> Here we provide the MSM common driver with additional support to
> parse this informtion and correctly populate the widely used
> 'valid_mask'.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/pinctrl/qcom/pinctrl-msm.c | 18 ++++++++++++++++++
>  drivers/pinctrl/qcom/pinctrl-msm.h |  1 +
>  2 files changed, 19 insertions(+)
> 
> diff --git a/drivers/pinctrl/qcom/pinctrl-msm.c b/drivers/pinctrl/qcom/pinctrl-msm.c
> index ee8119879c4c..3ac740b36508 100644
> --- a/drivers/pinctrl/qcom/pinctrl-msm.c
> +++ b/drivers/pinctrl/qcom/pinctrl-msm.c
> @@ -607,8 +607,23 @@ static int msm_gpio_init_valid_mask(struct gpio_chip *chip)
>  	int ret;
>  	unsigned int len, i;
>  	unsigned int max_gpios = pctrl->soc->ngpios;
> +	const int *reserved = pctrl->soc->reserved_gpios;
>  	u16 *tmp;
>  
> +	/* Driver provided reserved list overrides DT and ACPI */
> +	if (reserved) {
> +		bitmap_fill(chip->valid_mask, max_gpios);
> +		for (i = 0; reserved[i] >= 0; i++) {
> +			if (i >= max_gpios || reserved[i] >= max_gpios) {

reserved is a list of GPIOs to reserve, I don't see a reason to check
if that list is longer than the number of GPIOs (i.e. the first half of
the condition).

It wouldn't make sense to be, but there's no logical issue with it and I
had to read the conditional a few extra times to be sure what was going
on.


Apart from that you have my

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> +				dev_err(pctrl->dev, "invalid list of reserved GPIOs\n");
> +				return -EINVAL;
> +			}
> +			clear_bit(reserved[i], chip->valid_mask);
> +		}
> +
> +		return 0;
> +	}
> +
>  	/* The number of GPIOs in the ACPI tables */
>  	len = ret = device_property_read_u16_array(pctrl->dev, "gpios", NULL,
>  						   0);
> @@ -964,6 +979,9 @@ static void msm_gpio_irq_handler(struct irq_desc *desc)
>  
>  static bool msm_gpio_needs_valid_mask(struct msm_pinctrl *pctrl)
>  {
> +	if (pctrl->soc->reserved_gpios)
> +		return true;
> +
>  	return device_property_read_u16_array(pctrl->dev, "gpios", NULL, 0) > 0;
>  }
>  
> diff --git a/drivers/pinctrl/qcom/pinctrl-msm.h b/drivers/pinctrl/qcom/pinctrl-msm.h
> index c12048e54a6f..23b93ae92269 100644
> --- a/drivers/pinctrl/qcom/pinctrl-msm.h
> +++ b/drivers/pinctrl/qcom/pinctrl-msm.h
> @@ -121,6 +121,7 @@ struct msm_pinctrl_soc_data {
>  	bool pull_no_keeper;
>  	const char *const *tiles;
>  	unsigned int ntiles;
> +	const int *reserved_gpios;
>  };
>  
>  extern const struct dev_pm_ops msm_pinctrl_dev_pm_ops;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
