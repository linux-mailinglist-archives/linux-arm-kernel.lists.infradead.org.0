Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9999F120753
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 14:38:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9sQBhBi7zlwruAC7FaJ5SedA9CWnH/1KUdSWPXi/9W8=; b=iuUyrYJKzwwoXSfaY+F1KiNR+
	Wui3qDkSkg0UHK0M+yAY+u3kbQfb4pxXOfQmD6PZeskBlK+KUTuoSVzUz75DdnwrI+bAK1LzBVgfP
	03Y/ZG3gcU1VOzCzSyPEoxZmAJPoj0iVGWQGYKWwnJsZROFxL9sgTu039X9BLyU09NU8c9IySTtzC
	59+SP1igrlbUNPp8hWgeP2TdKIDzWIYGaSPYqvdIgSSwfN//Lv71FVm/sNvr+IJp1TdqqI1QvJLfY
	yvChAgAAGAIuQwW4sYZOhuD3O6qgnv7K3+qSiyNmAXPHroFKyNdRuOGXNTOWIzq/pdaUb1tIPhW/X
	6yvnYZFKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igqaH-0006JC-1x; Mon, 16 Dec 2019 13:38:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igqa7-0006If-5a
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 13:38:40 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 68705206A5;
 Mon, 16 Dec 2019 13:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576503518;
 bh=shI0lUnBWDuONPZWYfqSGhPOhXNDA+SfJVRhGbQY6Xw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UttEaSKeMmq7uNC2LPGQ067DE+umu9bQ9JgGGDcjUIl3d40CeYzZFihVV7vaeKa+U
 XfCAudFleagC55ea2i5XWF84QZer3HDLZc9f1oep55imPczhTnxcbZ1AMYC6o42Acm
 Ibp/Qt935MDXGb9HDPOFujM1lj2mZrBvdTydBQQI=
Date: Mon, 16 Dec 2019 14:38:36 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 06/14] media: sun4i-csi: Add support for A10 CSI1 camera
 sensor interface
Message-ID: <20191216133836.n4sej7jqhzwxljnl@gilmour.lan>
References: <20191215165924.28314-1-wens@kernel.org>
 <20191215165924.28314-7-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20191215165924.28314-7-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_053839_225326_33F55F34 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3529348829703370809=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3529348829703370809==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qxmpdqzztr46q3kx"
Content-Disposition: inline


--qxmpdqzztr46q3kx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 16, 2019 at 12:59:16AM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> The A10/A20 Allwinner SoCs have two camera sensor interface blocks,
> named CSI0 and CSI1. The two have the same register layouts with
> slightly different features:
>
>   - CSI0 has an image signal processor (ISP); CSI1 doesn't
>
>   - CSI0 can support up to four separate channels under CCIR656;
>     CSI1 can only support one
>
>   - CSI0 can support up to 16-bit wide bus with YUV422;
>     CSI1 can support up to 24-bit wide bus with YUV444
>
> For now the driver doesn't support wide busses, nor CCIR656. So the
> only relevant difference is whether a clock needs to be taken and
> enabled for the ISP.
>
> Add structs to record the differences, tie them to the compatible
> strings, and deal with the ISP clock. Support for the new CSI1
> hardware block is added as well.
>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--qxmpdqzztr46q3kx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfeI3AAKCRDj7w1vZxhR
xVSBAP9m2gsGlN6svjB7zDFDDm9ZKaScsYn4Qk0eM3z4TyWE/QD/eKqz3SoIImtb
BN2EcgJHtWC+oJn4pHEYxoCeDYV5IA8=
=w2qB
-----END PGP SIGNATURE-----

--qxmpdqzztr46q3kx--


--===============3529348829703370809==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3529348829703370809==--

