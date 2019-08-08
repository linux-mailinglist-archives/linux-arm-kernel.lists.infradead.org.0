Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3805286187
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:20:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ae/KE3gHsfY5ifY52JNm6WMONPThqLUJOiaAL99zOZM=; b=ejvYGuRbwEleTEYL1mabcB6/t
	JMkWYNnq1koQdm6E/zVsVShdZ7jY2J8rORRhgBodxT20PZ5wRUdv517Gm/DmDqvCk+XXOVa7EXf2u
	tdZ+ch7cROz7x1yYq674uJXfXCFQ7aypMDGFC7tIZLXQcznKpqyFehAFIHpifHsD8rXuYCiP7jMfj
	5cI+faKYF2V6qzSSFq4og4Tiz2MaU2nVB3VVH3//HgXFTrV3VFy4EpIzIx9Q0FSHSu5pDuX3jBz3s
	5cDHwuKGqtShbZs72wCeazkkyL0dws7WPkrTsJYS+Y8KvMSjDdH7n5sr2JryMRU2DrHWYhwhVXJq7
	CvUqbICEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvhOv-0007nE-QB; Thu, 08 Aug 2019 12:20:13 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvhOl-0006gs-Rs
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:20:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ADy5Xml/Z3WR2u/kW86//n29ZVBeE46HrrARga4hAo0=; b=Oaw7yNE6zzRP0QX+OTd7C33Jx
 DLN7PT8PgsvaNV52qx3olskdH8hYFF62R9sbolWhwEOpo4GI1xyfHgcWacG/5D3Jse/jJM0JrfQE6
 OJQ1Xkm9RaNmRXU4g8MqXhMSzcZ0LiVUMoUnOH+66VyXwre7gosxbHfjKc5nQj2A5I6BU=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hvhOg-0002oH-Gt; Thu, 08 Aug 2019 12:19:58 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 44CD82742BDD; Thu,  8 Aug 2019 13:19:56 +0100 (BST)
Date: Thu, 8 Aug 2019 13:19:56 +0100
From: Mark Brown <broonie@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH] arm64: Clarify when cpu_enable() is called
Message-ID: <20190808121956.GA3795@sirena.co.uk>
References: <20190806170043.35588-1-broonie@kernel.org>
 <20190807160107.fpanxo4iimhg743c@willie-the-truck>
 <20190807165143.GI4048@sirena.co.uk>
 <0508fc5a-ab61-f507-507f-3002e49f2d27@arm.com>
MIME-Version: 1.0
In-Reply-To: <0508fc5a-ab61-f507-507f-3002e49f2d27@arm.com>
X-Cookie: I think we're in trouble.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_052003_932060_073BDE14 
X-CRM114-Status: GOOD (  19.77  )
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
Content-Type: multipart/mixed; boundary="===============5599970658251055580=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5599970658251055580==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yrj/dFKFPuw6o+aM"
Content-Disposition: inline


--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 08, 2019 at 12:05:02PM +0100, Suzuki K Poulose wrote:
> On 07/08/2019 17:51, Mark Brown wrote:
> > On Wed, Aug 07, 2019 at 05:01:08PM +0100, Will Deacon wrote:
> > > On Tue, Aug 06, 2019 at 06:00:43PM +0100, Mark Brown wrote:

> > I guess you're thinking of the ARM64_CPUCAP_SYSTEM_FEATURE case where we
> > match the feature on all CPUs so we could see the feature on some CPUs
> > but not detect it as we're requiring a match on all?

> We don't run the "match" check (i.e, detect) on all CPUs for SYSTEM scoped
> features. Instead, we use sanitised feature set to detect the system features.

Right, but the sanitised feature set involves merging the capabilities
of all the CPUs.

> > 	If this is called for any CPU in the system then it will be
> > 	called for all of them.

> > might cover it?

> 	* current CPU. If this capability is detected by the kernel, this will
> 	* called on all the CPUs in the system, including the hotplugged
> 	* CPUs.
> 	*/

How about adding ", regardless of if the capability was detected on that
specific CPU" at the end?  The above is *accurate* but it's still easy to
insert an "on that CPU" in there when reading especially with the
awkward phrasing.  Or possibly just drop the first comma.  The reason I
said "If this is called" rather than "if this is detected" is to make it
as clear as possible that the calls don't depend on detection without
being overly verbose.

	 If this capability is detected by the kernel
	 this will called on all the CPUs in the system, including
	 the hotplugged CPUs, regardless of if the capability was
	 detected on that specific CPU.

> > I don't see where we limit where cpu_enable() is called after we start
> > calling it.  When we're looping through in cpu_enable_non_boot_scope()
> > we skip SCOPE_BOOT_CPU but those get cpu_enable() called in
> > enable_cpu_capabilites() or verify_local_cpu_capabilities() depending on
> > if it's the boot CPU or not.  It's possible I'm missing something
> > though.

...

> Does this help ?

I think you just confirmed that when I said we don't limit where we call
cpu_enable() that's accurate?

--yrj/dFKFPuw6o+aM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1ME2kACgkQJNaLcl1U
h9AbqAf/QDPEOXxvzV+sMx90JM1qsEXlB9BipfFPYhIFikGM2v+WHL5E1DDVrLCD
2CME+sviWF8r0Y9Vv49MDvFiyr0/yoAKgMeTQ9IWGQMBRaTYQUNH0+ig7m8AqKZU
u55H2Os5Fy9xJqyZ/5fU9nrTedYmvkGJibadqqwCt2nl37VLz8yBSeeA6oc85VSd
wgperdvXPxkFdxTdxbq4IMzJvDlMOGywvqVZd6vzi6+R2OATDB0ZelDpQ0jMvklc
D1xlZ6DYiluHr4SPGXVxqKXnrV+r1hBOG9U+qqZkIfCFlkbxER/agQzm0/xpHkBw
TmylyJTASutkHN41NBBhmTcRaf7aHw==
=cJwk
-----END PGP SIGNATURE-----

--yrj/dFKFPuw6o+aM--


--===============5599970658251055580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5599970658251055580==--

