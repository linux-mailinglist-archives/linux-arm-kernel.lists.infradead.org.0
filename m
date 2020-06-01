Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1751EB135
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 23:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lMf06mtjzSBOW/LFjwH1VvDXHifAyBdLbL5Zgfw1baQ=; b=Zw05QOunCyUtcv
	p7WF/95IkWO6l6GHPLPu7mnm3/dh+qgQwUDWgi4VklyBrDd8CAbPyHWQlKVG/bYTK3/saR0KvNQ7S
	c5Xzqmw0hyyehRTqM5zA5ZBgEspAVOTFuAqjsWGEjjDiMDP8QV7n3p+6mWgaOnE9i5lOrC31Jt2/J
	+D/0eLH9/6qKJpQBRdaHN11DW8oLHe4tDGx9h8G56CMvqXPJweMG8OM1P5yH7DeZXq00dz1xVTbrp
	1cyvqYYbh08YZ6eQT6uAxfjM2mFaobvOGNFJASlQrP/S533ZK32HQsav3vywESvgoVIZeXJbvzvYO
	FfB3zbh6ZyIoLcNg7pZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfsDB-0006WB-1t; Mon, 01 Jun 2020 21:43:13 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfsD5-0006TQ-E4
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 21:43:09 +0000
Received: by mail-il1-f196.google.com with SMTP id d1so10852614ila.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 14:43:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=h6bmu3CJcmV/9le9YJQNFFMA2nIiHEqBi68n/JP+HZg=;
 b=Xs3SV/3FlkJvaTF7DB7Yf4PJsipYfw0nbFmTDubTXXwsa3gdvl/v8K61qNrFa+BWLI
 V2Bm1G/bDv5wTGQsm/2KlWiRyvs0Rr/kTTKfRRIntzgnsgiaG7aiDfiqp0hzOP5fnsx0
 KwDAZ3/0RIF35i4PDNpiZWhM9SnuKIejZFhFjWIJ74yOa3o9zvFn0XtL2oWu+6fOY3se
 6iRuKaEFYMjhcNtVCktNnNDiVAsFFaf5y9L+SPpenQC5c83IArK1MC1L4OQV5Or9ej50
 eBlhFn3qbXqLUVOLWc3xyY1mDnJcvz33sWJXErQ8bQlvNxHWG30xV2wW71hl6rAvtnUC
 FF7Q==
X-Gm-Message-State: AOAM531Sypd4yPCflQBrYYrsexedOLdw3EVxZYoWCPNwgcPUZkiNmH9+
 ag9wWposi1CvqY6oNQZLlw==
X-Google-Smtp-Source: ABdhPJyjdTs1k1AJmK5ghDCtRiwra/ZwCyc7YXPiOjDJbc7itj5xSqUIw+cqQ9LzQTmIn5vJwpBTSQ==
X-Received: by 2002:a05:6e02:e53:: with SMTP id
 l19mr5346647ilk.96.1591047783964; 
 Mon, 01 Jun 2020 14:43:03 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id g4sm387323ilj.45.2020.06.01.14.43.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 14:43:03 -0700 (PDT)
Received: (nullmailer pid 1554558 invoked by uid 1000);
 Mon, 01 Jun 2020 21:43:02 -0000
Date: Mon, 1 Jun 2020 15:43:02 -0600
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH v2 5/5] PCI: uniphier: Add error message when failed to
 get phy
Message-ID: <20200601214302.GA1538223@bogus>
References: <1589536743-6684-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1589536743-6684-6-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589536743-6684-6-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_144307_475257_AE00FB13 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, Jingoo Han <jingoohan1@gmail.com>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 06:59:03PM +0900, Kunihiko Hayashi wrote:
> Even if phy driver doesn't probe, the error message can't be distinguished
> from other errors. This displays error message caused by the phy driver
> explicitly.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  drivers/pci/controller/dwc/pcie-uniphier.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-uniphier.c b/drivers/pci/controller/dwc/pcie-uniphier.c
> index 493f105..7ae9688 100644
> --- a/drivers/pci/controller/dwc/pcie-uniphier.c
> +++ b/drivers/pci/controller/dwc/pcie-uniphier.c
> @@ -468,8 +468,11 @@ static int uniphier_pcie_probe(struct platform_device *pdev)
>  		return PTR_ERR(priv->rst);
>  
>  	priv->phy = devm_phy_optional_get(dev, "pcie-phy");
> -	if (IS_ERR(priv->phy))
> -		return PTR_ERR(priv->phy);
> +	if (IS_ERR(priv->phy)) {
> +		ret = PTR_ERR(priv->phy);
> +		dev_err(dev, "Failed to get phy (%d)\n", ret);

This will print an error on EPROBE_DEFERRED which isn't an error.

> +		return ret;
> +	}
>  
>  	platform_set_drvdata(pdev, priv);
>  
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
