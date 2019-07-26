Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F1476901
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:49:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q60FlGAoRT6ajY0aaJK3FzWg9gDoOUcuuuJAY+7h5ic=; b=Co/al8kks4Hs6SlquAHloBLtx
	mBxA3b7CObW9HKx57YCLag5uo1PJ6U8Jl6ptyKVDriIeGSvArb9Y1FC1qyj0iQrf90d/o5af5X0rr
	1bjHBSGrHJ3PXFYL4nvgemnknPBo8xqcIJEiOg5fnWnCuQtp/4egs+8oJVkPnGUpI9dhWU0TLNULv
	WVph8clh5t3/zY8YZHEuSckOoHo9F0O9rsYmJ5/jKQgYseUVcIMUycl095rbZpn+SRS7FWEnCN1BU
	o64FaKxzO6dyzY4p7H2icTTulHJzSNTx3O/9MVDm7J7MT8ZChmmvsgEEOlk4EQVu0HmRkk1vorsm8
	qP19RWvwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0aj-0005XQ-U0; Fri, 26 Jul 2019 13:49:01 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0aW-0005Wh-Ng
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 13:48:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=htfhLWZo77GI35WrasDZvyZIUNtrtd28Pfw24aVqO8Y=; b=oyvoqopAJAEKIZxWMVJWh6bib
 XdDilmXtqJcZJbrrevFZkky2ixNq0TZ3WuvR+OAS6S0m2FybWVn9XDYYg7HaqoDokpkiRsPcdgBz4
 tpBazO6n0zmZGZpKY2Ukv/QDBnf00FOYzxLgWtFhXbvAyZlZFPSMdVOGf5UE9Okb+hFqM=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hr0aS-00023k-Uf; Fri, 26 Jul 2019 13:48:45 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id DBD182742B63; Fri, 26 Jul 2019 14:48:43 +0100 (BST)
Date: Fri, 26 Jul 2019 14:48:43 +0100
From: Mark Brown <broonie@kernel.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: next/master boot: 254 boots: 16 failed, 231 passed with 4
 offline, 1 untried/unknown, 2 conflicts (next-20190726)
Message-ID: <20190726134843.GC55803@sirena.org.uk>
References: <5d3aef79.1c69fb81.111b9.a701@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <5d3aef79.1c69fb81.111b9.a701@mx.google.com>
X-Cookie: Think sideways!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_064848_807518_A55A737D 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
Content-Type: multipart/mixed; boundary="===============6499667732060430120=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6499667732060430120==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gr/z0/N6AeWAPJVB"
Content-Disposition: inline


--gr/z0/N6AeWAPJVB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 26, 2019 at 05:18:01AM -0700, kernelci.org bot wrote:

The past few versions of -next failed to boot on apq8096-db820c:

>     defconfig:
>         gcc-8:
>             apq8096-db820c: 1 failed lab

with an RCU stall towards the end of boot:

00:03:40.521336  [   18.487538] qcom_q6v5_pas adsp-pil: adsp-pil supply px not found, using dummy regulator
00:04:01.523104  [   39.499613] rcu: INFO: rcu_preempt detected stalls on CPUs/tasks:
00:04:01.533371  [   39.499657] rcu: 	2-...!: (0 ticks this GP) idle=9ca/1/0x4000000000000000 softirq=1450/1450 fqs=50
00:04:01.537544  [   39.504689] 	(detected by 0, t=5252 jiffies, g=2425, q=619)
00:04:01.541727  [   39.513539] Task dump for CPU 2:
00:04:01.547929  [   39.519096] seq             R  running task        0   199    198 0x00000000

Full details and logs at:

	https://kernelci.org/boot/id/5d3aa7ea59b5142ba868890f/

The last version that worked was from the 15th and there seem to be
similar issues in mainline since -rc1.

--gr/z0/N6AeWAPJVB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl07BLsACgkQJNaLcl1U
h9Cizgf+Me4RzqbuEHdvW+EQJup+d34Qw3wZ0/GAFQhI/JjOpNk7MyyppherGwDv
WfQkX54QZ+szqipujtfsM7BOHn6WrY5yl7vWF5PNmBaKnq2COZkqIDMvP4tOLfPd
Ni5U/6zJZu2WPGtV+W4stbGKfJJx/4M+LOl8+94bpr24aXrbt4LzoPHQlpBofkoe
fO0qvOy6gwUXntL8TLMPz8WxXyCsfkE7oZ+9xfVpS2tBN2Qbzrf7AxB+dls80iB6
DJUm4/2vxP9KdpwFCAA/gdBVgAdIqhlKwNyL63wral4HsM6jijAKAp61MV3dIUfG
I+gyLOxXa6nCzfuq9L4uIxE1pVuwIA==
=AiHc
-----END PGP SIGNATURE-----

--gr/z0/N6AeWAPJVB--


--===============6499667732060430120==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6499667732060430120==--

