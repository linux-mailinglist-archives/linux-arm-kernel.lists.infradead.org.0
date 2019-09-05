Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CB0AA217
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:57:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+BsBFqad+/EUN3l99YcWoNP5IAADtqSt6LljJ9RZjvQ=; b=DLgSZU6RiB7zICj8HxvNsQbc8
	0HVLnSSUVH0E2wV1qOwlgl+UtlfVLfl5pPx2vWedQpjl4VEYIWupOGCO98Zy1P0pfzXW5rnmjWVqN
	Vnnr6nbvZqIOCAyD2YvybMj9LoPLajy4+3eAjXClYpfgaObzFxCwRgkkJGsdqE0uSEZjQwZZ3AAOJ
	ke6EWJuQjbacF4mi68ckOg4RU7YPcvuZIwYko8xci1zF2fn6zL63walZ0Fvl9ScqyuQoXJqIgjk/u
	yJWkJT8HiuGdy87kFx/0Z7mpaOFTOOuwN3X0Ut0MjCjMozjZdwUrerO1Ay1fuN1um+kfxfWZoyCOm
	AZbKqPqNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qNw-0004Dh-Hb; Thu, 05 Sep 2019 11:57:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qNl-0004Cu-4g
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 11:56:58 +0000
Received: from localhost (unknown [82.195.192.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8881122CEC;
 Thu,  5 Sep 2019 11:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567684616;
 bh=wdTqBGzZQ4leglhr36XMdYedhNTdJDdwpiQCNXzkJDI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H55l7QnkZ69A7MNWrWBau7Dhg05/2syJeQI/Q8uksMOXbsdGsMv680/B9iw6Y61pL
 bl9m3A5v6iPbOpGjCnNbpcHDuGoGnFd1nE2WyOYvR+bc8WEQcBP3jzSSbL2tfjxCmT
 RlBxBpvL8l7bA8gBXgxCjgEnixHlMDm/26kIqFzo=
Date: Thu, 5 Sep 2019 14:56:53 +0300
From: Maxime Ripard <mripard@kernel.org>
To: Marcel Holtmann <marcel@holtmann.org>
Subject: Re: [RESEND PATCH 0/5] Add bluetooth support for Orange Pi 3
Message-ID: <20190905115653.o2w7eyl4hvqegucv@flea>
References: <20190823103139.17687-1-megous@megous.com>
 <5524D5E9-FA82-4244-A91F-78CF1C3FB3FB@holtmann.org>
 <20190830092104.odipmbflounqpffo@flea>
 <D02B89FB-F8C0-40AD-A99A-6C1B4FEB72A0@holtmann.org>
 <20190830132034.u65arlv7umh64lx6@flea>
 <76FD40C7-10C5-4818-8EF9-60326ECA4243@holtmann.org>
MIME-Version: 1.0
In-Reply-To: <76FD40C7-10C5-4818-8EF9-60326ECA4243@holtmann.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_045657_229832_E195C784 
X-CRM114-Status: GOOD (  23.97  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: megous@megous.com, Mark Rutland <mark.rutland@arm.com>,
 Johan Hedberg <johan.hedberg@gmail.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4549264244806461905=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4549264244806461905==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="66mhhep6w5jiiqrl"
Content-Disposition: inline


--66mhhep6w5jiiqrl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 04, 2019 at 04:19:37PM +0200, Marcel Holtmann wrote:
> Hi Maxime,
>
> >>>>> (Resend to add missing lists, sorry for the noise.)
> >>>>>
> >>>>> This series implements bluetooth support for Xunlong Orange Pi 3 board.
> >>>>>
> >>>>> The board uses AP6256 WiFi/BT 5.0 chip.
> >>>>>
> >>>>> Summary of changes:
> >>>>>
> >>>>> - add more delay to let initialize the chip
> >>>>> - let the kernel detect firmware file path
> >>>>> - add new compatible and update dt-bindings
> >>>>> - update Orange Pi 3 / H6 DTS
> >>>>>
> >>>>> Please take a look.
> >>>>>
> >>>>> thank you and regards,
> >>>>> Ondrej Jirman
> >>>>>
> >>>>> Ondrej Jirman (5):
> >>>>> dt-bindings: net: Add compatible for BCM4345C5 bluetooth device
> >>>>> bluetooth: bcm: Add support for loading firmware for BCM4345C5
> >>>>> bluetooth: hci_bcm: Give more time to come out of reset
> >>>>> arm64: dts: allwinner: h6: Add pin configs for uart1
> >>>>> arm64: dts: allwinner: orange-pi-3: Enable UART1 / Bluetooth
> >>>>>
> >>>>> .../bindings/net/broadcom-bluetooth.txt       |  1 +
> >>>>> .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 19 +++++++++++++++++++
> >>>>> arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  | 10 ++++++++++
> >>>>> drivers/bluetooth/btbcm.c                     |  3 +++
> >>>>> drivers/bluetooth/hci_bcm.c                   |  3 ++-
> >>>>> 5 files changed, 35 insertions(+), 1 deletion(-)
> >>>>
> >>>> all 5 patches have been applied to bluetooth-next tree.
> >>>
> >>> The DTS patches (last 2) should go through the arm-soc tree, can you
> >>> drop them?
> >>
> >> why is that? We have included DTS changes for Bluetooth devices
> >> directly all the time. What is different with this hardware?
> >
> > I guess some maintainers are more relaxed with it than we are then,
> > but for the why, well, it's the usual reasons, the most immediate one
> > being that it reduces to a minimum the conflicts between trees.
> >
> > The other being that it's not really usual to merge patches supposed
> > to be handled by another maintainer without (at least) his
> > consent. I'm pretty sure you would have asked the same request if I
> > would have merged the bluetooth patches through my tree without
> > notice.
>
> I took the two DTS patches out now and let the submitter deal with
> getting these merged.

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--66mhhep6w5jiiqrl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXXD4BQAKCRDj7w1vZxhR
xRuEAQD4NBPiyuvLlo3LM5wXaUbunkvUUCDpAZ3nIkj1OvPjIgD8Da8U574V2FaU
aFSxv34yqbNn72v/P/KP/9zxT3Y40g8=
=SOn6
-----END PGP SIGNATURE-----

--66mhhep6w5jiiqrl--


--===============4549264244806461905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4549264244806461905==--

