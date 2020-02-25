Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 531CA16EB13
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 17:14:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jO7d7VzR0/V8MVDTfkTPwolmSXNeTfJdY5FQUK9XiwY=; b=HsmMAsBAX2pthgTzoxg1BZhqm
	NTfAxszIuFi6Zvzhf9HxtfoQ6NP8S68bxMP7wLRl2KETzlDapCqAVaLHSApPEpLLGdWoKWQSCvjL9
	AgL/6IXWe7cH0n2RzJjNXjV5nzR8/68nAeNBxi44SjO5JgvjcZRs+eab0+/++PpxPjSXf/n/+xJLP
	3M3LfTRvvBroxNgc9jSZ440K0V1FPTJL9w/szC6VvWmIWjP65mbUBOiTrTyDrQVqdsV4FQFqQT9Ta
	jLzCvf9x+ir9S0av+BArUYng5iUASIRT47BT5h3Qsg+Zlgmf10h7LbOQSVLbwjM/62kl0XDVLEF9v
	0G3qqCfNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6cr4-0007Ly-9T; Tue, 25 Feb 2020 16:14:42 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6cqu-0007LQ-UA; Tue, 25 Feb 2020 16:14:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9A7D0ABD7;
 Tue, 25 Feb 2020 16:14:31 +0000 (UTC)
Message-ID: <609c96533fec609243f12a1f5fdd494e4f1ae34e.camel@suse.de>
Subject: Re: [PATCH 11/89] clk: bcm: rpi: Make sure pllb_arm is removed
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>, Eric Anholt <eric@anholt.net>
Date: Tue, 25 Feb 2020 17:14:30 +0100
In-Reply-To: <5571315e0aa8c8af02ad61cb396137707d4b6da4.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <5571315e0aa8c8af02ad61cb396137707d4b6da4.1582533919.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_081433_116870_A2CEF052 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1140989849642736210=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1140989849642736210==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-zSYz+O1TkTTw+s8JuVwF"


--=-zSYz+O1TkTTw+s8JuVwF
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-02-24 at 10:06 +0100, Maxime Ripard wrote:
> The pllb_arm clock was created at probe time, but was never removed if
> something went wrong later in probe, or if the driver was ever removed fr=
om
> the system.
>=20
> Now that we are using clk_hw_register, we can just use its managed varian=
t
> to take care of that for us.
>=20
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!
Nicolas


--=-zSYz+O1TkTTw+s8JuVwF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5VR+YACgkQlfZmHno8
x/5tbgf+KEUYT0jpT3C1Unk34E5t2GRWaiQ46ZtRMRoYx60hHiygSxcrkoZOtYiF
WgsNmLUlhgSu30qeRzOgsfYHoS7ttnuZjDXWXB2Lx27bnGBXrgZPnLfEefBAQt02
uCd/O+Nc45NFZLfxk3AGansY5ja4i5zG115Zy5njBoDBmxdchTmh4IX6dj99heKa
p1VeDbgDt0CTpFUpUE2vVI59mLsI9MnVyTh2CngxfW0Kev9MpEPqWcWiO1xbxae4
AND1pPwO5aAEc0qWB2NqlDOZ+c/eJMWwQ5p7UaorMdUaURQY5zr12Qfzqnhm+6QX
gWJJCfh07YRMgduhXRK0dagH1ddjtQ==
=LhDi
-----END PGP SIGNATURE-----

--=-zSYz+O1TkTTw+s8JuVwF--



--===============1140989849642736210==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1140989849642736210==--


