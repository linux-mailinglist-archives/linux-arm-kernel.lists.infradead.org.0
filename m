Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C4316913E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 19:22:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8oZ8atoYOpl4w9gHk5nMpwNYBrPf8QELa5p3nFcBrc=; b=CTGaTadD4uSUjT
	VxAzHof284Vsgf2TFktjj2RjMxd6nGTX/yzmLlWDEgTTPIumlUhX1OQr2ACQINpQFtgDMwPomklsd
	khjbXgvqxH9bmd6hRY+AfWU/uYZrNMuhQTLFRe7mQ0pxggmc2OysqxBKcVO172Jhle5sgRiz72C+w
	JOlBWmYCY1LR44SfGwVP2kmmbbdxKfG5pcRsrpYVV89F8upPPj4868xjPIprNzw8e352G149AHNPA
	NrKzJ2HbRH43sqrUH2CcSvo5I0t6I+tc9HGGQ6RPt8bVRxCsg8khwduO38cu89E0rxX26lJ1D1430
	x4320S08D52jBMg/XtBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5ZPa-0003MG-UT; Sat, 22 Feb 2020 18:21:58 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5ZPQ-0003Lt-VN
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 18:21:50 +0000
Received: by mail-pl1-f196.google.com with SMTP id y1so2246255plp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 10:21:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iCwcVv4xnWxcWa1WsgaUhoEXl3ZCR2vSZR6hr5gWHNc=;
 b=s4pIcBG7KWJI20BmP+DjS+Yr6BZVhkKvQrkm8wKws9hsawHZrB1u/n6/Cw5gejV5yT
 Xk0Ua5Kuqgn6JlxGlViQ/s+ssHKcc4FMq01KNPkMEjOI8rH5L1AJT3Umgu3CkebxpAn5
 NbiweDCn/OoK47NaN0tof/YgHSMels7NdReLLGhiFFingO2Af/lvBvu19sWA8Malm05k
 6Phfe6rKVl6NEMGaHcWUbk7Q0VABqUvW2qxY7kls8Zr271Pw0xMHmv6eEltrHhT80oed
 sEo4FwjCr0srKlZKzpQyUdGQC6xd3CNYOnOIeTejQy3kg/dmmGFGx0vUJiZP7LsoRgDV
 rrqQ==
X-Gm-Message-State: APjAAAV8+lffB5YBN8sbIZdIObq2C9fjjgj+8ZLhftqKox0HSuAttpRc
 Wvx59UUR5LQ3O+EddLFjrIdQBYYBaIjSqw==
X-Google-Smtp-Source: APXvYqwGViPPPxaNS7z+K4MXgi0LZN0EVHaNC8Lcr39w9C6uZBgZpJBc7aRJ3CH2jofuSwKjOzKP/Q==
X-Received: by 2002:a17:90a:9dc3:: with SMTP id
 x3mr10376777pjv.45.1582395707660; 
 Sat, 22 Feb 2020 10:21:47 -0800 (PST)
Received: from localhost ([2601:647:5b00:710:ffa7:88dc:9c39:76d9])
 by smtp.gmail.com with ESMTPSA id z3sm7012747pfz.155.2020.02.22.10.21.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Feb 2020 10:21:46 -0800 (PST)
Date: Sat, 22 Feb 2020 10:21:45 -0800
From: Moritz Fischer <mdf@kernel.org>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH] fpga: zynq: Remove clk_get error message for probe defer
Message-ID: <20200222182145.GA4905@epycbox.lan>
References: <0060e55f0b8d3a57e129d7eb096267cc96eae846.1581517026.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0060e55f0b8d3a57e129d7eb096267cc96eae846.1581517026.git.michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_102149_012124_46B95CD4 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [moritz.fischer.private[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: monstr@monstr.eu, linux-fpga@vger.kernel.org,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-kernel@vger.kernel.org, Moritz Fischer <mdf@kernel.org>, git@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 03:17:08PM +0100, Michal Simek wrote:
> From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> 
> In probe, the driver checks for devm_clk_get return and print error
> message in the failing case. However for -EPROBE_DEFER this message is
> confusing so avoid it.
> 
> The similar change was done also by commit 28910cee898c
> ("fpga: xilinx-pr-decoupler: Remove clk_get error message for probe defer")
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
> 
>  drivers/fpga/zynq-fpga.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/fpga/zynq-fpga.c b/drivers/fpga/zynq-fpga.c
> index ee7765049607..07fa8d9ec675 100644
> --- a/drivers/fpga/zynq-fpga.c
> +++ b/drivers/fpga/zynq-fpga.c
> @@ -583,7 +583,8 @@ static int zynq_fpga_probe(struct platform_device *pdev)
>  
>  	priv->clk = devm_clk_get(dev, "ref_clk");
>  	if (IS_ERR(priv->clk)) {
> -		dev_err(dev, "input clock not found\n");
> +		if (PTR_ERR(priv->clk) != -EPROBE_DEFER)
> +			dev_err(dev, "input clock not found\n");
>  		return PTR_ERR(priv->clk);
>  	}
>  
> -- 
> 2.25.0
> 
Applied to for-next.

Thanks,
Moritz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
