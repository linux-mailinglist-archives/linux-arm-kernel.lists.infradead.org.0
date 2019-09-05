Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA38DAA6FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 17:09:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O4PulE14sL3wEM5m9ZSUL0TQJVtG+wCoo7V03XrRuX0=; b=Yh+4jJr0gtJTf1
	SOX/NdahPw3agOEuNZ/NTbjs5vU6NfrFlNmPnZy6DUGFIHJdMbzzK3pPsfOHKJVxOaji7Y4X006gR
	EM8Gp2jFNLG1FEsIBQ27mW2vRzNSohW4I1Lc3PSM3ceW55r3MWzXHbBj2wamC0L0/MWjd5J19kwbN
	InvOSKlI0YdhslXZb7mA6E+pRB3FCvF0bTa3JsqG9AqZ2A0dfkKlg4Bs4oIPi5bsnoaIIkGBwnD0q
	FgQGwPVphQ+Dp7CBCxeWdInVKCmWFc/kxmBZ2dy4SyOQez+oknps/P62NyvAWoUnsO3SBocyoxTWX
	hgRrBlvKVHOLzJnM0czA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5tNW-0007bl-Vd; Thu, 05 Sep 2019 15:08:55 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5tNM-0007bP-Dq
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 15:08:45 +0000
Received: by mail-pf1-x443.google.com with SMTP id q5so1921955pfg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 08:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LB6xSBfuSinZAMV9aZFPQIN9CvwHLjeqldm8lg5+A+Y=;
 b=sAZJDoPXIbsX6QlILVophZ3Bq/anEIraDsVmTx3AukE6/pGhp7fYUtWiiU1kS1OP8p
 dEBvDbtNfKtJAfS5JP3HGcfdtHwxW2Y3AY9IUf6NF63ZbOv3Upl2bOH0PnKgHGVr0STS
 7+G1WP6DcE9RJ50xVxTNrS7P0ILJUWTpPJ8i9qpIIfo+DuCNp/Ecy7CMjsOXm3jwoiG8
 JW5PP90uSM5hGN1uLoq/9IN6VEHV2eI2d26qGMBQtLZS4mWfC4fQuO+AVObMdgD867qc
 YzOh+ch+V65CcQbzeHMe7wfDHQnm3niS9XxozCdKS2ehwyp7oFy+jvy5NrS4bEs/zzel
 3mXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=LB6xSBfuSinZAMV9aZFPQIN9CvwHLjeqldm8lg5+A+Y=;
 b=OlklRiZAbesNVc+qRtulcVUsMdL3uxE2gIc1ysuk8lRYjMkazUfrDtOBNO3VYVL1EP
 39/PYR+IAWj+YarbICMrQpR++O81TTggaJxisZN3yP5ZKIFz1rMIUuaKOj8YnoJm8B+O
 CZMigOEJE6iwj35DO9H6ATpWzm71a1nUj2H36mQoj6UMsLKpX5NhEAQONZGmEiND7K+/
 HrLpJMavOQe7KyHOhDCcPsbCY9af8nQCirELlegkGrrLhdroVd+DxGf0jIWGo2aviR/t
 dvrAIPVC0ZAG/yi/NkBBFBufTIjuLjIwx7i6ob3U17pJpHLrF/hgTv0511KqBWX2thIr
 MEpg==
X-Gm-Message-State: APjAAAWlwUW3gbYpeIMlk9DSYo3ywqZDYGzDx4TnHlOLfCzAIBTQk7j3
 uaId7cvyZBoMHkOEbQzxKlU=
X-Google-Smtp-Source: APXvYqzqkGvx3UcZXiDT5spOETXK6s5o3oXyFaN70PjXaqGaH2s7389q6JxbkaQZHonn8smeEqxCvw==
X-Received: by 2002:a63:3281:: with SMTP id y123mr3510207pgy.72.1567696123943; 
 Thu, 05 Sep 2019 08:08:43 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id f62sm3746676pfg.74.2019.09.05.08.08.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 08:08:43 -0700 (PDT)
Date: Thu, 5 Sep 2019 08:08:42 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Oliver Graute <oliver.graute@kococonnector.com>
Subject: Re: [PATCH v2] watchdog: imx_sc: this patch just fixes whitespaces
Message-ID: <20190905150842.GB18080@roeck-us.net>
References: <20190905143644.20952-1-oliver.graute@kococonnector.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905143644.20952-1-oliver.graute@kococonnector.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_080844_466902_406174B0 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "oliver.graute@gmail.com" <oliver.graute@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 02:36:49PM +0000, Oliver Graute wrote:
> Fix only whitespace errors in imx_sc_wdt_probe()
> 
> Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>

Ah, there are indeed extra spaces in these lines.

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  drivers/watchdog/imx_sc_wdt.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/watchdog/imx_sc_wdt.c b/drivers/watchdog/imx_sc_wdt.c
> index 9260475439eb..7ea5cf54e94a 100644
> --- a/drivers/watchdog/imx_sc_wdt.c
> +++ b/drivers/watchdog/imx_sc_wdt.c
> @@ -176,8 +176,8 @@ static int imx_sc_wdt_probe(struct platform_device *pdev)
>  
>  	ret = devm_watchdog_register_device(dev, wdog);
>  	if (ret)
> - 		return ret;
> - 
> +		return ret;
> +
>  	ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
>  				       SC_IRQ_WDOG,
>  				       true);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
