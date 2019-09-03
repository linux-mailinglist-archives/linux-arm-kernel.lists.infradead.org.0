Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B44A6D31
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 17:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8AllFhFLnpY2psQJ+yitG5vqh05jqbeW2rHqKT9XT8g=; b=AaP
	i3MIYBmi/uXIu0ue7k/oLI2sBuvl36TxEoyCXLNADDJBX6x+qnCZp6urAzDQoYC2WUuKxHgPPDvUp
	agbsL8cremWXVC/64oQdRh6/mK3tTW6876Qs4D00MhA5Uwtwa6YOXBLGmiYp+4eEvluf8pSjcV8XS
	fwH7+llqKvGNrNr5JSTQtHQpM7m24p5zceZkDWLG+r4BDbvisCeZ0C9OeqDKt5NVHtU98Yf+q0sMm
	rMcSoVh47C4Zgw2NDQvTdiCUD0blQ3Jm5T+ENNVUwAfHuj5aJPLY8XqdqcY+5fpzWSJDaSyA6nozz
	nGys1qqsbstIn5qJ/hMVvL54HwJ31gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5AyX-0002bZ-FP; Tue, 03 Sep 2019 15:44:09 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5AyN-0002ai-2U
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 15:44:00 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DF1D8AB91;
 Tue,  3 Sep 2019 15:43:54 +0000 (UTC)
Message-ID: <cf743e0a1571c1748588f088cfd9804e8b55c36b.camel@suse.de>
Subject: PCIe DMA addressing issues on Raspberry Pi 4
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh+dt@kernel.org>, "robin.murphy" <robin.murphy@arm.com>
Date: Tue, 03 Sep 2019 17:43:52 +0200
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_084359_403131_96E742AF 
X-CRM114-Status: GOOD (  10.96  )
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 mbrugger <mbrugger@suse.com>, iommu@lists.linux-foundation.org,
 Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6788917076403552274=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6788917076403552274==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-VNc7oUE10RoRira+Huej"


--=-VNc7oUE10RoRira+Huej
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all, sorry for the long read, I kept it as short as possible.

So, the wrapper around the PCIe block available on the Raspberry Pi 4 has a=
 bug
preventing it from accessing anything beyond the first 3G of ram [1]. I'm
trying to figure out the best way to integrate this upstream.

Note that the only thing behind the PCIe bus is an USB3 chip. The bus is no=
t
exposed to users directly.

I see two options:

- Isolate the PCIe block on it's own interconnect. IMO this could be accept=
able
  as it's arguable that the bug is not really in the PCIe block.  I set the
  interconnect's dma-range size to 2GB instead of 3GB as dma masks don't pl=
ay
  well with non power of two DMA constraints:

  buggy-scb {
	compatible =3D "simple-bus";
	dma-ranges =3D <0x0 0x00000000 0x0 0x00000000 0x800000000>;

	pcie {
		compatible =3D "brcm,bcm2711-pcie";
		dma-ranges =3D <0x02000000 0x0 0x00000000 0x0 0x00000000
			      0x1 0x00000000>;
		[...]

	};
  };

  scb {
	compatible =3D "simple-bus";
	dma-ranges =3D <0x0 0x00000000 0x0 0x00000000 0xfc0000000>;

	eth0 {
		[...]
	};

	[...]
  };

  With this setup the PCIe devices should behave correctly as long as they
  don't play with their own DMA masks.

- Configure PCIe's inbound view of memory taking into account the buggy
  interconnect:

  scb {
	compatible =3D "simple-bus";
	dma-ranges =3D <0x0 0x00000000 0x0 0x00000000 0xfc000000>;

	pcie {
		compatible =3D "brcm,bcm2711-pcie";
		dma-ranges =3D <0x02000000 0x0 0x00000000 0x0 0x00000000
			      0x0 0x80000000>;
		[...]

	};

	eth0 {
		[...]
	};

	[...]
  };

  The downside of this is that of_dma_configure() doesn't play well with PC=
I
  devices. of_dma_configure() expects a device's OF node, yet the PCI core
  passes the bridge's OF node, as the device has none. The result is
  of_dma_configure() ignores PCI's dma-ranges. Solving this is not trivial.
  IMO the simplest solution would be to create a distinct OF node on PCI
  bridges, child of the actual PCI root complex.  FYI this was already an i=
ssue
  some years ago [2].

  This solution also suffers from devices setting their own DMA masks.

If you're curious abot the downstream kernel, they use their custom buffer
bouncing code, which AFAIK is something we're trying to get rid of.

Any comments? Alternative solutions?

Thanks,
Nicolas

[1] https://www.spinics.net/lists/arm-kernel/msg740693.html
[2] https://patchwork.kernel.org/patch/9650345/#20294961


--=-VNc7oUE10RoRira+Huej
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl1uijgACgkQlfZmHno8
x/4ncwf/bFv3AD0ndtH89sJxuLuYsOfE/0zdO83AOPyEGnYUEp8yPyov0zO43okd
oQ2rfzZl8jALpzSy936hXZIIcJmWuOaTApRMaf14Rumq/RKR1zIG5e69ZlTskd5s
/ar4nASgz8/9ShY6LASonoXaTSSkbsOEWhBJPQjrS4Rf/Q9ggnLuzapHI6pDGdrJ
9DupdCcl7v1+Mfa+erRSGYrNgPWMnt85PaVQT2I+ICwc0UDWDND2hgIbuHsxnBre
1JFn0x26TIpqUCqegsZxOJOjNCQS+bTvoYzoi/xAhyuMMt+DFR7Jhk+l1TRrB/qs
x7bWu1wcIdB+gfhyeOrJUjm2qd5nFw==
=f55V
-----END PGP SIGNATURE-----

--=-VNc7oUE10RoRira+Huej--



--===============6788917076403552274==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6788917076403552274==--


