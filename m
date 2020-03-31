Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 163C3199BBE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PrgGmQDRacxGGVwkMAsoKLAm+Ibm76mHEYxvVqSPCfA=; b=eg2bW//VAybLWkxEufEueDnoc
	Hb6pN5USxf6/TPnovk4dfocs613jPvOGlIbWdktrxmdQcgoWoA1w/s42nKvwcMLh5O75v4NWyvqI3
	Vhh0/bPcxCWjVyAnqhluzJ1mawOBey7Y/A0gPJyxkGMX+C7TH5q/FnFJsZ/vXmhTbe+TWB8mJ/INr
	O7NRhGm7zuEIJ7j+jgr2A+8ayiiNPUhxP1gxkVbD1GqxuVvCI9qarZ4JQBPnyn1/27irB/0dIgrfz
	hxjioSityDF0u+9xCynI1FA2aEiQp7IopgMHOJJAsjQe9FiNM6LRO3SOH646z9j7M+EFwABD/rAGb
	HyKs82YBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJsN-0002hj-Fu; Tue, 31 Mar 2020 16:36:31 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJo9-0005Lv-4K
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:32:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=EnBQqz1Zs0ivzG+fg1aNTGdyXL/Kj1Ictb4w4EVq7W4=; b=rGTjR2j7vZXxGAo20BgdV5rrBa
 Djy5P+XSZlDgOmSIHnUVe87lmh/2xRwMN/0hxsEIdbd3fFJiY/2F7vLXrjBNH/xV4ijg9G8PJapDh
 dLBEw8L/ATsmRvF6e2Dv9WXvsFCX7NrWbNY56Kc3g+YxoHbumlLdfd9TTOKSmuUihgqOnIVbBqYZI
 sSLMSSXSXv4PU/EXgayY/YR6T6kLu6ANHNLiwZDI03/vfUqgKL1dvVrC2vCxOjHsai2iine7hM0hz
 CwnFaEjaOFJ9Qf5Ilq0V2tvVKJXYdc4eCjQnUyUqL5NvLufTu30yo5BTcEe3W82aFKUUl/esrVTd3
 qiSP2Hfg==;
Received: from foss.arm.com ([217.140.110.172])
 by casper.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJGYH-00019W-Ud
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 13:03:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 38C5D31B;
 Tue, 31 Mar 2020 06:03:29 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AA9483F71E;
 Tue, 31 Mar 2020 06:03:28 -0700 (PDT)
Date: Tue, 31 Mar 2020 14:03:27 +0100
From: Mark Brown <broonie@kernel.org>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: Re: [PATCH 2/5] ASoC: SOF: imx: fix undefined reference issue
Message-ID: <20200331130327.GE4802@sirena.org.uk>
References: <20200319194957.9569-1-daniel.baluta@oss.nxp.com>
 <20200319194957.9569-3-daniel.baluta@oss.nxp.com>
 <20200331122540.GD4802@sirena.org.uk>
 <CAEnQRZD_Hjp2vsouUURuZ_zgAnnUXynq_L5YgCZAN4pFkcmGWQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEnQRZD_Hjp2vsouUURuZ_zgAnnUXynq_L5YgCZAN4pFkcmGWQ@mail.gmail.com>
X-Cookie: It's later than you think.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_140334_360545_1B068F1A 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-4.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, kai.vehmanen@linux.intel.com,
 Devicetree List <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Baluta <daniel.baluta@oss.nxp.com>, Yue Haibing <yuehaibing@huawei.com>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 sound-open-firmware@alsa-project.org
Content-Type: multipart/mixed; boundary="===============6277946942233777135=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6277946942233777135==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7CZp05NP8/gJM8Cl"
Content-Disposition: inline


--7CZp05NP8/gJM8Cl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 31, 2020 at 03:41:57PM +0300, Daniel Baluta wrote:
> On Tue, Mar 31, 2020 at 3:25 PM Mark Brown <broonie@kernel.org> wrote:

> > This has you as the author but you list a signoff by Pierre before you?

> Patch was initially designed by Pierre [1] when in the internal SOF
> tree we already had the I.MX8M patches.
> Whereas, in the current patch series I firstly fix the i.MX8 then I
> add support for i.MX8M.

> Should I go back and put Pierre as original author?

Yes, if you're forwarding a patch someone else wrote you should keep
their authorship.

--7CZp05NP8/gJM8Cl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6DP54ACgkQJNaLcl1U
h9BNCwf8DKshKqaUb3H081iRZrUHWAJSZU+DnmiD5ENcYbns3F/gJNUhdt8nItvh
VRWzN4wsKM2ELUd0ktdzcRaxxQS52CBuw0JkJAsVMlOZ2UxE3hYBSe6HrT6gAvpf
BKcnouJmHOot/rGlw/Z+NtyCxEDQkqz24/+Jv63z6PRrnwb3DHDBJLhP8+FlJ2We
cKTS1TR290aRfdmPaXyPTiwxGolcGzf5ulXnmgi/0/ytRGd59Yi8IwbC/Cm1sbh7
rG+PE9vO5P2oHG8TBUUBAcGqO0nLtzn2UdkF6EVzM7IqcPr+QWeIdv9Fgo1b4BN8
h44Bx4448w4dpDXA6nidWLq33Zbe6Q==
=Aux6
-----END PGP SIGNATURE-----

--7CZp05NP8/gJM8Cl--


--===============6277946942233777135==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6277946942233777135==--

