Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9970812658C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 16:20:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2rRCJ05FStHfeQC2a5txOupMe0+WaoSXP/s0+3e4xk=; b=GJ9aiv6m0E/M4T
	Kh+JsLvCdYu4SZH3Hyb01OsDOO25/hVbtBAT9EbpjaLCjeHb5czayFvy8/y1/+y5Zj0PnQUsWKhO/
	PK/e8LI5ISWgdQUFS3OhBLKhv2LgHusIwXJs/vepfbvof/BU1Lg9/rUsYJUFHvoThMdSYQzda8lVW
	48maMY51nmqj32fS39wWKQExdDXAvgnUblGE03htbrocSaRHBnUOkdj09p2SdLQfTL+Tgv234jtk3
	NbUoSvDI8IN2BqZaLXqTVdhGe8428CFxqAu9jaQ/uYkzG724cHebcdqytKKhwmpSN5kdWEO9toXFk
	/q/BJW/DjN1UDeg3S1fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihxbA-0005kb-Cn; Thu, 19 Dec 2019 15:20:20 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihxai-0005hf-L2
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 15:19:56 +0000
Received: by mail-ed1-f65.google.com with SMTP id i16so5222650edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 07:19:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yKuAYpLF3E6FhUEh48W1doIdf2u4n4BlzrQudOr7Dk8=;
 b=ittAqYXr3KojQzql3RwOTgUU2pZvWohvoKHL9n6fLONZu3G3yeFzN7gutQCk4xK8pX
 IrWDmsucrYuk/LpAaRfEgkHbz5WH80vjD4ou88Am52JpwzX/BYqYtUnHSbNP+t8++efb
 WkQ/8gQF7hkPLYrcnmFpSgXMX4f97vm2c+WIx04Ca6944fpDfQW7tyeo2JnSHV+KnEqx
 SYVKS5o9ADdzFUzYf9i1UvGnTdhe/PDTKJmh+CxbH+9/QVZOSBhL/FZDtuNKbgYANmmY
 +7kMTuaLQqmwP+vWVJ4tT4/pmyVENUDkWBz/IMePPgKOefoTe3xJGNV6i6jtYmYLeI5f
 28RQ==
X-Gm-Message-State: APjAAAVqAMHjcYb6raF8LMyeKzWBOkDfIoqhyvQYTtOhXLbFYVT/MG/U
 gaAS9lNT+YKm0vHYRt9tOBswUxeEP1w=
X-Google-Smtp-Source: APXvYqzBBZhFt2+MIem2M83ue4bW2DlpxEMl1pe0+BVH2Q2TXyH0cNtLim2qXkf/36MQpaKg0vrPTQ==
X-Received: by 2002:a17:906:4bd1:: with SMTP id
 x17mr10040788ejv.181.1576768790058; 
 Thu, 19 Dec 2019 07:19:50 -0800 (PST)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com.
 [209.85.221.44])
 by smtp.gmail.com with ESMTPSA id r19sm520384ejr.33.2019.12.19.07.19.49
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Dec 2019 07:19:49 -0800 (PST)
Received: by mail-wr1-f44.google.com with SMTP id c9so6359042wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 07:19:49 -0800 (PST)
X-Received: by 2002:adf:ef4e:: with SMTP id c14mr10307149wrp.142.1576768789490; 
 Thu, 19 Dec 2019 07:19:49 -0800 (PST)
MIME-Version: 1.0
References: <20191219091539.948530-1-maxime@cerno.tech>
 <20191219091539.948530-4-maxime@cerno.tech>
In-Reply-To: <20191219091539.948530-4-maxime@cerno.tech>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 19 Dec 2019 23:19:37 +0800
X-Gmail-Original-Message-ID: <CAGb2v65+gakx9HA1vzUKHET17YYW+aoKJA6h1Ot-SmBDMHEEUQ@mail.gmail.com>
Message-ID: <CAGb2v65+gakx9HA1vzUKHET17YYW+aoKJA6h1Ot-SmBDMHEEUQ@mail.gmail.com>
Subject: Re: [PATCH 4/5] ARM: dts: sun8i: nanopi-duo2: Fix GPIO regulator
 state array
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_071952_721448_655AE7B3 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 5:15 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Even though it translates to the same thing down to the binary level, we
> should have an array of 2 number cells to describe each voltage state,
> which in turns create a validation warning.
>
> Let's fix this.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Chen-Yu Tsai <wens@csie.org>

But,

> ---
>  arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts b/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts
> index c73f59900975..6b149271ef13 100644
> --- a/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts
> +++ b/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts
> @@ -60,8 +60,7 @@
>                 enable-gpio = <&r_pio 0 8 GPIO_ACTIVE_HIGH>; /* PL8 */
>                 gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
>                 gpios-states = <0x1>;
> -               states = <1100000 0x0
> -                         1300000 0x1>;
> +               states = <1100000 0>, <1300000 1>;

I would keep the table like layout.

>         };
>
>         reg_vcc_dram: vcc-dram {
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
