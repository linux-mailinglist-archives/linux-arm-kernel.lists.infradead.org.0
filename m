Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E821DF6C8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 13:01:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zR/bvH+DJnp9vBeAVaBQdxWx90zujeagF5FoqvQgjcs=; b=W5eyavqL82qKAz9/jgiTQ6NWj
	GWK0AI89LBzVded6o9RNBkNHN5szpagGQxF4Rgl7PTK9+qqUwA3o7pKtP1Hf/sjUMQpmVyYqUj3mj
	6ObmXxTGi95JFnMcgSdmGW/fAI2EIJVWvE1Uouc9aGJUeQXK8kgAxsWVwiz5t5fQBWG3Qb9dxHwX+
	iI1ESn7ntgoc6Pd5LBOLYzUYzXjZU1UKeBl/YUofPBnSCWn7Qe+23uEpDsGU7rxil3ZOiWanQXPL1
	PloX0jG1z9yjXse79Xcoj4nZSZNQNY73WFAv3wWQnmf5+JhfUhFaPTpj/D6qCyvLya2srkmn6CF/V
	aEhuNvWsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcRua-0003Yq-Sk; Sat, 23 May 2020 11:01:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcRuS-0003YS-Eu
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 11:01:45 +0000
Received: from localhost (p5486c962.dip0.t-ipconnect.de [84.134.201.98])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5AA4D2070A;
 Sat, 23 May 2020 11:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590231704;
 bh=xemUji08Zmu27LB6PcMCt2apr23hpQFKF9p4eBeTcUs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PvxGdi8JW2GIxv1ABsPvTRT7aPsZr1ZUbmMFkyEtmN8PfosXq6gmoO2sa8qFQe7o0
 39mzeGKp7wFGafKBDr+GrIOaPyYxL8PmCLhogdPcUpNa80rM57xQ+ty8+rxMhqoZkY
 NIAS5Rk4rTZVL7njuQMdcRMuKJwlz3v1bcDz8QxE=
Date: Sat, 23 May 2020 13:01:40 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Alain Volmat <alain.volmat@st.com>,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>
Subject: Re: [PATCH 4/4] i2c: stm32f7: Add SMBus-specific protocols support
Message-ID: <20200523110140.GD3459@ninjato>
References: <1588657871-14747-1-git-send-email-alain.volmat@st.com>
 <1588657871-14747-5-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1588657871-14747-5-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_040144_525303_6A229DE5 
X-CRM114-Status: GOOD (  12.86  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1357219314392855355=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1357219314392855355==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u65IjBhB3TIa72Vp"
Content-Disposition: inline


--u65IjBhB3TIa72Vp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> +static int stm32f7_i2c_reg_client(struct i2c_client *client)
> +{
> +	struct stm32f7_i2c_dev *i2c_dev = i2c_get_adapdata(client->adapter);
> +	int ret;
> +
> +	if (client->flags & I2C_CLIENT_HOST_NOTIFY) {
> +		/* Only enable on the first device registration */
> +		if (atomic_inc_return(&i2c_dev->host_notify_cnt) == 1) {
> +			ret = stm32f7_i2c_enable_smbus_host(i2c_dev);
> +			if (ret) {
> +				dev_err(i2c_dev->dev,
> +					"failed to enable SMBus host notify (%d)\n",
> +					ret);
> +				return ret;
> +			}
> +		}
> +	}
> +
> +	return 0;
> +}

So, as mentioned in the other review, I'd like to evaluate other
possibilities for the above:

- One option is to enable it globally in probe(). Then you lose the
  possibility to have a device at address 0x08.
- Enable it in probe() only if there is a generic binding "host-notify".
- Let the core scan for a device with HOST_NOTIFY when registering an
  adapter and then call back into the driver somehow?

Other ideas?


--u65IjBhB3TIa72Vp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7JApQACgkQFA3kzBSg
KbZPBg//Yu/cFAZDkasWicaLj/8KEo4knB3mYgq+/AGe8Sib9oPeQYo5UCBjjXhv
svRUyxcoHxwRvRo5iG/0hl3SzrAZz1xoz46znwdyGfUm5pX1cDe4o4wYUnuQsuJL
Kfg4+nQ/qLW75cOj1V1z9Tf7QGCWEhxkedMt+Up7xpDS06ZcwIb+Q4TE+Ziu/LYc
MoDLi4rbjWVSZKWRKpBvAAXyVLZUoFDJuHGr39IafE9Y3JdixRglrjwDE6T4feQS
V68mGqcWG1LBPtsyonN6PvPJq3bp9ZxhvhUioLUZCcoxmdSyT6qDewcOHczkwlnr
ZZ4tX9QZjPLwEe6VaTeJqWWvOkrWPlsDOnUDiZq8WPowITVL7eRNvkBpkRpCRkdH
hDNnOYtOgjVnGwkgM/S8aUEla8/LBTCWoFiGJ38yL7aNxXbEpE+uVQLsG1d2ci52
xfZZA0hm0GDxYKnigr11x3mIA8VdZLtQeaTw3EUZAsUWfKV/pfYRElsDZ/dul984
cSioEGynR6ndQJ+fEAaiRR2KWUaOUEaLCOco6aODIy/stIJnfSEQDk+cTsfBQV8v
Ptp5MEwkOItxXftIwDLexRaob7cbre+jNa/Nsvl1EcJpqq2pN1dCXM40JVdqA5a7
J//X8FOfUW0pALR5BSvRFtV9QaqJ/MDXbeww81CCLO8Zo+uv6g4=
=5Hj7
-----END PGP SIGNATURE-----

--u65IjBhB3TIa72Vp--


--===============1357219314392855355==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1357219314392855355==--

