Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4233C1052E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 14:26:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AviPszo5bgw9M6YaEgoCauGDAAQnSOPhArLJeTb/7iY=; b=F3zLPT0nDRMzbsXYJ6ZZGiezZ
	bF0mN9t7LXdX9uiArUAIfrIKfBVQxXM7pShFMrjnhjs/MmDhsuJIfAsUG233oVV6Ocbv1F3rXJAzS
	/voIhyKsuKaBcrYLJL/HPsUWixvta1pEL8TAzCtOmwLeRWiAvS+nLdLIWEVteqgap/JMBnwk2xGsA
	dpT9PcGNq0kbg3NAsrI6HaYrWnff5IZzuCScmzOzREOU8hPxKVPFdDGq+m/Qp0CJHu6WhdXfxt2kb
	cqfgLy9/UXItv1CYszOk9tWJ1k/D5x7Eb5157eezhCNMQDCokfFHGGyXi1ognpGwu6gW4iC+7nCS7
	SfEIX2pnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXmTe-0007MH-3k; Thu, 21 Nov 2019 13:26:30 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXmTT-0007L9-3U; Thu, 21 Nov 2019 13:26:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 7B630AC45;
 Thu, 21 Nov 2019 13:26:17 +0000 (UTC)
Message-ID: <18109ee4f8d8c5ce0dc714217eef53ee42d5305f.camel@suse.de>
Subject: Re: [PATCH v2 4/6] PCI: brcmstb: add Broadcom STB PCIe host
 controller driver
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Andrew Murray <andrew.murray@arm.com>
Date: Thu, 21 Nov 2019 14:26:15 +0100
In-Reply-To: <20191121120319.GW43905@e119886-lin.cambridge.arm.com>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191112155926.16476-5-nsaenzjulienne@suse.de>
 <20191119162502.GS43905@e119886-lin.cambridge.arm.com>
 <7e1be0bdcf303224a3fe225654a3c2391207f9eb.camel@suse.de>
 <20191121120319.GW43905@e119886-lin.cambridge.arm.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_052619_433888_9C0C4E20 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, maz@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 Eric Anholt <eric@anholt.net>, mbrugger@suse.com,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5478102392324193354=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5478102392324193354==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-YC8AUFAYK8BdUfEkQttG"


--=-YC8AUFAYK8BdUfEkQttG
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-11-21 at 12:03 +0000, Andrew Murray wrote:
> On Wed, Nov 20, 2019 at 08:53:30PM +0100, Nicolas Saenz Julienne wrote:
> One purpose of this function is to validate that the information given in=
 the
> device tree is valid - I've seen other feedback on these lists where the =
view
> is taken that 'it's not the job of the kernel to validate the DT'. Subscr=
ibing
> to this view would be a justification for removing this validation -
> especially
> given that the bindings you include have only one dma-range (in any case =
if
> there are constraints you ought to include them in the binding document).
>=20
> Though the problem with this point of view is that if the DT is wrong, it=
 may
> be possible for the driver to work well enough to do some function but wi=
th
> some horrible side effects that are difficult to track down to a bad DT.

As for the validation, I think in this specific case it's still worthwhile.=
 As
you might know, there is a bug on the first revision of RPI4's PCIe integra=
tion
which blocks any access higher than 3GB. Further revisions fix this and all=
ow
full memory addressing.

I've been working with Phil Elwell (from the RPi foundation) to solve this =
in a
way that plays well with upstream and this driver (I'll be able to test the=
 new
revision before this gets in). The solution is, unsurprisingly, for the
firmware to edit the DTB passed to the kernel based on the board revision.
Given that there is some live manipulation of the dma-ranges I'd rather lea=
ve
the validation check.

If you don't disagree with the above I'll add an extra code comment explain=
ing
why we feel the need to verify the device-tree contents.

Regards,
Nicolas


--=-YC8AUFAYK8BdUfEkQttG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3WkHcACgkQlfZmHno8
x/5fvQf/SGfuvvm/Gcihpp2EHLNBM3vOWITb9bWmwHmizoV71HY7NC7ua0H7BO04
ilLvP8UzpSSAw0HA3P7FfdIFOUlwVob7j98pytJzGhykxjhyacMJKEzhc/dDttth
Bghc8dxd3+QJucPmqw0n6aZsQmB7CJtM4DSx4cVJhTB6AGfzfQ7TgKyCeLVt5RmH
Oq6kT6DJ7Fc4A3OpJrAkgiLxhGXif4C9v6KH6d7c+95H0NmHl9qIwyYVGtKml4fT
7ZZsv6aG0NwvlMizK09lUeiun0zzY3wnwo7P3oVL/yH4fpfrxDvTEvjBMSU3yhxz
+N4VAl8PJi6HWTJaiiJ7tQGgKq2Ofg==
=ftB5
-----END PGP SIGNATURE-----

--=-YC8AUFAYK8BdUfEkQttG--



--===============5478102392324193354==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5478102392324193354==--


