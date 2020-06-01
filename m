Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5478D1EB0FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 23:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F9Wi8dA1cPy3EYujMt8JV4OVZkyotr176GKICjQkQ0U=; b=eljojxlFAR6GQg
	1uLusndBAeTokYC8Chtm0TZ/P0FhcV8csc3y4d5rVHA4hczti9OnjQmF/hCk8Hnm5alzcv3F79n5A
	xHP5trgNc/I8h+OQcU/bnJCMl2v5NrSAfNprbsn33NHS7mcw4MrrycJhShvm8dyYkUAxrEou4brQJ
	UcPAVuYzPLvvXNRMS1NkMOkz8k1HJRnOSZTNwC0Ur9Jb9yY8H9YT4KhSUt59htoe5fTptSJo+Dr7C
	6kQuqUT7UJ3HcBhHOST+s3zaq4G/wawnKPGwPg3EO6rpUPeT66wAf3/cyijfRYnUQakxsKXSsBChc
	nB+VEoqaYY7sgHitnhcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfs2j-0008UP-Ih; Mon, 01 Jun 2020 21:32:25 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfs2c-0008Tt-Jj
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 21:32:19 +0000
Received: by mail-il1-f193.google.com with SMTP id 9so10831037ilg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 14:32:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KmqdPjmKi1JsFB5M9JoF0ic/ni7mUj8Ld/K9RQPC/wI=;
 b=QFq6BXtd1kNg1kKNUEQtgvBzCJmegh0J9P2Xqdv2wTrGrkSZxqhaseD9mCE1t5wUiZ
 2vvL4vOMz2Uon5Dz5F+gf4yVXvBUnET1Fn6kbdRbmC8nT6GzKn8uHoC6fofionMjFLfz
 nmEj7rezd01dfui6CvVtTM44jKrQjAibMmzyKkxxfgik1bxVEM5FcDB7R53YZ9lftvfj
 WZJGfbdnZiBEJ2i36XTXlXjjVrH2iob7wOHiCr2yLGKwPEiOA5KkC34Fbek+9mBPuGZq
 lUUEwGPx7LSQl3s4LuMTZvnsm7989YZ/eQe5cxr0dTKYVHQlV3UZhuBwvRQtSur/0BQW
 F/hw==
X-Gm-Message-State: AOAM533xcvfF9hEC597xTnmIl6yeEXEvWlVQIgT83kKqyVQmIYg2oWZF
 Zf18wNNTcTlgxbdCf4gvTA==
X-Google-Smtp-Source: ABdhPJxcDy18dpk1MqV1lWeF44sQZHoChgAxfWTvpW2F+X+1hLmjYqir/8cNHemHgkNLDjDLv0WK7Q==
X-Received: by 2002:a05:6e02:13a9:: with SMTP id
 h9mr3518316ilo.20.1591047137611; 
 Mon, 01 Jun 2020 14:32:17 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id b10sm396689ilb.2.2020.06.01.14.32.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 14:32:16 -0700 (PDT)
Received: (nullmailer pid 1537618 invoked by uid 1000);
 Mon, 01 Jun 2020 21:32:15 -0000
Date: Mon, 1 Jun 2020 15:32:15 -0600
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH v2 4/5] PCI: uniphier: Add iATU register support
Message-ID: <20200601213215.GA1521885@bogus>
References: <1589536743-6684-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1589536743-6684-5-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589536743-6684-5-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_143218_647503_6B2E9713 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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

On Fri, May 15, 2020 at 06:59:02PM +0900, Kunihiko Hayashi wrote:
> This gets iATU register area from reg property. In Synopsis DWC version
> 4.80 or later, since iATU register area is separated from core register
> area, this area is necessary to get from DT independently.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  drivers/pci/controller/dwc/pcie-uniphier.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-uniphier.c b/drivers/pci/controller/dwc/pcie-uniphier.c
> index a8dda39..493f105 100644
> --- a/drivers/pci/controller/dwc/pcie-uniphier.c
> +++ b/drivers/pci/controller/dwc/pcie-uniphier.c
> @@ -447,6 +447,13 @@ static int uniphier_pcie_probe(struct platform_device *pdev)
>  	if (IS_ERR(priv->pci.dbi_base))
>  		return PTR_ERR(priv->pci.dbi_base);
>  
> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "atu");
> +	if (res) {
> +		priv->pci.atu_base = devm_pci_remap_cfg_resource(dev, res);

This isn't config space, so this function shouldn't be used.

Use devm_platform_ioremap_resource_byname().

> +		if (IS_ERR(priv->pci.atu_base))
> +			priv->pci.atu_base = NULL;
> +	}
> +
>  	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "link");
>  	priv->base = devm_ioremap_resource(dev, res);

Feel free to convert this one too.

>  	if (IS_ERR(priv->base))
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
