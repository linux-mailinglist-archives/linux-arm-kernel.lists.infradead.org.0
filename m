Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4800F1804D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:31:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SbF0QWaUTB0rl2nxHJdiJdEoJCjY75PEA+HBC31fL9Y=; b=iTLTkfPSgGKz6Z4P4mzC65MY8
	icZBwEKgy6knAOsTB1nrQNcYNEIx/K8l2uztElLW3s94qKCvw9lHjGBsp5gO6vwLyQQ3E9zMy/Hgx
	xnqEFEmACrXF5iYr+q0NTHBSTXAAtp1ue8jtClf79WM3aL19Yt9UOrXrcPItxvd7tLuFDxvEpbOLU
	6xKVXBgY5rB0llXCWEqU9tTBtoaIwfA9saZNvRYD/wx4piGue0apfd5ZDOcl1a3AdHRbiE57ki6OL
	uQG4K/VCJEQ5Fu1qdqQeX61djFoTkbK6z6w8S1l41Qr8wWSE7WSmvabhfdZfeA7HcRMLKaqk1xWzD
	/vkLZbdug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBijJ-0001nx-UM; Tue, 10 Mar 2020 17:31:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBij7-0001nP-GN
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:31:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DAD561FB;
 Tue, 10 Mar 2020 10:31:32 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5C8C53F67D;
 Tue, 10 Mar 2020 10:31:32 -0700 (PDT)
Date: Tue, 10 Mar 2020 17:31:30 +0000
From: Mark Brown <broonie@kernel.org>
To: Otavio Salvador <otavio.salvador@ossystems.com.br>
Subject: Re: SPI irq regression
Message-ID: <20200310173130.GN4106@sirena.org.uk>
References: <CAP9ODKpW=h6SVtsn-uuDQ4+TgR0NnjBW==8vwyQD4+x_dbFzRQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAP9ODKpW=h6SVtsn-uuDQ4+TgR0NnjBW==8vwyQD4+x_dbFzRQ@mail.gmail.com>
X-Cookie: In space, no one can hear you fart.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_103133_598819_2D308F6D 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-spi@vger.kernel.org, kernel@esmil.dk,
 linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
Content-Type: multipart/mixed; boundary="===============3581908209028229504=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3581908209028229504==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TN8pJM9vJMHHFgJc"
Content-Disposition: inline


--TN8pJM9vJMHHFgJc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Mar 09, 2020 at 03:54:20PM -0300, Otavio Salvador wrote:

> [   46.186916] spidev spi0.0: SPI transfer timed out
> [   46.187435] spi_master spi0: failed to transfer one message from queue

> Reverting this commit makes SPI to work again.

> Any ideas on how we can properly fix this regression?

Does the interrupt ever fire?  I'm wondering if the DT is wired up
correctly for the particular SoC you have, or if it's even wired up at
all in the hardware.

--TN8pJM9vJMHHFgJc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5nzvIACgkQJNaLcl1U
h9ABYAf6AgPrfiW0av9gNqZxLk4dWqC5oYRZeRAbDPi3S87jWIw46KQjnNvkBwTQ
Tx5gTJGr7SlHLj4XskYbMsAipmYxY++Q/t63Jt5ICVavbAAi0WDw0x1blnxHRoMq
/Mt1kjlOFXMwMyJGcx7kXMQZDCE/YetifA3xBhUCnzWcIuau3D0JEmMxIsAig7tt
mSCaUQdpVhdA+AgIFVg0XQjgPZa8tZ2rWhD29mLg7EILVc+y6BaAKWLbQlZjZIm5
/OZmPZ9SC4Ro67Byb+Jedj1zGVU1yv62aaqrH0EOvPWj5Hfl3QFjWPVMBXuc+ucL
2XiZ8E4ea73h59Lrp5wIaOJVcZncQw==
=zCzy
-----END PGP SIGNATURE-----

--TN8pJM9vJMHHFgJc--


--===============3581908209028229504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3581908209028229504==--

