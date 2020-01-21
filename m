Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB3514391B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:07:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/1WdrfTe1cSvrcnAsZ17h2eIZ3ceYR21/BOfArbFb1A=; b=QgLwmw1RhWQRXFubDoTkqENHQ
	PCdc3G1yMOHNZ/eDmGN3+IP2KorYSWDXFPZFseQTTNVkRWnnzd/I+C0Z8Ty5cD+RPDu0lb+mdtrsA
	DGTqnxesJaF+jLwcQUhW1UNN2AXHMLuM5ZGVdnADe5QkQATg45OYNZva5wl00QVaPdtxqAAf0Kmw3
	JfoVpFHHZZfklvdu1AIHXSR5SEt2R9z0NE+xOZ4sZAIfba/AISqvBGz0IAI62vGgMptoKhki82RdI
	XNXloKV41xvHzOl5JIX8xHC0OcQacx0KcPqF1UO4SndlUMzGoRtBkktiOMCVYBiEAIyvxt8rtQc3J
	Dglk5xHWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itpVj-00054f-4I; Tue, 21 Jan 2020 09:07:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itpVS-00053D-K1
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 09:07:36 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D23C720882;
 Tue, 21 Jan 2020 09:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579597650;
 bh=2qwj5/J/r5ZVIvYolpNA+jAlvm+KWqLfUb8A7e1VOYw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sexNha7w7lt7e5WPJkatQYHA6alGDbfRSNh81Ba9K5ciP6IJHcWZAB5QThYDxzmFu
 0CSWcUaSOorWPtBdUIFwjD+lB5NcF6slFZn2GYFYuCBskIqbgVTfyhyDjOiYTadr7O
 VO33cwGf9r65jw7CF1EyehzX1K/kril9vOQy2mNo=
Date: Tue, 21 Jan 2020 10:07:28 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH 7/9] arm64: dts: allwinner: pinebook: Add GPIO port
 regulators
Message-ID: <20200121090728.bqf5kirl7oaumtyr@gilmour.lan>
References: <20200119163104.13274-1-samuel@sholland.org>
 <20200119163104.13274-7-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200119163104.13274-7-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_010730_677584_8F47C3C1 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4994820760852489043=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4994820760852489043==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ymv7yl4clepyn5em"
Content-Disposition: inline


--ymv7yl4clepyn5em
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jan 19, 2020 at 10:31:02AM -0600, Samuel Holland wrote:
> Allwinner A64 SoC has separate supplies for PC, PD, PE, PG and PL.
>
> VCC-PC and VCC-PG are supplied by ELDO1 at 1.8v.
> VCC-PD is supplied by DCDC1 (VCC-IO) at 3.3v.
> VCC-PE is supplied by ALDO1, and is unused.
>
> VCC-PL creates a circular dependency, so it is omitted for now.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Applied, thanks!
Maxime

--ymv7yl4clepyn5em
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXia/TwAKCRDj7w1vZxhR
xemtAQD2HAgHft1XZ1CTcBisdm4o8+6dwqGs8VYdxgxkbGcfmQEAt+S15a+XDFB8
/DeRW5zpu5B+jCMVI5EswXXR+nl5XAw=
=axfZ
-----END PGP SIGNATURE-----

--ymv7yl4clepyn5em--


--===============4994820760852489043==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4994820760852489043==--

