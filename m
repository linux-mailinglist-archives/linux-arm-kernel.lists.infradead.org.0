Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 676F715BEDB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 14:00:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXdpUpQN7bEFnSZwg8eX1lB382sTSpH/75LKvoWrBGU=; b=hbXeny/+sGQt4q
	6XFQhKJupJn7maHF/OnV+2zqNorDTldcv/YhBvWT4NYh9MwzKBZi4gzwSCT0nVDqbE6xpO32cfFpO
	rIkqoXukVUa3DHgmTsEpsnNdZf+18czH+VIutqw0v2udnzWtl+UpLw4bQJXDrvaVfQohpbCkyijED
	k08vVdAoEXBGggQcPozmVv9Q9VHinKydnTp0KRKUWpOxB0C/JXgXmfxLSAkWPO5Mkd5ISSNvLvjCS
	OJcIVrzxxtHK4oxVsMIKsvSBuTxQaM548K6rBRWsO+Ljzr0lbBK8Aij9WRN4gXxcwy+O8sPQGsC51
	JlD1Ij4ns0gIQVS3+msA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2E66-0000JC-Be; Thu, 13 Feb 2020 13:00:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2E5s-0000Is-4S
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 12:59:49 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 23ACB24650;
 Thu, 13 Feb 2020 12:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581598787;
 bh=QOFqPYutkec0orz4z0WywbUYBiObUdKnEtf5dNYYWPQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0/N6cgoXHN0dgYEVZJTDaD0DP6bfxG5zbm26qKHAmWsdRY3TUiSHZnQVkAsDp9bxO
 5/uZARZBiOVMuM2gSazOhj+4rAkO/lV//dgKYuqayDEum4z5Xf1yqHEULKnYKDpfRC
 rNZV7POzWB8dM8p0W7hoWoZEwWw8fIQWj+DI0Tbc=
Date: Thu, 13 Feb 2020 20:59:41 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v3 1/2] ARM: dts: imx6: phycore-som: fix arm and soc
 minimum voltage
Message-ID: <20200213125940.GP11096@dragon>
References: <20200116140108.6069-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116140108.6069-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_045948_193590_6A8D3A04 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: s.riedmueller@phytec.de, festevam@gmail.com, chf.fritz@googlemail.com,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de, c.hemp@phytec.de,
 s.christ@phytec.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 03:01:07PM +0100, Marco Felsch wrote:
> The current set minimum voltage of 730000=B5V seems to be wrong. I don't
> know the document which specifies that but the imx6qdl datasheets says
> that the minimum voltage should be 0.925V for VDD_ARM (LDO bypassed,
> lowest opp) and 1.15V for VDD_SOC (LDO bypassed, lowest opp).
> =

> Fixes: ddec5d1c0047 ("ARM: dts: imx6: Add initial support for phyCORE-i.M=
X 6 SOM")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

I failed to apply it.  Please rebase and resend.

Shawn

> ---
> v3:
> - fix commit message
> v2:
> - use ldo bypassed values
> ---
>  arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm=
/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> index a1e2c5094d58..51a47a242783 100644
> --- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> @@ -111,14 +111,14 @@
>  		regulators {
>  			vdd_arm: buck1 {
>  				regulator-name =3D "vdd_arm";
> -				regulator-min-microvolt =3D <730000>;
> +				regulator-min-microvolt =3D <925000>;
>  				regulator-max-microvolt =3D <1380000>;
>  				regulator-always-on;
>  			};
>  =

>  			vdd_soc: buck2 {
>  				regulator-name =3D "vdd_soc";
> -				regulator-min-microvolt =3D <730000>;
> +				regulator-min-microvolt =3D <1150000>;
>  				regulator-max-microvolt =3D <1380000>;
>  				regulator-always-on;
>  			};
> -- =

> 2.20.1
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
