Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E901183EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 10:48:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XBHxWJvO125V2DEI+1ftDoQ5EmqLOaRWojVppHUJRvY=; b=gEerle+OnjPSEg5iT3fyFga+W
	kZ5UnwdfAw0Tr7zGhV0egOlB2eyXIbVfV+2D8rxJ5ZhDfO/jG6cgMnHb62nhl2Z6iVHviw0t5Ia8V
	mFfGvQojWR9z6eh3fKfYxtiOpnPVsdtBzBIPnPFpjxOH/si7vuFG5vLeB40tsUizlJxERgwTAQJOg
	hDNj4GPrGej6HZUSfv1Juq1SE955OtTY9q+rrd1Is40q1OxlRXX746oXbG91MmLMkrK7TuPqt/XSZ
	YDhyg/2Lh4VpB5ieGro2SNiJAbSiIPk8NIYzLkRnv0LeLXwyOGheMSrI16kenoP7ewSAbC/zOFKc3
	7yXveG2Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iec7k-0003HH-0I; Tue, 10 Dec 2019 09:48:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iec7a-0003Gx-VU
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 09:48:00 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 37F862077B;
 Tue, 10 Dec 2019 09:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575971278;
 bh=D4AC6P6Yy74InbEmSTYhO16RbW/RiPQChSmnYv+Qaq8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0vktHRO0e7gXqk1Cy7zrhdmFFm+miqbXodEdCmeveI1ZF8MeIaUyXfeU3MAyn5pQg
 DUkVAsDkFI1BrFoYBj1FKxuWnzv+ApvUKWb7+wO/5SQn6uOHnmbp6+pWLXkZHlheFw
 gEogYU9//1tyUNF90Dyld+NS/celYATgequ9sWCQ=
Date: Tue, 10 Dec 2019 10:47:56 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH] ARM: dts: allwinner: restore hdmi_con_in node
Message-ID: <20191210094756.izblh6jotzrozazt@gilmour.lan>
References: <1575970087-11667-1-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <1575970087-11667-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_014759_034970_7328B641 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 aleksandr.aleksandrov@emlid.com, linux-kernel@vger.kernel.org,
 georgii.staroselskii@emlid.com, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7750678189720766841=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7750678189720766841==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="v3ytm4gh3zbiiwst"
Content-Disposition: inline


--v3ytm4gh3zbiiwst
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 10, 2019 at 09:28:07AM +0000, Corentin Labbe wrote:
> Compiling today next (20191210) fail to build with
> arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts:53.25-55.4: ERROR (phandle_references): /soc/hdmi@1ee0000/ports/port@1/endpoint: Reference to non-existent node or label "hdmi_con_in"
>
> This patch fixes the build by restoring this node.
>
> Fixes: b120a822ef10 ("ARM: dts: allwinner: Split out non-SoC specific parts of Neutis N5")
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

I've squashed it into that patch, thanks!
Maxime

--v3ytm4gh3zbiiwst
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXe9pzAAKCRDj7w1vZxhR
xbrgAP466fwwI4Z5SDYusy+EmYVr/WTP7aRe6IEUFCWGYiH/0wD/ZXIjO8PPhwRS
nd4miSulZvCk+n6lo+7jmb8pc/Ahwwk=
=MiLv
-----END PGP SIGNATURE-----

--v3ytm4gh3zbiiwst--


--===============7750678189720766841==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7750678189720766841==--

