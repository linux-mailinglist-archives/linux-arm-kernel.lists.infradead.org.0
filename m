Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7493CEB4B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 19:58:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eWfK3OoNweqQJ6DX+xWViuvSpi5sg0uNzGOcOo95MoE=; b=PrCkiDRc+tVe9BPNKZf3gw+vI
	jnpZKXZIt9voDvYIKqwI4apKZ/970Z8F1so3Z593qbr5tmM4AgFcjmd9rJiu2Vu4748B1JVISakkN
	4o9K6rTG+Z+fGavcnZ6SZN+SqjzF5SQfUs/jeCxgXUXEy7GCvz58b56FK9KE9MmowKM+bwbMfTEx0
	+2joMQowIunpqrj1Bxc/6/QKaDNa6Q4OhweqgPQhF+NUjsvOzqjVB0Nn8PoFbvPs03PC2Uwt4CRm1
	zmRh55gDcMYVGhBCcO5gXX18tll2PrZxKzIqi1eDFGu2k0lr9Sna7ifo5EgyEpRWyTDalHXvrwIBB
	d8buLQ2vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHXHM-0007mH-RE; Mon, 07 Oct 2019 17:58:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHXHG-0007ly-0L
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 17:58:35 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BC7E20684;
 Mon,  7 Oct 2019 17:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570471113;
 bh=xEwQHPlqXaHNbxmpbtQW2ZV2D287UcBmfyfJ091CUzY=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=CeFAWCSaNNAUeWSP1r74bd/S7UtlGHl1gI3UqiEce8mYH0SkXLZhfgKYQ+0om0+W9
 sDxu1st3KHJAR3JEbY09IbhYQ02OcKrsTbZTZhZqMn+HWA4f7HBTEzNdNY3XTWP7hZ
 wRvv77uApjxALMXA+4FcQLgSw8KGOeySF+4folfA=
Date: Mon, 7 Oct 2019 19:58:31 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [RESEND PATCH 0/5] Add bluetooth support for Orange Pi 3
Message-ID: <20191007175831.2r2thebie6hxmxym@gilmour>
References: <20190823103139.17687-1-megous@megous.com>
 <20191007141153.7b76t4ntdzdojj5m@core.my.home>
MIME-Version: 1.0
In-Reply-To: <20191007141153.7b76t4ntdzdojj5m@core.my.home>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_105834_067019_9B853D59 
X-CRM114-Status: GOOD (  16.08  )
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
Content-Type: multipart/mixed; boundary="===============2135874701350399150=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2135874701350399150==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qhahocbwdlja2oay"
Content-Disposition: inline


--qhahocbwdlja2oay
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 07, 2019 at 04:11:53PM +0200, Ond=C5=99ej Jirman wrote:
> Hi Maxime,
>
> On Fri, Aug 23, 2019 at 12:31:34PM +0200, megous hlavni wrote:
> > From: Ondrej Jirman <megous@megous.com>
> >
> > (Resend to add missing lists, sorry for the noise.)
> >
> > This series implements bluetooth support for Xunlong Orange Pi 3 board.
> >
> > The board uses AP6256 WiFi/BT 5.0 chip.
> >
> > Summary of changes:
> >
> > - add more delay to let initialize the chip
> > - let the kernel detect firmware file path
> > - add new compatible and update dt-bindings
> > - update Orange Pi 3 / H6 DTS
>
> Please consider the DTS patches for 5.5.

Can  you resend them? I don't have access to my old mailbox anymore

Maxime

--qhahocbwdlja2oay
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZt8xwAKCRDj7w1vZxhR
xab8AQCoq16pTHJEpC+5lsSAtxuOg5ykvT6nmBObbhL8FtoOTwD+NpvLfhLVo3aM
lI/68DRVnpx1ziS2dwVHXdvmQooJ9Qw=
=TYcE
-----END PGP SIGNATURE-----

--qhahocbwdlja2oay--


--===============2135874701350399150==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2135874701350399150==--

