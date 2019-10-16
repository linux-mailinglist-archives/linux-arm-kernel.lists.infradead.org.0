Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14231D96F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 18:20:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a1FXb8QQ+EXLlAX5NSLjl50hb1xim3Vx8lbkWniJdVg=; b=L9thNmTglD1vBoWKMSHJ6MjOu
	uMSeztWloRMyiQJQbDyvUdJXoBgYHiIcQSxPqOFVw1JL9gSoqqDKrE1YFf5uzxkMzr4iBN6CbDrNu
	ZR5Zew42ya8QhzrHHPV/5bc4R+GcphJN6WQGKUihhh0VnEydQFhLhWclqYJ7s3qJpAB5v5O4WJYtF
	2PXKpUyy8buAw5XByLFPdu3FuK2YEJKNmBdBOqU2gAyY2xuadzng0Sr3/Y9DIq2JamqPSP+wzVX4j
	bl9SFbsDGBgLh3925ZjFTqvVAIPLyGf1k+bE5w+V+yuL1/FLjx34txTBiCoPOCzP+AAuZ2huOI2jy
	za6J8T3Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKm22-0005Bb-Db; Wed, 16 Oct 2019 16:20:14 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKm1k-0005B8-Q5
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 16:19:58 +0000
Received: by mail-wr1-x443.google.com with SMTP id b9so28798876wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 09:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=h9IW++BRSCNxbhtWy0+HMRJFW/nVXeIQcj8HcjgdNbY=;
 b=dhdBgUIWoG0Q6FjxOVwxi5mUVfLXYZdImiZzS4VnexZpFnTvELNjCSoPRub6BjyjPX
 QL5SGLNmHCdeFbG/uQdNZIuTYM0ccOnlkC58gmmeYy5vrZJj97GW3fq3oMIOEtCOuNkd
 1BXI99+UIdcWygw6Bptg/7fmuM3bul01qMVVcmzY59Csr0XgprCo6RcvIMRw1jScTlSP
 3YpvHsFVmiI9COwGRh7r54hv2ocRq+tUY4wbKNbfCq4JsDVehfhfZeDxsGcOKNeo/GBI
 XS9WbRQTvS2HcLbW7QZW/t/sVibICSFKqIfcK7fFuIRt4y+4REnbiTTTJviWU+B1g6Vh
 cB/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=h9IW++BRSCNxbhtWy0+HMRJFW/nVXeIQcj8HcjgdNbY=;
 b=Qu67vBIXNnDcDNTnJd644jwe7rLgs5jkFSSS9ydbtb/ys4u40uGDjTlPU1i4R0zAdo
 ClzUCi4KzK1Q9KgqRtf7n0HfXKRimvlB6q9TC/Tue49n5zTUflncoa/pnFzF2T41w9DT
 X5tzvscPOQt02NlWatKQ5LlINdvtyy4EDHyaIGdq09Ca2v9/1ziDWAQruF4FCyTd2GFq
 3LMTZznDaLaQRGJWzCe6MlKvc2iUHojeILRLc7Fe+rmaMf5H30m/rEhqUo1CQkYeP5oK
 Vsqxm/2zt+tWxlmf5LvdvfThTo1YPAryC6mWf7vqpmn0pYwwTpEoSN9d8abT+NL/Xb9c
 zbQg==
X-Gm-Message-State: APjAAAV992gCHs1bFgIuVBVcsBEif/Dlwrh8vF+GgDJwQGWMs6Pw9oyu
 1v8vu6N8NwS2BDr15hS6469BpMkP
X-Google-Smtp-Source: APXvYqyw+hlPiIThyc4HMTeX2noy1aYYoJVRKLh1zberL1OrlN+vywZ7st0nieD+jJH2oLZYGdL1Dg==
X-Received: by 2002:a5d:43c1:: with SMTP id v1mr3545837wrr.91.1571242794848;
 Wed, 16 Oct 2019 09:19:54 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id v11sm2941372wml.30.2019.10.16.09.19.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 09:19:53 -0700 (PDT)
Date: Wed, 16 Oct 2019 18:19:52 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH 2/2] arm64: tegra: Assume no CLKREQ presence by default
Message-ID: <20191016161952.GB2526111@ulmo>
References: <20191005164212.3646-1-vidyas@nvidia.com>
 <20191005164212.3646-2-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20191005164212.3646-2-vidyas@nvidia.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_091956_843259_8BA5811C 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mmaddireddy@nvidia.com, kthota@nvidia.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 linux-tegra@vger.kernel.org, robh+dt@kernel.org, bhelgaas@google.com,
 andrew.murray@arm.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============8701269179536248288=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8701269179536248288==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KFztAG8eRSV9hGtP"
Content-Disposition: inline


--KFztAG8eRSV9hGtP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 05, 2019 at 10:12:12PM +0530, Vidya Sagar wrote:
> Although Tegra194 has support for CLKREQ sideband signal and P2972
> has routing of the same till the slot, it is the case most of the time
> that the connected device doesn't have CLKREQ support. Hence, it makes
> sense to assume that there is no CLKREQ support by default and it can
> be enabled on need basis when a card with CLKREQ support is connected.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
>  arch/arm64/boot/dts/nvidia/tegra194.dtsi | 6 ------
>  1 file changed, 6 deletions(-)

Applied to for-5.5/arm64/dt, thanks.

Thierry

> diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/d=
ts/nvidia/tegra194.dtsi
> index a312c051448b..11220d97adb8 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> @@ -1186,7 +1186,6 @@
> =20
>  		nvidia,bpmp =3D <&bpmp 1>;
> =20
> -		supports-clkreq;
>  		nvidia,aspm-cmrt-us =3D <60>;
>  		nvidia,aspm-pwr-on-t-us =3D <20>;
>  		nvidia,aspm-l0s-entrance-latency-us =3D <3>;
> @@ -1232,7 +1231,6 @@
> =20
>  		nvidia,bpmp =3D <&bpmp 2>;
> =20
> -		supports-clkreq;
>  		nvidia,aspm-cmrt-us =3D <60>;
>  		nvidia,aspm-pwr-on-t-us =3D <20>;
>  		nvidia,aspm-l0s-entrance-latency-us =3D <3>;
> @@ -1278,7 +1276,6 @@
> =20
>  		nvidia,bpmp =3D <&bpmp 3>;
> =20
> -		supports-clkreq;
>  		nvidia,aspm-cmrt-us =3D <60>;
>  		nvidia,aspm-pwr-on-t-us =3D <20>;
>  		nvidia,aspm-l0s-entrance-latency-us =3D <3>;
> @@ -1324,7 +1321,6 @@
> =20
>  		nvidia,bpmp =3D <&bpmp 4>;
> =20
> -		supports-clkreq;
>  		nvidia,aspm-cmrt-us =3D <60>;
>  		nvidia,aspm-pwr-on-t-us =3D <20>;
>  		nvidia,aspm-l0s-entrance-latency-us =3D <3>;
> @@ -1370,7 +1366,6 @@
> =20
>  		nvidia,bpmp =3D <&bpmp 0>;
> =20
> -		supports-clkreq;
>  		nvidia,aspm-cmrt-us =3D <60>;
>  		nvidia,aspm-pwr-on-t-us =3D <20>;
>  		nvidia,aspm-l0s-entrance-latency-us =3D <3>;
> @@ -1420,7 +1415,6 @@
>  		interrupt-map-mask =3D <0 0 0 0>;
>  		interrupt-map =3D <0 0 0 0 &gic GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
> =20
> -		supports-clkreq;
>  		nvidia,aspm-cmrt-us =3D <60>;
>  		nvidia,aspm-pwr-on-t-us =3D <20>;
>  		nvidia,aspm-l0s-entrance-latency-us =3D <3>;
> --=20
> 2.17.1
>=20

--KFztAG8eRSV9hGtP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2nQygACgkQ3SOs138+
s6GU5Q/+LV/SE++KyetHQKYMnNis8n7U2swfFXdv1B7ZJkbmd+LW7O2E1lRq8z+1
JJ+KsZwWs3tOXEezWuNL0Q8s5x6y+OrdPJ0GComdlBZ5bXOcQTf4+XbE6tYRwsmp
EV8/uSFQr0AHVCJBffDk+IAbPH0tjCWKo7NQkIXTX6Bf4LR5gfYdTkYuiYGFkmPz
yissUISHDcM0XGn135Hft6t/fpGiNOGwfBSWr/XsPDsT3WMs7/5UnK0aimMNTQdU
Uvz0CCC1dJmNudilYczX3fZ1gJ3kDm/o/ioq3/SZER+xgOkEZG58YBTJP+WJln1R
cKQXbCKCex/AQWq1L9FQAt+Rky1+iyuHE6nGLZO8c3k+dYKIQ7rAe4Vz88VyCu34
n6VRr/tYNK6p3aSgWIrOYPI6XmQoT7+KzniccBXkUUTEOV+XnPfP65DEbmJ1cCDl
d/X398HrO9O+YOp1A9v7nLf6ksM/yN/nQd2b7zW/CjrMMzRxtfC+7ThI0syMHCsO
vHXbgMWi1niBEoVp7Bse6hs2X2VGrbmmdmRD1phA6h+I5uVtW8LL14HuX0WKF5ar
VWio3vWpdP2Vy8Z44I+wE8y6ILxBVV0a9aW4KVBM4CvAg3ZvFadDSMkP1oHLoIqj
uSYxjyoKeuUWOpxaTkzEQuE/MB+DTZegGjlj1omMSWw9Y4u9n84=
=dgRG
-----END PGP SIGNATURE-----

--KFztAG8eRSV9hGtP--


--===============8701269179536248288==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8701269179536248288==--

