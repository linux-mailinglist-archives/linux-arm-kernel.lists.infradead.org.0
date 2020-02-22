Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F1F168FAA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 16:04:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/W9/CV9PMtqFq534V+0uWjxqGNMSjr/5aXQHD4+oeqg=; b=Y5Pwkm+c7y9a3F
	+q93gXDj4dB2YzUgNWkBw0RJ1jvVOj3jm2a7dsbChb+nY/YG83BRjNcAHrsTCz3rVscGaBDHNjfAA
	ISAp9Glt4boViAkTrc+ZZg2i6cTkTIVCM/DTmREoAKBxXbeJlrDkc6sSiwT89kYtW4rID10eR8X+W
	qDn303zNk0deMAZuz68y8tX12gvT/chKpAbKXwquHaDTZshtGxKJqej4tz57IP+M/E2DFHLX4hHrn
	Wwn6k1DM+G1ij5r0wHD2yzPF0jkLQGhnVncohVOxnW9HX7i29q2UHR4To6A2UReGurKou1imhtBqD
	XA1R5NUFsgFdg666oSVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5WK8-0004jS-Nt; Sat, 22 Feb 2020 15:04:08 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5WK1-0004j4-BB
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 15:04:02 +0000
Received: by mail-lf1-x141.google.com with SMTP id 7so3632913lfz.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 07:03:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Xifd8WijE8GTahP3bmRGY4Sh30aYMNX7/F7d8gaMK0M=;
 b=kvhJmk6XLbSxYn8Qjx1BuLosQ1khAzVj8FF5GAPFk6XZqKJ8Qss4pEneppvA9kr8XL
 pgiSNkEtfDwsUE0qcDMkOS0tz3HarxiRexYMFIOgJI2hI7ywPC5rq7Rs9y4+mOrwQhpW
 9epQWVUoz6Xssan3vvFeqfSWNV50tIK+9QIHvjrXoiZf8ZWSnmD4muv4WZnv9ZmtCoQf
 sYFRLK+HfTiuZZpdcSXteB02Pcm4LFV/4TgY8KGJsxIHgloidZpzfPCGH7u2+4JWssDs
 gNu2LGtTf6e3u7/qSbEAeSAOjRdxskSfBCX1/+eWAWs31GwfUtQ9EgKvt4rASQ+qj1Mg
 /yvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Xifd8WijE8GTahP3bmRGY4Sh30aYMNX7/F7d8gaMK0M=;
 b=f8M1X+GO0jAb7mhi931YpVLvoKl5QY+3XvnWVd2K67No1I+sY4sI07HzDfX47ebI+m
 UPlaeKqY52Tdqg9tjS4ErAj21Pn7wsxu268EMdazmcXBn1b8rrgV6ZcG+ppZJV9qyIYX
 /ti2asJJrMZZ4kWu0J1x6a3T1+k7mnkZiNqHKpvGEoqrX/CsRe2BD3t9NldZRNZKh/eT
 pyMWvwDYUxwzaa7Yv8EnOqKrbNRfK8CoYMC+CYjPpHuTEDZotaHVV1QkyvaE+i7ShGdg
 S4nYrjogJCTwb/7egdroK1vFhf98MKE9OYutfxBhIKwDi5LZK9WFGJoVRY3GvjO/jGZH
 JH0A==
X-Gm-Message-State: APjAAAXDECrMUFdUL2MeGqJ/MW+5DsKlaJQHE97Fywvy0wm8F3yUOKAm
 yQfkgaKYOIR4up2+nyl3RXRhrw==
X-Google-Smtp-Source: APXvYqxL0tbEYrhWH41q9mPIM4qs0NfEKPE2NiFblTDT21q2Rpd/pk/K3bhgcG+848q06IQNrgpF1Q==
X-Received: by 2002:ac2:46dc:: with SMTP id p28mr22696651lfo.23.1582383836868; 
 Sat, 22 Feb 2020 07:03:56 -0800 (PST)
Received: from localhost (h-200-138.A463.priv.bahnhof.se. [176.10.200.138])
 by smtp.gmail.com with ESMTPSA id z1sm3230464lfh.35.2020.02.22.07.03.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Feb 2020 07:03:56 -0800 (PST)
Date: Sat, 22 Feb 2020 16:03:55 +0100
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] ARM: dts: r8a7779: Remove deprecated "renesas, rcar-sata"
 compatible value
Message-ID: <20200222150355.GE1444588@oden.dyn.berto.se>
References: <20200219153929.11073-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219153929.11073-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_070401_521774_5D344A23 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

Thanks for your work.

On 2020-02-19 16:39:29 +0100, Geert Uytterhoeven wrote:
> The "renesas,rcar-sata" compatible value was deprecated by
> "renesas,sata-r8a7779" many years ago, in commit e67adb4e669db834
> ("sata_rcar: Add R-Car Gen2 SATA PHY support").  Drop it.
> =

> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Niklas S=F6derlund <niklas.soderlund+renesas@ragnatech.se>

> ---
> To be queued in renesas-fixes for v5.6, as not having to care about the
> deprecated value will simplify the json-schema conversion.
> ---
>  arch/arm/boot/dts/r8a7779.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/arch/arm/boot/dts/r8a7779.dtsi b/arch/arm/boot/dts/r8a7779.d=
tsi
> index beb9885e6ffca7a5..c0999e27e9b145e3 100644
> --- a/arch/arm/boot/dts/r8a7779.dtsi
> +++ b/arch/arm/boot/dts/r8a7779.dtsi
> @@ -377,7 +377,7 @@
>  	};
>  =

>  	sata: sata@fc600000 {
> -		compatible =3D "renesas,sata-r8a7779", "renesas,rcar-sata";
> +		compatible =3D "renesas,sata-r8a7779";
>  		reg =3D <0xfc600000 0x200000>;
>  		interrupts =3D <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
>  		clocks =3D <&mstp1_clks R8A7779_CLK_SATA>;
> -- =

> 2.17.1
> =


-- =

Regards,
Niklas S=F6derlund

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
