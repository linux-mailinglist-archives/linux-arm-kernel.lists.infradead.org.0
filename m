Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C976D97ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 18:52:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t46y6s3ayrtLDXhcAUaqFHF5eGctDa+iUKjDplWOi8A=; b=KBeYqw4qkiR7j3
	Kx6aHgkAc5lCFhbiRcO4JAFznl6ry8HZhvGXlQE/lDNFT1Xauuo2LUKAvD9lKyYh3eSxb7D8Oy/W+
	yeE7pQDIzmLDOP7gUFIQB0LwxxEeR3BzLru8MtxVqtp099F1gX23qFfs6nmeWNfAUmF53ZSBZT0bd
	IdbmtzZyBHHD/nYk6ZjRTpsFXoPf+VRli0C1IRe7SgqIcWhyf14mLwPcOIjAjaNmQR+RzXM84Ds13
	W8IfYa8rP9KkUVY5b82NkVmLyJoEocn2v3ywt/x/F2fR+zyN//WsQDWFI11lQjxNAEVztXcF+hCxv
	0RJxVT6PqBLc6TCfj/rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKmXf-0005Y5-Fp; Wed, 16 Oct 2019 16:52:55 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmXU-0005Su-UT
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 16:52:46 +0000
Received: by mail-pf1-x442.google.com with SMTP id x127so15082219pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 09:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=DWB28C23b4LvznGkG5ZeUrO8QaxjHT8svafhe7nPaII=;
 b=Fqt4lOhAUnwSxBzgtRVB2hal9xbqZxbyM6Sh7YLtYAQ9a9+L1sF3rBWAwWldX6BbAQ
 VmNZDebEzUpKD+9uXmhyU0PPgZ6oJfmecVjpa/valJuWqzb+mdfzfZ2XUaW5tb/5ENrF
 99RIBdhdicBLu2QI3kdHUbBJWeP+6N1sm+ximgH1b6AXpqq9zjtYzFMRLExakZJoTpMc
 /G9oUKnLPTI9a/+cESsKQS8dNxahHXoQfwlDF5IcgIaWK6DcWrG5b1tG+vZsV7N+L6Nv
 JtwEnkf/v8cm4HjNLyZK0UyY31vIdn4JBCyP7yMFIbLXqMyo2Zwc9yddVNtO5FnFhdOD
 J5HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=DWB28C23b4LvznGkG5ZeUrO8QaxjHT8svafhe7nPaII=;
 b=BHfqJ3IyJF3k7dKkjX935tF+nxhTY0SqzVCt+w7gZDYC3HDD+Sv74j3tL7Qz9Sav5x
 YYY3xgnwjwIuahH52EEJT6sV3HmbSPgLH5H6GZXZPreiFmuM5FbNPoJBEkVbmHAz3Spz
 oi/7arPNQHdGuKTzWDFJWvg2VORdQ2spEHfU+bve1X507aq7uUW3t2uIAqfnJhTONvTl
 tC8QlnrtsTDWpn98aO4swSYDMdLX7847wfq4e9OCRSIf08QIpYXnaSe9RHjm110ttsfF
 ZjJWfzPIw9RhxniXA60mpu083ClQZ/wWw1ge5g/GoM5f57N1888urSoouA6VJL9wNuHP
 c2Cw==
X-Gm-Message-State: APjAAAXwD7A93oek3j8VMDfzKxcMyvwIUvQq7uMuYC9MopnEgWfv1meS
 iXjpRWI6w3e/spmbunXnnSgeoQ==
X-Google-Smtp-Source: APXvYqwEa5xX0UPGLDw3yx5YgchQI4Nl9Up2L3YAU98vchmqR+FbNObjPraFt55twMf+r/Me6ucjtQ==
X-Received: by 2002:a17:90a:3628:: with SMTP id
 s37mr6287710pjb.38.1571244763750; 
 Wed, 16 Oct 2019 09:52:43 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id u13sm21952806pgk.88.2019.10.16.09.52.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 16 Oct 2019 09:52:43 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Corentin Labbe <clabbe@baylibre.com>, davem@davemloft.net,
 herbert@gondor.apana.org.au, mark.rutland@arm.com, robh+dt@kernel.org,
 martin.blumenstingl@googlemail.com
Subject: Re: [PATCH v2 4/4] ARM64: dts: amlogic: adds crypto hardware node
In-Reply-To: <1571031104-6880-5-git-send-email-clabbe@baylibre.com>
References: <1571031104-6880-1-git-send-email-clabbe@baylibre.com>
 <1571031104-6880-5-git-send-email-clabbe@baylibre.com>
Date: Wed, 16 Oct 2019 09:52:42 -0700
Message-ID: <7hk194fx9h.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_095244_977891_7B3C8DCE 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Corentin Labbe <clabbe@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Corentin Labbe <clabbe@baylibre.com> writes:

> This patch adds the GXL crypto hardware node for all GXL SoCs.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-gxl.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
> index 49ff0a7d0210..ed33d8efaf62 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
> @@ -36,6 +36,16 @@
>  				phys = <&usb3_phy>, <&usb2_phy0>, <&usb2_phy1>;
>  			};
>  		};
> +
> +		crypto: crypto@c883e000 {
> +			compatible = "amlogic,gxl-crypto";
> +			reg = <0x0 0xc883e000 0x0 0x36>;
> +			interrupts = <GIC_SPI 188 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
> +			clocks = <&clkc CLKID_BLKMV>;
> +			clock-names = "blkmv";
> +			status = "okay";
> +		};

Looks good.

I'll apply this via the amlogic tree as soon as Herbet applies the
driver part.

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

Kevin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
