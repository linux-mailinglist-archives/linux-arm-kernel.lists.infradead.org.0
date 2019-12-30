Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B36712D18A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 16:38:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nyhb6rN4F4HKu0El5F4sMGdS90aU7yTHBCPZvFJpeLw=; b=D0g4rDxs9v3h5p
	j6vkopl6XOhnMIEkPLUS6SsAfUKHLhi8qGQ+RWx/4FzojIvL1zLf1ZJ1YvCAT1RSLG67BHjTnkErU
	/Hj59dvift/fC2At109Mdwuoac+qmjLT2X8gbLrvP+8LrYhGFfA00pyheI4iqN3Xsk03HtmZn+711
	/b+PRHEYEZZJCN9IDbKB1shkRkFQZBWwFd8JtolwSzDBEIRZtZHdWjLRNZrNMYfkVPK/2OvxDSnx1
	YcITGWdXyLb6lsqIbzN7mvl268FqUul5GQamyhVvJr+3aVbKjoXXlKYZ5WTByZV/0euFj/in8WLB3
	fuT5JtkdJeyPVg599XxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilx7W-0008S6-Sw; Mon, 30 Dec 2019 15:38:14 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilx7L-0008Rb-33
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 15:38:04 +0000
Received: by mail-ed1-f68.google.com with SMTP id i16so32910802edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 07:38:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=S+fvXg7v5gstlV7QHJfLUPtEMEaeWdFQQ5WmiP5N1uk=;
 b=GoBO5z8zN+LRyd2t3w2gelIiaiuv7L0iZPQ5YtRz1q/ii+EeT9AkhIw2jUWw8zL6ib
 uYZd4o9Ri2M1UmHEjR4iWnVcYLxXqt847QTpL+oEjPrtBMKOvVUn0V4p7Q9JoruITvwy
 qVMdf7DMS2CaUs5RE6w4vcqYyrA9uF+pyt1LDiPBpNetnTokW2fyE5YQHv/8bqgcXCoI
 RSIaNUUU2sehAz4Y6l3IJgQTjrxFRt9Wwz2SLEKeHG0VpN4qK0fHcUx4JNfnXLDJqA4t
 2oNdWKWCJhTpjBOGPvUgTZl6OeLqlFMMorf/odnOAVF3L91bzOgH/2wjVrCFE0GVdnYn
 4CjQ==
X-Gm-Message-State: APjAAAVIup5ynYcWUqPv7cJkyvOkSpsrtxgwIbzKZfjSvtGaPbSwTu5b
 GWqB4jWd6PjdfY88ZXNGFP4=
X-Google-Smtp-Source: APXvYqy+53yBifFTLAmU8dsdQ8hL0cLkTBJ1uEgw7SYnSKdV/so5DE1tI+/hP+QWRy6KnJjmAet0wA==
X-Received: by 2002:a17:906:5448:: with SMTP id
 d8mr39256290ejp.254.1577720281504; 
 Mon, 30 Dec 2019 07:38:01 -0800 (PST)
Received: from pi3 ([194.230.155.138])
 by smtp.googlemail.com with ESMTPSA id s22sm2765324ejm.43.2019.12.30.07.38.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 07:38:00 -0800 (PST)
Date: Mon, 30 Dec 2019 16:37:58 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: exynos: Remove unneeded "snps,dwc2"
 from hsotg node
Message-ID: <20191230153758.GB4918@pi3>
References: <20191219103536.25485-1-benjamin.gaignard@st.com>
 <20191219103536.25485-3-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219103536.25485-3-benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_073803_134509_D73427DC 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, amelie.delaunay@st.com,
 linux-samsung-soc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 kgene@kernel.org, hminas@synopsys.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 11:35:36AM +0100, Benjamin Gaignard wrote:
> Remove "snps,dwc2" from hsotg@12480000 node compatible list because
> "samsung,s3c6400-hsotg" should be enough.

The more detailed compatible is almost always "enough". Some other nodes
also have detailed+generic compatible. In this case there is a driver
matching "snps,dwc2" so why removing it?

Best regards,
Krzysztof

> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  arch/arm/boot/dts/exynos3250.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/exynos3250.dtsi b/arch/arm/boot/dts/exynos3250.dtsi
> index b016b0b68306..d4866269f4ee 100644
> --- a/arch/arm/boot/dts/exynos3250.dtsi
> +++ b/arch/arm/boot/dts/exynos3250.dtsi
> @@ -362,7 +362,7 @@
>  		};
>  
>  		hsotg: hsotg@12480000 {
> -			compatible = "samsung,s3c6400-hsotg", "snps,dwc2";
> +			compatible = "samsung,s3c6400-hsotg";
>  			reg = <0x12480000 0x20000>;
>  			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&cmu CLK_USBOTG>;
> -- 
> 2.15.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
