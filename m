Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3452734CBE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yLVumOPznGSzYDXKSAWtvqbf3triOQhhMY0b5aBBFgQ=; b=hcTktq6tRKw1Fd+gX1BnZ1MVP
	ns168Uu4Q3Kpi50t+nubKnRv46VPPvp78Uli52H3hQH12I/fa7GUVdTRhlpXg+Vt4NZA9AJaf60gb
	U/wUXt2/44MyC3LGnJp28y+AiiU9IiDR5hStXbIWwXepexK9698oiDCVmzvOXpMVZccU53ZSXvMH5
	QUmUemccgZi10ZKks96JIaKrDXIkWNzMBAzGx/FIe2uvyQodvVeGmxqxSq+qchKo7/74by0ODF4xE
	pZX92aRqMmsrDhJSdbLcArsFacRePz10SDEUGQ2gYPhNox3rMx8Muimz09uktKeS91LDfG/mBxyOi
	m1uriqejQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYBrQ-0003dE-Vz; Tue, 04 Jun 2019 16:00:28 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYBrK-0003co-PH
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:00:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uBZ3QnhWu98kJQiat9L0PeoNpIYCmdNp7OssQ/cTY7E=; b=a3QI9+OphW/f0GNMiWE5jZbJ4
 AkPfWmPn+TgoAapbIU4UPv+HVxXg9GjNLaT+QyIWT8SscxEBJM+O3tzvdOgQxnBOeqnJuqtwyl3t6
 Q+WpmlwQbKTGnNghWgerxVOcQ4Vxy4Aj8GtY51jgPRtZHdnZeaWhCm5TCYbHKPKJQ7ddo=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hYBrH-0006MC-8B; Tue, 04 Jun 2019 16:00:19 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 58E5B440046; Tue,  4 Jun 2019 17:00:18 +0100 (BST)
Date: Tue, 4 Jun 2019 17:00:18 +0100
From: Mark Brown <broonie@kernel.org>
To: =?iso-8859-1?Q?Beno=EEt?= Cousson <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>
Subject: Re: next/master boot: 257 boots: 11 failed, 229 passed with 16
 offline, 1 conflict (next-20190604)
Message-ID: <20190604160018.GI2456@sirena.org.uk>
References: <5cf685d0.1c69fb81.e3d89.43ae@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <5cf685d0.1c69fb81.e3d89.43ae@mx.google.com>
X-Cookie: The other line moves faster.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_090022_970237_B434E9EA 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-omap@vger.kernel.org, linux-next@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6948661190777777510=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6948661190777777510==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="boT9Oj39GmgPxYhu"
Content-Disposition: inline


--boT9Oj39GmgPxYhu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 04, 2019 at 07:53:04AM -0700, kernelci.org bot wrote:

Today's -next fails to boot omap2plus_defconfig on Beagle XM:

>     omap2plus_defconfig:
>         gcc-8:
>           omap3-beagle-xm:
>               lab-baylibre: failing since 1 day (last pass: next-20190531 - first fail: next-20190603)

The boot fails silently with no output after the bootloader:

    https://kernelci.org/boot/id/5cf655fc59b5149acad51504/

which isn't much to go on, it does seem to have been OK in
multi_v7_defconfig though.

--boT9Oj39GmgPxYhu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlz2lZEACgkQJNaLcl1U
h9BmWQf6AoY5VMMkCTmC1WC0Xuomm1kiC7szNoyymcavNs7I8BPlfTssjnJMZTQP
JOCRjldsXBmPY8PF4YTpuBK6ANNTWE1n0WgbNgZEuOPWt2nCOT1QRvfHagOE31Eb
OAvG19faDLlh3ivrj32ACTXd/bbBudESyYXsKBC/P2JJ7KyYmSf99cPw1bqeDm49
7FAHWdODlE86i3VxYGjFseO2WLatjOf55opyVmUhsL65dX8vyssf1kWmq4iDGCgs
p4a6btnaVbHdYUBmSMuhlevIHRJAubRAaxG70XP+cnNsvTO1hUM5ITNVHemNUIPB
gAs7N1rUmpjROjkN+QGwRNN1wECBSg==
=3tvl
-----END PGP SIGNATURE-----

--boT9Oj39GmgPxYhu--


--===============6948661190777777510==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6948661190777777510==--

