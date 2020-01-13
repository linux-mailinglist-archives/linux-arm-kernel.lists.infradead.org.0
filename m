Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC206139551
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 16:53:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NPsjYzyA57KnT6koWGtTyGc6XNMaItnvnqrJ9p06CEo=; b=SjeYrbB7FeVCB1ZVxTA+PRXTz
	S/ObXoAVZ8ttf51GqUn7aE+ujvv+ac6e/BLVHUVFMkC7oOsBMsGwBLL0vRDmsl+vpQiJFJhc0jTe9
	kvKiP28j38mfUsa0u6zemuYazdvD8tkeEfxAZw7YUSf+Zmp259sv10IY7a+fK38ztmgL1sAyB4UHU
	HyxyN4mVO/gOEhbwzXpDvrhmM18miDPEFmOXEDzL2mjFNcRabPNvIYpMBbl7zBGZz+5K6xng3x3wN
	RE6AW8X6CbNVLHQEjy5nG6nxEp1LEFWfmcOSQaV+ugrMyS1W+5lnJpjmBfYsTGxAQjZvkMP55gKYU
	LDpHdXQAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir22F-0004Sz-LC; Mon, 13 Jan 2020 15:53:47 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir224-0004SN-PC
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 15:53:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aEQXcauEtwtBTMlxbZX7udfUWpI37znKKr88yDEAqxQ=; b=YHz+pZ1lLirdpU1tTN1eAEZ2r
 IKMucJkzS5KpRS42TeZub17Go3/m4+Xkn5fk9nhWtKp4qqjQyjd1r3LaIiKeX6KJXflCOXbC1xFzR
 tmuyU8lo7BM7sfjZHKTJFEx0qmxLii1sMLT3GN3YFn9kxPMQCfVmki8F+sTgc5FHcSKYk=;
Received: from fw-tnat-cam7.arm.com ([217.140.106.55]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1ir221-0003bw-8n; Mon, 13 Jan 2020 15:53:33 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id A2941D01965; Mon, 13 Jan 2020 15:53:32 +0000 (GMT)
Date: Mon, 13 Jan 2020 15:53:32 +0000
From: Mark Brown <broonie@kernel.org>
To: Jeff Chang <richtek.jeff.chang@gmail.com>
Subject: Re: [PATCH v5] ASoC: Add MediaTek MT6660 Speaker Amp Driver
Message-ID: <20200113155332.GO3897@sirena.org.uk>
References: <1578644496-16575-1-git-send-email-richtek.jeff.chang@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1578644496-16575-1-git-send-email-richtek.jeff.chang@gmail.com>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_075336_815452_13C6D625 
X-CRM114-Status: GOOD (  13.79  )
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
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, tiwai@suse.com,
 lgirdwood@gmail.com, jeff_chang@richtek.com, matthias.bgg@gmail.com,
 perex@perex.cz, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3373422345699227730=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3373422345699227730==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/TUrtqMIkCP4YtJm"
Content-Disposition: inline


--/TUrtqMIkCP4YtJm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 10, 2020 at 04:21:36PM +0800, Jeff Chang wrote:

> +	- rt,init_setting_num : The initial register setting element number.
> +
> +	- rt,init_setting_addr : the addreses array for INIT Setting table.
> +
> +	- rt,init_setting_mask : the mask array for INIT Setting table.
> +
> +	- rt,init_setting_val : the value array for INIT Setting table.

I'm not 100% clear what this is indended to be used for but given
that it's just raw register writes it's hard to see how it can be
used well in a general driver - it basically means we have no
idea how the chip might be configured in any given system which
*might* be fine but it could break some assumption the driver
makes about the state of the system on some particular OS or
version.  If there are some system specific tuning parameters
that need to be set as raw values it would be safer to do that by
just including the data in DT (eg, "X bytes of data to be written
starting at register Y to tune component Z" type stuff) or by
exposing individual parameters for things that are documentable.
Allowing a completely unconstrained sequence of register writes
doesn't seem like a good idea.

If possible it might be best to send a version of the driver that
doesn't let this stuff be configured at all then a patch on top
of that which configures all this stuff, the rest of the driver
looks good now.

--/TUrtqMIkCP4YtJm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4cknsACgkQJNaLcl1U
h9BTeAf8C55cmcfxY+HHqvC1iVVcYfUzf1wTdh3zed7cpd624wm6yrjvr2UzzcR4
t/LEvnTIeZTPFvorQNMaZLDM5KWU8YWrll6SM6deiXo2dv5uAFzs2XGY+eRvTnN3
HjcX+dnQlvd7ZCekd/b7M03IhNGIx5VY3QDDhbDTDrHA26wpil5GT3seJhV0yXsM
w1+ITl4WshJ1kDwE8+jIBG5j7FfR/4ig3ZDb2iP2frIKn7r12AJDlQXfM/pf3vpm
IXFs+JX8tyuHEU35AyG1vMOoReF0/UDGvgKI0m0hiV7E9W37FHfB+bJS64sSmnTv
4EUo2bTKPCiJv7BxPJVngMSK1D+qeA==
=xYed
-----END PGP SIGNATURE-----

--/TUrtqMIkCP4YtJm--


--===============3373422345699227730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3373422345699227730==--

