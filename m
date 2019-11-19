Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10391024FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 13:58:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xmdvjR0SBweGvXzD9N/oULpGUpX36UaK+YRRwDhZlfY=; b=pSmazH8VmDAzJLF4oOkIAPhG5
	3RS9hbPkwvtofIinvVoMWif5YkFpUFD5vNala1JdsAw+bhqKLGLNa70HyJTzmLY8tjhNQUiSJ2VXL
	y0pJaH3QTxnDWlvvzl08WOCSbrfVYZ5Ux6Lfw0kaFwK9jo3GSo8GZKd8Divjov/2gFadgpHllAI2O
	xYG423hA/5OM6iqWwCbVL5Jh3A+Nk/LFXIG4XWHPiyV/9mvG1lLr5hQ61Q6V7atjCl7YK+5Jpp4D+
	aqMEq2zWjzq+h/RmMMOPHeKMrN9Ucldyh9Kvr13GfQUzGsv3vBtnaDy/hfhiFQreXvRNm/UPwaVuf
	s/5bxk8FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX34y-0002Iu-KC; Tue, 19 Nov 2019 12:58:00 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX34n-0002Hz-T6
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 12:57:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9B69FB1A0;
 Tue, 19 Nov 2019 12:57:47 +0000 (UTC)
Message-ID: <dd074ef5c23ba56598e92be19e8e25ae31b75f93.camel@suse.de>
Subject: Re: [PATCH] dma-mapping: treat dev->bus_dma_mask as a DMA limit
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Dave Hansen <dave.hansen@linux.intel.com>, Andy Lutomirski
 <luto@kernel.org>,  Peter Zijlstra <peterz@infradead.org>, Bjorn Helgaas
 <bhelgaas@google.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Hanjun Guo <guohanjun@huawei.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, Rob Herring
 <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, Christoph
 Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>, Robin
 Murphy <robin.murphy@arm.com>
Date: Tue, 19 Nov 2019 13:57:43 +0100
In-Reply-To: <20191113161340.27228-1-nsaenzjulienne@suse.de>
References: <20191113161340.27228-1-nsaenzjulienne@suse.de>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_045750_230612_D931470B 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-mips@vger.kernel.org, linux-ide@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter
 Anvin" <hpa@zytor.com>, Paul Burton <paulburton@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org, phil@raspberrypi.org,
 linux-acpi@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 linux-pci@vger.kernel.org, James Hogan <jhogan@kernel.org>,
 Len Brown <lenb@kernel.org>, devicetree@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 iommu@lists.linux-foundation.org, linuxppc-dev@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============5520613961103826394=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5520613961103826394==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-KZ1OEZ2plCMDP0ydmpq5"


--=-KZ1OEZ2plCMDP0ydmpq5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-11-13 at 17:13 +0100, Nicolas Saenz Julienne wrote:
> Using a mask to represent bus DMA constraints has a set of limitations.
> The biggest one being it can only hold a power of two (minus one). The
> DMA mapping code is already aware of this and treats dev->bus_dma_mask
> as a limit. This quirk is already used by some architectures although
> still rare.
>=20
> With the introduction of the Raspberry Pi 4 we've found a new contender
> for the use of bus DMA limits, as its PCIe bus can only address the
> lower 3GB of memory (of a total of 4GB). This is impossible to represent
> with a mask. To make things worse the device-tree code rounds non power
> of two bus DMA limits to the next power of two, which is unacceptable in
> this case.
>=20
> In the light of this, rename dev->bus_dma_mask to dev->bus_dma_limit all
> over the tree and treat it as such. Note that dev->bus_dma_limit is
> meant to contain the higher accesible DMA address.
>=20
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>=20

Hi Rob & Christoph,
do you mind if I append v2 of this into my upcoming v3 RPi4 PCIe support
series, I didn't do it initially as I thought this was going to be a
contentious patch.  But as it turned out better than expected, I think it
should go into the PCIe series. In the end it's the first explicit user of =
the
bus DMA limit.

Here's v2 in case you don't know what I'm talking about:
https://www.spinics.net/lists/arm-kernel/msg768459.html

Regards,
Nicolas


--=-KZ1OEZ2plCMDP0ydmpq5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3T5scACgkQlfZmHno8
x/7FNgf/TPvrVamDNHipGFKFiSr22YaNYJU4aGZyFuJab0Z9dF35ZbNQqx3sXA83
gyltGXByQ4c747nqq+LWQTaXLvI4NEMDu/ueQ6T4Vgs0ijtKvI9hVjrjlKU7UVsR
/v+6HHolAP4q5zxgJbL3PRMlFeJlLs9xRbikBEmGDbc4INP8nBSUiQmk4lrgCAwH
xV11EcSTA5eKJPS1jpsEP/vKwfu7LQ9ASExtpK5Oud7ZBD8zq1qKQBSVMGXQ1m9L
l0ok+gqBZtMgwKtigs9mAr0Y09evU1GOVS0ttcncZ854J6/+hr9nuK8eXyhLEm0J
l/jpo2vtZH0gMy68b+P8LkDtGJisYg==
=9wOf
-----END PGP SIGNATURE-----

--=-KZ1OEZ2plCMDP0ydmpq5--



--===============5520613961103826394==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5520613961103826394==--


