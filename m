Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2261103C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 18:42:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kSsvNTpDIZxu6/LxzOsgUhEMhkEFN/auI9G2JCLke4Q=; b=akgALXzx7qCSe6VGYFG2y3CrL
	Rzxx7fS9M9Zuffh5pV6I9DhnFkRirae8Wif23O1hxfA2z8tF9kIlslZVMr4s/t+wTH8Hc05gL1lV2
	MtTA60F1SPGNCQiHS34mXiDZYNfl6Nf1r/EH1LedtML+y2FJhhv7xBwW2AJyxQPaIRvf9DHlxs/pZ
	m0rHffRSpRxNViVk6mtu1x0lE1LFW4KnIlsGQVCBsdLNAduYxMzHoB/dthXysWVs1MrcS66Y51K+4
	qtIGLydmgpHYP/gFyV8fxqjwA2EJ2xL9L0xuZskpU6zfdZ8ne/rqhXZjajB8eMd65z4FSZFfSzWjw
	5WRHL9Cfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icCC9-0002Qm-Ak; Tue, 03 Dec 2019 17:42:41 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icCC1-0002QL-Gu
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 17:42:34 +0000
Received: by mail-wr1-x443.google.com with SMTP id j42so4720051wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 09:42:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qE5r3nti027mzy0pKgrnKXkE1RSc8kUqTOaORXIdEtE=;
 b=a40wQB7Mk7pBuIEzPBChXZl1yBZvbIVXlaeGoAaiJcl8DZczFfOnjnbH4qGRZ0lPoT
 sRb08dAvwJLNEP5eDKxT0YBpPq2HtoE0w0BQ5jV2bXhdv76SufUrjfF1rhgxyZLThrsp
 S9blKgXZiiYIkiuBLkMhYny1XboAMLEmBjUeD8rHJy+FiM+s8XPJ0IopkA6ylmfT1Szl
 nwXDM1qbCCzKRRN1vUDI9Ac8ntundjbrtPnLX/IosvRrhRvDfkqzMorv7i/w36fh/01e
 CeBmgwklnmeK9BfhSLVbKd+L0W/hQdVrkFJUhf0AWeQCw5G5psDNjeZ/3d/P7bsqKm4N
 6Ogg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qE5r3nti027mzy0pKgrnKXkE1RSc8kUqTOaORXIdEtE=;
 b=kfWHKYnefXcKbUhUM9/0elVXo1MIFfw6ywfnZRPzmTNINwTRijs4dwzF0I20BvkEPm
 dZ07owozpuayZIK2IL8PYqDeJFTQfOeoWovIp3HCUDM2z3r10Yg4ECuySUyTWKh2t7gS
 XzmkhdQiT4vb0h/15d+CYpoTFidpstD+tA9LfICm8jM+YU8eiuDG2a9Nok9HwPXUEU98
 kOA5SfAkiM5QYpWZd25gCWs3zqfHeKOGlfxhQfG4RP8Pv+OQNrIym5lWucsRbQz4auv+
 kbB6o+R3lo7FSxfQLbSJYdUw8ou+tqEHANkQ6CR8HgIYumSTMShX5sXSWQRbHoRlW9QF
 Zhcw==
X-Gm-Message-State: APjAAAXLMUoitgnPn7D1Xgz5V1oiwrRzvtTOp1ZIbVl4t1ridJve0K1+
 28PZuKNGhn73kHcQsVORpRmirhswixo=
X-Google-Smtp-Source: APXvYqyirRyu04jqDg3x30rmhKDhkCSn+pJlYnYt6qaMKeOuedWuhIFZA6+FPRXQ60evaeNBBoHQdg==
X-Received: by 2002:adf:d4ca:: with SMTP id w10mr6193149wrk.53.1575394951675; 
 Tue, 03 Dec 2019 09:42:31 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id x7sm4411960wrq.41.2019.12.03.09.42.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 09:42:30 -0800 (PST)
Date: Tue, 3 Dec 2019 18:42:29 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Sumit Gupta <sumitg@nvidia.com>
Subject: Re: [TEGRA194_CPUFREQ Patch 1/3] firmware: tegra: adding function to
 get BPMP data
Message-ID: <20191203174229.GA1721849@ulmo>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_094233_565965_10180298 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pm@vger.kernel.org, viresh.kumar@linaro.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com, talho@nvidia.com,
 bbasu@nvidia.com, catalin.marinas@arm.com, linux-tegra@vger.kernel.org,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7359439855066458577=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7359439855066458577==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jRHKVT23PllUwdXP"
Content-Disposition: inline


--jRHKVT23PllUwdXP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 03, 2019 at 11:02:26PM +0530, Sumit Gupta wrote:
> Adding new function of_tegra_bpmp_get() to get BPMP data.
> This function can be used by other drivers like cpufreq to
> get BPMP data without adding any property in respective
> drivers DT node.

What's wrong with adding the property in the DT node? We already do that
for Tegra186's CPU frequency driver, so it makes sense to continue that
for Tegra194.

Thierry

> Signed-off-by: Sumit Gupta <sumitg@nvidia.com>
> ---
>  drivers/firmware/tegra/bpmp.c | 38 ++++++++++++++++++++++++++++++++++++++
>  include/soc/tegra/bpmp.h      |  5 +++++
>  2 files changed, 43 insertions(+)
>=20
> diff --git a/drivers/firmware/tegra/bpmp.c b/drivers/firmware/tegra/bpmp.c
> index 6741fcd..9c3d7f1 100644
> --- a/drivers/firmware/tegra/bpmp.c
> +++ b/drivers/firmware/tegra/bpmp.c
> @@ -38,6 +38,44 @@ channel_to_ops(struct tegra_bpmp_channel *channel)
>  	return bpmp->soc->ops;
>  }
> =20
> +struct tegra_bpmp *of_tegra_bpmp_get(void)
> +{
> +	struct platform_device *pdev;
> +	struct device_node *bpmp_dev;
> +	struct tegra_bpmp *bpmp;
> +
> +	/* Check for bpmp device status in DT */
> +	bpmp_dev =3D of_find_compatible_node(NULL, NULL, "nvidia,tegra186-bpmp"=
);
> +	if (!bpmp_dev) {
> +		bpmp =3D ERR_PTR(-ENODEV);
> +		goto err_out;
> +	}
> +	if (!of_device_is_available(bpmp_dev)) {
> +		bpmp =3D ERR_PTR(-ENODEV);
> +		goto err_put;
> +	}
> +
> +	pdev =3D of_find_device_by_node(bpmp_dev);
> +	if (!pdev) {
> +		bpmp =3D ERR_PTR(-ENODEV);
> +		goto err_put;
> +	}
> +
> +	bpmp =3D platform_get_drvdata(pdev);
> +	if (!bpmp) {
> +		bpmp =3D ERR_PTR(-EPROBE_DEFER);
> +		put_device(&pdev->dev);
> +		goto err_put;
> +	}
> +
> +	return bpmp;
> +err_put:
> +	of_node_put(bpmp_dev);
> +err_out:
> +	return bpmp;
> +}
> +EXPORT_SYMBOL_GPL(of_tegra_bpmp_get);
> +
>  struct tegra_bpmp *tegra_bpmp_get(struct device *dev)
>  {
>  	struct platform_device *pdev;
> diff --git a/include/soc/tegra/bpmp.h b/include/soc/tegra/bpmp.h
> index f2604e9..21402d9 100644
> --- a/include/soc/tegra/bpmp.h
> +++ b/include/soc/tegra/bpmp.h
> @@ -107,6 +107,7 @@ struct tegra_bpmp_message {
>  };
> =20
>  #if IS_ENABLED(CONFIG_TEGRA_BPMP)
> +struct tegra_bpmp *of_tegra_bpmp_get(void);
>  struct tegra_bpmp *tegra_bpmp_get(struct device *dev);
>  void tegra_bpmp_put(struct tegra_bpmp *bpmp);
>  int tegra_bpmp_transfer_atomic(struct tegra_bpmp *bpmp,
> @@ -122,6 +123,10 @@ void tegra_bpmp_free_mrq(struct tegra_bpmp *bpmp, un=
signed int mrq,
>  			 void *data);
>  bool tegra_bpmp_mrq_is_supported(struct tegra_bpmp *bpmp, unsigned int m=
rq);
>  #else
> +static inline struct tegra_bpmp *of_tegra_bpmp_get(void)
> +{
> +	return ERR_PTR(-ENOTSUPP);
> +}
>  static inline struct tegra_bpmp *tegra_bpmp_get(struct device *dev)
>  {
>  	return ERR_PTR(-ENOTSUPP);
> --=20
> 2.7.4
>=20

--jRHKVT23PllUwdXP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl3mnoEACgkQ3SOs138+
s6GpwBAAvaZJp87NoF1TROjbDypFZ2E7Oov0yzlV1zJak8mF3KIV0tKaCHoXheWI
rcQZm8VFfh/Gqxw63Yk1Gn9nA1KJoqaIUY1On3cMHvY2wtVF7Wh/tFI+5JNXsCIi
H9et1e5q/J9LaFHxcdNsEeYaocswM31Zy+rNIhT1bpLzvTZObIzbQp5v5eao8U6i
VUdAUsr5XSj0vcN51HVz6CHFMpQsocQV1AsACAMUny+ajHL/FTmJYa5jvXvhqgpX
yH593XBFitXrqAhWj3kR6okHC2U9UAd2S9ZXsu15xawQNymTi2mdqnaoeohRajFj
z9GF5CxNbNCNOBMxvzAkF08s8dQCA/vsSkxQ518Z3BK+dPxu7Leho9yVeNs9muy/
7fOU5sc+gIBuBB0V/fwP2xiPbvoe/wozI2LtbmDa6akd5rwxYLi3ogJOKtS1QRhN
JHaTZ08hjuRiL64s8EAfz1VsQYF0MwkfomCfXKMoTCu+8mVXkcMuZcaotXul/Mck
LMYlsKbCwgLpM4NrNW++q1nTewTXmQpzrLN762Ae23ud7ARns1mwaaGa6UvfxIhE
cxZVU66dHXKEIdGsA6uSByRKUS8/1le4Iy6zRAu7O88XAbxSydYOm45/ovZTEzAz
jAymOGgaP0NBMXICJoBLt3/Z0WwBmSAZ/Vir1cbs2jsup+XvzaE=
=c7iN
-----END PGP SIGNATURE-----

--jRHKVT23PllUwdXP--


--===============7359439855066458577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7359439855066458577==--

