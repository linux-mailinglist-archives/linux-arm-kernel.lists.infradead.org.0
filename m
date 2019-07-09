Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E22637D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 16:23:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0XfBp6t5uGBvVi/AOSCaI9I7xY9ZUqvjsgncJhVkJTo=; b=aDTj0WzPrPW7nJ
	UotbsErDbAbLFAJl0IkKuBQ4/P9e8tAsyxNhnPoYJEFTTaw6q3K686QF4upVvzkfcV9EqGE5lJodO
	6xefgSD8g9BMeO3W0gMZNhAlb6ikWaX4fm24ryy1BMcyH1OeEsy88EUCVc4IXugDG1Rn+k/WgIinZ
	opq6gWx88+7b+hmh3FbHtls9dDwGTYN4xMOJWOEf++E9U41OT7yJ2ln91xCsYhCXtgBbP9SDDB2PP
	bF+70dj9Ss5FCO5F6m4+v2iEFrKR8vJJf/IsZDGEc1qnxfxjXO4xfEqBEQmBTIJocUBauSe8PjqYj
	rP+6bGd+t1WWTG6E2uPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkr1S-0003qf-VI; Tue, 09 Jul 2019 14:23:10 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkr0w-0003aU-Jl; Tue, 09 Jul 2019 14:22:39 +0000
Received: by mail-io1-f67.google.com with SMTP id q22so21710368iog.4;
 Tue, 09 Jul 2019 07:22:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Nyw3ayYjb6xxz+TXQiu0yImt7hvULSuFd6no466kGDg=;
 b=RAPIIrHFwlbSd7XJDM3jfpvlroKTAvoILeBAeZl6LKxyb0natdhQJqkDE3uXCmm8+S
 vD+S5xEIw/Zuc5hDUDR1Xj+Sy+pWC4a0AceYtmMzdYKI/+wRHOKXSpqCsxngLsrW/15z
 lCXi8BXeh4h6tFIAnv5GYY0fPKfKsWvp8KUhFl5eo497OKyMZSgF4IQt9iKrCE8zHNIS
 +WVLxOD+wIuv5BDLuoMmcBW3sO04MhkScGTdEFH12YhnZvKOI6NAGaxupn9jZNQv4G1W
 qUcsYVRERH2rzzwS1vb0BXHy+nUrzcNDu9SAeurM54blScm9RmDFz5Mo87JU137asNmK
 siIA==
X-Gm-Message-State: APjAAAVA6LKHGPfuOM1bfIl4cGNF8mqtQDWC/HhUkKR24CJnSaG8DT/C
 06fyz1YpTA/TsCPySpXPSRpfWwg=
X-Google-Smtp-Source: APXvYqwGEmLaEm/oSVALxwoDJQLE4Vi1IOoNxGbBog+3P1/ET15BHO6JQdjBS6+02vhPwx0mCo0XXw==
X-Received: by 2002:a6b:dc08:: with SMTP id s8mr10053113ioc.209.1562682157639; 
 Tue, 09 Jul 2019 07:22:37 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id n17sm19238636iog.63.2019.07.09.07.22.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 07:22:36 -0700 (PDT)
Date: Tue, 9 Jul 2019 08:22:35 -0600
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH 3/5] dt-bindings: usb: mtk-xhci: add an optional xhci_ck
 clock
Message-ID: <20190709142235.GA11951@bogus>
References: <5e06482a0be15476c7b5825f155accf98275afa8.1560246390.git.chunfeng.yun@mediatek.com>
 <9b6ad8dee142d73b56d653ecb7475c4ed28e5eb8.1560246390.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9b6ad8dee142d73b56d653ecb7475c4ed28e5eb8.1560246390.git.chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_072238_659499_DD8A3FB1 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jumin Li <jumin.li@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 01:55:19PM +0800, Chunfeng Yun wrote:
> Add a new optional clock xhci_ck
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
>  Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt
> index 266c2d917a28..91c0704b586b 100644
> --- a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt
> +++ b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt
> @@ -29,6 +29,7 @@ Required properties:
>  	"sys_ck": controller clock used by normal mode,
>  	the following ones are optional:
>  	"ref_ck": reference clock used by low power mode etc,
> +	"xhci_ck": controller clock,
>  	"mcu_ck": mcu_bus clock for register access,
>  	"dma_ck": dma_bus clock for data transfer by DMA

A new clock should go at the end to stay backwards compatible.

>  
> @@ -100,7 +101,7 @@ Required properties:
>   - clocks : a list of phandle + clock-specifier pairs, one for each
>  	entry in clock-names
>   - clock-names : must contain "sys_ck", and the following ones are optional:
> -	"ref_ck", "mcu_ck" and "dma_ck"
> +	"ref_ck", "xhci_ck", "mcu_ck" and "dma_ck"
>  
>  Optional properties:
>   - vbus-supply : reference to the VBUS regulator;
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
