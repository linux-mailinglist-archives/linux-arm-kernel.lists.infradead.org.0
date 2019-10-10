Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F28D20D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 08:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ol7XkRv8VKQZQeD5cTLoGYoXluHfo06yDMyFaCDNOoI=; b=Svh2A9Xes4SGNcBxxCMyVcZ6W
	K7U1cnwNqmVVwHaQ/gePOcJLhVlnfLDijVjoOTeyPaDdmCxwZ/rxqvmhuGQvjtnhT7/F/bVQqT9p3
	rIGDx+r+7k1pGJQhzVJuomDjZcEOR/Y3Y/quQ8jgeQvxCDPUqfXcXlDosCLD92hg7g0nuzr2hphKb
	/oV3ST5tlfDZPB2bwc3kK5amv/iSkUyPdw9tN9m8RIUlQJT3QZuYHl645/qiMy2wKiY9Cg8uhrRaG
	aG/MxKUcUpAiS+8NSHni8l/E7cdnb9PzZp5LmvZ3QJKDGV4JpkZ85doim8SnEJwIYe1FbwBipMVp0
	YoXjf3QEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIS55-00047B-Pw; Thu, 10 Oct 2019 06:37:47 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIS4y-00046f-Iu
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 06:37:42 +0000
Received: from localhost (p54B33257.dip0.t-ipconnect.de [84.179.50.87])
 by pokefinder.org (Postfix) with ESMTPSA id E00F42C01E8;
 Thu, 10 Oct 2019 08:37:35 +0200 (CEST)
Date: Thu, 10 Oct 2019 08:37:35 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH] i2c: aspeed: fix master pending state handling
Message-ID: <20191010063735.GA893@kunai>
References: <20191009212034.20325-1-jae.hyun.yoo@linux.intel.com>
 <20191010003234.GA12710@google.com>
MIME-Version: 1.0
In-Reply-To: <20191010003234.GA12710@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_233740_772239_998BEDD6 
X-CRM114-Status: UNSURE (   6.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 linux-i2c@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Tao Ren <taoren@fb.com>,
 linux-arm-kernel@lists.infradead.org, Cedric Le Goater <clg@kaod.org>
Content-Type: multipart/mixed; boundary="===============2646571758092879859=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2646571758092879859==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UugvWAfsgieZRqgk"
Content-Disposition: inline


--UugvWAfsgieZRqgk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> Wolfram, since this is a bugfix, can we get this in 5.4?

Of course! Just giving Tao Ren some time for the Tested-by.


--UugvWAfsgieZRqgk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl2e0asACgkQFA3kzBSg
KbZEfA//eG2wIit8ZvHICrI4HHDAD/xgrOjZcCQHKy+PB5uNFMnEVdGy0ifN2Oml
NIZvvWUp0hjhw7ZkPI0uJQ/MLGO47R02T9s9IXx5s0OaxYjB3MINRr1r/8SHvY2h
4CeHFuMbAOdGx6h0vCACwXVpAvjewebvO45bX80AOXq88b8bRtS4Dx9sWIWRS8Fy
5wpSWP0fFbPCimwIkW8SZE6KZcKy4AenP95Jjxyv7YXGFXDRHgV9xAp5eXDw0ZZR
lhfsSkIWsQkNqOCDzwXO6IKX+GMu2UMzX8ipsXi0S2u03/HUGnhlxMg04AwH28x5
iQv7tO0Boj1/OMJ2jfz/QAk0A+C04lo20/z+heHJoBz6BbhFnbXX+tMUzdn070EB
AHN1pcLMlpPufqEcCBPj0Ky0RP2WH48vFqY+uJnTwAWAFx5quO1/DOYBRyzc4kPW
FnDv6cgFtQKIbO6UWyGs4dHOttBFs2KSpNWcFaRxUHqUDpR7BBw0Bt8V7f6irsql
lVPjyAQj5kDm3eA621uZR3/hFP4Ud1hLF1HzF+j9LX/1lA2+PMB/L7E2Yt6Dv+Ba
1vX55ITdwFTyQ1MKpVileOYL1IY62EcFvUdhi5ahyjQNQtHaslKwa/l4Q/WDpMNu
7AjPGDDcjnmNTW2DAcdxbHMeN3so766ZPr08ujZezcXZX7BBT14=
=ApV2
-----END PGP SIGNATURE-----

--UugvWAfsgieZRqgk--


--===============2646571758092879859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2646571758092879859==--

