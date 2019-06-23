Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D4B4FE35
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 23:59:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=itq4rW9hV6sR0uaUofFxCgyB+4vclWEEU0H6gpx9Aag=; b=OxBDuy/fybLWBgJoIawVrczdM
	TaE8e8NzcYxaei+EfNhWo+JiJXBOG+2d/NDzlBXi12jp6oQLJkuzc3jrZ0fCvBb0QKjA7f+NiqvGV
	kWwf1D3PmAgDkJXH+O6oGSQp6eR8jtzzc7C++PUOEDVpuYrMn5a4SWuSN63fYpFt4mmAGnRkMrDa/
	H4CbDvarI9bgFtldmXYraduSsefZGMkYGuEv2kzcB13ahsoE84At1YuvuDFDbjuFZyRjoEyrTnyiB
	hFs478++fUUOypIUtmk3ZFo6g/hsreSTW0vdEwq43HOy68ckG3V3qofynNsZMRVe4k3e4BeYW675/
	gPdL5wmpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfAVv-0004Wa-9v; Sun, 23 Jun 2019 21:59:07 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfAVa-0004W2-IZ
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 21:58:48 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45X5sS035Qz9s7h;
 Mon, 24 Jun 2019 07:58:35 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1561327121;
 bh=OEzrTpMB7aWMwD/2sS5vZldGTePP04H0y9EeyaLzovc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=STw7GXtdl0hhKZc7avfNGQZx8rjA2X4imUkcFt/0Xu83toQpsqKVjKCQXMHBai2f0
 qbBHXM/MCOz3fVJ7rNM/Wb2oHZfWbYtRCCc/4X4LgFqXlK9V5WlxvXxPLx9OPxsm7z
 55mtFkcA7IYAGWZXVhWGTZ9gqYXYnlgz5A/UARAcW1kEWWON76Mu9gyMagsKrLaaep
 Cu7z/0WcoztngBuqPWNlkbEcOKlDNWDHC5QBiIPl69aLQde3WfZq3+ITIUGaTpIcVH
 cP38mBIcP0BVFLC++foZruiHor0YAMOzUyGUOCGVReL4fch6yyq6tK3wqamP01pjIM
 ieWL9SnCN88nA==
Date: Mon, 24 Jun 2019 07:58:34 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH v6 18/19] x86: Add support for generic vDSO
Message-ID: <20190624075834.2491a61a@canb.auug.org.au>
In-Reply-To: <20190623190929.GL2226@sasha-vm>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-19-vincenzo.frascino@arm.com>
 <BYAPR21MB1221D54FCEC97509EEF7395CD7180@BYAPR21MB1221.namprd21.prod.outlook.com>
 <alpine.DEB.2.21.1906141313150.1722@nanos.tec.linutronix.de>
 <20190614211710.GQ1513@sasha-vm>
 <alpine.DEB.2.21.1906221542270.5503@nanos.tec.linutronix.de>
 <20190623190929.GL2226@sasha-vm>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_145846_841842_5B02324D 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-hyperv@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Shuah Khan <shuah@kernel.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Michael Kelley <mikelley@microsoft.com>, Peter Collingbourne <pcc@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Huw Davies <huw@codeweavers.com>, Greg KH <gregkh@linuxfoundation.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Type: multipart/mixed; boundary="===============7388630775926265412=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7388630775926265412==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/CR.if9_1Fi5MEdkDk1BLyhb"; protocol="application/pgp-signature"

--Sig_/CR.if9_1Fi5MEdkDk1BLyhb
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Sasha,

On Sun, 23 Jun 2019 15:09:29 -0400 Sasha Levin <sashal@kernel.org> wrote:
>
> Appologies about this. I ended up with way more travel than I would have
> liked (writing this from an airport). I've reset our hyperv-next branch
> to remove these 3 commits until we figure this out.

But not pushed out, yet?

--=20
Cheers,
Stephen Rothwell

--Sig_/CR.if9_1Fi5MEdkDk1BLyhb
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl0P9goACgkQAVBC80lX
0GyfOQf+KDEXgXOC5E+iMk6d4D73wD02MBcwff9B0zoCSHO7wBwHMfcazt0CBgJn
kDTyqzDFLcuCIPrA89xcZybdoNMg4aIooHEbEzdjaXFpm/Fs7d+jo+KVC0CoYEw5
pqOio0r0q85NiYk6eENxVa+j+yfmvnxKcVJO5s+T2ifWbWq06fhziMUkf3ZEytHl
1n48f9Hc2L5Zp4SoYWSF27Ro4Mo0H9aUH7RPvlt1tZkHN0OdfRS3NR84FN+w+KVU
TZpFLuislCHo8QKh/5OMv1AxaWP/RX2vJael9DguO+6hZyYBglxTK6+E1IIYe9C/
h0h8OPDTSELsQJmcd9Mda8F4vKV6qA==
=/eNi
-----END PGP SIGNATURE-----

--Sig_/CR.if9_1Fi5MEdkDk1BLyhb--


--===============7388630775926265412==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7388630775926265412==--

