Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 371641EAD8C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 20:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lsTFHEMe8MuTBwSHO1HkNP+DPQAWArgkDnvVHLMMTNI=; b=hG02VmP6vaI7cNY1ZrN+eZscA
	gmpNifzADbObz+FL1Ho1Bta8qo3t1VwHqPhODZhQjI0s7wSJJZkuM88bn6G7wm0Es8fOeC5BfoBSM
	5A7ceUDFc0EKB9Kp2N/GpW0SyIYzvktgXGtlyhF3CUlY4F/f6Z+LZUrCCOrjhKqP1OCrKdCop9MTW
	u+EwO0FAY3Faq/ODISDpCZN3MqNT4VVLYGY4YqOmLOxKxqo8ldR2+2D8nvSsiWIEuOtWevUcnA9Ha
	Q7+l6uTEHd8JxqxdVuYgIg1iNXH/Kl+OnWD9cTt9Ih3QOfQNacWAEFr2UDauSmlDxnv9KsKv5bHri
	D90WJuK7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfpSC-0007jb-73; Mon, 01 Jun 2020 18:46:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfpS3-0007io-V0; Mon, 01 Jun 2020 18:46:25 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8BE83206C3;
 Mon,  1 Jun 2020 18:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591037183;
 bh=e5Qef3dmczUwuHZqTw6EERJ4IhHrefksgJsUZASLXQE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EPRxpUAViQ0TEernHJkDM4zYgOXqmLTcvMqM4OttqWWxcHD4GsmHNr0zDVhFEC4Od
 v+BIBXqxrL4FbuGy57NSvvb/gxTjry4yKgfOHMuf8BI/qTuFdAZVQzeawwAPxyYx58
 zRVHM6EimWYc0OArYHS8BFgMHU4LwTJftqwVZhqM=
Date: Mon, 1 Jun 2020 19:46:20 +0100
From: Mark Brown <broonie@kernel.org>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH v3 0/2] regmap: provide simple bitops and use them in a
 driver
Message-ID: <20200601184620.GF45647@sirena.org.uk>
References: <20200528154503.26304-1-brgl@bgdev.pl>
 <20200601.113536.134620919829517847.davem@davemloft.net>
MIME-Version: 1.0
In-Reply-To: <20200601.113536.134620919829517847.davem@davemloft.net>
X-Cookie: Help a swallow land at Capistrano.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_114624_016615_DB0DCB01 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: stephane.leprovost@mediatek.com, bgolaszewski@baylibre.com,
 netdev@vger.kernel.org, brgl@bgdev.pl, sean.wang@mediatek.com,
 linux-kernel@vger.kernel.org, fparent@baylibre.com, pedro.tsai@mediatek.com,
 linux-mediatek@lists.infradead.org, andrew.perepech@mediatek.com,
 john@phrozen.org, matthias.bgg@gmail.com, kuba@kernel.org,
 Mark-MC.Lee@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0220432566552091877=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0220432566552091877==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="924gEkU1VlJlwnwX"
Content-Disposition: inline


--924gEkU1VlJlwnwX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 01, 2020 at 11:35:36AM -0700, David Miller wrote:

> > v2 -> v3:
> > - drop unneeded ternary operator

> Series applied to net-next, thank you.

I already applied patch 1 and sent a pull request to Linus for it.  As I
said:

| Let me know if you need a pull request for this, given the merge window
| is likely to open over the weekend I figured it's likely too late to
| apply the second patch before then.

Hopefully this merges cleanly...  ideally we'd have had that pull
request.

--924gEkU1VlJlwnwX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7VTPwACgkQJNaLcl1U
h9BC5Qf+Pqf/FZV1N/xA1qCR5gdSQfu1xeoilmJVrmPkNe7ZPkKJw08ysvy2BAQO
FWtv1JeTxdz13haQKXAmahMt6vZ7SfvpE0SKsW9UQskdbLt3Ib1BhoJk3TPr9u5Y
9TKyGAUpkjmvXkM/GLOEGiqWcy6FbAuPmc/NsFaCaHv6MpjefCKi7qFs+u4rNMJG
OfbU/RjMmOjojflkQWTLxMbOcW79doEFgvx1fRxvRcg4NRZOEfMRnWjIp5Eb3J5S
kBrG02l6iQCsuFijjLFRC4tpFKG5LAld12jDjRwiCgsw9YpNU/6piftFObxGzBsl
t07Asv5z8Ea2gvA5oCJzjkYVpgMY+w==
=PMqK
-----END PGP SIGNATURE-----

--924gEkU1VlJlwnwX--


--===============0220432566552091877==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0220432566552091877==--

