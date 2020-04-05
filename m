Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE49D19E9A1
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 08:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K5UboNnvYG5h/VTGhRQinSCdo5RlPFxvOqG8ZRCsRJI=; b=E4uXyiWZd4391r
	pikBX8likIVQAHdUM+BIHUNedASmmIgqf9mJGLUIZRbG7YXxdzJvqQnRhXHog+CUwXb6ue1KVXWN5
	odwDK6W1Pb2f/kHis23JH3YRsepkE4JBZr/87JOD7KEY2hKVoxtHHf65EjCuKNqqW9RCpn53i3cEs
	YwRpeL9LtEshUezFo1OTJmDqIPL1q2c3aYP5QhAGJ2ruGtbJia7hX1GMk8OPHTxwvZkEn50BKTl6l
	Hl1ZFSbgkaA6rd5qi0CRJZQktxRmKY2q8UNwSVyHHW8qTVNE0vLKE9OW87COzrCYyMZbZhS65jx49
	4UYjDMeoZG0D8AUmUfSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKz8N-00069u-Kd; Sun, 05 Apr 2020 06:51:55 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKz8F-000695-O4
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 06:51:49 +0000
Received: by mail-pj1-x1044.google.com with SMTP id m15so5039359pje.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Apr 2020 23:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=TGy9rnxZk9+7y7aCTCI01iy1QvV1657xHryoXzYxu+w=;
 b=QA76mSat7GkAycz9Ix+QUyd+J9fKzqc/h5WIAYN1rHB/m9fsk4aL0+Ls2u8RkVKaPV
 zF/dg9pfZm3Rbwe0v9hn2baF768y2hk7a69JUJqtagpLreDXirQyxZXvyBIe7bXEeDVc
 fw6yX6G2Z8fUTsCZiPTQ9kSX6pYb3FSvM9kAsEP/3P38ya/98AuRlk0l9ChaBUh/7m7j
 F6Tx8A9k9J+QnSndiXGhBw+YqNoSZOGSVzrp6N2jBz12xu4bw9YyLa3BBh+RBPPcAzog
 77Kh2moc+T3yLKb3zXVpEBKIteYcftCn2P7wo5xtO4GH7aRmpRK2JlQivQnYDcWq+O+F
 5e6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=TGy9rnxZk9+7y7aCTCI01iy1QvV1657xHryoXzYxu+w=;
 b=Tc5mfQCRTxTUfUDWcQxISWv77wj4avy8L7xFksHhJ6d1taKB4o90o/HLWKV07lnVSK
 gUeI8L1nXJPR8pFJazml/cnwHHaT9VW3rHIfatkC/J6CdX0Y+m6jRVZxFP+SqeMkwjal
 rtRIeYxEMNppg3kujTP43xmmKdyjsy4sbRlAjK50lgC9aso7l8smvX2FuKrvYLJwrRDH
 QbYM5Bii/I6/dVHMHQ2/r1u7OCkPLA+xjmqFw8dvqXWzFfUReI7eBjL7aUO+QC0JXwsb
 VoKi73nPSjXG9yDHjDqHE0Zfglv/HbgeDm4CIBqijcQ+cIusccrVZFbei2bJviYxQS+P
 iWtQ==
X-Gm-Message-State: AGi0PuZIAiwO1T7dGiSyaQHb5mVs4yM7Xq9Sd/pvnaCcavKlKguTsFsM
 cfrQ5CDZ0ht7LVYluVJwyx/0
X-Google-Smtp-Source: APiQypKhtqT6m4dUjC/jKfp/a1KE2PyeMsGxvd4RbU9eb/JrQOMjCpNyqmpFkHp9h9iWB4Q5RqSoWA==
X-Received: by 2002:a17:902:342:: with SMTP id
 60mr15873346pld.29.1586069505517; 
 Sat, 04 Apr 2020 23:51:45 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6e83:b2ab:75aa:fbdc:e9da:9d96])
 by smtp.gmail.com with ESMTPSA id h198sm8842662pfe.76.2020.04.04.23.51.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 04 Apr 2020 23:51:44 -0700 (PDT)
Date: Sun, 5 Apr 2020 12:21:37 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Matheus Castello <matheus@castello.eng.br>
Subject: Re: [PATCH v3 3/3] ARM: dts: Add Caninos Loucos Labrador
Message-ID: <20200405065137.GC8912@Mani-XPS-13-9360>
References: <20200229104358.GB19610@mani>
 <20200320035104.26139-1-matheus@castello.eng.br>
 <20200320035104.26139-4-matheus@castello.eng.br>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320035104.26139-4-matheus@castello.eng.br>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_235147_851717_B2BF7BDF 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 edgar.righi@lsitec.org.br, robh+dt@kernel.org, igor.lima@lsitec.org.br,
 afaerber@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 12:51:04AM -0300, Matheus Castello wrote:
> Add Device Trees for Caninos Loucos Labrador CoM and base board.
> Based on the work of Andreas F=E4rber on Lemaker Guitar device tree.
> =

> Signed-off-by: Matheus Castello <matheus@castello.eng.br>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Will queue the series for v5.8 once Andreas is happy with it.

Nit: Please keep linux-actions@lists.infradead.org in CC for all future
patches/replies.

Thanks,
Mani

> ---
>  arch/arm/boot/dts/Makefile                  |  1 +
>  arch/arm/boot/dts/owl-s500-labrador-bb.dts  | 34 +++++++++++++++++++++
>  arch/arm/boot/dts/owl-s500-labrador-v2.dtsi | 21 +++++++++++++
>  3 files changed, 56 insertions(+)
>  create mode 100644 arch/arm/boot/dts/owl-s500-labrador-bb.dts
>  create mode 100644 arch/arm/boot/dts/owl-s500-labrador-v2.dtsi
> =

> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index d6546d2676b9..99f633460833 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -842,6 +842,7 @@ dtb-$(CONFIG_ARCH_ORION5X) +=3D \
>  dtb-$(CONFIG_ARCH_ACTIONS) +=3D \
>  	owl-s500-cubieboard6.dtb \
>  	owl-s500-guitar-bb-rev-b.dtb \
> +	owl-s500-labrador-bb.dtb \
>  	owl-s500-sparky.dtb
>  dtb-$(CONFIG_ARCH_PRIMA2) +=3D \
>  	prima2-evb.dtb
> diff --git a/arch/arm/boot/dts/owl-s500-labrador-bb.dts b/arch/arm/boot/d=
ts/owl-s500-labrador-bb.dts
> new file mode 100644
> index 000000000000..91012b4a4c30
> --- /dev/null
> +++ b/arch/arm/boot/dts/owl-s500-labrador-bb.dts
> @@ -0,0 +1,34 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Caninos Labrador Base Board
> + *
> + * Copyright (c) 2019-2020 Matheus Castello
> + */
> +
> +/dts-v1/;
> +
> +#include "owl-s500-labrador-v2.dtsi"
> +
> +/ {
> +	compatible =3D "caninos,labrador-bb", "caninos,labrador", "actions,s500=
";
> +	model =3D "Caninos Labrador Base Board M v1.0";
> +
> +	aliases {
> +		serial3 =3D &uart3;
> +	};
> +
> +	chosen {
> +		stdout-path =3D "serial3:115200n8";
> +	};
> +
> +	uart3_clk: uart3-clk {
> +		compatible =3D "fixed-clock";
> +		clock-frequency =3D <921600>;
> +		#clock-cells =3D <0>;
> +	};
> +};
> +
> +&uart3 {
> +	status =3D "okay";
> +	clocks =3D <&uart3_clk>;
> +};
> diff --git a/arch/arm/boot/dts/owl-s500-labrador-v2.dtsi b/arch/arm/boot/=
dts/owl-s500-labrador-v2.dtsi
> new file mode 100644
> index 000000000000..0b54f1ef3ec0
> --- /dev/null
> +++ b/arch/arm/boot/dts/owl-s500-labrador-v2.dtsi
> @@ -0,0 +1,21 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Caninos Labrador CoM V2
> + *
> + * Copyright (c) 2019-2020 Matheus Castello
> + */
> +
> +#include "owl-s500.dtsi"
> +
> +/ {
> +	compatible =3D "caninos,labrador", "actions,s500";
> +
> +	memory@0 {
> +		device_type =3D "memory";
> +		reg =3D <0x0 0x80000000>;
> +	};
> +};
> +
> +&timer {
> +	clocks =3D <&hosc>;
> +};
> --
> 2.25.0
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
