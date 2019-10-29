Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F3CE82C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 08:50:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+2lPr7ILy6iczxXiq9WOh22Yvyo0NLZPsKN6OYZi7OQ=; b=HMQ6KTi+2NwPfaIUhY2ygg5UC
	aS4qbnB2/25NCRl4fsMpPp/xTgYdtwaPZ3tyHKVZFhIuqGevL0sDzCk4cNWjP7wjV5udsXYrGV5xc
	VjCvV8Gu0P6AtUiukai1o0dsTMbVWWOtY2Ix0xxiJwMqCapIVi6JIVt9t6S6K3Xx2MhhjyaAO9Ngc
	dbDwdqxm/WGff5dOhDIsMKiJncNqoM5DqdycL9eRkdfvd4g7hKIj3eU4rCJ8etyRrTvXcPTsxiEhx
	H7vims/9zPMviq8fXeL9zQRu2qhHzh7Y3VmK1XUG37B2/1q4qFve/nEb2Zaj+vHBFGNtAC7qeRzyU
	Aw72ewVCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPMGk-0006au-Vy; Tue, 29 Oct 2019 07:50:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPMGZ-0006aM-4x
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 07:50:12 +0000
Received: from localhost (unknown [91.217.168.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3FB9420862;
 Tue, 29 Oct 2019 07:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572335410;
 bh=AkPGUGUQ7O22I++5egFOxpSLRIAUQwOIcbOTmbPzHKY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sRKSF5K/AlN5GrAdeqvLE9SchQtrj4GYEsnLBDPbHIQSQguy+fQXaGLqUjlvzL9lf
 JgbRpztgCCHo/DRg11StqXpDwmhSuslAj7iGSiPsWGsNomMgtMkB47UrFYm8+DaBOD
 qp6ceIoXULz1mumBJkSp4AJ80UsxaoB7myQIDrQ8=
Date: Tue, 29 Oct 2019 08:44:49 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH] ARM: dts: sun8i-a83t-tbs-a711: Fix WiFi resume from
 suspend
Message-ID: <20191029074449.jx2acknfds2idyjt@hendrix>
References: <20191028215859.3467317-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20191028215859.3467317-1-megous@megous.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_005011_216291_BC054B64 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 open list <linux-kernel@vger.kernel.org>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5161475516989930419=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5161475516989930419==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="52ug3nnncgfccqfd"
Content-Disposition: inline


--52ug3nnncgfccqfd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 28, 2019 at 10:58:58PM +0100, Ondrej Jirman wrote:
> Without enabling keep-power-in-suspend, we can't wake the device
> up using WOL packet, and the log is flooded with these messages
> on resume:
>
> sunxi-mmc 1c10000.mmc: send stop command failed
> sunxi-mmc 1c10000.mmc: data error, sending stop command
> sunxi-mmc 1c10000.mmc: send stop command failed
> sunxi-mmc 1c10000.mmc: data error, sending stop command
>
> So to make the WiFi really a wakeup-source, we need to keep it powered
> during suspend.
>
> Fixes: 0e23372080def7 ("arm: dts: sun8i: Add the TBS A711 tablet devicetree")
> Signed-off-by: Ondrej Jirman <megous@megous.com>

Applied, thanks!

(I don't have my ssh key with me, so it might take a while before it's
pushed...)

Maxime

--52ug3nnncgfccqfd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbft8QAKCRDj7w1vZxhR
xYcyAP0WvrLuHa2aHuAm4rNH4xTo173mvgoO36v3gZZf8d3BUAD/YggPtA5vvV6x
KMIL0fCiPgWcqxx9dW2Qa+7cXZeLsgk=
=Ctt+
-----END PGP SIGNATURE-----

--52ug3nnncgfccqfd--


--===============5161475516989930419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5161475516989930419==--

