Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E3216ED49
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:58:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9QyLM+sYCR/kA8LNA8s/N2jzJuq4K4L1PWW6s7s8xbo=; b=Bpw87eRclXJl6F
	khmIEg5ELRrf7CCX+PBZyTIWrh28PA71hBd6mkMKaTCPadIQGv03/kjNsgW/Ld2t8qGuQwaE4ZfQg
	KlLfV7iJxT/6vQ/FO5fLVMC7WjwULW1E7rshNYmFSsSyS9FqdUN4udgI3dkqEgOpZo+mK3318n/bY
	9je+OhwIzanVIqty+hB1d/ZmMbyHeAwE2LJvVbh7qw+G4G9WEAa+6rfkXqA93YkW72sIgbq5Yor4A
	/Wgk/ylalGQ19+4fqxbqg6Z9+ctFUeC6J74jiV8q7A/Nja5gP5pNNA+aIWhH18RHptMfJTKIjnZLy
	P5BpZl7TYT/fo/fnaW2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6eT3-00037r-55; Tue, 25 Feb 2020 17:58:01 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6eSm-00036v-86
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:57:45 +0000
Received: by mail-ot1-f65.google.com with SMTP id 77so354987oty.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 09:57:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=122VamsU2CoI60mTYn2qsd+kIcsNIFVhMCViO2v3gAk=;
 b=ZnuNEn8VCbZvY1zc1Vzug2bleejQpmzN5Sot4vXCWfl2p7szKilKOZPBCeV0M+6UvF
 mzryXjDDjc3z8Z68fzZfSWB9oIJ3ue4NsOn71Mdc0dfDeV2hHnd2mlyS+XEC9XATCMNv
 9um7rX+2IWX9sqHUwZ1jGQtnDUMqqcNgsyhl8LB9oudiQJAMo51zj9HI1ST98BkR9X+X
 cdZg9D2t+AvEdpumC4HcvxObv3xHKrGcG7H3gQmgnTH+xgo3nTS+LgYrngnWDY9L7cu7
 W5C51IN3Mb4FLBLhUAwNBN5NOwrB5rBIw/cfDWV8gX68ZsfVUL9KEkAMFgxtVdNZgQ8S
 SaKw==
X-Gm-Message-State: APjAAAUjf8+nHoiqRISS0ePsNFt+uoFbsuUMcrU8p2XLiGq8PiQSvtkh
 82aQHPh1RYtq0Pr7xc+agg==
X-Google-Smtp-Source: APXvYqwr8YyrYpTEaCbgBtAfIoyDJZUv/EYMnIH/R2mEqcnJjcRa6HdAJAElyOXU7kIpiPtypH3jXg==
X-Received: by 2002:a9d:6c8d:: with SMTP id c13mr46458916otr.277.1582653456886; 
 Tue, 25 Feb 2020 09:57:36 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i20sm5930770otp.14.2020.02.25.09.57.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 09:57:36 -0800 (PST)
Received: (nullmailer pid 6790 invoked by uid 1000);
 Tue, 25 Feb 2020 17:57:35 -0000
Date: Tue, 25 Feb 2020 11:57:35 -0600
From: Rob Herring <robh@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH 2/7] clk: imx8: Add SCU and LPCG clocks for I2C in CM40 SS
Message-ID: <20200225175735.GA5232@bogus>
References: <1581909561-12058-1-git-send-email-qiangqing.zhang@nxp.com>
 <1581909561-12058-3-git-send-email-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581909561-12058-3-git-send-email-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_095744_294126_21D5E14A 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, peng.fan@nxp.com,
 fugang.duan@nxp.com, Anson.Huang@nxp.com, devicetree@vger.kernel.org,
 sboyd@kernel.org, festevam@gmail.com, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, daniel.baluta@nxp.com, linux-clk@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 11:19:16AM +0800, Joakim Zhang wrote:
> Add SCU and LPCG clocks for I2C in CM40 SS.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  include/dt-bindings/clock/imx8-clock.h | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/include/dt-bindings/clock/imx8-clock.h b/include/dt-bindings/clock/imx8-clock.h
> index 673a8c662340..84a442be700f 100644
> --- a/include/dt-bindings/clock/imx8-clock.h
> +++ b/include/dt-bindings/clock/imx8-clock.h
> @@ -131,7 +131,12 @@
>  #define IMX_ADMA_PWM_CLK				188
>  #define IMX_ADMA_LCD_CLK				189
>  
> -#define IMX_SCU_CLK_END					190
> +/* CM40 SS */
> +#define IMX_CM40_IPG_CLK				200
> +#define IMX_CM40_I2C_CLK				205
> +
> +#define IMX_SCU_CLK_END					220

Why are you skipping numbers?

> +
>  
>  /* LPCG clocks */
>  
> @@ -290,4 +295,10 @@
>  
>  #define IMX_ADMA_LPCG_CLK_END				45
>  
> +/* CM40 SS LPCG */
> +#define IMX_CM40_LPCG_I2C_IPG_CLK			0
> +#define IMX_CM40_LPCG_I2C_CLK				1
> +
> +#define IMX_CM40_LPCG_CLK_END				2
> +
>  #endif /* __DT_BINDINGS_CLOCK_IMX_H */
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
