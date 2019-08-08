Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E708639D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 15:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q34EP46xQIuGAxjZENTXopOS8UPhoKNr7eqaUHUzEkQ=; b=ml4wY/5roPj5ecUkqZsbY/oyY
	JXmuQd31t7cWnMLHP24zB3j01UiHk4TAO1PeqEa/pzJ5Lc/dJYNDaEkK22bVPsgOtrRwyUHnowMRe
	B3WfImDiUVVSoylNgLt6cDi0UClhPdPCk3kZG2w8uBw/VmZ2ADBsvV4MpqpoyXoQA5umeguXeY4OF
	pgDWuG3P/6snthvPc3iDmPjgH8/ar7BkmyI83Jtqm1XelEq3FAPhgIFpNKe+YlCnWn19cZSWzLANb
	UhbA7sjFXJ2yXcBuvZo/OapKc6eupMhziplTRVmQlU7eICwMwToSaWiRXrcPEG7ichfLF7G73VHaZ
	Vz/0Eg4qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvikv-000738-20; Thu, 08 Aug 2019 13:47:01 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvikj-00072X-S7
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 13:46:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OGCsi1q7WY4PE7bNxm28Wmz8rdbJLi1kTOGweo4jGq4=; b=aBXCIeZiy1Bg2lzP0qDNGvO56
 PaA0tRXrdNZBDnLxrgVxNme6lvygdUZK65CXPndnP9wtOZosdax3mRDtRLGaKRvHkGFGxr2LuVesN
 mQTtzyWZvtCfHtyLNzsoV/tBKiaB757zSh9o+Xj/CU1LrGw607hO6ZdQnH7jU6xPkGhik=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hvikf-000330-3V; Thu, 08 Aug 2019 13:46:45 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 109CB2742B42; Thu,  8 Aug 2019 14:46:44 +0100 (BST)
Date: Thu, 8 Aug 2019 14:46:43 +0100
From: Mark Brown <broonie@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH] arm64: Clarify when cpu_enable() is called
Message-ID: <20190808134643.GH3795@sirena.co.uk>
References: <20190806170043.35588-1-broonie@kernel.org>
 <20190807160107.fpanxo4iimhg743c@willie-the-truck>
 <20190807165143.GI4048@sirena.co.uk>
 <0508fc5a-ab61-f507-507f-3002e49f2d27@arm.com>
 <20190808121956.GA3795@sirena.co.uk>
 <4975be8c-09ca-9acc-06ea-87e831f7fd79@arm.com>
MIME-Version: 1.0
In-Reply-To: <4975be8c-09ca-9acc-06ea-87e831f7fd79@arm.com>
X-Cookie: I think we're in trouble.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_064650_035201_D575B676 
X-CRM114-Status: GOOD (  20.15  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7396570290684312308=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7396570290684312308==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0XhtP95kHFp3KGBe"
Content-Disposition: inline


--0XhtP95kHFp3KGBe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 08, 2019 at 02:21:42PM +0100, Suzuki K Poulose wrote:
> On 08/08/2019 13:19, Mark Brown wrote:

> > > > 	If this is called for any CPU in the system then it will be
> > > > 	called for all of them.

> > > > might cover it?

> > > 	* current CPU. If this capability is detected by the kernel, this will
> > > 	* called on all the CPUs in the system, including the hotplugged
> > > 	* CPUs.
> > > 	*/

> > 	 If this capability is detected by the kernel
> > 	 this will called on all the CPUs in the system, including
> > 	 the hotplugged CPUs, regardless of if the capability was
> > 	 detected on that specific CPU.

> I think the only issue with this, as also with the original statement, is that
> you are overloading "detected" for the "specific CPU" case.  In the first
> use, the "detect" is dependent on the SCOPE of the capability and in the
> latter one

That's not quite what I'm trying to get over here - what I'm trying to
get over is that the enable does not have the same scope as the
detection, I think it's fairly natural to assume that that is the case.
That is to say that the behaviour for the system scope detection case is
expected but for anything that's CPU local it's a surprise.

> is strictly "LOCAL" scope. If you replace the second "detected" with say, "not
> available" or even "not matched", it makes it less confusing.

>  	If the capability is detected by the kernel this will be called on all
> 	the CPUs in the system, including the hotplugged CPUs, regardless of if
> 	the capability was *available* on that specific CPU. This is useful for
> 	some capabilities (e.g, working around CPU errata), where all the CPUs
> 	must take some action (e.g, changing system control/configuration).
> 	Thus, if an action is required only if the CPU has the capability, then
> 	the routine must check it before taking any action.

That's a bit verbose but I think it's sufficiently unambiguous. I'm
still confused about how this differs from what I originally proposed :/

--0XhtP95kHFp3KGBe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1MJ8MACgkQJNaLcl1U
h9DP8Qf+PlVwa1QTeeqVTezu2igZiCXv3b9bKetHY3qRb4k6wnb+gs0VekLCMgfd
H1WHgL0Ajf0F5i5AhAROYXHidhX4143IzxP+sgmPuftthuPmRxbJa8YgO1CCZc86
pWGnt+TtrnnwxhuybPcysHW41WgxExY0iLPmyAVAVqqbTsZVn1Aj6feBEUJV4IpE
6kUR2hLYSjiwYG4fM4xRe72O/WTTJpdIE1GTkH1qB8CnzPE6NZYJv5Uldblo2BbU
s8MqI1N/z4fzwAz3YdWe+NA8RRwT0G7Kf292mAcbnfNo7cKth4rKUEY47Wh1y5Ok
ZHn9ZZWEfhY/xOA6n41kfQyL4bXqhg==
=+epL
-----END PGP SIGNATURE-----

--0XhtP95kHFp3KGBe--


--===============7396570290684312308==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7396570290684312308==--

