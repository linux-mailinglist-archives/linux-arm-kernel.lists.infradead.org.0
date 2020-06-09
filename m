Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C57C51F3C45
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 15:26:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=icLdCOtO1xkoKIOStASfVuU6S0SA/tBMMkaashTwL+g=; b=uzhg3prg+PBUqya4fz64wUE1t
	M/UqtK9PWQOAsoLLur+Eq8LqUz8OCfYn4GDyb6cpAQqUNM29TxsMSD4lMLk1hEr41PpfeK3+tZ7tb
	ZhEZfXuyHVVIKOA62QQeM0dMHAYQND2g0rc9VTAYbl/RalVqC5BhkoGo4No67QF27TndpJBACQIAg
	Y4fXyoLQbafZKmW2fMUz0WPjxUwc+4FqyPMXRU/I8LBiwBFpt+QJMyx/ZJfZGkVPXVyK/SMac26M0
	5Vc1q+80GJsecb0mF8o5nj0f+InxhCaLw3EMQ5Bezb5tm0HqCR6qrgmJF+5YuqwqwTCehfdzg3YCM
	S/G2u8qvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jieGp-0002KR-EV; Tue, 09 Jun 2020 13:26:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jieGi-0002Jv-BY
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 13:26:21 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7946A2074B;
 Tue,  9 Jun 2020 13:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591709180;
 bh=PD6ch/MJQc9epSsTqGkjMHuE3Bn2LG6EcC5hHXFGdq8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m64ifHeq25sd9NUSmmUGWjukAom8pausfLbRSSwhrcFU3eCJVbVlg0ILMpKb/Vked
 cAbbrFQLB4CNUK9xlRfrHUjsjod+WFOu1XpWokyplWBQ/zHrUOBIWmxvht7qCAMuLC
 RQOC4Mh+5nXlCKj0YAB/Fe3BUxAOyMCTAMvT3N7k=
Date: Tue, 9 Jun 2020 14:26:18 +0100
From: Mark Brown <broonie@kernel.org>
To: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Subject: Re: (EXT) Re: [PATCH v9 RESEND 01/13] spi: imx: add
 dma_sync_sg_for_device after fallback from dma
Message-ID: <20200609132617.GF4583@sirena.org.uk>
References: <1591485677-20533-1-git-send-email-yibin.gong@nxp.com>
 <1591485677-20533-2-git-send-email-yibin.gong@nxp.com>
 <20200608143458.GH4593@sirena.org.uk>
 <VE1PR04MB66388F89015F774EE3FFF69D89850@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200608153139.GI4593@sirena.org.uk>
 <59ce3620-00b9-bac1-30e1-011a29583642@arm.com>
 <VE1PR04MB6638B1EC49D295C64292B7BD89820@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <bcfc3637-65af-577a-ddbd-890b6c83a6e6@arm.com>
 <4a663b38fe5c6b2ee37049fb0dcd88b70dbf232e.camel@ew.tq-group.com>
MIME-Version: 1.0
In-Reply-To: <4a663b38fe5c6b2ee37049fb0dcd88b70dbf232e.camel@ew.tq-group.com>
X-Cookie: Be careful!  Is it classified?
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_062620_415316_9E7FCC2E 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "martin.fuzzey@flowbird.group" <martin.fuzzey@flowbird.group>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 Robin Gong <yibin.gong@nxp.com>, Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2562463764978421297=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2562463764978421297==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="924gEkU1VlJlwnwX"
Content-Disposition: inline


--924gEkU1VlJlwnwX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 09, 2020 at 12:09:09PM +0200, Matthias Schiffer wrote:

> I assume the actual issue is that the SDMA controller is considered
> registered before the firmware load has finished, but I have no idea
> how feasible it would be to change that (some comments in the code
> explain why this currently isn't the case).

Right, this is what's causing trouble (or at least the DMA driver not
doing PIO behind the driver I guess but that's pretty nasty).

--924gEkU1VlJlwnwX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7fjfkACgkQJNaLcl1U
h9BfBAf8CV0CLky89IU/mEpL41EP3zYDh1CpOj14T0/q0rrhzJssgAgiQpuqedGZ
+DCbmgd/BwcI8pzX9h8VKeAd+A3aA7VX99WyBCuXC0HlTSpVXfNToMQJbPtTnZ6Z
kOgDEW/grpy/YDCsJCbShsIhns0ziINTO7tY9uPaPqBXd9oMDgFLdWRT/FprI3Ev
k7hg5PoMjblnT55/96ZZgOCUp8OsE1U9vI+o0gModN1ksRouto/eMfei4IibQA9s
foKiP7g14rArPdSbl+JKhnjPvIt6wrxoNdD5TCh1ZH7u/MI7VrSRr5+OGhguRzha
K7/XCESdTGTHW+s5NU5gyADCheFsvg==
=iBCT
-----END PGP SIGNATURE-----

--924gEkU1VlJlwnwX--


--===============2562463764978421297==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2562463764978421297==--

