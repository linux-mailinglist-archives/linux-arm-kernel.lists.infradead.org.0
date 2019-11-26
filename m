Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1FF10A20E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 17:27:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZOFZjOyarN9o+PfaYqvqYvjQ/io6QyjvXGCGTg5DT4s=; b=VQ3mK/MsJHhZZblVwcdBaPSzy
	E7znOTuojQrXXMiSNKtKZqjOFLjoC8VbHIdz0kCsbrhsKqsP5S5sa9B1umbZLlvqwlFwEFXUnl5PU
	i+akRWNRk/mlVvU9lwcajwQ8a8EusMEeyMJqLXF0F8rq+UtZYKe6YrMOQoi8hQ2Gf1oJ5PtRVMe2F
	Jq5EN8QkLry8eP2XMdzS0xVgAlI3/G8NvwcD1v6DtDTn7GXiTHv6v2V0f40cAs2Ow3DZTkg/KRe9N
	UuMBkyyGDGhbxtOgo0kx59qGdcT7aFqi7XRmMlpRm5ELcQtg0nK1Z42fgTGFSgP7RxOupyFc8er+U
	Kc6S2ALwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZdgb-0003F8-5I; Tue, 26 Nov 2019 16:27:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZdgS-0003Ee-Ni
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 16:27:26 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7FE5320862;
 Tue, 26 Nov 2019 16:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574785644;
 bh=lsycWwVLMBQX+2olUenNQAufGZbjMZxM0wg2GgODZi0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mVc129KGwONqZlfcjKgKn/s3RnfMsjMPnSnShfcFgr9/TQs3j4NVIwdjcb50L8EpJ
 CHPxlI7uWH4PWJZBsQkbX07vLBctI6Kj2ZQuYlqxgfFCtwABRHpmaO5UKug6/t0lvj
 amEY5DsmnldMfat9dqYEGAt8vcwNzw/9yKIk1ayk=
Date: Tue, 26 Nov 2019 17:27:21 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Stefan Mavrodiev <stefan@olimex.com>
Subject: Re: [PATCH 1/1] arm64: dts: allwinner: a64: olinuxino: Add VCC-PG
 supply
Message-ID: <20191126162721.qi7scp3vadxn7k2i@gilmour.lan>
References: <20191126110508.15264-1-stefan@olimex.com>
MIME-Version: 1.0
In-Reply-To: <20191126110508.15264-1-stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_082724_793147_E9418159 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-sunxi@googlegroups.com,
 open list <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6863036337950657587=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6863036337950657587==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="duhffbtvsspnw6ng"
Content-Disposition: inline


--duhffbtvsspnw6ng
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Stefan,

On Tue, Nov 26, 2019 at 01:05:08PM +0200, Stefan Mavrodiev wrote:
> On A64-OLinuXino boards, PG9 is used for USB1 enable/disable. The
> port is supplied by DLDO4, which is disabled by default. The patch
> adds the regulator as vcc-pg, which is later used by the pinctrl.
>
> Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
> index 01a9a52edae4..c9d8c9c4ef20 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
> @@ -163,6 +163,10 @@
>  	status = "okay";
>  };
>
> +&pio {
> +	vcc-pg-supply=<&reg_dldo4>;

The equal sign should have spaces around it.

Also, can you please list all the bank supplies while you're at it?

Thanks!
Maxime
>

--duhffbtvsspnw6ng
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXd1SaAAKCRDj7w1vZxhR
xXArAP9pNq5XxgsrXMmqOM0FNRQA+MWaUyrJ8bzIKdPtsY1+xwD8DA+PgzubuRzo
DT9smxFVEkQUm5d3dPI79hLwkAlgfAM=
=l4bs
-----END PGP SIGNATURE-----

--duhffbtvsspnw6ng--


--===============6863036337950657587==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6863036337950657587==--

