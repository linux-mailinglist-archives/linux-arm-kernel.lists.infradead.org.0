Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A06F14FD0D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 13:24:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G+7TWxvqkQNeq9ZW9aiFiOy0hCv5vrRS7vXF/TuW6eA=; b=ibEZ9w/HDe7o65geiDrqBxgNv
	W7x69HSdV4wG/25SlcI2hoMPv7xA9N35cx+ImmHvIFaR+6vZSKtQN0+wUhaascUjIOz/royLdjF80
	SO6MugA1DjaRrX6S9o46p4ChB8vhjgKueX7YQyt/CE66MYgettBMmEspJwcYfq0SfwN9b4eURv25q
	Oeu6caGHk3GhrLJUHSVrb0iAirDfMeMZAnelSedPUtkFEAC618DS/zuaP9URVwLe3GdnD3axq4tgR
	nnMikLFcsylip7nnXvWy+BKBpx8ceEniHikePBeOf5Gkm29nIPyW8VROPzjQMfT50o5o8YqU9Hdeq
	ZN9ge5kYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyEI9-0004Ts-Fo; Sun, 02 Feb 2020 12:23:57 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyEI1-0004TZ-VR
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 12:23:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yQDGYskfy6d4Ic5b9Ykr6AUmvD96h/wBFQChrF6vatc=; b=pBnPvZMG0NcIWoli8sT3UHktF
 anTG1iGY05tgNOsFyX5hIPPW/VTGfNYm8/2uCi0UVzUXNa26rMqY4TiyUMAwOtQ1rjxEchHCJyqu1
 pX82Pfnfb5HOo4BY6OSK2nF20SNSe7qQ4Mpn5idNjKkhfVE8fJHCMn2R5YIgdx+YrOO7I=;
Received: from [151.216.144.116] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iyEHx-0006xw-Bz; Sun, 02 Feb 2020 12:23:45 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id EE321D00D65; Sun,  2 Feb 2020 12:23:44 +0000 (GMT)
Date: Sun, 2 Feb 2020 12:23:44 +0000
From: Mark Brown <broonie@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2 0/7] Introduce bus firewall controller framework
Message-ID: <20200202122344.GV3897@sirena.org.uk>
Mail-Followup-To: Florian Fainelli <f.fainelli@gmail.com>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 Loic PALLARDY <loic.pallardy@st.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "system-dt@lists.openampproject.org" <system-dt@lists.openampproject.org>,
 "lkml@metux.net" <lkml@metux.net>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "Robin.Murphy@arm.com" <Robin.Murphy@arm.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
 <20200128163628.GB30489@bogus>
 <7f54ec36-8022-a57a-c634-45257f4c6984@st.com>
 <20200128171639.GA36496@bogus>
 <26eb1fde-5408-43f0-ccba-f0c81e791f54@st.com>
 <548b1427-cf6e-319a-36e2-c3e9363b930d@gmail.com>
MIME-Version: 1.0
In-Reply-To: <548b1427-cf6e-319a-36e2-c3e9363b930d@gmail.com>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_042350_017048_D0A02564 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, "robh@kernel.org" <robh@kernel.org>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "lkml@metux.net" <lkml@metux.net>, "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Loic PALLARDY <loic.pallardy@st.com>,
 "system-dt@lists.openampproject.org" <system-dt@lists.openampproject.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Robin.Murphy@arm.com" <Robin.Murphy@arm.com>
Content-Type: multipart/mixed; boundary="===============6365716188698619028=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6365716188698619028==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4jz2RIiWkXBLiaBi"
Content-Disposition: inline


--4jz2RIiWkXBLiaBi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 31, 2020 at 12:48:33PM -0800, Florian Fainelli wrote:

> Like Robin and Sudeep here, I do not understand why the kernel should
> have any business in this, let alone allowing blocks to change owners,
> that sounds contrary to the purpose of a firewall being controlled under
> an untrusted entity (Linux).

Can we rely on there being a more trusted level of software than
Linux on a system?  It wasn't standard to have anything on 32 bit
Arm systems as far as I remember so you could end up with some IP
blocks intended to support TrustZone sitting idle.

--4jz2RIiWkXBLiaBi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl42v1AACgkQJNaLcl1U
h9Ad2Qf/Z89ElUT49FpCeQbf2hYD+rbmBZfToVl5iOvMgypip56DLpLz7Z9pg+fM
XNUGFiieZuTdvl02zzZNBQxe/G3sdoWmFREGsjq7rhCuoD8DZCYfZa/YYhOm7ME4
7txqcaZqSxKc1PQg1A6TNr/ItFpaWJ9sJPr61uOnPE0dDASNagjEARUNlV2wqW3f
z3HmQn3H7y+qffq+pHj11fNLLAMjs90PKztzqOFrhSUe5CBphAYH4mGFk9hpVZUq
r1kMsN6SjmINlLZ/XI1b03U3QnQMJLjVoDjtBpLKc5MQZMfuqx/Q6X/6Pp4RXUfJ
2mrNWRU65pMJeuVGwmd5Brs59iLTgA==
=jc/v
-----END PGP SIGNATURE-----

--4jz2RIiWkXBLiaBi--


--===============6365716188698619028==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6365716188698619028==--

