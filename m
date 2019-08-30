Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 070F6A358E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 13:18:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LLzpOMz2G1HwapbNP8B7XPnU6xzzczKBcqyOVgMFhQc=; b=PrJYPRJ4O8LWskzXglFTS3sZg
	d1XGhUZkq4lvDMXI6gP8jv9kmXsRF+XJnFUGxkeoTqulghnwXiPQJXvDsF3RL1A5u4o6W3G4EecAT
	SyFCCI3nRuIArEQkD101LeSaWHNlpa6KLu6z6Kyc4u7v72AujSKRQyQN08ku0O+hnHrFs86uaLfb4
	MOaGDLIyNE/hYgfIQ4sAzaO1LDyAu5qASBjk/9F4uUeuHyMhb2hpYYx209fJgMnY1hvqf9LIH9Yte
	v+hmevCrRAMShDQTTkaYsPHm7QetzQ5yiRTMOqZYj75WfEXn2Hsgd8EWZssEYbFosDpKXRCFxqV5C
	+XrFHe6pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ev9-0004rv-Db; Fri, 30 Aug 2019 11:18:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3ev0-0004rc-Ih
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 11:18:15 +0000
Received: by mail-wr1-x442.google.com with SMTP id z11so6590282wrt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 04:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MK/N1cs3pdVNjWhCaPYV2nk00LMCO2TH7MeXQEm9duU=;
 b=kpTPS/qpbp1aEb7nmI4LVVZ4pEMAsKJqWpjCrqIr+UAxhkA2CXIgIiiTijIfIyutJQ
 hMXbsuJDlzf4dLQ7EVji2Uioj0DT2WFYFatYTpHxAbzBPuibsMhONt3YfF+KEuTdqRs7
 8MMUVr6Zwlz42z5B/q/HWyRXekXfbW/KPKrr+4iLy32n2z4NVMtv5asWfMXRrBNfKzTx
 uYvbGQD4Rsdf7pSQdNXpR0DWQQ7uNgyLdW5JCfeGwuk7Kuxlb1iYzZlkpgDdNp6elV7i
 IDigCMGRS1o4gn9GaBYQdYLkAkAq16T84+f47W2X1RhXlpN4fPCnHLkkkDtieLGiBvpV
 cKlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MK/N1cs3pdVNjWhCaPYV2nk00LMCO2TH7MeXQEm9duU=;
 b=rqeAZBjq4C8Y42Hu55n7iW7FHEBNzoKHJYLIoKDY16vgVU+tcGVf1E3+RC5IuWig7s
 Kw5xQHNZ91WSKC2jt8IfqWcLiyKF72Orb+4qOZbYXegGO9QjqtUf7Z4BiJUPWVhfeBQ5
 Xtm1dWjbmzPc+7AgJr/c6bDtlk+jnlcIR1QS5v5fxqmmdF65bgHj5g1x6eNmChKWeq1s
 mWXB2I5wz5dBxPzXf/EM1N2XJPsOkh/puQaZSSZdjZX7I7yuNAeEeTEREcWm+Jg606I2
 x9dZ7H2Nmm8qoibipXQAfgRS1vm2m6h+f295wp2qab+hCfPkjCwscRcvuHKwQ6hlT5aE
 TLzg==
X-Gm-Message-State: APjAAAX/bYyRDsk9URfCLvxA7KkLVZ6EAIkcPDnrAVBMN+mKLlg4VyY+
 qAIOOq1mbWi5IUwPdf9yccbqW+kj
X-Google-Smtp-Source: APXvYqyUz++sgTIOKGKI3gAlM6O7DdeIyQLVj5+xMRalBzdvkmqakR32MzGUi7HYRzHpxQR8Gfe0MA==
X-Received: by 2002:a5d:51c6:: with SMTP id n6mr1641558wrv.206.1567163893010; 
 Fri, 30 Aug 2019 04:18:13 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id n18sm4446870wru.2.2019.08.30.04.18.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 04:18:11 -0700 (PDT)
Date: Fri, 30 Aug 2019 13:18:10 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Krishna Reddy <vdumpa@nvidia.com>
Subject: Re: [PATCH 5/7] arm64: tegra: Add Memory controller DT node on T194
Message-ID: <20190830111810.GE23902@ulmo>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
 <1567118827-26358-6-git-send-email-vdumpa@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <1567118827-26358-6-git-send-email-vdumpa@nvidia.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_041814_621872_40E41769 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: snikam@nvidia.com, thomasz@nvidia.com, jtukkinen@nvidia.com,
 mperttunen@nvidia.com, praithatha@nvidia.com, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, talho@nvidia.com, olof@lixom.net,
 yhsu@nvidia.com, linux-tegra@vger.kernel.org, treding@nvidia.com,
 avanbrunt@nvidia.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7255653135163199630=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7255653135163199630==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/2994txjAzEdQwm5"
Content-Disposition: inline


--/2994txjAzEdQwm5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 29, 2019 at 03:47:05PM -0700, Krishna Reddy wrote:
> Add Memory controller DT node on T194 and enable it.
> This patch is a prerequisite for SMMU enable on T194.
>=20
> Signed-off-by: Krishna Reddy <vdumpa@nvidia.com>
> ---
>  arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi | 4 ++++
>  arch/arm64/boot/dts/nvidia/tegra194.dtsi       | 7 +++++++
>  2 files changed, 11 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi b/arch/arm64/=
boot/dts/nvidia/tegra194-p2888.dtsi
> index 62e07e11..4b3441b 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
> @@ -47,6 +47,10 @@
>  			};
>  		};
> =20
> +		memory-controller@2c00000 {
> +			status =3D "okay";
> +		};
> +
>  		serial@3110000 {
>  			status =3D "okay";
>  		};
> diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/d=
ts/nvidia/tegra194.dtsi
> index adebbbf..d906958 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> @@ -6,6 +6,7 @@
>  #include <dt-bindings/reset/tegra194-reset.h>
>  #include <dt-bindings/power/tegra194-powergate.h>
>  #include <dt-bindings/thermal/tegra194-bpmp-thermal.h>
> +#include <dt-bindings/memory/tegra186-mc.h>
> =20
>  / {
>  	compatible =3D "nvidia,tegra194";
> @@ -130,6 +131,12 @@
>  			};
>  		};
> =20
> +		memory-controller@2c00000 {
> +			compatible =3D "nvidia,tegra186-mc";

I think we need to make this "nvidia,tegra194-mc" and then enhance the
Tegra186 driver to match on that compatible string.

Nothing to worry about just yet and I can make that change when
applying.

Thierry

> +			reg =3D <0x02c00000 0xb0000>;
> +			status =3D "disabled";
> +		};
> +
>  		uarta: serial@3100000 {
>  			compatible =3D "nvidia,tegra194-uart", "nvidia,tegra20-uart";
>  			reg =3D <0x03100000 0x40>;
> --=20
> 2.1.4
>=20

--/2994txjAzEdQwm5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1pBfIACgkQ3SOs138+
s6F3pw/3cgWOBb8LS08yjsbxQJkSYr3KYazBB/0FtFlaIBLaASqL+2XxQRNgHKsx
pdXxkOABv6ltpV7L06zNs3HJZG6jkDpBy0Glpo0J6B8QEFqlNnZNVkLp2AzXZO/K
pkXadSzvUq9pBh8nJJ8V1FvVnj4pj+dgzVE7JO7+1onjG195Hd2dyTmYysvtgvGr
m92kq+YsBZDPoqVq3XhWcrKGpnQq+mXqseg4InEfcCb35Kn0mhgguiYDh9QcfbfF
+TOnm/A5ddPV+qXy4WMGHBZyqADRVrtMJh4o7/NyAfYEwL6f+DSGKLcP6nBJRZ1S
DPsSDwQE1v2RHjYVhflHnfx4VEGL81+Twvn5RcNghOZqi6vzWbcYMSE+edwQHNwC
rcFUtMMNuW1M1NdcgvgzHLdCyCa5EREVr28SPuAFIDtdYyYgc2PVaYNdx/zu3oN9
y9uPmwcsvydOZzQHylsAgBt21EvmvijdOVayTIMe+M8ZZzKDIWmsb2NlCjAUG/Uw
z7pUuHLwtZywFYAWP9r/8xp+M7PQNyMPyTqR3iF7p1+IzAQ0gLb6k4HKzejkIVV9
jZ3Jpe7la3Q6i9o0vBX/NQw4WoxS4V7oBLuSXlOrEXNdx2naO+JjUYifqj6DZNP5
T/yXjA3RJM/77CvrxXafkTG1EO68lceZeZPQgUpV9NOocRY9IQ==
=7ECF
-----END PGP SIGNATURE-----

--/2994txjAzEdQwm5--


--===============7255653135163199630==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7255653135163199630==--

