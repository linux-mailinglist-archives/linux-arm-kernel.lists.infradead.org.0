Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0203574A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 09:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fozFrYn5mkzDVXIRr5UEYZUc4dEhOEOQ0Nc2WwvvYAY=; b=ZxUsps2dIkh6q2
	L33cHKWK6BjEt/SzVbPmlAKxd2d/9CvuY66MmHj9ckA029egMtEpKZRk9DNgCfQuJE5B21Yw+WAJV
	9SX/G8QQaTGB/gS3FflomrGfCEE/9+TQIcSf2oYEh/AgdETkICqts2HsBZSFqUkiyF6uWSq/jhVZ1
	/nWdt0FlYmNzO5R/SWrN5Kxnpvyqi2w4QtEu2sfW4r5NMMFm0NwWUCwKxl4qthGyJAzU6C3WluZcv
	nN8MX4W2Fz55VxYynJ2R529tiJMr39ojY46MKu5BQw9nHqQ0ATqNsqqve2RCVzwuOefXxm2yKnD66
	61QN4uLqmzPHypmSKuwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYPts-0006W1-Iq; Wed, 05 Jun 2019 06:59:56 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPtl-0006Uv-CB
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 06:59:50 +0000
Received: by mail-pg1-x541.google.com with SMTP id 83so5045132pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 23:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kyvvb8Dpo+7r/hNh0Hasg4c/obIxKq733Zz2TyhyGfk=;
 b=hnjKuAO+7okYKXT89T/HbjNHxzesqyxbmXGKeWw/M0zwLzOfJJzpKp+dzmqoVSGqOt
 iDtduWPOOhMqRZ6X5vd3CEdo10NfJCUvGI9JQm/MdY9gjmE2kuH4LRETYHUrglfYxm8J
 VCjECmRAgTUl366uCinwIDOF69n2S5FaY6OJFhB2njA68JADokDFOWPoi928hFXfMxfB
 VH3bfVZX1XT/JVjKlUVWZJi68djN/YvQ0aFGC14/GD6WwBmQAobvm00Mwv4a1zw8aV6G
 TWWSXbzVPVAtUSPJfPtY03wapzuBJphxNZZ/50HL2mG/P3OXVXN4cflOO4fT/wy4Hbek
 8vTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kyvvb8Dpo+7r/hNh0Hasg4c/obIxKq733Zz2TyhyGfk=;
 b=P4cOXJYIHr3Nu1hrKBoWAMVn2nLqGaDrM3mogcA+OYAyJFLWy2FTrDMqeX7QButCMh
 pQd9M640ViiM6Plqdp2k1CgFQo0wi2FVYGCADrnxQ5KxzOSW0PhHEYGi1djjaoVmb/pA
 1sPjZ9IZk1a9IuhwDvzbuzMBNoHx402BES5kR5I64SiUO61sKWUpM/0MU64HKxTNp+Rn
 vYXbvjstqwX5ph+DrLoUtS7TUatpIH48x0d034Gz4M7CuVEwikzibWg6SgLwN6bcVgQ4
 uhbpIBLw3biPHrbt1zONxieXRGhm7dMnGJa+e+1ZGU53PPgKGnfSz7/w8m5WQ6zV2ovg
 tBQw==
X-Gm-Message-State: APjAAAVfGDbiVTuEtMZd6yF9niYcsa9lhJEJCInq8/Xpzh/h8yI/+wDK
 qniARy9Kw4zKJe6b/vi+lAHlmQ==
X-Google-Smtp-Source: APXvYqxpBjz9vh9WdULbhd//bFEmA+VYRSMMw3Z/uoePAdJidj7tnNGvl62YsQy5ZWMZmZn6F/RnRw==
X-Received: by 2002:a62:648d:: with SMTP id y135mr35422233pfb.98.1559717985295; 
 Tue, 04 Jun 2019 23:59:45 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id e184sm28589093pfa.169.2019.06.04.23.59.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Jun 2019 23:59:44 -0700 (PDT)
Date: Wed, 5 Jun 2019 00:00:29 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 7/8] usb: dwc3: qcom: Start USB in 'host mode' on the
 SDM845
Message-ID: <20190605070029.GN22737@tuxbook-pro>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-7-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604104455.8877-7-lee.jones@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_235949_422363_20CAF581 
X-CRM114-Status: GOOD (  21.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

> When booting with Device Tree, the current default boot configuration
> table option, the request to boot via 'host mode' comes from the
> "dr_mode" property.

This has been the default on the MTP, but this is changing as this is
causing issues when connected downstream from a hub (the typical
development case for the primary USB port of a phone like device) and
more importantly we don't have support for the PMIC blocks that control
VBUS.

Once these issues are resolved the dr_mode would be "otg".

> A property of the same name can be used inside
> ACPI tables too.  However it is missing from the SDM845's ACPI tables
> so we have to supply this information using Platform Device Properites
> instead.
> 

Afaict this would install a fall-back property, so in the case that we
have specified dr_mode in DT (or ACPI) that would take precedence. So
the commit message should reflect that this redefines the default choice
to be "host", rather than "otg".

Which is in conflict with what's described for dr_mode in
Documentation/devicetree/bindings/usb/generic.txt


And this driver is used on a range of different Qualcomm platforms, so I
don't think this is SDM845 specific.

Regards,
Bjorn

> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/usb/dwc3/dwc3-qcom.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
> index 349bf549ee44..f21fdd6cdd1a 100644
> --- a/drivers/usb/dwc3/dwc3-qcom.c
> +++ b/drivers/usb/dwc3/dwc3-qcom.c
> @@ -468,6 +468,11 @@ static const struct acpi_device_id dwc3_qcom_acpi_match[] = {
>  };
>  MODULE_DEVICE_TABLE(acpi, dwc3_qcom_acpi_match);
>  
> +static const struct property_entry dwc3_qcom_acpi_properties[] = {
> +	PROPERTY_ENTRY_STRING("dr_mode", "host"),
> +	{}
> +};
> +
>  static int dwc3_qcom_probe(struct platform_device *pdev)
>  {
>  	struct device_node	*np = pdev->dev.of_node, *dwc3_np;
> @@ -603,6 +608,13 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
>  			goto platform_unalloc;
>  		}
>  
> +		ret = platform_device_add_properties(qcom->dwc3,
> +						     dwc3_qcom_acpi_properties);
> +		if (ret < 0) {
> +			dev_err(&pdev->dev, "failed to add properties\n");
> +			goto platform_unalloc;
> +		}
> +
>  		ret = platform_device_add(qcom->dwc3);
>  		if (ret) {
>  			dev_err(&pdev->dev, "failed to add device\n");
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
