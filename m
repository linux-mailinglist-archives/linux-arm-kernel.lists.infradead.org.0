Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B4F12040C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:35:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KFNwuAsSx3yCrIDymOxl1ylNMXjxr13jTLy++SzN0cA=; b=JIEpMk9cRSSoYah1QabCB5hlh
	GM1+qVOto64AubTkJF0ikOTnn5YDMmBmTPx8Gd2DcKDoAZxJUYrs2lPZCTjEobV5+JAgqfB8+5ZyJ
	ZH+lECjmaiC73XdlGBDye9VVJjJEcJMpmgHmQcPCL75snqhGL9DSPk3jSbbDx3I72+AbVkhldOLyZ
	AX+5YmUn+J8Ft6RLw2RI6ysne5zg0I1NSa24eIXqPzC5TVy8Y1cd5R2uxUbxt8HSfxpkew5eHZshe
	5oY4whY42eq0zu4E+wPMGxqfw5/uJqFvoRkq+6l6MQc4gYpsIt7yhvkMtZyjpIeRGcT9hxr+ulGYF
	N81w6b0fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igoeq-0004wd-PQ; Mon, 16 Dec 2019 11:35:24 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoeQ-0004u7-0A; Mon, 16 Dec 2019 11:34:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5CED7ACC9;
 Mon, 16 Dec 2019 11:34:56 +0000 (UTC)
Message-ID: <c52eac760b84b5518453df501fcbefe332109b7c.camel@suse.de>
Subject: Re: [PATCH 2/9] spi: bcm2835: Release the DMA channel if probe
 fails after dma_init
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, broonie@kernel.org, 
 f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, baohua@kernel.org, 
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com
Date: Mon, 16 Dec 2019 12:34:54 +0100
In-Reply-To: <20191212135550.4634-3-peter.ujfalusi@ti.com>
References: <20191212135550.4634-1-peter.ujfalusi@ti.com>
 <20191212135550.4634-3-peter.ujfalusi@ti.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_033458_184565_4FD812D3 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, vkoul@kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4842080372101932275=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4842080372101932275==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-sXE7sJg+XY/TFzJstkte"


--=-sXE7sJg+XY/TFzJstkte
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-12-12 at 15:55 +0200, Peter Ujfalusi wrote:
> The DMA channel was not released if either devm_request_irq() or
> devm_spi_register_controller() failed.
>=20
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---

Thanks!

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-sXE7sJg+XY/TFzJstkte
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl33a94ACgkQlfZmHno8
x/6CCAf7B+B8hZxRZRMeLVd8ul40vOlcF9rYKCysCJeIolLp9Y2o4IzUDv0K1mel
0z35UloEsK0lerWCQzf9nH6RbxBqfEE5NbQ/N2ewB9/+Ko1YXB/JkhbMx8ApqqoR
DFhBiIS9MjrKzpffIY1Wa8f2TRngNKJAGbUVYX2lpW2zhRpqDSaa61WWra+KzbNK
vBfmnO3NwN69bN7vqN//ES4MonAbxXm7HGwyI8okIzlwc+rZWympTUBgpwXfGGeC
R1OHlJZiexWOW1LID7wjOPAeYbbGEatKio3MBTOAU+Ccx1JTDzjlKx0AtwIqyKTd
Oc2YpUm1LThjhmtRyLB1OXGc+8edpw==
=JoZp
-----END PGP SIGNATURE-----

--=-sXE7sJg+XY/TFzJstkte--



--===============4842080372101932275==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4842080372101932275==--


