Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6532476B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 07:13:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fEhDcLt2LxsHZNlEZeLU2YhMJlmPqATxFXZ5xeqCYA4=; b=U2y5mEgNFY+jaW
	wYotgidDTw0zA8uWnnJKq5pBDDb8y9AltYO/gPEiySnmyAJ83ntA/PqcD1d2HWDJRZ/IEF4EhXyO7
	uQHaFRh2tEek0d7eft6J39fNiWe0WEr9z/UIguk/x1QBpvCMMsn8h/T+IT7cbyJBN+i7pcVug5262
	uLR2KUiZw8Zh5fvYfbtdGj8j04pbUnkGSIXxqV6lvXhrG3IMMVlvwtmP9fTZAqJ8cryIdoTGKsJRP
	MfijmVFZo+LDbmYS+ELgYRXBsSXMNIFYMFTv0uX0wM/+tu5JEiRbCrKmuqSVE87xZPPI/CohwSlh/
	2qf6kcp/OJKHGqdgtovA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSx5S-0002zr-Q9; Tue, 21 May 2019 05:13:18 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSx5D-0002sB-GU
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 05:13:05 +0000
Received: by mail-pg1-x541.google.com with SMTP id w22so7932850pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 22:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KAB9o9XbO2dEKEPGZm81AqLjqGSvYkvcgsj2QybWv7g=;
 b=Qxs4+yxX0aU1YO8P4wah4CVDUe6g4GlvnquXlHWXovOugNiUrwiu2zJ9Fmu3e25/hK
 5jEOLc/bSkDsO8cce3GwOKXUzCAEHrxKWgeBbzegW7hqQyqAIC6Qcbb4knv+J9nayLYH
 R5LhRwNke0nyAY8RI1KZgPUuJ9He54TEqelTWo2jzaKzLnXpde2+xwzifkob9CzaHc7G
 npys+K2PEpmmQNIl06S86FOk1xhbTkzLIwQCsGaYtCk9NdLF95UKvQZ+eHZNOtdvIqar
 mAyANeBBOA9LXy/pIAEsYo5T/h2gAfDBbkfevPTPtmfxXvOuv4JfR5Y+O2b9F8EFDoOa
 xOrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KAB9o9XbO2dEKEPGZm81AqLjqGSvYkvcgsj2QybWv7g=;
 b=AUBTUz9t30VDmTYm73o86jtDOeBugVYz2DXRbVAltRLrG88JmeJ99X3iCGbnG10Nux
 /boffdwWIrQGgtT5ezBOINKGXRqOfwFTnxveiqReDVb+WYhOsNmXrjrzkpF/Y6WsA525
 59o01+o/J//IKIwywxnHraHYPDpzglul3oZTCQD+z6fd/WVQGTPJ8yc8SAf5MVLSLx77
 /qmprCIIJtBV93U50YAFLAbbb9hlru8uSe2DCEVgv6JRriKaGR/hN1TGGYPG1cheMSBn
 HvNX/RjhrUMdTo5T5e3CUpDbIWt3yT6IY6R8N0k/yh/vH5o3UenRerpESjA6p2bPhJV1
 ZF8g==
X-Gm-Message-State: APjAAAUj4lxSpgEUbMsMP1bkwzxh6Rt/lGEXQFL9ccIytPuVtlQV7MPn
 dFWZihFXmUXQEOFlgtI1xKc=
X-Google-Smtp-Source: APXvYqzW9mIERiYyDXIieMEXITq6MNtJd+g8DMbTmXNK7qyLbq5vimxsdHJv5wCyuC47d1PQuVSGTQ==
X-Received: by 2002:a63:9d83:: with SMTP id
 i125mr73946177pgd.229.1558415582198; 
 Mon, 20 May 2019 22:13:02 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id r11sm22483769pgb.31.2019.05.20.22.13.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 22:13:01 -0700 (PDT)
Date: Mon, 20 May 2019 22:13:00 -0700
From: "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH] input: imx6ul_tsc: use devm_platform_ioremap_resource()
 to simplify code
Message-ID: <20190521051300.GF183429@dtor-ws>
References: <1554095712-15413-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1554095712-15413-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_221303_610228_54BBFD01 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 01, 2019 at 05:19:55AM +0000, Anson Huang wrote:
> Use the new helper devm_platform_ioremap_resource() which wraps the
> platform_get_resource() and devm_ioremap_resource() together, to
> simplify the code.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thank you.

> ---
>  drivers/input/touchscreen/imx6ul_tsc.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/input/touchscreen/imx6ul_tsc.c b/drivers/input/touchscreen/imx6ul_tsc.c
> index c10fc59..e04eecd 100644
> --- a/drivers/input/touchscreen/imx6ul_tsc.c
> +++ b/drivers/input/touchscreen/imx6ul_tsc.c
> @@ -364,8 +364,6 @@ static int imx6ul_tsc_probe(struct platform_device *pdev)
>  	struct device_node *np = pdev->dev.of_node;
>  	struct imx6ul_tsc *tsc;
>  	struct input_dev *input_dev;
> -	struct resource *tsc_mem;
> -	struct resource *adc_mem;
>  	int err;
>  	int tsc_irq;
>  	int adc_irq;
> @@ -403,16 +401,14 @@ static int imx6ul_tsc_probe(struct platform_device *pdev)
>  		return err;
>  	}
>  
> -	tsc_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	tsc->tsc_regs = devm_ioremap_resource(&pdev->dev, tsc_mem);
> +	tsc->tsc_regs = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(tsc->tsc_regs)) {
>  		err = PTR_ERR(tsc->tsc_regs);
>  		dev_err(&pdev->dev, "failed to remap tsc memory: %d\n", err);
>  		return err;
>  	}
>  
> -	adc_mem = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> -	tsc->adc_regs = devm_ioremap_resource(&pdev->dev, adc_mem);
> +	tsc->adc_regs = devm_platform_ioremap_resource(pdev, 1);
>  	if (IS_ERR(tsc->adc_regs)) {
>  		err = PTR_ERR(tsc->adc_regs);
>  		dev_err(&pdev->dev, "failed to remap adc memory: %d\n", err);
> -- 
> 2.7.4
> 

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
