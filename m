Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DAD957EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 09:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qjz3NhMOQGol7iSX3GPZ/2x7D7J/qB42G9MK7Pt/1RQ=; b=G4uPql4FAbjZXlp+SPGz3SeAz
	T1IgTRueqZqv0SsXNj9zMGRPLBfOpD+uKj1n2afRwtCIL8UAhAz60hTSFe7Y1MLG3E0rC3u+o8YK+
	0fNOA788xsQSvqQDU5nLVDtqjSRvaC7jFispYwbQotsYu82WaHfziTjPRaEbLC3gTsVfSyIL2D4vo
	ASw+4A5iIoXLmxIgNwAo8QBsC9JpJgAv2fAxR/Mylip2tmh9TWex/MoV4HN+UQXaJxNg0j6PgqbNF
	TGksbZD8EOYtv4DMtrvf4AJ0hQMAwl4NTXAHuIZfDrQeOvP9hBmqRZLJbwZ58+Xh0P7zoApeaWm2U
	hw+K+8/9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzyJl-00006f-87; Tue, 20 Aug 2019 07:12:33 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzyJW-00006O-N6
 for linux-arm-kernel@bombadil.infradead.org; Tue, 20 Aug 2019 07:12:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aQr5tMIKSbNDyrvl43oZeAtDjZU9MhxkdzIVE5D12B8=; b=KOR2t/moW7HQA0sLVwwyPECTq
 7DilrMcV8vAjlk3sT+M9+4K8W7kPygUR/ips14bf6GOX7nJDaXAjsyVEH0CD2H5zAL2putSrYuePq
 BINo3fZjKKLMGSgaltR5GFUApyaXFY5AJR8caqBBPL/ttplDwHW6W/HxG6pTgjL0B4TgE4KgW+pGy
 rlXpATm5BUn4/Yfef74vuGU1NYpfNuO+FaH+o3CHy01blaJVp34CWYIMf6c2yO3XOjY2lNQ6c3KCp
 gDWwGiXYDW304p12Dh/0V/oTbWuqzqp46eWIWwdmXaCNiQZihY2yJM5NGUgdYGHwUufAmle4+KBnb
 c9ezrePUw==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzyJn-0005gk-ES
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 07:12:37 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id A19A340002;
 Tue, 20 Aug 2019 07:11:42 +0000 (UTC)
Date: Tue, 20 Aug 2019 09:11:42 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v4 02/10] clk: sunxi-ng: Mark AR100 clocks as critical
Message-ID: <20190820071142.2bgfsnt75xfeyusp@flea>
References: <20190820032311.6506-1-samuel@sholland.org>
 <20190820032311.6506-3-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20190820032311.6506-3-samuel@sholland.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_081235_520882_F62B252B 
X-CRM114-Status: GOOD (  28.05  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============6765634184547298739=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6765634184547298739==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="i7cnfwqz3x4wuuzw"
Content-Disposition: inline


--i7cnfwqz3x4wuuzw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Aug 19, 2019 at 10:23:03PM -0500, Samuel Holland wrote:
> On sun8i, sun9i, and sun50i SoCs, system suspend/resume support requires
> firmware running on the AR100 coprocessor (the "SCP"). Such firmware can
> provide additional features, such as thermal monitoring and poweron/off
> support for boards without a PMIC.
>
> Since the AR100 may be running critical firmware, even if Linux does not
> know about it or directly interact with it (all requests may go through
> an intermediary interface such as PSCI), Linux must not turn off its
> clock.
>
> At this time, such power management firmware only exists for the A64 and
> H5 SoCs.  However, it makes sense to take care of all CCU drivers now
> for consistency, and to ease the transition in the future once firmware
> is ported to the other SoCs.
>
> Leaving the clock running is safe even if no firmware is present, since
> the AR100 stays in reset by default. In most cases, the AR100 clock is
> kept enabled by Linux anyway, since it is the parent of all APB0 bus
> peripherals. This change only prevents Linux from turning off the AR100
> clock in the rare case that no peripherals are in use.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

So I'm not really sure where you want to go with this.

That clock is only useful where you're having a firmware running on
the AR100, and that firmware would have a device tree node of its own,
where we could list the clocks needed for the firmware to keep
running, if it ever runs. If the driver has not been compiled in /
loaded, then we don't care either.

But more fundamentally, if we're going to use SCPI, then those clocks
will not be handled by that driver anyway, but by the firmware, right?

So I'm not really sure that we should do it statically this way, and
that we should do it at all.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--i7cnfwqz3x4wuuzw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVudLgAKCRDj7w1vZxhR
xUA2AP9aAfcTGshTf2qlHF7BN2TrmF218A9337dfKfbyq+0aCAD7Bcox3Vtd+uUp
V0EntkOUoyN+OLRb+3kD0UVgB/gcBwM=
=xm76
-----END PGP SIGNATURE-----

--i7cnfwqz3x4wuuzw--


--===============6765634184547298739==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6765634184547298739==--

