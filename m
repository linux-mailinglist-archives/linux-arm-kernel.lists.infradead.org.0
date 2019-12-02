Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E379D10EFBC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 20:04:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7ycIwdNAYnwlILdl+48BRjFW0Z5r7ckum0U+Vvu21xg=; b=unmhi5ihR9JjG73SkvjMVUQgd
	rwmBLb9OUmtuYWiFFtOh9+nmVTus+JaLHmd92UvdPFQkfWdq8pDQcaERB+8CoZvoAAcTFL+tMUXyM
	4HzCz1rhQZAPQsy10XYWjvqVl2dzyCtU/M000vt6g7mC4HbHi0Ku0elE6vxLj3e7KFkrTpdJVLLo6
	GRz6zMbarh7HgUt1AZ+CMZDR6vBO21iDdKjtNqpNBAZMN/HBUM2Lo5gF/mbixEFg7Mw2SwkMrgaWR
	N9TfwjfRDcTnBbiQU9vUoG3geHdYVxtHp2vaaEVle8RzOh8nJF9Lz8sY8QyPgWwWH46zofM2p2ea9
	TVmQS6h+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibqzN-0003cZ-FG; Mon, 02 Dec 2019 19:04:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibqzH-0003cE-Lz
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 19:04:00 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 529672464D;
 Mon,  2 Dec 2019 19:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575313438;
 bh=YN9GuRfgXIuurVuKgzNcuNcr1boHSN8O9OuM+vIKERw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KT/un5HeTJMSt0OxMkqXRNv0RQbcljBwmtHpUe+qit9pBR/Iu0eiJp63USFvR93Av
 XONKDC2Y+YyS+SfrDRN8DcgJZ0j/MUKZkn/OcGvkBbVOTzp2sYNEClo6L4ux1Uuur5
 4CeiQeG4AJggO0J0zYk6UkuQ6OgeRdRhdqiwCUng=
Date: Mon, 2 Dec 2019 20:03:56 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
Subject: Re: [PATCH v4 3/3] arm64: dts: allwinner: a64: Enable Bluetooth on
 Teres-I
Message-ID: <20191202190356.g5aaa2iotrozfirm@gilmour.lan>
References: <20191130202314.142096-1-bonstra@bonstra.fr.eu.org>
 <20191130202314.142096-4-bonstra@bonstra.fr.eu.org>
MIME-Version: 1.0
In-Reply-To: <20191130202314.142096-4-bonstra@bonstra.fr.eu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_110359_735202_C2B43802 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Johan Hedberg <johan.hedberg@gmail.com>, Marcel Holtmann <marcel@holtmann.org>,
 linux-bluetooth@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3850001433944998323=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3850001433944998323==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ds3wtmj4ifzz5c6h"
Content-Disposition: inline


--ds3wtmj4ifzz5c6h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Nov 30, 2019 at 09:23:14PM +0100, Hugo Grostabussiat wrote:
> The UART1 on the Teres-A64-I is connected to a rtl8723bs combo
> WLAN/Bluetooth controller, with three GPIOs used for device reset,
> host wake up and device wake up.
>
> Currently, the host wake up feature is not supported by the HCI H5
> driver.
>
> Signed-off-by: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
> ---
>  .../boot/dts/allwinner/sun50i-a64-teres-i.dts      | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> index 1069e7012c9c..b28e6d7cb227 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> @@ -325,6 +325,20 @@
>  	status = "okay";
>  };
>
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
> +	status = "okay";

You'll need to set uart-has-rtscts too.

Maxime
>

--ds3wtmj4ifzz5c6h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXeVgHAAKCRDj7w1vZxhR
xb7hAQDVUoJULA2Q6eKcdWkB1OsAuiM58pn9qGHbjuZ/9ik2NAEAiApjGPIlTlkm
XviRcDU3beEJ0GuqAK8OguvH6No8dAI=
=fmkc
-----END PGP SIGNATURE-----

--ds3wtmj4ifzz5c6h--


--===============3850001433944998323==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3850001433944998323==--

