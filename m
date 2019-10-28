Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2830E7900
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 20:11:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ypgt+Hf5Mcxry1Gh+T3poTtxCsY3F+Pg+2XYL7jovdM=; b=JsZd4JKroeHO2NxHFxrFs7bBk
	AhP1iILoKaPJVrGTOC9Z15zDjth4pf1cZjRpXAaK1qmDWDMtjhE/C3IOsvj2I2BMDQlA8nxbOVwRk
	6kVx38/Vg4FYpqfr/0kdCPZVdS2i0OwNKptUk67bCcOUc3XS0b+sZYHvaasdEfuW48LGFxaDYlpqH
	1x99CkREDZtj0edmirFbG8f3jtxGtXz8I1xMDo5lc0OLg1NEQ5w+CWsSi3HzRxmI1OK6TkwPkCgk2
	up9a9SeVeFqn1T8mnneSt2CYGG/ReDoQcqoVgE59JjdL2v6EWkbupMudpxDkIE9HcY3rWIh1CJd6k
	B0j7aTBSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPAQW-0003K4-GX; Mon, 28 Oct 2019 19:11:40 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPAQK-0003J9-VR
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 19:11:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H65QiY81RMquPvhrPwqy1YKHRso/og8MYpWdT+cfpUE=; b=JgaBfRxhKnfU3JB/4oSp19No0
 SCRsHeuK3eCgMCi4JRpL98Kb+zpnJg0KLgHzyGMP8tjHmO8hJ+T4BCTMSrs5KFl7/zd2HfEdABIj5
 BhITGRPcG5y6hT7IEmSpd5ziECXAH8GVQ01CanaIxfD/j8I95CpiBqlPPrlKHw7REW80E=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iPAQE-0000Rt-TE; Mon, 28 Oct 2019 19:11:22 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 17ACD27403EE; Mon, 28 Oct 2019 19:11:22 +0000 (GMT)
Date: Mon, 28 Oct 2019 19:11:21 +0000
From: Mark Brown <broonie@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: next/master boot: 257 boots: 8 failed, 237 passed with 8
 offline, 2 untried/unknown, 2 conflicts (next-20191028)
Message-ID: <20191028191121.GH5015@sirena.co.uk>
References: <5db7032c.1c69fb81.888b0.b521@mx.google.com>
 <20191028174857.GG5015@sirena.co.uk> <20191028184019.GR571@minitux>
MIME-Version: 1.0
In-Reply-To: <20191028184019.GR571@minitux>
X-Cookie: The Moral Majority is neither.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_121129_032139_EAB60F56 
X-CRM114-Status: GOOD (  12.71  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-build-reports@lists.linaro.org, linux-arm-msm@vger.kernel.org,
 Andy Gross <agross@kernel.org>, linux-next@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2266066121994855866=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2266066121994855866==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Hlh2aiwFLCZwGcpw"
Content-Disposition: inline


--Hlh2aiwFLCZwGcpw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 28, 2019 at 11:40:19AM -0700, Bjorn Andersson wrote:
> On Mon 28 Oct 10:48 PDT 2019, Mark Brown wrote:
> > On Mon, Oct 28, 2019 at 08:03:08AM -0700, kernelci.org bot wrote:

> > Today's -next (anf Friday's) fails to boot on db820c:

> > >     defconfig:
> > >         gcc-8:
> > >             apq8096-db820c: 1 failed lab

> > It looks like it deadlocks somewhere, the last things in the log are a
> > failure to start ufshcd-qcom and then an RCU stall some time later:

> db820c has been failing intermittently for a while now, it seems that
> booting with kpti enabled causes something to go wrong. There are
> nothing strange in the kernel logs and ftrace seems to indicate that all
> the CPUs are idling nicely.

Oh dear.  Adding Catalin and Will.  Is it definitely KPTI that's
triggering stuff?  It did turn up some bugs on other systems, though
it's a bit strange it's only manifesting in KernelCI...

--Hlh2aiwFLCZwGcpw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl23PVkACgkQJNaLcl1U
h9AEVQf/YobSNC+8kYOgtMjIo5OBkeEQ+9zsfOsrTA0kUw/x8P2H0ahek60NH+ik
l9M9nDhLhPUBCJym6nN+cS1kJcMnnCAEm+Q+d/7Di3mq0iqkIuPzNMHNOU16OHaV
DRbUIISgaEjDkj4vcB8jiUrmTUslsdZUuxfSQqbxWRW6QgxXpnaNy+WT0n4JLIZe
mmWUot73N9ag1m5RIfoua/8FwvOHMrwqr76TzJ/TP1w2vvLw8Qo7TJqu3vgyabS2
oJ7ig+iVzASx3dXTnNHM0vs6GUpr50rU0Pwusg4w7dgJIrlaoGrBTDf8Yi373abg
We1+BlrFcQW63WkfxcWIaApVIpvQWw==
=NPuH
-----END PGP SIGNATURE-----

--Hlh2aiwFLCZwGcpw--


--===============2266066121994855866==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2266066121994855866==--

