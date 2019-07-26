Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CCB76FA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 19:18:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I1QzOv8tsrFsSvSRzq2aHwhZbCTXmwA8yGLSmCytuX0=; b=MBxUkjOXqxp2LpDSrGhx7lfCH
	bVdPTaZpASTdysonY+OZ+yLGSam+NnjshYxABkpTF/Z6bdXzN7gZD2fINM2HBYG+sg+mkzaXHzumX
	WOfY929sHm49mK2sTcPgqz9kvZ8JgcCQffNNXxp5SSi/wBOmS5ZTauNAciHKwUZDYBw47n2i8fJ0J
	ywZP2K7SykPnf10ti39RaDavWR+RRG8ZliIYSd6MW+OLd3E8PwXzCqyjxqGMrFgwQwoE6cToRnv4I
	GiozgX15iv0ec1dUGUo2HDK5kaPtlSfl12f3an9fen9x64Lj0aGPxY4zUoq6BLnV9pakq2wN3D1XC
	j6rTd3m+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr3rp-0003CP-0g; Fri, 26 Jul 2019 17:18:53 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr3rQ-00033d-Hf
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 17:18:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RBX7tzBB3qOOwRPE91iIliUe4Au3MKtV5wsdWSb/SZs=; b=khpzyhyArncmH0mL33rxRuuoo
 tpja7bvM8+oKVU8hbzELWNPvdbdlGvU6hiqrKxNQu3p1aqXNdUdQ7Dre7Rj/WGjg1YXsjxy38z93n
 6Do7pXKlv4vSEAgseUHNtERU4zyhYrwQA0olkaPmp8FFsDCuEJLyELQOmBpMeoJfRFI8Y=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hr3rN-0002v0-0d; Fri, 26 Jul 2019 17:18:25 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 60BFA2742B63; Fri, 26 Jul 2019 18:18:24 +0100 (BST)
Date: Fri, 26 Jul 2019 18:18:24 +0100
From: Mark Brown <broonie@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v3 5/7] drivers: Introduce device lookup variants by
 ACPI_COMPANION device
Message-ID: <20190726171824.GE55803@sirena.org.uk>
References: <20190723221838.12024-1-suzuki.poulose@arm.com>
 <20190723221838.12024-6-suzuki.poulose@arm.com>
MIME-Version: 1.0
In-Reply-To: <20190723221838.12024-6-suzuki.poulose@arm.com>
X-Cookie: Think sideways!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_101828_717481_204FB698 
X-CRM114-Status: UNSURE (   7.57  )
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
Cc: rafael@kernel.org, gregkh@linuxfoundation.org,
 Wolfram Sang <wsa@the-dreams.de>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-i2c@vger.kernel.org, Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: multipart/mixed; boundary="===============0838260501079745091=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0838260501079745091==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u5E4XgoOPWr4PD9E"
Content-Disposition: inline


--u5E4XgoOPWr4PD9E
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 23, 2019 at 11:18:36PM +0100, Suzuki K Poulose wrote:
> Add a generic helper to match a device by the ACPI_COMPANION device
> and provide wrappers for the device lookup APIs.

Acked-by: Mark Brown <broonie@kernel.org>

--u5E4XgoOPWr4PD9E
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl07Nd8ACgkQJNaLcl1U
h9AP6Qf/YGrw0TyOSSQSBXyPk+b+NdGM3zToNrnX22MlqJOqIoR1Cojj3bSvlBPh
X0GCuxCUvGTjhFC0Hrg4YvdCm68TiZwOyi8e8s7bwZfJQxz/Z7tDrCsumy62WuzF
qKxfi2q4CAm7FIRT4J7Q8AKVroxHaWs6mS2P/LzMkNUBOfXrMu4VNbObMaXkVt92
y1rqdWxtykM3LKPyO11gmxjRzlgtZsNuFLvgqUzJL6xTCvNPsYVilqr2TdlsSVtk
iyb9Bepc0jZslrKB9t/goFvPZ0hjB7o/WiCwXkPhcuIe/YgPZzIKapao7AGZruf4
Egk3xu2RdzcnwJMfkHYFGJzU5OaLwA==
=DtTy
-----END PGP SIGNATURE-----

--u5E4XgoOPWr4PD9E--


--===============0838260501079745091==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0838260501079745091==--

