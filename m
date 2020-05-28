Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AB91E68C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 19:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5vk6xQZzrbpsV0oUb+94fHRnA7/dSGOr0gwKyuaxSN0=; b=LpnmfwIzPmcezI
	14D02wH1hzKSholM+pL2ckMF07+DNw1l9NvvAXbzHAySTi2y0lNZ/3LgazxDYz532tHC02crVJ5Jm
	EC98kHON5A1DnXi4e3vKSl1cKbeJCOtCMX/SU0yDChxGIaRIlHL+IDeGPUrm8A/G9cZgwIqOilElF
	94b/+wh/9IABFex7HvLAsJDG0IwkX2y9upKA1nr0ctx0HUoj6DUMpYWftf0topiAnE1+gdC4Elw3+
	zw1xUdV4Eaeqnn/karccMXDnpusX/ip7ZYqOyxwHMXSrrEB9G8SRZYxlb3S5ByT+zvxmBm77YEInT
	NLLZ7Yz1cWPc/KEtCTcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeMTm-0007th-MC; Thu, 28 May 2020 17:38:06 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeMTe-0007tK-G6
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 17:37:59 +0000
Received: by mail-il1-f193.google.com with SMTP id l20so1009612ilj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 10:37:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=GiD0oyk/KKQdbg44fIYbxmFQPOLIBFzL4LRBCx2gE2E=;
 b=A85muiHw7GrmmR0XzYYQ8gd8id9LnEH2IS94Nye+IkoFWGQ7yt8HYycXb1nDLnv0w5
 Zeoki9ticKcRsILatkaWhrI1HNsm6qtxkpe9Js47y5M0S2UdhzN/n1wbdWC6HB+mQvyY
 nKlXcBTk0ZOXbiIam3zAxEO315+P7AyIEM1cfcwjdAx5iYHtdWkQ67rt4jYJ/JAui2ne
 lB+qb7EWOdMJwId13JYF0JMXiNcogGq5WuM91kcGf6wyOTDLuR5zdyo1ybT43UglbAz7
 T4Zf2O9HlwLy1wBTbz9H/bZKu445v4mH6Xv9d+H6fam8rTespMVwe1Pi55A87OAMsgOc
 oVPA==
X-Gm-Message-State: AOAM533bNptByXhTR4YUljeQn8iBltFfJHOrt1M7VJqVisIyPr7XAgG0
 Ssyi4lZr2d0tilDtqSbzVQ==
X-Google-Smtp-Source: ABdhPJz6XG8IeR1Wf7SDceVEEvWMzunefbyvqCnZoj/YTWnEQp5dGohnm7sv7KyHZntAzHxF6L2Szw==
X-Received: by 2002:a92:155b:: with SMTP id v88mr3691249ilk.274.1590687477415; 
 Thu, 28 May 2020 10:37:57 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id d16sm3567690ilg.71.2020.05.28.10.37.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 10:37:56 -0700 (PDT)
Received: (nullmailer pid 360225 invoked by uid 1000);
 Thu, 28 May 2020 17:37:55 -0000
Date: Thu, 28 May 2020 11:37:55 -0600
From: Rob Herring <robh@kernel.org>
To: Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
Subject: Re: [PATCH v2 1/4] ARM: dts: dove: Make the DT compliant with the
 ti,tfp410 binding
Message-ID: <20200528173755.GA113289@bogus>
References: <20200514143612.2094-1-ricardo.canuelo@collabora.com>
 <20200514143612.2094-2-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514143612.2094-2-ricardo.canuelo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_103758_534701_F8377360 
X-CRM114-Status: GOOD (  15.60  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, tomi.valkeinen@ti.com,
 Laurent.pinchart@ideasonboard.com, kernel@collabora.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 04:36:09PM +0200, Ricardo Ca=F1uelo wrote:
> Define a 'ports' node for 'dvi: video@39' and use the proper naming for
> the powerdown-gpios property to make it compliant with the ti,tfp410
> binding.
> =

> This fills the minimum requirements to meet the binding requirements,
> port endpoints are not defined.

Just make 'ports' optional. This isn't really any better unless you add =

endpoints too.

> =

> Signed-off-by: Ricardo Ca=F1uelo <ricardo.canuelo@collabora.com>
> ---
>  arch/arm/boot/dts/dove-sbc-a510.dts | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> =

> diff --git a/arch/arm/boot/dts/dove-sbc-a510.dts b/arch/arm/boot/dts/dove=
-sbc-a510.dts
> index 2bb85a9b7614..32804c981625 100644
> --- a/arch/arm/boot/dts/dove-sbc-a510.dts
> +++ b/arch/arm/boot/dts/dove-sbc-a510.dts
> @@ -132,7 +132,18 @@
>  	dvi: video@39 {
>  		compatible =3D "ti,tfp410";
>  		reg =3D <0x39>;
> -		powerdown-gpio =3D <&gpio_ext 3 GPIO_ACTIVE_LOW>;
> +		powerdown-gpios =3D <&gpio_ext 3 GPIO_ACTIVE_LOW>;
> +
> +		ports {
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +			port@0 {
> +				reg =3D <0>;
> +			};
> +			port@1 {
> +				reg =3D <1>;
> +			};
> +		};
>  	};
>  };
>  =

> -- =

> 2.18.0
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
