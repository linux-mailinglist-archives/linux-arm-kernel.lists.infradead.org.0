Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B068104F16
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 10:19:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1mI7oEF9XZxh6mn7OP0kZ+mzh5Fo3p1o+A2KJF7eOxc=; b=OZRF3zOUdJP/ozX9RT4lkodjZ
	6LY0Hz+SvDO8UPXOO7SGsLrJkwjEhqtz/1uB2bAR9VOAWX4gPI6US/ej5aJUqAy/ygHIKWjxeNIV0
	IxqyxHsSBn41lulBYK397IpnjVGpYm46LgmnnJDpV2bqmj8m0OASobW8v9YHnZ61nxRLN7EhgSQ7c
	aMnrFxECJAYAMuTANqN0qrFVJ8XPq6R9oY3nR1+rDzWKIkqZMFohmPdbKyRZBOpQ3E2WsAlWgcVxI
	F/dX6+HWgmR1DsgW8pJjt/m0V38qS5w2eP0RUPBfm2wnp2qiETdgTJ4LL919X149ew178+GXTBXzp
	8Ypz5kLOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXicQ-00078q-3K; Thu, 21 Nov 2019 09:19:18 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXicB-00078U-IA
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 09:19:04 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 134B7B324;
 Thu, 21 Nov 2019 09:19:01 +0000 (UTC)
Message-ID: <f7c09f06913fa1ed5e98c55ebe6d9db81bf232c0.camel@suse.de>
Subject: Re: [PATCH] dma-mapping: treat dev->bus_dma_mask as a DMA limit
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Christoph Hellwig <hch@lst.de>, Robin Murphy <robin.murphy@arm.com>
Date: Thu, 21 Nov 2019 10:18:54 +0100
In-Reply-To: <20191121073152.GB24024@lst.de>
References: <20191113161340.27228-1-nsaenzjulienne@suse.de>
 <dd074ef5c23ba56598e92be19e8e25ae31b75f93.camel@suse.de>
 <20191119170006.GA19569@lst.de>
 <7609007d-52f5-bb10-e8d5-96fadbfab46d@arm.com>
 <20191121073152.GB24024@lst.de>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_011903_745222_9929ACA7 
X-CRM114-Status: GOOD (  15.49  )
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 linux-ide@vger.kernel.org, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Frank Rowand <frowand.list@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Hanjun Guo <guohanjun@huawei.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Paul Burton <paulburton@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Joerg Roedel <joro@8bytes.org>, x86@kernel.org, phil@raspberrypi.org,
 linux-acpi@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 linux-pci@vger.kernel.org, James Hogan <jhogan@kernel.org>,
 Len Brown <lenb@kernel.org>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Jens Axboe <axboe@kernel.dk>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 iommu@lists.linux-foundation.org, Sudeep Holla <sudeep.holla@arm.com>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============0685773087168936093=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0685773087168936093==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-lq+O6sjXzX+AgzEMEd7n"


--=-lq+O6sjXzX+AgzEMEd7n
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-11-21 at 08:31 +0100, Christoph Hellwig wrote:
> On Tue, Nov 19, 2019 at 05:17:03PM +0000, Robin Murphy wrote:
> > TBH I can't see it being a massive problem even if the DMA patch, drive=
r=20
> > and DTS patch went entirely separately via the respective DMA, PCI, and=
=20
> > arm-soc trees in the same cycle. Bisecting over a merge window is a big=
=20
> > enough pain in the bum as it is, and if the worst case is that someone=
=20
> > trying to do that on a Pi4 has a wonky PCI controller appear for a coup=
le=20
> > of commits, they may as well just disable that driver for their bisecti=
on,=20
> > because it wasn't there at the start so can't possibly be the thing the=
y're=20
> > looking for regressions in ;)
>=20
> Agreed.
>=20
> Nicolas, can you send a respin?  That way I can still queue it up
> for 5.5.

Oh, I thought it was too late for that already. I'll send it in a minute.

Regards,
Nicolas


--=-lq+O6sjXzX+AgzEMEd7n
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3WVn4ACgkQlfZmHno8
x/6kBwf/SKtubLT3BK6PDi2kFxS7U1Nuy9X/MqsOPMdQNIIzccK4WqpweJsn3fn7
WUh4Tsn5H2fjaeqsOCLpG5PeYLO6nDWDmCzVszhsyBjqWczikEWQ8reuCbXbbW6G
rUh1wlp8+VDFDs0reFtW9POlYcvxixcMmbkSjKPEtZCh/GjdgIcjdkCtvwGkdrE1
8E8Z6K9lqyiB2WQ0z7tdOf3fglQwJ7HxRgsmlYm1u0UQCm3+Hdrvy2hO7X/OYhtB
4JbPmzPk62RNUjdmnuJ8t2ar57gMQ4VwRi7hjfCir9Iq8t/B7vCzCAQnzREpL05w
BEUfJlvCYEvS3eArOErmv3Mm+/ugdg==
=NUIQ
-----END PGP SIGNATURE-----

--=-lq+O6sjXzX+AgzEMEd7n--



--===============0685773087168936093==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0685773087168936093==--


