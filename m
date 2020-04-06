Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FB219F197
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 10:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fcJaPQSLgs/4n3wZSva/uv7ErUQs9ASbLlPGVtXei8Q=; b=EsW00UItfa42Aa0TM2lfbozbT
	/uiFa5Rcu3rUjR0P8dSxPR8fArIDFxmtVnRxd/kjpwKZBHeZinMQqw++2KPhZvqDlrivWQicvdhcO
	hcMdJNkVfS8jHP81nHKNhateWFnLbxyCEu9Bv8RznKOP6n2h+nKW3mxooOzftOwMbSLC7raqYDtfE
	hB2o/1ozsF/Dvb3hukvJKMuR8mt9fVlFSqQghJYAoZuiAQF+HV6Ha2EJaUdcvt2cZ0gXeMho1eRb3
	oGdWp7I8X3ipyY31UokKIvoMyJx3sMto0vrWtUrdui99RDtP01jmGJiaA3pf3Cfa+M9UUq4NUKeep
	P14ky7XzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLN6n-0003VA-Cm; Mon, 06 Apr 2020 08:27:53 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLN6W-0003Ok-Fs
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 08:27:38 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 273DE5800E5;
 Mon,  6 Apr 2020 04:27:35 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 06 Apr 2020 04:27:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=f9JBRr+XhbC+CvGSQhNRe2L/ERw
 IGY84ZpI4+IQemfM=; b=pIMXjGrj8l2gSjLhTowqJmg7cVKQfqQQNt7JH5RcSJm
 525J+EbU3EjWe1RfHZKli13PSS+kuMRl5UmgyAJRLT04uiEAyCW992YS77jZJQlv
 +rKHmvMMkkGM323eZBDxE0i4KejgnvxwFTbtvOvn8eYeBx6Vt9roYtaYeFxuwwGR
 ntELBKF5gXG5ZFAPe9Xmh5NpT3VEX5qWzW4gHRUctnBFfq6EsvA7IzvLvKi5f6ft
 Th/J7u+AO8wvG7KJbt8VE2/IU7GPJ0KWU5ObV7oy6HqN6N4l/T2JuV5SjXCOZqVI
 I3aarBglXwIs3TCwi1S8a+0o+57zuOqHlrI8z++kiTw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=f9JBRr
 +XhbC+CvGSQhNRe2L/ERwIGY84ZpI4+IQemfM=; b=Fyyi3KV32nrPIy5vKGKxZS
 IPq6wIkkMSPOYi3wHBbzrFi4xMfDJAt/HL21FD4ZqqqX6Kp3SA+KCmXewcLFFhni
 wzcg+bdztWsQlxbLIa85taJokNN+PvZ2+Yv+aQZi202x7Krrdysg1/2TkwGR1Qxy
 dBF8NCoTdTClJP7bRojjClayTFD2NfEw+0NwRD6Xc4x4jWej7NLBkyVsBdq2GGL3
 bLa4oLsOB5xpPkLlRybtCT5Q8TyFf2Ul+UbWSnrtg+o3+YeRgxPs0bMdt8juNDJJ
 DoUsKIC7NTC+1wQxL+qrq8gqgzCkUjvr/ikPXG5io3scq/dpdfq8NT0xNpN1I7Mw
 ==
X-ME-Sender: <xms:9ueKXgHAd-e8n3CVwVMaAsGp9RwZEzFn6T02Txh1Tcs6FfzeXmoyCg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudefgddthecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epghhithhhuhgsrdgtohhmpdgrrhhmsghirghnrdgtohhmnecukfhppeeltddrkeelrdei
 kedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 epmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:9ueKXjTHNe2AxKtGcT-xwXSuJYwf7qgEPNS-ODthj-q8CV2sROePSw>
 <xmx:9ueKXgez-eoeh12lrwjYhPKHWA_mlW6Bc9RvN24HMxqMYGVEJ_WtXQ>
 <xmx:9ueKXokawD1_rDrtS5Bt-hUvRn2gDnrKqpoU4Qjg4wlFb56TEBgIqQ>
 <xmx:9-eKXoLhLrHQKi8juWiUQl6jMggIZQ8QIY1ToWq_i4HFyzgrZ2cd2g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E8DB8328005D;
 Mon,  6 Apr 2020 04:27:33 -0400 (EDT)
Date: Mon, 6 Apr 2020 10:27:32 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [RFC PATCH] PCI: dwc: add support for Allwinner SoCs' PCIe
 controller
Message-ID: <20200406082732.nt5d7puwn65j4nvl@gilmour.lan>
References: <20200402160549.296203-1-icenowy@aosc.io>
MIME-Version: 1.0
In-Reply-To: <20200402160549.296203-1-icenowy@aosc.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_012736_675404_D8607C06 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: multipart/mixed; boundary="===============5511609605620508602=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5511609605620508602==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bxu46sevqgfhv5v4"
Content-Disposition: inline


--bxu46sevqgfhv5v4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, Apr 03, 2020 at 12:05:49AM +0800, Icenowy Zheng wrote:
> The Allwinner H6 SoC uses DesignWare's PCIe controller to provide a PCIe
> host.
>
> However, on Allwinner H6, the PCIe host has bad MMIO, which needs to be
> workarounded. A workaround with the EL2 hypervisor functionality of ARM
> Cortex cores is now available, which wraps MMIO operations.
>
> This patch is going to add a driver for the DWC PCIe controller
> available in Allwinner SoCs, either the H6 one when wrapped by the
> hypervisor (so that the driver can consider it as an ordinary PCIe
> controller) or further not buggy ones.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
> There's no device tree binding patch available, because I still have
> questions on the device tree compatible string. I want to use it to
> describe that this driver doesn't support the "native Allwinner H6 PCIe
> controller", but a wrapped version with my hypervisor.
>
> I think supporting a "para-physical" device is some new thing, so this
> patch is RFC.
>
> My hypervisor is at [1], and some basic usage documentation is at [2].
>
> [1] https://github.com/Icenowy/aw-el2-barebone
> [2] https://forum.armbian.com/topic/13529-a-try-on-utilizing-h6-pcie-with-virtualization/

I'm a bit concerned to throw yet another mandatory, difficult to
update, component in the already quite long boot chain.

Getting fixes deployed in ATF or U-Boot is already pretty long, having
another component in there will just make it worse, and it's another
hard to debug component that we throw into the mix.

And this prevents any use of virtualisation on the platform.

I haven't found an explanation on what that hypervisor is doing
exactly, but from a look at it it seems that it will trap all the
accesses to the PCIe memory region to emulate a regular space on top
of the restricted one we have?

If so, can't we do that from the kernel directly by using a memory
region that always fault with a fault handler like Framebuffer's
deferred_io is doing (drivers/video/fbdev/core/fb_defio.c) ?

Maxime

--bxu46sevqgfhv5v4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXorn9AAKCRDj7w1vZxhR
xdV6AP4y+CTh2KPAJf/qouRZrEmCvj19E23Xp9w67VLU9qZHBQD7BVzW6hD0E0oG
LnBT9kYGbeef7keRU4XuDbLzxH3hzQc=
=0eCj
-----END PGP SIGNATURE-----

--bxu46sevqgfhv5v4--


--===============5511609605620508602==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5511609605620508602==--

