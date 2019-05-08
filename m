Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B66CE17438
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 10:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BWTcEjfaz6UvU6MzyVxJpudHotVS/IzlumLANcx084Y=; b=iMljRBRzRtFcpwuFhx/5ryRRT
	k7joRWdGpBSZCQ70w8CaTAUAWdqdyx2Rpa1MCelU4h87hCUidlFqdyI5SmIuT7zmmMD2qK1+MwndE
	QNJeDYgq7WeMm3ZB52Ru/Ton+pB+sWivfyv/Tp27FlaG/5KjjKv/+8sUcKU6MtoNO8FVLp+fv9Dcn
	QXTKs4lYYSKV1mGkCORstLeOvBajleJmR6U03pJFJYpWmlhvw94DaDzeCr82nKVyoCVwFmKX9AkOU
	mwAtGq1ziEjAG3tFbsOf2PGUubCEIW1Vw1UknGIfSS+AAWZKJtkjHb1q3TrUdZAY7Yq7pcMcZ4Ql1
	qAYfRO8qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOIGJ-0008EA-7Z; Wed, 08 May 2019 08:49:15 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOIGB-0008Dn-RN; Wed, 08 May 2019 08:49:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=om+fpMjoBeo6OmvhQLYoKQ1tz2zYXAg6W4JSs9Yvc1U=; b=Ndawc8EaIN1CnwwH1yY30g9CA
 XUmiOVbM3Ikdj9CJmX/VH/g7OTu+of8wzsmwn/n1kDAUPWCih56tUyMH4h79euPpQ/vpACTGDzdtD
 MWMXunQiT7M6fw7x2pphOqe2T+cKrTjlnyJGozwbj/gww/Ft2MCoKfPFJW45MIVuLxAIc=;
Received: from [61.199.190.11] (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hOIG2-0007bS-V6; Wed, 08 May 2019 08:48:59 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id E4A75440017; Wed,  8 May 2019 09:42:05 +0100 (BST)
Date: Wed, 8 May 2019 17:42:05 +0900
From: Mark Brown <broonie@kernel.org>
To: Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH V2 5/6] spi: bcm2835: make the lower limit for dma mode
 configurable
Message-ID: <20190508084205.GD14916@sirena.org.uk>
References: <20190423201513.8073-1-kernel@martin.sperl.org>
 <20190423201513.8073-6-kernel@martin.sperl.org>
 <20190424070712.hh6ozvhkvkxhwak3@wunner.de>
MIME-Version: 1.0
In-Reply-To: <20190424070712.hh6ozvhkvkxhwak3@wunner.de>
X-Cookie: -- I have seen the FUN --
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_014908_030243_301857F7 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Stefan Wahren <stefan.wahren@i2se.com>, linux-spi@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, linux-rpi-kernel@lists.infradead.org,
 kernel@martin.sperl.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5606100541965372624=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5606100541965372624==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mO8cNyIiGwRJ/NO+"
Content-Disposition: inline


--mO8cNyIiGwRJ/NO+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 24, 2019 at 09:07:12AM +0200, Lukas Wunner wrote:

> Indeed I'd prefer if another bit is added to "mode" in struct device
> to represent the need for another clock cycle in-between bytes.
> The SPI core could then reduce the clock speed based on this flag
> and the problem would be solved for everyone.

> Influencing this behavior with a module parameter feels a bit like a
> kludge and I fear may stay indefinitely even if a better solution
> is implemented later.

This does feel like we know enough to have a more advanced function in
the driver given a bit of information about the client device
requireemnts.  Though it's going to be complex to express them,
especially with the ATMega case where we want fast individual clocks but
lots of dead space in between bytes (is the controller capable of adding
that dead space itself in DMA mode BTW?).

--mO8cNyIiGwRJ/NO+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzSll0ACgkQJNaLcl1U
h9BtCQf+Kt1H2BIy8rCRowJoHOYziXd77HiP3zga+61FigqwiVNAsnc9sgHceaX8
PC+sIWmiH3sdLwIO+ZCkNwTxPmPwrLLnv7xQa8NWnS7jCxIMnVLRnmlQ9cVuLQ0k
sHIA+aPAqT/wUZLDrwg4PhAq2laX/KDZb9rOpPbi4kb/zVhVtkXuYVFEgiR5Pl77
enqEIE+oEUG7Ebns1fzljdzv/h0zu1g+KpzTJ4hVTVCShHUAo8AZmBsgMfP/gT/Y
q0U8SBCda+HZH5Av6k9lBWMgGgOfF1E1JlQaNYQGTfEVOlt1imMXH4yQVy+bilZ2
8rHCL74K7lQ5reujgEtw/36TmfZ8qg==
=atSx
-----END PGP SIGNATURE-----

--mO8cNyIiGwRJ/NO+--


--===============5606100541965372624==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5606100541965372624==--

