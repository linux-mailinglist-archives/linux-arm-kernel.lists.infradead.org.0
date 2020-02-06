Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 050E5154D81
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 21:48:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EduAMNkxkF6AkeIuVMeqR16m4ahKd1pkDdzOneletPs=; b=h85j3BsVCmPoVk
	fHf37yCSHKznlAh1u1PwJhqvMzMtSqZTqsOIC6LYI6sNldEnlCN4Gyf2gRWM1qDbNd2EXIe6mB5wv
	snWFQIBPJmKH8VIj5/gI24viEaZ3znKo/t1ZRwdQdX9WpYjhaT/fX8AJJk/iTnluaWIu1baAoEmwf
	o+uZmQv9Ma0wicfAe/Z8x9nmmkKCqG895syPuPUZttnHdoukyYXIUsMsU1Hd3K013GGQDEg9VEK0I
	RtsvTno9qYymZdxU7N2UtRIC3yX19FJpl3s1eSgfcV8K7fSmMtZ1JKq+EDBwDUw7exJvWmJMyQ47R
	QfdPK38XHOgAgQftO+vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izo4Y-0001ev-Nq; Thu, 06 Feb 2020 20:48:26 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izo2j-0008N7-De
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 20:46:34 +0000
Received: by mail-pg1-f196.google.com with SMTP id b9so3330307pgk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 12:46:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ydXcMt/LQYTtC9+Pd4G5bVOYifXyo4gCLRUMdz5nmlc=;
 b=FEiChdIDyjjA0yY1QrkP72GOQkWzboCS+DzytmngTll9eBmaGrqL85w9NApq38qIVy
 JqyNvR6/AIb7lMV/1UzuZgC5FCSNUdmPmzC0+0pAJNgZZwBE5f0GU7f7OyE2ISGYoqvw
 AGqO8eKdqPuKf8jycFy5QNO0xnpKpO65DjNbkvg3hxGi56v6kXyoUXtFuAFMaQYLTRMu
 mzjtj0Mk3Epup/NKiqh9W74tScewVYidFWjf8+ykHG8E1AthhFhuZAaEmRCUNPituFjF
 ZoJUeDUOtondit2FyF+fu3evJTKKZlNK0Co5iW/zL6Oorsh2WGFmSl8cxSM8Ga7yN2nY
 248A==
X-Gm-Message-State: APjAAAUZSBkXi/FY5fR6MkyC5lD6MfXRJEl4Anqpt1cVMD02Glbjw4gu
 LmSn8soVnLAEblcaWzt7Pg==
X-Google-Smtp-Source: APXvYqydDGv//MOaVcF+ltoSavNLLJxMyuRh6BXzPCHtlqH+bv6Q9/MQz/jK+pB7hWgEMXve5dqvDw==
X-Received: by 2002:a62:2ad1:: with SMTP id q200mr6105224pfq.123.1581021991999; 
 Thu, 06 Feb 2020 12:46:31 -0800 (PST)
Received: from rob-hp-laptop (63-158-47-182.dia.static.qwest.net.
 [63.158.47.182])
 by smtp.gmail.com with ESMTPSA id r13sm170817pjp.14.2020.02.06.12.46.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 12:46:31 -0800 (PST)
Received: (nullmailer pid 13921 invoked by uid 1000);
 Thu, 06 Feb 2020 18:40:30 -0000
Date: Thu, 6 Feb 2020 18:40:30 +0000
From: Rob Herring <robh@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH V2 4/5] dt-bindings: spi: spi-nxp-fspi: Add support for
 imx8mm, imx8qxp
Message-ID: <20200206184030.GA11381@bogus>
References: <20200202125950.1825013-1-aford173@gmail.com>
 <20200202125950.1825013-4-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200202125950.1825013-4-aford173@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_124633_469404_AE611640 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Ashish Kumar <ashish.kumar@nxp.com>, linux-spi@vger.kernel.org,
 Yogesh Gaur <yogeshgaur.83@gmail.com>, Mark Brown <broonie@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 02, 2020 at 06:59:49AM -0600, Adam Ford wrote:
> Add support for nxp,imx8qxp-fspi and nxp,imx8mm-fspi do the bindings

s/do/to/

> document.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
> V2: No change
> 
> diff --git a/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt b/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
> index 2cd67eb727d4..7ac60d9fe357 100644
> --- a/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
> +++ b/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
> @@ -2,6 +2,9 @@
>  
>  Required properties:
>    - compatible : Should be "nxp,lx2160a-fspi"
> +			    "nxp,imx8qxp-fspi"
> +			    "nxp,imx8mm-fspi"

All 3 are different and no compatibility?

> +
>    - reg :        First contains the register location and length,
>                   Second contains the memory mapping address and length
>    - reg-names :  Should contain the resource reg names:
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
