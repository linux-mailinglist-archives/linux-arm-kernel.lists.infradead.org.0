Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B1B1BBB44
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 12:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+UKpVv55Ezz8Oj8WE0gxvJpwFZxys3xg0iUtgf9KjTQ=; b=R7IRPLXbJkIuJI
	dlI2otwOyXn4/4EvuP1fzi2KyR1f++kHJv22vKYZ1rMjyVor7JN+nBmpbyZkTVjx7pChbOpjDFiLU
	rmRTFsLRodM7TriXv32Bd4MLar+bKEvmi2iEs4Qhj0Vkv3bgLIvR9jEj/dNwX+tfTR+F90HsAr4qI
	8xNKdAuI7/6mDVlEAqNivjav52jlYTTyDPQUT02djLSmuZlm7L4Os2yD8L9xtFw73e3Hb/XtfWA82
	B6m7nPO5H3lFCMhL6zzmdJO3OMt3Uljhix2Di0b20sDkD++chhDsN2jcB7Vnki8vS3ja1HLyNfMw9
	xQqQZvVTg8Ep4tfIQofg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTNYB-000536-Kt; Tue, 28 Apr 2020 10:33:15 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTNXy-00051B-9j
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 10:33:04 +0000
Received: by mail-ed1-f68.google.com with SMTP id s10so15979862edy.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 03:33:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3D2uMdzrOa8rVE8whnBxczkr3C+t2CoAy11SOmQRQD8=;
 b=iYSK4qK107i9qVd97uJu7INLCqB2RtP9Ad7Cgi+yNY3PE0fdMpTUOEmErWYHSQNMax
 2SwvHgXKmCHwAvlMu9uhvLp84MaOak5aU/7Nn2rwZ3LIIC8LVBOCBAMHkFW5j7AHZGKd
 zpoUNoQeWTs7rx3D9/PXp57ZtFjKXwGigPlXlyoHRew88MBhgwznnRLvoSISu4k/jI85
 nXeXAsvWe14iLJTBPJ7JqVjeEJr6MPhidW68TNMdKSoADx+JF4y+SUSuD1iboYOteFKR
 Jr7O3sWQZiGnduUs9ICgbqAGHpHIB5P0plFupMu+4LHG27PkAiNY5wtPTFCLSPt8tnf2
 C+VQ==
X-Gm-Message-State: AGi0PuaVzMc2psRmSCSvyoq6P44b412Ib/GqQ+uNl94qtBr5p52M4daF
 59wr7MangouAn3UyewjPGs0=
X-Google-Smtp-Source: APiQypKul1M9hkner9c2dBAchlt9cSNlRgYLaNiYw2GS2Dty7nUnjKL4Mbse6v9dCx57cSCvUOLYIA==
X-Received: by 2002:a50:951c:: with SMTP id u28mr21259827eda.310.1588069980922; 
 Tue, 28 Apr 2020 03:33:00 -0700 (PDT)
Received: from kozik-lap ([194.230.155.237])
 by smtp.googlemail.com with ESMTPSA id ce18sm414140ejb.61.2020.04.28.03.32.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 Apr 2020 03:33:00 -0700 (PDT)
Date: Tue, 28 Apr 2020 12:32:27 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jonathan Bakker <xc-racer2@live.ca>
Subject: Re: [PATCH 12/13] arm: dts: s5pv210: Correct FIMC definitions
Message-ID: <20200428103227.GE23963@kozik-lap>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <BN6PR04MB0660823C87DE000BCDF36C3AA3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN6PR04MB0660823C87DE000BCDF36C3AA3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_033302_336773_11685AEC 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 26, 2020 at 11:36:03AM -0700, Jonathan Bakker wrote:
> The extended mainscaler is only available on FIMC1 and there
> are minimum pixel alignments that differ from the default.
> Additionally, the cam-if interface is available on all three
> while FIMC2 has no rotators.  The lcd-wb interface is supported
> on FIMC1.
> 
> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
> ---
>  arch/arm/boot/dts/s5pv210.dtsi | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5pv210.dtsi
> index b3b6ad2889f9..3cbf6c05f42a 100644
> --- a/arch/arm/boot/dts/s5pv210.dtsi
> +++ b/arch/arm/boot/dts/s5pv210.dtsi
> @@ -626,7 +626,7 @@
>  				clock-names = "fimc",
>  						"sclk_fimc";
>  				samsung,pix-limits = <4224 8192 1920 4224>;
> -				samsung,mainscaler-ext;
> +				samsung,min-pix-alignment = <16 8>;
>  				samsung,cam-if;
>  			};
>  
> @@ -639,9 +639,11 @@
>  						<&clocks SCLK_FIMC1>;
>  				clock-names = "fimc",
>  						"sclk_fimc";
> -				samsung,pix-limits = <4224 8192 1920 4224>;
>  				samsung,mainscaler-ext;
> +				samsung,min-pix-alignment = <1 1>;
> +				samsung,pix-limits = <4224 8192 1920 4224>;

The line just moved around. I guess this was not intended?

Best regards,
Krzysztof

>  				samsung,cam-if;
> +				samsung,lcd-wb;
>  			};
>  
>  			fimc2: fimc@fb400000 {
> @@ -653,9 +655,10 @@
>  						<&clocks SCLK_FIMC2>;
>  				clock-names = "fimc",
>  						"sclk_fimc";
> -				samsung,pix-limits = <4224 8192 1920 4224>;
> -				samsung,mainscaler-ext;
> -				samsung,lcd-wb;
> +				samsung,pix-limits = <1920 8192 1280 1920>;
> +				samsung,min-pix-alignment = <16 8>;
> +				samsung,rotators = <0>;
> +				samsung,cam-if;
>  			};
>  		};
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
