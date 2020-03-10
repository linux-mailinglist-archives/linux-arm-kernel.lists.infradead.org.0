Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34083180341
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 17:28:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=af7o0pkaCq89QEM1ytg4SN7GEeZiN0TIfiefPbjL38Y=; b=VtWUAEFCSwxFLxzDNXo4HCtlJ
	/maBezoLq5VjDm0hzunHIuWQ+mrjkRVcWxjp30u/7d1jRIrrfwp0BIrknKpS1pC8AsA1Hz8opKYBv
	PVBKMi+vDL7xBWlSoSw3vrpyxye4IlT8oJJ2KJHHCM3usr7pE47WF7KPF9opHI8KxVu57qAMQFW9P
	Mmm79u7FTwu1l81C8T7n24WfI+aYbx9+NHrF7hB1nkkptRMLgNB1v99n7T5sqf5b7Xbby2V3SSvUI
	+Wan9jmHwfzhdGngHlwBHIVLvym+6z5o94OzsZJWal5nRdwTHsQwG7mev/Rtkvs4PLDelzk+QZHpQ
	Cuu6RJ3rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBhjx-0006o5-Sm; Tue, 10 Mar 2020 16:28:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBhjp-0006mX-9X
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 16:28:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8ADE21FB;
 Tue, 10 Mar 2020 09:28:10 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0FC453F67D;
 Tue, 10 Mar 2020 09:28:09 -0700 (PDT)
Date: Tue, 10 Mar 2020 16:28:08 +0000
From: Mark Brown <broonie@kernel.org>
To: Kevin Li <kevin-ke.li@broadcom.com>
Subject: Re: [PATCH] ASoC: brcm: Add DSL/PON SoC audio driver
Message-ID: <20200310162808.GI4106@sirena.org.uk>
References: <20200306222705.13309-1-kevin-ke.li@broadcom.com>
 <20200309123307.GE4101@sirena.org.uk>
 <69138568e9c18afa57d5edba6be9887b@mail.gmail.com>
 <20200309175205.GJ4101@sirena.org.uk>
 <8113837129a1b41aee674c68258cd37f@mail.gmail.com>
 <20200309191813.GA51173@sirena.org.uk>
 <1165b736-d0fc-1247-6f46-94a51d392532@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <1165b736-d0fc-1247-6f46-94a51d392532@broadcom.com>
X-Cookie: In space, no one can hear you fart.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_092813_378142_5A5946A0 
X-CRM114-Status: GOOD (  14.95  )
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Scott Branden <sbranden@broadcom.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, bcm-kernel-feedback-list@broadcom.com,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5449584711293743298=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5449584711293743298==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WR+jf/RUebEcofwt"
Content-Disposition: inline


--WR+jf/RUebEcofwt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 10, 2020 at 08:49:08AM -0700, Kevin Li wrote:

> > This is not how any of this is supposed to work, it's unlikely to work
> > well with other devices.  If the device supports both master and slave
> > operation then you should let the machine driver pick if the SoC or the
> > CODEC is master via set_fmt(), randomly varying this at runtime is not
> > going to be helpful.

> Maybe the name "master/slave" is confusing, these names come from internal
> chip signals and do not represent the state of the i2s bus master. Our SoC
> supports only master mode in the i2s bus. The Rx and Tx block each have an
> independent bit to indicate if it is generating the clock for the i2s bus.
> The i2s bus clocks need to be generated from either the Rx block or the Tx
> block, but not both.

Right, at the very least this needs to be better documented in the code.

--WR+jf/RUebEcofwt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5nwBcACgkQJNaLcl1U
h9A6pQf/bT2lCprxs3DA2/Vx/yM3Ff2ZDC3VmEzFcFoscpWNx2hOh9KohpTKb48l
laXl5M87VISWnaTdNMb1uBh1FPljBqHfYdE8IlUbr9qU0i88TJ883m9YxTPQ5xv7
Xt27ndFU/3gzEzDrpwKB/tbCCcYKoCwMIgPTs5eRNUzN+TY46HcgnxFFQ6ztGQ99
lh/5tl7Bgchn3Vy0GgBJKj0LDxkZta0GAI8MMt5M4pMOBUFJSG9ULQfdyNhB1n8D
ev0H3RU4FWKIfJx6CkWwwhnb/BrdZ+xPTF1kTYaGmkXeL7dJgjwJe6rfsSnDWbOU
01yQDtxGqZZMUMHy7OA6TlHLpyd5UA==
=Pkro
-----END PGP SIGNATURE-----

--WR+jf/RUebEcofwt--


--===============5449584711293743298==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5449584711293743298==--

