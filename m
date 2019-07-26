Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA05D76E79
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 18:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q7NG7xHDsRw3S0TpA5CwCdUBxnbzrm1P5DCl+qYlZxg=; b=CIvFV02M9SZa/X
	LcTC+hHFi9VwMYjcg8XVbxjPLxa1NImaq7OwTTMkq2UIl92T2C7Mu9QpQQkJpTpTuQ1wDsWFNLMIi
	9pEhPpQJUAvIimC5UO3MAAqbI6Wqys+MlLzs8eE0IlDv3Uf5j+zqr9yAko6mXZp3YHUL24MxGjQ/X
	XQdeXRmgefm6FTNUzzLW8QJjKzHk3CGjZPHu49NfUx4YZWa5Rg4Jf6Atrs5379SrMDZzZ10OQ1mRX
	c+ZPf/uPgpLA39f3EO0agUSYM20EnsnWJLskYwqNSPZECMZ92CQX5a2ZN5H59cn861Anwikq9h2Td
	wD0PKcBwMKCusEGpWCGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr2iX-0000SA-PF; Fri, 26 Jul 2019 16:05:13 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr2iH-0000RE-Aa
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 16:04:58 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 45wDQL2M4szB2;
 Fri, 26 Jul 2019 18:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1564157003; bh=q0otr/lKVYk8Vw94f1khvqK934TypKC8T264nuUJhyI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W6ZsDhbGgytuC3eE4wxZAGUGtoVaBDMNE39oasiDVLypGr3Vozr8P+8YoU3aX5lMj
 yh1+ENgQ6ii4Z0bTIvsQaagyr6VEobkQRqWZAR9YdN5bsKDwY7+gx4tdriWWWfTyFS
 7vvzbOx9tFjTAExRaF06FSQGNps9RykfX0BVopGs9PW3jRAG1oVUNSZw0NGvGTvWLS
 ONX92eAtJ3fCnqMA+qQpYyDTS1XXWV4vBUSLyVBI7a4K4JGgbDFZkKxoiVGNUTPErc
 Gv2IFp19gNZ/bFRVU7uWUoCXO4K1jLCI2AcpYcZ7CZXonsCNVyiMy9rqgvC694+X0a
 g95lBQ+tFP1FA==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at mail
Date: Fri, 26 Jul 2019 18:04:42 +0200
From: mirq-test@rere.qmqm.pl
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 1/3] arm64: tegra: Add unit-address for CBB on Tegra194
Message-ID: <20190726160442.GA22187@qmqm.qmqm.pl>
References: <20190726101618.26896-1-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726101618.26896-1-thierry.reding@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_090457_534206_EAF6EAE5 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 12:16:16PM +0200, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> =

> The control back-bone (CBB) starts at physical address 0, so give it a
> unit-address to comply with standard naming practices checked for by the
> device tree compiler.
> =

> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  .../arm64/boot/dts/nvidia/tegra194-p2888.dtsi | 20 +++++++++----------
>  .../boot/dts/nvidia/tegra194-p2972-0000.dts   |  2 +-
>  arch/arm64/boot/dts/nvidia/tegra194.dtsi      |  2 +-
>  3 files changed, 12 insertions(+), 12 deletions(-)
> =

> diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi b/arch/arm64/=
boot/dts/nvidia/tegra194-p2888.dtsi
> index 62e07e1197cc..02f6a8f0d741 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
> @@ -8,17 +8,17 @@
>  	compatible =3D "nvidia,p2888", "nvidia,tegra194";
>  =

>  	aliases {
> -		sdhci0 =3D "/cbb/sdhci@3460000";
> -		sdhci1 =3D "/cbb/sdhci@3400000";
> +		sdhci0 =3D "/cbb@0/sdhci@3460000";
> +		sdhci1 =3D "/cbb@0/sdhci@3400000";
>  		serial0 =3D &tcu;
>  		i2c0 =3D "/bpmp/i2c";
> -		i2c1 =3D "/cbb/i2c@3160000";
> -		i2c2 =3D "/cbb/i2c@c240000";
> -		i2c3 =3D "/cbb/i2c@3180000";
> -		i2c4 =3D "/cbb/i2c@3190000";
> -		i2c5 =3D "/cbb/i2c@31c0000";
> -		i2c6 =3D "/cbb/i2c@c250000";
> -		i2c7 =3D "/cbb/i2c@31e0000";
> +		i2c1 =3D "/cbb@0/i2c@3160000";
> +		i2c2 =3D "/cbb@0/i2c@c240000";
> +		i2c3 =3D "/cbb@0/i2c@3180000";
> +		i2c4 =3D "/cbb@0/i2c@3190000";
> +		i2c5 =3D "/cbb@0/i2c@31c0000";
> +		i2c6 =3D "/cbb@0/i2c@c250000";
> +		i2c7 =3D "/cbb@0/i2c@31e0000";
>  	};
[...]

There are aliases in tegra194.dtsi like gen1_i2c, maybe they could
be used here?

Best Regards,
Micha=B3=A0Miros=B3aw

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
