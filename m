Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEF0B6755
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 17:45:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Resent-To
	:Resent-Message-ID:Resent-Date:Resent-From:Reply-To:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Sender:Resent-Cc:List-Owner;
	bh=xhJhQ+UPD1bXFHCW4hCkGBh1htUcpSwzAm6znfFPqxg=; b=P0JbwucH7N50UE+HeZ43K/V9MZ
	/HZ5xEWX9ST2wIm4E2skKFsUeHDBsaGJSX8S//CH9FKKHbRmNNIFyPPj/E7zil7eJdSFozDNy//oa
	SoMWuY4zJLhTTvGuSow4WbSChbs3CoZ+bqNE2b9Q1dgQ6qfLlleCHYAdsFpuL4ZxGigRltRai2nr7
	XzXHMGTK/aONu0qotL0XKQaoRsd/XN4tMLNzwqJ3YBA2oWbkEUD/nwecRGTEPobiScaMxFidgtqix
	C3RBJAEsGgpIsE0+ebY4elug2bkl2ZqiA//uQH/ZRLY64GRcwelWyhydvOAInrnVYfkPgbAlZ70gK
	nLuvHRHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAc8i-0007Ui-S3; Wed, 18 Sep 2019 15:45:09 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAc8U-0007UO-9m
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 15:44:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Resent-To:
 Resent-Message-ID:Resent-Date:Resent-From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Sender:
 Resent-Cc:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rUMoNwWNL1z50CS0M7MdxnWSzCW+XJ3JElR3BYk0YZo=; b=k
 HbodfzIuqbb9rgQosgPwzx/SjdHlUBgD6Ms4IlBzwEG0j3HivMRGDuGKNa378u99AX1j9fQCEDT2E
 PBU06Fkt/o+JaY5jXH2N/UCV0bEsrpR5xxa1XrG7X0K2bkDGzuTdpcmT2Eyrsof7c24KeGK69G9il
 Ik5NNf1GiQdLF19Q=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>) id 1iAc8Q-00068V-SX
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 15:44:50 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 0D1322742927; Wed, 18 Sep 2019 16:44:49 +0100 (BST)
Resent-From: Mark Brown <broonie@sirena.co.uk>
Resent-Date: Wed, 18 Sep 2019 16:44:49 +0100
Resent-Message-ID: <20190918154449.GO2596@sirena.co.uk>
Resent-To: linux-arm-kernel@lists.infradead.org
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>) id 1iAbPQ-0005ho-I3
 for alsa-devel@alsa-project.org; Wed, 18 Sep 2019 14:58:20 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id F10BF2742927; Wed, 18 Sep 2019 15:58:19 +0100 (BST)
Resent-From: Mark Brown <broonie@sirena.co.uk>
Resent-Date: Wed, 18 Sep 2019 15:58:19 +0100
Resent-Message-ID: <20190918145819.GL2596@sirena.co.uk>
Resent-To: alsa-devel@alsa-project.org
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iAZT5-0005DC-0Q; Wed, 18 Sep 2019 12:53:59 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 666D12742927; Wed, 18 Sep 2019 13:53:58 +0100 (BST)
Date: Wed, 18 Sep 2019 13:53:58 +0100
From: Mark Brown <broonie@kernel.org>
To: "Liao, Bard" <bard.liao@intel.com>
Subject: Re: [PATCH] ASoC: core: delete component->card_list in
 soc_remove_component only
Message-ID: <20190918125358.GJ2596@sirena.co.uk>
References: <20190916210353.6318-1-yung-chuan.liao@linux.intel.com>
 <87ef0ewhnd.wl-kuninori.morimoto.gx@renesas.com>
 <567A313375B6F043A9BE3A1D9B8C6E7F0B49706B@SHSMSX101.ccr.corp.intel.com>
 <878sqmw8nh.wl-kuninori.morimoto.gx@renesas.com>
 <567A313375B6F043A9BE3A1D9B8C6E7F0B4970C2@SHSMSX101.ccr.corp.intel.com>
 <875zlqw411.wl-kuninori.morimoto.gx@renesas.com>
 <567A313375B6F043A9BE3A1D9B8C6E7F0B4970DE@SHSMSX101.ccr.corp.intel.com>
 <20190918120743.GG2596@sirena.co.uk>
 <567A313375B6F043A9BE3A1D9B8C6E7F0B497238@SHSMSX101.ccr.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <567A313375B6F043A9BE3A1D9B8C6E7F0B497238@SHSMSX101.ccr.corp.intel.com>
X-Cookie: The devil finds work for idle glands.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_084454_346821_D5A11AD1 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
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
Cc: "tiwai@suse.de" <tiwai@suse.de>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 Bard liao <yung-chuan.liao@linux.intel.com>,
 "pierre-louis.bossart@linux.intel.com" <pierre-louis.bossart@linux.intel.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Content-Type: multipart/mixed; boundary="===============6142730546919422286=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6142730546919422286==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="I3tAPq1Rm2pUxvsp"
Content-Disposition: inline


--I3tAPq1Rm2pUxvsp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 18, 2019 at 12:31:10PM +0000, Liao, Bard wrote:

> May I use your signed-off as first author since that is your idea? :)

Suggested-by also works for situations like this (and is a bit better if
you didn't get sent an actual patch).

--I3tAPq1Rm2pUxvsp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2CKOUACgkQJNaLcl1U
h9DJJwf+MelApo69LfNngQmqGRr1UicX8imEGwpIIDWO6oDXmrVp0gzIRpV2zTLw
Ao9QJuSYQX5Gf75XME5pTGkaMyyBkxlKoIZPClGiDlioH4KOBoKJUMBIzvPGPfqc
qa1n8+BBuElFMYuflBAhNuhXOVdo83QNFVfxq3/sVfAzaizHkQumppoqBLo/ZTZk
viAgsM1vEZyGbcpzO72yCm/o46Hat69nfpZoRJNgw2qfMUYEAghR4YDswY6i9A4X
+XauEQ6n3eJco2uPlYa6XYYRjMUWcDhK3WDiAojMs0YjzNjD/ipKtQrdWhj7wLMM
qXf6oOhriFDcXGvrT+qTBqabBvWibg==
=EPyo
-----END PGP SIGNATURE-----

--I3tAPq1Rm2pUxvsp--


--===============6142730546919422286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6142730546919422286==--

