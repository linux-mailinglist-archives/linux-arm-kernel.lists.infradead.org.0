Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5813E41835
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 00:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XyePQ5aXgW5GjZ4o4ur7S/J/ueovupsXg7l08AgNtUo=; b=Br/+LnlEX1jHdG
	E8w9pZIm+Bb0CUuiZ2iyqL5Sd+x0jeR+lJRjCPlyWaf/tv/ZGqSbwrmgI/W1tX8xyasT7oO42joUq
	znUnqwrUQ5K0QBYe4zwQT6W+PARuX2WAX8UGK+fWuvdFiO8hVplOtIIbAQaNEukoFP+n1UzV4sDX+
	cKlMQlTI4eDPi3RQt/jcCI450i7KfAD96rUjxI27+4h+aQKVwyeezUsN5PKwmYabH4a8xEPheK4/5
	0xUAqvGZ2EH5iQJC+f+55atvmSIRawBMzgAUyLBwmRxhIJ4hoA1E+MwpHzGuA3ZyTEZNinjaeSd23
	eyQPI4Mzx9yC6l32LL0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hapL8-00023X-RG; Tue, 11 Jun 2019 22:34:02 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hapKz-00023B-Ku
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 22:33:55 +0000
Received: by mail-pl1-x642.google.com with SMTP id s24so5710597plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 15:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rheF1XeHr+TBtp29Z8BqnMhDdcbdifoVvsMUnTVTQ0w=;
 b=QKzewkqqr14aegyj9+KanpTXPALGWcAhgyKlFkPm+hIUpaiT5vfVCHwLDQjJnicRB4
 jWOVMCSmyMs7lj97v8kBr5AIAjLEtAYARRhQvSIdJl6dY8M8BIMwu6hXtzBO/6hQAAVZ
 R/3aJvCS5f1cpoXdCsmvWLdPJctFcP3gL7lhMRFa2f04l87qEV3sG+LctemNIIutyiz0
 coO2IFn//1n30Y5C3x2psChDUceRjUq3sahJi0y3yAlHV+XXZsp9XT/sRIA/UjAFFgGJ
 VuUO6M6OzU+lbVMu8QhXHbQzabAHnK3JcUwmnUhN5ilGVa3HtEDaHSJuGg4zy3T9ddsl
 /2iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rheF1XeHr+TBtp29Z8BqnMhDdcbdifoVvsMUnTVTQ0w=;
 b=HmKDUj1J8y6sv+j5SrwM6Ly1cBJy8aB4/cKuglCXzqBJVEME8toxZYAZcf03aiSBPR
 pyohPsHLV7eBLkstfbHdguSTLIBSAfqifOWYr5aLus9n91k28Gfe3pN6BrTtGgpWHJsK
 X0a142C5i+WeKUmHiNiVNrlhoSpxgh17XXrwhigBMLYJoPowR1zjxrt6pzDdVc40V+Cn
 jZbffz6jYjW7WaGoOJZcvmlM9vn+mBREdtc/eVCZuvjHAvGWH8LAA5ivfabgH1b4C4H+
 7IH7SqwLLzPmqSMwMqHM33h17tPSfG4BtHqpCmmZtrH4XI4NPxjGAwJnJXwOk/kxhawp
 xT3w==
X-Gm-Message-State: APjAAAXAUK8t4KIHj7wg410ElruWWiYmNjDz0krXLSsOz1Vp2KqLlD9P
 xRGpizGWbpzz1wQxjlGUL9Ud9w==
X-Google-Smtp-Source: APXvYqzOrGp2e1lCEgBy09sDw+6XFk1Cp1xh3ZSUOlQ7lXvCww/YU+McON7j6rpV8WQzMMdtV7Kusw==
X-Received: by 2002:a17:902:42a5:: with SMTP id
 h34mr40878255pld.16.1560292432547; 
 Tue, 11 Jun 2019 15:33:52 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id w4sm18222973pfw.97.2019.06.11.15.33.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 15:33:51 -0700 (PDT)
Date: Tue, 11 Jun 2019 15:33:49 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 7/8] usb: dwc3: qcom: Start USB in 'host mode' on the
 SDM845
Message-ID: <20190611223349.GS4814@minitux>
References: <20190610084213.1052-1-lee.jones@linaro.org>
 <20190610084213.1052-7-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610084213.1052-7-lee.jones@linaro.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_153353_748035_3B6F3653 
X-CRM114-Status: GOOD (  21.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: balbi@kernel.org, linux-usb@vger.kernel.org,
 wsa+renesas@sang-engineering.com, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, ard.biesheuvel@linaro.org,
 linux-kernel@vger.kernel.org, david.brown@linaro.org, alokc@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 10 Jun 01:42 PDT 2019, Lee Jones wrote:

> When booting with Device Tree, the current default boot configuration
> table option, the request to boot via 'host mode' comes from the
> 'dr_mode' property.

As I said in my previous review, the default mode for SDM845 is OTG. For
the MTP specifically we specify the default mode to be peripheral (was
host).


The remaining thing that worries me with this patch is that I do expect
that at least one of the USB-C ports is OTG. But I am not able to
conclude anything regarding this and host-only is a good default for
this type of device, so I suggest that we merge this.

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> A property of the same name can be used inside
> ACPI tables too.  However it is missing from the SDM845's ACPI tables
> so we have to supply this information using Platform Device Properties
> instead.
> 
> This does not change the behaviour of any currently supported devices.
> The property is only set on ACPI enabled platforms, thus for H/W
> booting DT, unless a 'dr_mode' property is present, the default is
> still OTG (On-The-Go) as per [0].  Any new ACPI devices added will
> also be able to over-ride this implementation by providing a 'dr_mode'
> property in their ACPI tables.  In cases where 'dr_mode' is omitted
> from the tables AND 'host mode' should not be the default (very
> unlikely), then we will have to add some way of choosing between them
> at run time - most likely by ACPI HID.
> 
> [0] Documentation/devicetree/bindings/usb/generic.txt
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/usb/dwc3/dwc3-qcom.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
> index 1e1f12b7991d..55ba04254e38 100644
> --- a/drivers/usb/dwc3/dwc3-qcom.c
> +++ b/drivers/usb/dwc3/dwc3-qcom.c
> @@ -444,6 +444,11 @@ static int dwc3_qcom_clk_init(struct dwc3_qcom *qcom, int count)
>  	return 0;
>  }
>  
> +static const struct property_entry dwc3_qcom_acpi_properties[] = {
> +	PROPERTY_ENTRY_STRING("dr_mode", "host"),
> +	{}
> +};
> +
>  static int dwc3_qcom_acpi_register_core(struct platform_device *pdev)
>  {
>  	struct dwc3_qcom 	*qcom = platform_get_drvdata(pdev);
> @@ -488,6 +493,13 @@ static int dwc3_qcom_acpi_register_core(struct platform_device *pdev)
>  		goto out;
>  	}
>  
> +	ret = platform_device_add_properties(qcom->dwc3,
> +					     dwc3_qcom_acpi_properties);
> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "failed to add properties\n");
> +		goto out;
> +	}
> +
>  	ret = platform_device_add(qcom->dwc3);
>  	if (ret)
>  		dev_err(&pdev->dev, "failed to add device\n");
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
