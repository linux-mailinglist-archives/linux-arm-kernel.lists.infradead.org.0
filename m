Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B63C41840B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 06:53:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=htFmUtEDBbi8oP33GZsEhq9n5gVp+Zkqval4TxWXtvY=; b=CRk
	nKuBNxwSw1E7MmVzqsKBrG5lQWnHm/pz/AcSQxvCIyqMJLSe3ZbCqZggtIK0/d6DtEaIJQjlx93RM
	HjGk4obplrsA4p2QBGngT6I90oVm0L33RCMxYUYLIzGx30Ko8JM90rhH/nZxCi4xatVAry/XtjNuD
	9jHqaDNf7BKJdqT+wNqpgchCNV0Wbs9rB2xmfL38y4earmBFh98ZoHlsVjFsGYuC3w3gjSu/56eh1
	IvRBex/RCl9gDDS17s25UN2cEh+plZ9DkcJFXrG+RhOO2Ffw+SRDOddtIAsGLpX8A3w62R+jGnegU
	RB1A8XwjLaL9GRfzkx4XkH1CWcfJYFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCdGY-0006PC-MG; Fri, 13 Mar 2020 05:53:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCdGR-0006On-FG
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 05:53:44 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 04EC22073E;
 Fri, 13 Mar 2020 05:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584078823;
 bh=V7O9cVHibhEdHQWMBwMm8tkXTNE20Ta0TqKjClEMttw=;
 h=Date:From:List-Id:To:Cc:Subject:From;
 b=pZ0AZT18jP2iSBgxGeo8vxAF52TWMGArkagZ84OWC5F94/RYsoNv47eSFfpGT3Jy+
 noRN0eylP9KiEx8oaZYY2iA1Vb5ixeF4okp6XP1vLwgcZy3wr2RpjzvVG0wXDLIZMX
 qelYiAMXDAyorOYvXZDxdeANm3bRTVU9vi7V6w9c=
Received: by wens.tw (Postfix, from userid 1000)
 id 6F8AF5FCA3; Fri, 13 Mar 2020 13:53:42 +0800 (CST)
Date: Fri, 13 Mar 2020 13:53:42 +0800
From: Chen-Yu Tsai <wens@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 2/3] Allwinner Core Changes for 5.7
Message-ID: <20200313055342.GA19760@wens.csie.org>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_225343_531492_4E461D18 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3556796199282496624=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3556796199282496624==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="J/dobhs11T7y2rNN"
Content-Disposition: inline


--J/dobhs11T7y2rNN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git tags/sunxi-core-for-5.7

for you to fetch changes up to 614215c8636aeb61961b3eb5030999a2254b3b52:

  ARM: sunxi: Replace <linux/clk-provider.h> by <linux/of_clk.h> (2020-02-12 18:15:39 +0100)

----------------------------------------------------------------
Allwinner Core Changes for v5.7

Just one change for our mach code for including the correct clk header.

----------------------------------------------------------------
Geert Uytterhoeven (1):
      ARM: sunxi: Replace <linux/clk-provider.h> by <linux/of_clk.h>

 arch/arm/mach-sunxi/sunxi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--J/dobhs11T7y2rNN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE2nN1m/hhnkhOWjtHOJpUIZwPJDAFAl5rH+YACgkQOJpUIZwP
JDBmgg//aBVkmvfiiKk3Dza0BiF4Q6jRo2/1aygDm1FTn55n0CICx70numoJRVkw
8YbcEB2y1QmFSHUkk6/+4PhnT31GMTC4hIae2dTjNUcY3/LDasQIFP94BWQ5YoGR
1D+nj7N1KLdUgpkum6k0OvXv4vBl96BQbUNWAURlm4KiAx4tI93XDghtgQbkh/z3
P9Qgd/n0vq6pOtHtbq9dhg1mIUXXQlxo5Qp7CQk6rLGxqE7SxSsv3x9t5ok3n2Sl
w283ofoEifVUIp5aJuHUXyIWzy3XOjtSi/x2X1yG9SAcn7NXVPzQAALHpvhs0hTq
sLvo4/zTX7b1uH1PKQl7RlIA0oJxdCm7auRApdvNMCOMR4IcDK6pc4ZlJy6FvCwi
JAl2MqtFu5WeYYmg7rBoaXVXGPjt0lK2aMBNtt2uYQCZqWUknqbbI7k4BwbFwBm4
Bwwpk+Id6T59dtGhW/0wplf83y0pMaYJOKi8eqBcJ0Vl22xmvCpzX84/j/Q+rO3H
INEKRQcduWx51fG9ZS73IwniC1gG6/3sWWR4vIZat0YY72SCP4WJxNUOP/wNA8/z
JOhTnE/eIa+LqMnGTAlM8/9IooZ19v8dYv/OMylCzhFPG7C7AX2mWUH23fEjE7bJ
eN0SctXPuEI/KTnQzaL6mCeoQIgP4t4z3bsyIEwh6L1IJaKAdkI=
=YQcE
-----END PGP SIGNATURE-----

--J/dobhs11T7y2rNN--


--===============3556796199282496624==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3556796199282496624==--

