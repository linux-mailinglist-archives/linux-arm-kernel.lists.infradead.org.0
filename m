Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B984418E90C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 14:05:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kYbrf7WuIzgjdwSLuIR8PCSO1oL+kDvq0tfal/8tPE0=; b=Q6ENsy34Be4cgeEcT66a1ODyQK
	mEYX3iTqM9qMD8esh4tymuSFymandSpE66STA0vUEfdrbaTU/Ro6z/oH5JdwjaYS2GiGYknr7OiYb
	jLQpNoOL4prwGBLEACky7gbZdNPPvWBRzArWUSMu+7blX+tIgDYb6q0khdvIfbScm2JrrPPxla8L8
	LZVrm1Zxltc7Jn8jMT6br0FFCE1CuFKNPcu/Vm2CMiCKDF4G8D1QEsD/MUpM0sQBZgcAYCGgTqM4M
	gMtzOjc/BiqyX+Xh4NuiQKKRe9nxR1j/U1qIlpMXrDAsj9z3LPmgRLiBbYA6ZKFty9FUZBqO+RH/E
	GvRQoDJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG0IL-0001jW-GG; Sun, 22 Mar 2020 13:05:37 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG0IB-0001ii-Mx
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 13:05:30 +0000
Received: by mail-wm1-x342.google.com with SMTP id c187so11313161wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Mar 2020 06:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding;
 bh=y0obWhE6JeJc849b3MeKOon4JLevkMsZjwtU+Vr0Uc0=;
 b=ycH96OQAdISI3933+ye9qCoVatB4K42NRNk7emUGZaYrEic3edhPWkkbA8puFRRMUF
 A5k/ss5R9qp4pKEvBJiWhGgJ2JsvB7q+vEJye2y0j//K4imY1rdSOuaoN9DrK38LVivH
 FPS34GSzHRmbBsqxF1gnsKc9Fdgdy338Uw4vbUjTdz7QLl4vR9rj7C00RmO/Yspx9sls
 hOHQm9KOkPES7HF7Q5YXbRwP0Ap93CbjRjCYfz0oMty3pqcH2COYikxRcbEG6KOA15oD
 TTGgN1bNA2gxA30Gn5SteaFWOTdyTgVB4TDhSa4nkTGrumgB/0WIVcP/UwHb1wXeziAm
 Eovg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=y0obWhE6JeJc849b3MeKOon4JLevkMsZjwtU+Vr0Uc0=;
 b=NwREPTqGq0zlBzzSFHgzqFAQ7aXowWgtaKABDM6rAcGjv0aOL0+1SNxiyoxCZXH9ee
 bOlE5ztzIWemDcD/hUqKYxgxRQ16Bc1pY6K9il/Tg/vQTzFrQat/o+bRmgYUhKg4p0uU
 pAtt1kVe03A6X2NHxPcAzhWqOJCeQKmHzn+j7tIi0/Y4h2EUTlAW7AulzEvjuixOPW0/
 /M6B4KhhVOviS68dqLqdonyGOSS3xOYOlOFfixDxhfm9RfqcW2EEdAsX5IlB35H3OVvZ
 YVEvQw7m8PSk+Jux/0L8tGpuDdAUwopTb+FLH48JyClq4f6q1gb6Lz1NTjeOBefvZUZd
 UQ7g==
X-Gm-Message-State: ANhLgQ3mrhotmswQ+2+mYWdYmMBvmP3Pvk+egpOCPqxElD40mI+otDoG
 lBZBP2FX8CsDfq0vrZV0WsCYMA==
X-Google-Smtp-Source: ADFU+vt663IbGfqXLqaBBoBd/TtlcKYWmh2rCAAdSzpeyW9dLOYoeNgoyGmVYk+sBiebfEUDTJQ5xw==
X-Received: by 2002:a05:600c:2190:: with SMTP id
 e16mr14938974wme.42.1584882325357; 
 Sun, 22 Mar 2020 06:05:25 -0700 (PDT)
Received: from Armstrongs-MacBook-Pro.local
 ([2a01:e35:2ec0:82b0:5d7b:95e6:6719:f85a])
 by smtp.gmail.com with ESMTPSA id a11sm18675524wrx.54.2020.03.22.06.05.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 22 Mar 2020 06:05:24 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: oxnas: Fix clear-mask property
To: Sungbo Eo <mans0n@gorani.run>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-oxnas@groups.io, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200321143653.2412823-1-mans0n@gorani.run>
From: Neil Armstrong <narmstrong@baylibre.com>
Message-ID: <ca1a1cdc-6c20-bd2c-d1ea-edd6610f68a4@baylibre.com>
Date: Sun, 22 Mar 2020 14:05:22 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:45.0)
 Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20200321143653.2412823-1-mans0n@gorani.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_060527_894254_F5F8A4E8 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Le 21/03/2020 =E0 15:36, Sungbo Eo a =E9crit :
> Disable all rps-irq interrupts during driver initialization to prevent
> an accidental interrupt on GIC.
> =

> Fixes: 84316f4ef141 ("ARM: boot: dts: Add Oxford Semiconductor OX810SE dt=
si")
> Fixes: 38d4a53733f5 ("ARM: dts: Add support for OX820 and Pogoplug V3")
> Signed-off-by: Sungbo Eo <mans0n@gorani.run>
> ---
>  arch/arm/boot/dts/ox810se.dtsi | 4 ++--
>  arch/arm/boot/dts/ox820.dtsi   | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/arch/arm/boot/dts/ox810se.dtsi b/arch/arm/boot/dts/ox810se.d=
tsi
> index 9f6c2b660ed3..0755e5864c4a 100644
> --- a/arch/arm/boot/dts/ox810se.dtsi
> +++ b/arch/arm/boot/dts/ox810se.dtsi
> @@ -323,8 +323,8 @@ intc: interrupt-controller@0 {
>  					interrupt-controller;
>  					reg =3D <0 0x200>;
>  					#interrupt-cells =3D <1>;
> -					valid-mask =3D <0xFFFFFFFF>;
> -					clear-mask =3D <0>;
> +					valid-mask =3D <0xffffffff>;
> +					clear-mask =3D <0xffffffff>;
>  				};
>  =

>  				timer0: timer@200 {
> diff --git a/arch/arm/boot/dts/ox820.dtsi b/arch/arm/boot/dts/ox820.dtsi
> index c9b327732063..90846a7655b4 100644
> --- a/arch/arm/boot/dts/ox820.dtsi
> +++ b/arch/arm/boot/dts/ox820.dtsi
> @@ -240,8 +240,8 @@ intc: interrupt-controller@0 {
>  					reg =3D <0 0x200>;
>  					interrupts =3D <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
>  					#interrupt-cells =3D <1>;
> -					valid-mask =3D <0xFFFFFFFF>;
> -					clear-mask =3D <0>;
> +					valid-mask =3D <0xffffffff>;
> +					clear-mask =3D <0xffffffff>;
>  				};
>  =

>  				timer0: timer@200 {
> =


Thanks a lot for the patch,
Acked-by: Neil Armstrong <narmstrong@baylibre.com>

I'll apply it asap and push it to arm-soc fixes.

Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
