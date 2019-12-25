Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CF712A8BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 19:01:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OlX2poFC7gJpLhltO+r/WHcaI5fvme0FkOq3VQl9Mtg=; b=UJIZXieKZRPhhIeHyTdVFpB0s
	faLP/A9lAbiVjOczroey4B/s9/+vud03p5h9Pkofn05+alDiP5LsoCEzy1Px6NBigw70JM//cCE3H
	BPYTd51cooMckOpZbmnWXW30ajCbkZgTNBKSOY4ti8L8Ey8B3ZC6lnLNNSwLi1yTI1GQUhSOXGUHL
	1V4DqPftURdwUrEg24jg4F58ENqZ6PozV8RYbOMdYr78Zgkd7SsJqn+6pkF1bjYbpu8P1fou4BZh2
	rgOf13p42KdxmgstKuuJrdWehHIEU1xCNx+bKPgBYMVkNL+0Ld1LxSqvqKUJuqjnoNr+qDphsHZK8
	2yNXr89oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikAyo-00027q-Ub; Wed, 25 Dec 2019 18:01:54 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikAye-00027W-V3
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 18:01:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Bq+UAHBLC8Yr9R0oLnqOKgljdZDdLqNGM6yBAh/5KII=; b=G5VKURfpViKG43vYhpo+eMr1e
 Z5LBDMi61V+PSTSnYgw2bNDEb5B5aUFFK6mhH/oo4OYqVzhTReT5TK2Z0EEiOHlO8fmoy1wmkZKfE
 M9DG6tdAaLXtDLm1ttVb0dqM5SZndP1vi1/ueBizRHUALU7HOKhPjk42cb3dd8XIEZxvo=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1ikAyc-0001lO-HO; Wed, 25 Dec 2019 18:01:42 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 0D103D01A24; Wed, 25 Dec 2019 18:01:42 +0000 (GMT)
Date: Wed, 25 Dec 2019 18:01:42 +0000
From: Mark Brown <broonie@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH 4/5] spi: uniphier: Add SPI_LOOP to the capabilities
Message-ID: <20191225180142.GD27497@sirena.org.uk>
References: <1577149107-30670-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1577149107-30670-5-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
In-Reply-To: <1577149107-30670-5-git-send-email-hayashi.kunihiko@socionext.com>
X-Cookie: I have many CHARTS and DIAGRAMS..
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_100144_998778_4BE06731 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Keiji Hayashibara <hayashibara.keiji@socionext.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5012014079568881247=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5012014079568881247==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fOHHtNG4YXGJ0yqR"
Content-Disposition: inline


--fOHHtNG4YXGJ0yqR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 24, 2019 at 09:58:26AM +0900, Kunihiko Hayashi wrote:
> Add SPI_LOOP to the capabilities to support loopback mode.

>  	master->min_speed_hz = DIV_ROUND_UP(clk_rate, SSI_MAX_CLK_DIVIDER);
> -	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH | SPI_LSB_FIRST;
> +	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH | SPI_LSB_FIRST |
> +			    SPI_LOOP;

I'd expect to see a matching change that configures the hardware
in loopback mode when the driver is in SPI_MODE?  There's nothing
in the existing driver.

--fOHHtNG4YXGJ0yqR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4DpAUACgkQJNaLcl1U
h9DGCwf8CErpoN6/aSizdxhROvbaxbMpt+6Wh6FxMDWHCl0b/S5wOEioBxEI6mnD
8xn4n0sNUZ9qnymFxuGoDrNN/qNl3UnJ9QyjxRCNg6fC6PI10I+SfzIZwe9BFDs5
RrDvozuG4OGgJbuE5BWHtaBTVP2afnzeFla+yszRxI7/j7Urg1Qlm7wUZjueXRd3
ifEjUTZNjmH3nx8+CV8WiiP0KFlzgQM/r0Gcjoj8NwW8UZj7Kepxg+XUs6vrOvwv
0i2iZwE/zFSKnDav0Whjjstv9HDwO17W1swi6bQbZanUkjzghYSLqdGOQm7vqB2r
aVLi2EgBy54qeK1Zg5zKZ56TK8PexQ==
=XK8L
-----END PGP SIGNATURE-----

--fOHHtNG4YXGJ0yqR--


--===============5012014079568881247==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5012014079568881247==--

