Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC16112799
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 10:34:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q31RZZjUKT8WxZ7ohRqzG+g7wC+eOXaUssNYdB1V7qw=; b=HiOX4zOJ0Jpn8I0oO7usOR38S
	NLFLleQoed5RmmINA8aEAxztkVID+1fP8PQp+67nP2NHjaNGdaredkyujT8vaVMHYNyHkXHBXlCqP
	JvhF85sfLMXTGdsXYSTAWOkBiGRnyVMlTp72hOGK0Dbr5x9Wd5ItsDsepkxU60dDqZ9MBNlX3jsB6
	Uvuc1uK2x52XZ7IxPry1m/K44syD1zQmpOfjikZMN1d0KRFgyeovgqrO8HwIn8qoleu0zGbyszifX
	PJrjTNi4dXlaU96qv8RYfbAWalWfKBFXoDTauErTVUKle5ij0IeBYsY6r986D7JlJDH5+A9GlRu+V
	mt6McxwUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icR2d-0000e1-Ti; Wed, 04 Dec 2019 09:33:51 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icR2V-0000dT-Qa
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 09:33:45 +0000
Received: by mail-wm1-x344.google.com with SMTP id p17so7042833wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 01:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YeNtWDC9yu11do01uPKTJ8tyebtIOy7shSOEQ51fT68=;
 b=VikpHcZ/reaArIFbOLJ3gQSRFkNOPGrLauDrC0fLeiR21Fz+fUOrdyW99c3Aqxnp3L
 1CCnO5O00SzkOX5S1XBhBhW/eg1MGxf0L1QCpHNEF9UTzJVddG5cE4+vpbbGQIs1jsGf
 AOo600Ba5zeGMQyRTUdWbN+ybT8r1odwz2vP6DKqqj4Kxlj0+hw4LUDPfCGYU1bYeDdY
 y3IsxOiRk1pyqrJAzDS4E7/V7ZEBg7dWPHKsqA9fFP+GzGdyLb+yG37FJr3L4B38+HY4
 UcCa7GLc2OEhCcAMr1MbF506qY3IxDMbRguqTHjkwpJd1UwOdgSVoz8Z3+mjAyGUcEEc
 nU+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YeNtWDC9yu11do01uPKTJ8tyebtIOy7shSOEQ51fT68=;
 b=NsvsHiBc5ilJuvqJsg0Age9fSBDxjLa5eRmpFat2DAKbS+GJgqgzNSNqT4bS7UBWnO
 w69GqYu573AE7g5xuSYBCSpY4H0ohQwMNKWUFYLO8k6/2UD11n/R6EIyWjbsYReQf/he
 YTyPUf+/Jp4dlKVjD8qRDIauE4syFSOibVXCDJejhgIcW2Y3pO5tlJ50vtl7OuugTtZj
 jkElW5aOEFAAfpu9VXP8SCCWwPpbJ3AtwQonplivoVvhPhpX3u/d29rzM3MRxrAbPaIx
 Ix5EA55PYBvud/Q1ErSeiUcBev5yB868APr7UYf5LaeY/Q7moBC4tK1JTmxK0o8eZgzZ
 8IkQ==
X-Gm-Message-State: APjAAAXiAdziBACbAGSB9EQm3yUvpPsRvQDBWBe/6n60nYBdU8CnrvAU
 sQ7s2dTYOuN59HMmB4dddX8=
X-Google-Smtp-Source: APXvYqxBP76BkvTJP+49l9MBIT/rXI0NnxazAIoLHMw/CZzKXZCC4KbLPemmwIXB7IIi+kePIhR6dQ==
X-Received: by 2002:a05:600c:24ce:: with SMTP id
 14mr36627444wmu.122.1575452022150; 
 Wed, 04 Dec 2019 01:33:42 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id c6sm5947752wmb.9.2019.12.04.01.33.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 01:33:40 -0800 (PST)
Date: Wed, 4 Dec 2019 10:33:39 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Subject: Re: [TEGRA194_CPUFREQ Patch 1/3] firmware: tegra: adding function to
 get BPMP data
Message-ID: <20191204093339.GA2784830@ulmo>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <20191203174229.GA1721849@ulmo>
 <9404232d-84ce-a117-89dd-f2d8de80993e@kapsi.fi>
 <20191204091703.d32to5omdm3eynon@vireshk-i7>
MIME-Version: 1.0
In-Reply-To: <20191204091703.d32to5omdm3eynon@vireshk-i7>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_013343_862155_33CC3A66 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Mikko Perttunen <cyndis@kapsi.fi>,
 linux-pm@vger.kernel.org, catalin.marinas@arm.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com, talho@nvidia.com,
 bbasu@nvidia.com, linux-tegra@vger.kernel.org, Sumit Gupta <sumitg@nvidia.com>,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0357573642853178650=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0357573642853178650==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WIyZ46R2i8wDzkSu"
Content-Disposition: inline


--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 04, 2019 at 02:47:03PM +0530, Viresh Kumar wrote:
> On 04-12-19, 10:45, Mikko Perttunen wrote:
> > Now, my original patchset (which this series is based on) did add
> > nvidia,bpmp properties on the CPU DT nodes itself and query BPMP based =
on
> > that. A change is still required for that since tegra_bpmp_get() curren=
tly
> > takes a 'struct device *' which we don't have for a CPU DT node.
>=20
> I may be missing the context, but the CPUs always have a struct device
> * for them, which we get via a call to get_cpu_device(cpu), isn't ?

Yeah, the code that registers this device is in drivers/base/cpu.c in
register_cpu(). It even retrieves the device tree node for the CPU from
device tree and stores it in cpu->dev.of_node, so we should be able to
just pass &cpu->dev to tegra_bpmp_get() in order to retrieve a reference
to the BPMP.

That said, I'm wondering if perhaps we could just add a compatible
string to the /cpus node for cases like this where we don't have an
actual device representing the CPU complex. There are a number of CPU
frequency drivers that register dummy devices just so that they have
something to bind a driver to.

If we allow the /cpus node to represent the CPU complex (if no other
"device" does that yet), we can add a compatible string and have the
cpufreq driver match on that.

Of course this would be slightly difficult to retrofit into existing
drivers because they'd need to remain backwards compatible with existing
device trees. But it would allow future drivers to do this a little more
elegantly. For some SoCs this may not matter, but especially once you
start depending on additional resources this would come in handy.

Adding Rob and the device tree mailing list for feedback on this idea.

Thierry

--WIyZ46R2i8wDzkSu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl3nfW4ACgkQ3SOs138+
s6EIBg//a33VPigHL3zRzIUiZIv2SFgdhCGaVV3e7V9z0U/4X7XG5IjvjUG7ISo6
9/GToldoBLjsmrJ9RmHniEBjuR9af4X3MwnqjRwXMkCKIU64wV70CmTluzFsjV79
SLwNhFLHqkjQlBXyuk6/DTvTcouVR2jlmQqffGDCzI7ZYmlHI/Xy9aLR6bdmwtgU
TfaGwkRbI7uzy1QOWQv5Ed/02JJUT/vWoeL77SN7lBIY39ublmVSO9rB7Y+ZMnpJ
bv2oxl8Gfq0Re5Qfv+vU/aigDlzg8E3aKlHKv7B0yfKcYexN6q3zP3kAwWlwiybn
XYhKfO7BUnocYKojIUKnufQa4Zh3DIvseivUmSVPchNEcyUPNyDY+kr9ENcrxO18
Nim4nwnVPtOq8IXVnAtl+96AMp5bsrDDJIbTkhRAX4+A16y3BWtxcpVE1oxXdBVc
itup4GIYycanGGdlrkVwtbvehoZGVnleMiJ47naJBZK6HnRqp9T46H50i2SEXp7V
kJHhLpSFaiCqxfSAHcjLnm+rpc4S0aNJ0s4W9Q2NKGpZvfpEid4a+sW5L7pWPL56
Q5ozI4pP8STS2DsbMRtiXYXYHoG9NQFtfWQwhWgtNHQgqlVKnJc2wGAE4lLQx0dU
aEDCx5ImpUEngi26C7Zd+8ja0Y1FHbg+tELsHWytryF+YfUNmUI=
=uBL9
-----END PGP SIGNATURE-----

--WIyZ46R2i8wDzkSu--


--===============0357573642853178650==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0357573642853178650==--

