Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 146C11DF6A5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 12:36:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e3mgrdFN9xIzIgfJueYTIGkYcYJ+e+2T8b+Dq1nBRp4=; b=etAkt8bomAvid7XY9GOsK2GJF
	VbcvmLXrU4Ut2BlXgfC73G1IRYWER46ETfBPg68+umX9LJmPByHrs8B40MbcWwdZMyvEp0g+2Gd+T
	H17THEUf7bqt8b65t2ItzvrUD8DjYnL59EuIV8UwZb7F4yZh8dZdM3W6lsh5hYLyZ6WHZR9gQy6jj
	Y+Nkp7YUp5q4meQb9FBonFyMmIq32DdtY/Il5IxSSwwl4iRUr5AxlZ2DsK/GRyxTY1LaNmvDhtS6I
	IkUFKHasNIN9gv03SR2XIEBWJaXBSxmG5SBBoSViONoiVgQ038XLAFvptWabq9b/GnDQg9tm8V+xp
	DGymzMXZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcRVr-0005HV-3n; Sat, 23 May 2020 10:36:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcRVl-0005HC-Kq
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 10:36:14 +0000
Received: from localhost (p5486c962.dip0.t-ipconnect.de [84.134.201.98])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBBAC2071C;
 Sat, 23 May 2020 10:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590230172;
 bh=0HzKqeO/bdhEuUfUb/+2HOuRW4/bgdkt0jgum4LSP7I=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=tcvPOX7FmK7rYwEMs0HJbm5mXoYSvZ/SjgG1xtFkYnqcuzPx/GVq4O6LXnX6Eh5jk
 c4jwP5wSX6gLthoBAv+t1O0DRMCFFPSoFh5CSHH6U2P0G10YU4sxA9pZOvnSnMBic0
 PkhLQwfl1X1gtHJthD25SaApF13kbUkzfAA8Ia8Q=
Date: Sat, 23 May 2020 12:36:01 +0200
From: "wsa@kernel.org" <wsa@kernel.org>
To: Rob Herring <robh@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Pierre Yves MORDRET <pierre-yves.mordret@st.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Fabrice GASNIER <fabrice.gasnier@st.com>
Subject: Re: [PATCH 3/4] dt-bindings: i2c-stm32: add SMBus Alert bindings
Message-ID: <20200523103601.GA3459@ninjato>
References: <1588657871-14747-1-git-send-email-alain.volmat@st.com>
 <1588657871-14747-4-git-send-email-alain.volmat@st.com>
 <20200513021932.GA9172@bogus>
 <20200513054231.GA16558@gnbcxd0016.gnb.st.com>
MIME-Version: 1.0
In-Reply-To: <20200513054231.GA16558@gnbcxd0016.gnb.st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_033613_725718_A01D965A 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: multipart/mixed; boundary="===============8557551258582944836=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8557551258582944836==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline


--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > > +        st,smbus-alert:
> > > +          description: Enable the SMBus Alert feature
> > > +          $ref: /schemas/types.yaml#/definitions/flag
> > > +
> >=20
> > We already have smbus_alert interrupt. Can't you just check for this in=
=20
> > the slave nodes and enable if found?
>=20
> My understanding reading the code (smbalert_probe within i2c-smbus.c, of_=
i2c_setup_smbus_alert called when
> registering an adapter within i2c-core-smbus.c) is that smbus_alert refer=
s to an interrupt on the
> adapter side. That is an interrupt that would be triggered when the adapt=
er is receiving an smbus_alert
> message.
> In our case (stm32f7), we do not have specific interrupt for that purpose=
=2E The interrupt triggered when
> an SMBUS Alert is received (by the adapter) is the same interrupt as for =
other reasons and we check
> within the irq handler within stm32f7 the reason before calling i2c_handl=
e_smbus_alert if the status
> register indicated an SMBUS Alert.
> So my understanding is that we cannot rely on the mechanism of naming an =
interrupt smbus_alert.
> Did I misunderstood something ?

I just wonder what is bad about specifying the same interrupt twice in
the interrupt properties? You could then check in probe if "smbus_alert"
is populated and if it matches the main irq.


--BXVAT5kNtrzKuDFl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7I/I0ACgkQFA3kzBSg
Kbavuw/+NO4H+Xha0Xe144SeVcvWUywbqoyWBQ0bwabNCH3szXM85RHPfEQsUXMo
bwOa6rKiRHSI34T/PwCmjvNVAadYuYIkjGpLFNbUQEhpnEehWiLcsQMYWJUzg+ZE
5uOg0Gbd5/Db6a/jpdF9A0FaPomsmqNPuXiThftutc5p1pk0eQzixOBaK61Ywky3
OZoyCrOS4y2nZ0jNvCcccJI/38s35Sf0E5vMo0VUkXpUlqucdRp8oDWhapDNW8UP
bvmCU9Xw7vfM1iaYOQ4hX0bUus/bH5/vkgEjnsEUNxlsbNB+nZDNAxm4ZLRr3hYW
aLKVw6H+P7ZSbSOKy9SYzo+aHixk1r47kpzwCxLMEh3ul0BYwcArDQbqq0WtbhYf
4fVswX9t5t194CW61jE2k/f12qiDpVJ3cn7XZZ2ygKY5JfmW3N6qjB+FY/o0amxs
pfxClFmbMXuq4Bcn4+4Qj23QSAO4xxYkY7ImziQa9mYQAtmaJUagVzRxUz9JkP3Q
qigB58PeO8etgZ+U6yNKjG6fxNg1THTmWtuE83Z5z0ZdwXyEtZLBpsXM8zCtptHq
8m4ZI4SU6XVAFvQjrPgJXVSuZ1Tkc7ZJuBpXWF2UFhVGcJSeptEnkPQel6VJXME+
ka3e+K9lySX+ub5zdNvEI+Uz3q9mTVzJP4RbW7PP7w13jb3kjm0=
=NDSc
-----END PGP SIGNATURE-----

--BXVAT5kNtrzKuDFl--


--===============8557551258582944836==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8557551258582944836==--

