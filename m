Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9A1337BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 20:22:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GItwdz6VenfpMIfjK7B5mZunTZAi823btawYGpFq8ng=; b=Yuh51XI004pbBp4D3qW+hoTPD
	MJSZm8bJLCCHMHWaWcweUcxvNbormzK94txUQJV84F7D5N0/NeM5AcYkXAxqqlNzpxyLcxkFoarSd
	k3PXHupYm1O2juXJu/LIQyBMIreSSHAtQHfg6rBwotzpnTnYBp9jChobVbZ9kiL6gOsBJQbb8HxSg
	4s/2TWcCjmKpaCCZKVSaYtFyR83g3VcsEUdEIk+ljir6jAK+vCHr3IJTrIMjA+cZvL8noWRByKEtD
	XsaFGecHSTb7i8W3m+tqq/I6L7cK3Dzvl5iIrtqJWSbjgJgsdNQnrQ9GH6g0PfsdxPcaKC3st6gbL
	KmCoU/wiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXrbQ-0006Yq-2p; Mon, 03 Jun 2019 18:22:36 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXrbJ-0006YT-5G; Mon, 03 Jun 2019 18:22:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3r3KESlL5pAfrYtn4vQKj5z96Mal9mpoBCdHth5veJs=; b=JfH0ghwn1a7WHN/lmUoj5GFKQ
 rlaH6Ld8CGB1LBHNnaLHyptkuOpHpVn4RlVlEajg/RfzRvZjZCPabi+FnzvpITJCWqBuMmFjgG0DJ
 F2brHBjRkTsxlKOX8ka2KclZKhdoBzGbL1u42f5VqwulFI7nQCn3QbN5VRxGiTtgRAzZY=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hXrbC-0003dj-RV; Mon, 03 Jun 2019 18:22:23 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 05FD9440046; Mon,  3 Jun 2019 19:22:21 +0100 (BST)
Date: Mon, 3 Jun 2019 19:22:21 +0100
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v8 RESEND 2/5] regulator: rk808: add RK809 and RK817
 support.
Message-ID: <20190603182221.GA2456@sirena.org.uk>
References: <20190603170900.5195-1-heiko@sntech.de>
 <20190603170900.5195-3-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20190603170900.5195-3-heiko@sntech.de>
X-Cookie: The other line moves faster.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_112229_345993_FB731CDB 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: huangtao@rock-chips.com, zhangqing@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 tony.xie@rock-chips.com, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5541971308824131200=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5541971308824131200==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XiX5sJQOWZsNRXst"
Content-Disposition: inline


--XiX5sJQOWZsNRXst
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 03, 2019 at 07:08:57PM +0200, Heiko Stuebner wrote:

>         default:
> -               pr_warn("%s ramp_delay: %d not supported, setting 10000\n",
> -                       rdev->desc->name, ramp_delay);
> +               dev_warn(&rdev->dev,
> +                        "%s ramp_delay: %d not supported, setting 10000\n",
> +                        rdev->desc->name, ramp_delay);

This appears to be unrelated and should've been a separate patch.

> +static int rk817_check_suspend_voltage(int id)
> +{
> +	if (id >= RK817_ID_DCDC1 && id <= RK817_ID_LDO9)
> +		return 0;
> +	return -1;
> +}

Rather than have these checks in the implementation you should just not
define these operations for regulators that don't have the
functionality.

> +static unsigned int rk8xx_regulator_of_map_mode(unsigned int mode)
> +{
> +	if (mode == 1)
> +		return REGULATOR_MODE_FAST;
> +	if (mode == 2)
> +		return REGULATOR_MODE_NORMAL;
> +
> +	return -EINVAL;
> +}

This should be written as a switch statement for clarity.

--XiX5sJQOWZsNRXst
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlz1ZVsACgkQJNaLcl1U
h9A1LAf+IawRfBxIBUR2HWNgjqoJMnLF0GaliOyoJBELCf9chqPQk1+aTKdnn4l0
MLYTCsLJA77ur0D8ncMYsPvvBRUasG5U0T5XEyJzXWYNIx7togwumtv/w3JAnBSh
RRMSKYhaS/wNrVHdYcVt8SzVVrVkB5OsYKXzPDbRRFTmeHXrxO2YKjLY9AQK93Sg
cruWOCSi6HuzhAxlr5uf9TcaEM6VsN4+0HXsKT68T9iJ87q5/lhsL6REBsayhaGF
/hlyx7ZqehspqO23eFUX1g4wTSTdatd1UXZ8RoqzrFuOX44+hsw0snF9GeCCwVUH
KWc4k3Qa6PrxyYA9/f9G316d63x0YQ==
=QMyH
-----END PGP SIGNATURE-----

--XiX5sJQOWZsNRXst--


--===============5541971308824131200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5541971308824131200==--

