Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571E295938
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 10:15:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XTOK26t5vkVYlQ+cM2lH92/LLMP40v8Wv2aWv50LtNw=; b=n7vSpZNCvfJeAvzitKH6mlQlj
	MLzfz7IRJU8cf622EvABWHOy6l7v4e9CHS5rJY3E7irX5ish1wxy7n1koFUBiWfVM/f+xQDfiW7pg
	B+qbLRRo2nAwT+qCI7xsCoxS90pSbsifuMUT1KNyNr/ylEaneOm3VfZiLQKPiJ9vma9jb2j9yXHX5
	5pDOi6z4mDmf8yW80J8WPsQzakgzPnE052sGUvWaHKg90cAPGSZ6olub0uq3NxwI8KCFXk+rPtPn6
	iikJUAVJvoG4f2f05OKuA7XwEconfFwb+UcIkNP0SRXwsL5WJOANydEzuUx8zGcj0Le+ryg+fr2pA
	vdxUwfGrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzzIz-0001M3-Ud; Tue, 20 Aug 2019 08:15:49 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzzIl-0001KU-Sg
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 08:15:37 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 22DCE20014;
 Tue, 20 Aug 2019 08:15:28 +0000 (UTC)
Date: Tue, 20 Aug 2019 10:15:28 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v4 05/10] ARM: dts: sunxi: a80: Add msgbox node
Message-ID: <20190820081528.7g2lo4njkut5lanu@flea>
References: <20190820032311.6506-1-samuel@sholland.org>
 <20190820032311.6506-6-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20190820032311.6506-6-samuel@sholland.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_011536_079219_9B82A7C9 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-sunxi@googlegroups.com, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8785154380809405331=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8785154380809405331==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="n7o7wh4zuzytmrq3"
Content-Disposition: inline


--n7o7wh4zuzytmrq3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Aug 19, 2019 at 10:23:06PM -0500, Samuel Holland wrote:
> The A80 SoC contains a message box that can be used to send messages and
> interrupts back and forth between the ARM application CPUs and the ARISC
> coprocessor. Add a device tree node for it.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

I think you mentionned that crust has been tested only on the A64 and
the H3/H5, did you test the mailbox on those other SoCs as well?

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--n7o7wh4zuzytmrq3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVusIAAKCRDj7w1vZxhR
xZl6AQD8HGD9lLlZE5lpRO3rM9AAsJfuguGezD9voRojBbNOIQEAuL3z63gP4FU6
hU8YYXOnQQtNXzykQSVqaknuOE/AxwY=
=SehN
-----END PGP SIGNATURE-----

--n7o7wh4zuzytmrq3--


--===============8785154380809405331==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8785154380809405331==--

