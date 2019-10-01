Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B083C3F0F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 19:55:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iaBXg8oaYriS99c7rtbxcrcb6JMGirY1eX23Ivg4D7E=; b=X2sihGWxACs4JJdhyN9qS5uoc
	xkCzbUKA+8GzaSsQe7l2VDMH6zeBsj4xzLrPnZaWmiaVNT3vVxu0XAJrQkCaIJuITVg2jZvUkGbrI
	cIDV3vRyoZpCq1HS3WYMFOhtjKBDglWbcpIH83/qGeTY6dgw5KYa8Eld792iTDMreq8uTkBXEfRkm
	ZEOUec1/NMcjifUi4eECT8BdQARJ7hNgF4q2TcaznzongHFMfz6l/Wld2Rp2/2Gepps1xJTr+qip4
	cJ6DeN60tMIs95UTkcXE/egjrciPlB3x1yi1oBgumc4YqUpKJpSWuixU8ULFbWss0WpPKRj/JU7v4
	daIKPGY3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFMMj-0006ml-UV; Tue, 01 Oct 2019 17:55:13 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFMMd-0006GF-30
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 17:55:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UdeDTcRqRLmOWNI66TIvhiXBuusNntkv2kJPDqWMITI=; b=cI5pL9xvdMaZoQSXt/BoTvwCf
 6MS2X7NqiP8DNfNNUfGVb1cu90q/m0myKcYkXX8xFft8BLi1/eB1uQnWkEvPaSyVqJ7zv254ZjiaL
 0xfG4zbL4U3UWysSzRXKZSORC6SNhkkmiB1vOhVgMIPOuM7iGQ26qhGgh++OtljBweJ90=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iFMMZ-0005rl-6M; Tue, 01 Oct 2019 17:55:03 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 13E7327429C0; Tue,  1 Oct 2019 18:55:02 +0100 (BST)
Date: Tue, 1 Oct 2019 18:55:01 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ASoC: atmel: fix atmel_ssc_set_audio link failure
Message-ID: <20191001175501.GA14762@sirena.co.uk>
References: <20191001142116.1172290-1-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20191001142116.1172290-1-arnd@arndb.de>
X-Cookie: Happiness is twin floppies.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_105507_142403_D29A6254 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1918172737366426622=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1918172737366426622==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7JfCtLOvnd9MIVvH"
Content-Disposition: inline


--7JfCtLOvnd9MIVvH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 01, 2019 at 04:20:55PM +0200, Arnd Bergmann wrote:
> The ssc audio driver can call into both pdc and dma backends.  With the
> latest rework, the logic to do this in a safe way avoiding link errors
> was removed, bringing back link errors that were fixed long ago in commit
> 061981ff8cc8 ("ASoC: atmel: properly select dma driver state") such as

This doesn't apply against current code, please check and resend.

--7JfCtLOvnd9MIVvH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2TkvUACgkQJNaLcl1U
h9BpXwf/ZbLU57SSOIs72nreZTj7QYl5ewRdha8NvlgMpwL9Tpoann2+x+D1YwW4
YrgZi10+u/d5JJXj26Le5tfl9/XHOiEtnsmSGeyyZ4HCMkGdsN/pbOteyNVq8OSm
m0kbUZzyPrs4UShvQmtmf/NVGAEMno5FWExHJMesI+HCkAguc43qkgPrhCK6w6hE
OTG/+vIokBlBGCwqdM597185U5H/O/zeEtMF//UhLEOyzm7SiowvGAFOukr7PQzK
UCJeArfyY1ik0gYbptXvjoo3+Y1DKg/sRNdtNoF14WIS2oHOkTKm6dpuqxfN2RIt
He43J5QRq+JEaBnzvw/+7mvakg5Rjg==
=mk8+
-----END PGP SIGNATURE-----

--7JfCtLOvnd9MIVvH--


--===============1918172737366426622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1918172737366426622==--

