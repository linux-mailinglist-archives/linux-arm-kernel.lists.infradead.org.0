Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A456536460
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 21:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1kMuM9SMwnRweYGDph2zyCmPEJCxP0QPHV8RwxeYuA=; b=CLFxGpHmV223SU
	5TXa5rvPLFqEfLVLV1lyt+GMTxBrOnS5t9/FYwcUL7tl7Yjh+ij4lSMMkjYyuPZWcP1b08DUSDdKg
	5G7jkDmSwzE9ZeLDs7BSRhG/DTr8UrgwkPJyWrxjx+NLXKz0QJPYs5FbbFv2FZuI+d/tew/WTMZce
	LZG97gOAoeuHoUaNN9zIvHSU/u5GdzZMruYX5MqgOGDUoYGLor6ksp0Lq2qSNbRywCURUq4QQ/imh
	kCh2ZAcLvOinISVqIgSl73FM+/u5TqDF2lowGa7QjOVLipKodQ7Cs0CF1TxUGeGK+G6SHMRBIjMze
	ElBeZHcnHTEjlHfmPnqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbNL-0000kQ-RS; Wed, 05 Jun 2019 19:15:07 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbNB-0000k1-3b
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 19:14:58 +0000
Received: by mail-pl1-x644.google.com with SMTP id i2so5705060plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 12:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3Rc60lsJ3z1zOjfi7ksD28e6ywcaQlCBCKfGl8ThP5g=;
 b=wl9zOlVGzsak3W0n9srNqt6xTicaVMXyvuV62ylpgplp0YgPU7AxCF2aoOl4RB2iC5
 6cPYPEmWEcxRkhSQT57mRJKRMLXCedtcqKwMwsOGUFlinvg03O+6j6DGB/fUMSIL09V+
 wbvrFegoqrdRMWReviAaArKT1XKDv7Q3UdZInx0oUItNDGwcSfHj0y3P/XbhDxVRBZ0D
 1yCB6OValT1P7bMoLKXsiTopYfc7JTB1ixy+cTPwWdKa2YzQE2Wk+wXa6s4NUj8y8Dfc
 D9FBIWE1C6kkbzPxlvNmqGmNa6Z9G3Xpa+E2YU9W+JqS/kkBUZJxb5rYvg85KIW0DsTX
 h0Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3Rc60lsJ3z1zOjfi7ksD28e6ywcaQlCBCKfGl8ThP5g=;
 b=K0zcM7Q0bnjxIcM2rXztUKJonJEVMOHJBv/tT6Ls4j0a/+jqXqZfugOpuS9pav3lUW
 Y53wbCk/DJKoaY7n5BKnDk+CZP5oUgig5plihMT5NP5OS/Y6miimhd/dbx2ztppjPH9k
 kv5rkhMYG3ib3gbjPnEh7sZr/xmC1xteAPqJGhdpfodxpoX9ul/pbEyOOuoEfkeoymud
 SLC2MYFmEvsI54OJWLeFySNe0m21D5cNdumcWTbtf6amUOTWTBE2hkRAsKsfhTuC+QCT
 B0qdXlwwsdYaUlZmH2sD6/H0kSSHjzzIJhWDFg6uZt2baPa3wJFJlg5bd7hvNhjeiZSC
 pq7w==
X-Gm-Message-State: APjAAAWH2hx0mr3NqIfBtkao0JKNTTA95SGjmGIII+SojuC3IK+0OVtV
 Sw+TUj4oVN3SYv5308JEZp77mQ==
X-Google-Smtp-Source: APXvYqz+h4aRHxX//DbbKSqnGBRk+YbQMFSEIS2PAURYu4NSWDUnLwqSRo+mFseHlHHDfgCMaf9Iyw==
X-Received: by 2002:a17:902:2ba7:: with SMTP id
 l36mr45371487plb.334.1559762096439; 
 Wed, 05 Jun 2019 12:14:56 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id t15sm21182517pjb.6.2019.06.05.12.14.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 12:14:55 -0700 (PDT)
Date: Wed, 5 Jun 2019 12:14:53 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 7/8] usb: dwc3: qcom: Start USB in 'host mode' on the
 SDM845
Message-ID: <20190605191453.GJ4814@minitux>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-7-lee.jones@linaro.org>
 <20190605070029.GN22737@tuxbook-pro> <20190605083454.GO4797@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605083454.GO4797@dell>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_121457_407330_E3A4E1EA 
X-CRM114-Status: GOOD (  31.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed 05 Jun 01:34 PDT 2019, Lee Jones wrote:

> On Wed, 05 Jun 2019, Bjorn Andersson wrote:
> 
> > On Tue 04 Jun 03:44 PDT 2019, Lee Jones wrote:
> > 
> > > When booting with Device Tree, the current default boot configuration
> > > table option, the request to boot via 'host mode' comes from the
> > > "dr_mode" property.
> > 
> > This has been the default on the MTP, but this is changing as this is
> > causing issues when connected downstream from a hub (the typical
> > development case for the primary USB port of a phone like device) and
> > more importantly we don't have support for the PMIC blocks that control
> > VBUS.
> 
> My point is not about which mode is currently chosen.  It's more about
> the capability of choosing which mode is appropriate for a given
> system via DT.
> 
> > Once these issues are resolved the dr_mode would be "otg".
> 
> OTG doesn't work on this H/W, so we need to specify "host" mode.
> 

My objection is that when you say "this H/W" you mean a particular
product, but you're making this decision for all SDM845 based products
using ACPI.

I don't know if there is a Windows phone based on SDM845, but if there
is then I don't think forcing it to host would be correct.

> > > A property of the same name can be used inside
> > > ACPI tables too.  However it is missing from the SDM845's ACPI tables
> > > so we have to supply this information using Platform Device Properites
> > > instead.
> > > 
> > 
> > Afaict this would install a fall-back property, so in the case that we
> > have specified dr_mode in DT (or ACPI) that would take precedence. So
> 
> That's correct.
> 
> > the commit message should reflect that this redefines the default choice
> > to be "host", rather than "otg".
> 
> No problem.
> 
> > Which is in conflict with what's described for dr_mode in
> > Documentation/devicetree/bindings/usb/generic.txt
> 
> This implementation only affects ACPI based platforms.  When booting
> with DT, the description in that DT related document is still
> accurate.
> 

You're right, I got lost between the patches and the sprinkled if
(ACPI_HANDLE()) in the probe. This is only added for ACPI.

> > And this driver is used on a range of different Qualcomm platforms, so I
> > don't think this is SDM845 specific.
> 
> ACPI based platforms?
> 
> All the ones I've seen use the XHCI USB driver directly ("PNP0D10").
>  

MSM8998 (835) has the same controller, so this should affect those
laptops as well.

Regards,
Bjorn

> > > Signed-off-by: Lee Jones <lee.jones@linaro.org>
> > > ---
> > >  drivers/usb/dwc3/dwc3-qcom.c | 12 ++++++++++++
> > >  1 file changed, 12 insertions(+)
> > > 
> > > diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
> > > index 349bf549ee44..f21fdd6cdd1a 100644
> > > --- a/drivers/usb/dwc3/dwc3-qcom.c
> > > +++ b/drivers/usb/dwc3/dwc3-qcom.c
> > > @@ -468,6 +468,11 @@ static const struct acpi_device_id dwc3_qcom_acpi_match[] = {
> > >  };
> > >  MODULE_DEVICE_TABLE(acpi, dwc3_qcom_acpi_match);
> > >  
> > > +static const struct property_entry dwc3_qcom_acpi_properties[] = {
> > > +	PROPERTY_ENTRY_STRING("dr_mode", "host"),
> > > +	{}
> > > +};
> > > +
> > >  static int dwc3_qcom_probe(struct platform_device *pdev)
> > >  {
> > >  	struct device_node	*np = pdev->dev.of_node, *dwc3_np;
> > > @@ -603,6 +608,13 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
> > >  			goto platform_unalloc;
> > >  		}
> > >  
> > > +		ret = platform_device_add_properties(qcom->dwc3,
> > > +						     dwc3_qcom_acpi_properties);
> > > +		if (ret < 0) {
> > > +			dev_err(&pdev->dev, "failed to add properties\n");
> > > +			goto platform_unalloc;
> > > +		}
> > > +
> > >  		ret = platform_device_add(qcom->dwc3);
> > >  		if (ret) {
> > >  			dev_err(&pdev->dev, "failed to add device\n");
> 
> -- 
> Lee Jones [?????????]
> Linaro Services Technical Lead
> Linaro.org ??? Open source software for ARM SoCs
> Follow Linaro: Facebook | Twitter | Blog

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
