Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D6DBE09A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 16:53:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3WfjR8VoEUo5eulCyHGbIRDD+JxnzrAn5TBVd63hwuc=; b=cBzOU+O982FqgrGSIkeDFIs4I
	F2bPIX5fH142B8TQuWyTTDYGyeEenoEy7d0DUlnBsbmdPK/pxTHAtyRQoP/Iu4wzIHa9mafJhctVA
	tLrtmafCgIO9TuCRKkk299cJ7dMP5I3NXi+1DRH1MPxVf7sLOGdLSP0U+l+xQXriE8aSiSJVJuzNg
	1yhiS53OyDPhWrtPESH+haFOILSVarX9Z7VlpmGJikdyENEEpIcpZzF7Y+OeceJHyvGVXewdynC8O
	NDmDyDAz5yY9a1kDCK7URKQXQ7853zNKK6DGcV9bT6pJ+UV0tL/IpkHDoip56GYHRGysjnrHIvKiW
	bHxmxIOdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD8fT-00012a-BN; Wed, 25 Sep 2019 14:53:23 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD8fC-00011j-JU
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 14:53:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 47F59AEE1;
 Wed, 25 Sep 2019 14:53:02 +0000 (UTC)
Message-ID: <d1a31a2ec8eb2f226b1fb41f6c24ffb47c3bf7c7.camel@suse.de>
Subject: Re: [PATCH 00/11] of: Fix DMA configuration for non-DT masters
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh+dt@kernel.org>
Date: Wed, 25 Sep 2019 16:52:59 +0200
In-Reply-To: <CAL_Jsq+v+svTyna7UzQdRVqfNc5Z_bgWzxNRXv7-Wqv3NwDu2g@mail.gmail.com>
References: <20190924181244.7159-1-nsaenzjulienne@suse.de>
 <CAL_Jsq+v+svTyna7UzQdRVqfNc5Z_bgWzxNRXv7-Wqv3NwDu2g@mail.gmail.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_075306_940633_3876E6DB 
X-CRM114-Status: GOOD (  27.43  )
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
Cc: devicetree@vger.kernel.org, Matthias Brugger <mbrugger@suse.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 freedreno <freedreno@lists.freedesktop.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, etnaviv@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Stefan Wahren <wahrenst@gmx.net>, james.quinlan@broadcom.com,
 linux-pci@vger.kernel.org, "open list:DMA GENERIC OFFLOAD ENGINE
 SUBSYSTEM" <dmaengine@vger.kernel.org>, xen-devel@lists.xenproject.org,
 Dan Williams <dan.j.williams@intel.com>, Robin Murphy <robin.murphy@arm.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============5882416185891835697=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5882416185891835697==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-5Mzcra9IsjRjM5vnaomh"


--=-5Mzcra9IsjRjM5vnaomh
Content-Type: multipart/mixed; boundary="=-QzsDiLgE5dpWVAyKk5Wj"


--=-QzsDiLgE5dpWVAyKk5Wj
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-09-24 at 16:59 -0500, Rob Herring wrote:
> On Tue, Sep 24, 2019 at 1:12 PM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> > Hi All,
> > this series tries to address one of the issues blocking us from
> > upstreaming Broadcom's STB PCIe controller[1]. Namely, the fact that
> > devices not represented in DT which sit behind a PCI bus fail to get th=
e
> > bus' DMA addressing constraints.
> >=20
> > This is due to the fact that of_dma_configure() assumes it's receiving =
a
> > DT node representing the device being configured, as opposed to the PCI=
e
> > bridge node we currently pass. This causes the code to directly jump
> > into PCI's parent node when checking for 'dma-ranges' and misses
> > whatever was set there.
> >=20
> > To address this I create a new API in OF - inspired from Robin Murphys
> > original proposal[2] - which accepts a bus DT node as it's input in
> > order to configure a device's DMA constraints. The changes go deep into
> > of/address.c's implementation, as a device being having a DT node
> > assumption was pretty strong.
> >=20
> > On top of this work, I also cleaned up of_dma_configure() removing its
> > redundant arguments and creating an alternative function for the specia=
l
> > cases
> > not applicable to either the above case or the default usage.
> >=20
> > IMO the resulting functions are more explicit. They will probably
> > surface some hacky usages that can be properly fixed as I show with the
> > DT fixes on the Layerscape platform.
> >=20
> > This was also tested on a Raspberry Pi 4 with a custom PCIe driver and
> > on a Seattle AMD board.
>=20
> Humm, I've been working on this issue too. Looks similar though yours
> has a lot more churn and there's some other bugs I've found.

That's good news, and yes now that I see it, some stuff on my series is ove=
rly
complicated. Specially around of_translate_*().

On top of that, you removed in of_dma_get_range():

-	/*
-	 * At least empty ranges has to be defined for parent node if
-	 * DMA is supported
-	 */
-	if (!ranges)
-		break;

Which I assumed was bound to the standard and makes things easier.

> Can you test out this branch[1]. I don't have any h/w needing this,
> but wrote a unittest and tested with modified QEMU.

I reviewed everything, I did find a minor issue, see the patch attached.

Also I tested your branch both on an RPi4, with a PCI device that depends o=
n
these changes and by comparing the OF debugs logs on a Layerscape board whi=
ch
uses dma-ranges, dma-coherent and IOMMU. All works as expected.

Will you send this series for v5.5? Please keep me in the loop, I'll review=
 and
test the final version.

Regards,
Nicolas


--=-QzsDiLgE5dpWVAyKk5Wj
Content-Disposition: attachment;
	filename*0=0001-of-device-do-not-bail-of_dma_configure-when-force_dm.pat;
	filename*1=ch
Content-Type: text/x-patch;
	name="0001-of-device-do-not-bail-of_dma_configure-when-force_dm.patch";
	charset="UTF-8"
Content-Transfer-Encoding: base64

RnJvbSAyNmQ1MTg1M2MyNWMwNGMyOGRiYzA5MDYxOTUxYTkzYzEwMmRhYmNkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBOaWNvbGFzIFNhZW56IEp1bGllbm5lIDxuc2FlbnpqdWxpZW5u
ZUBzdXNlLmRlPgpEYXRlOiBXZWQsIDI1IFNlcCAyMDE5IDE2OjI2OjU3ICswMjAwClN1YmplY3Q6
IFtQQVRDSF0gb2Y6IGRldmljZTogZG8gbm90IGJhaWwgb2ZfZG1hX2NvbmZpZ3VyZSgpIHdoZW4g
Zm9yY2VfZG1hIGlzCiBzZXQKClNvbWUgWGVuIGRldmljZXMgY2FsbCBvZl9kbWFfY29uZmlndXJl
KCkgd2l0aG91dCBhbiBhY3R1YWwgRFQgbm9kZSBpbgpvcmRlciBmb3IgaXQgdG8gc2V0IGl0cyAn
ZG1hX29wcycuIFRoYXQncyB0aGUgb3JpZ2luYWwgaW50ZW50IG9mCidmb3JjZV9kbWEnLCBob25v
ciB0aGF0IGJlaGF2aW91ci4KClNpZ25lZC1vZmYtYnk6IE5pY29sYXMgU2FlbnogSnVsaWVubmUg
PG5zYWVuemp1bGllbm5lQHN1c2UuZGU+Ci0tLQogZHJpdmVycy9vZi9kZXZpY2UuYyB8IDIgLS0K
IDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvb2Yv
ZGV2aWNlLmMgYi9kcml2ZXJzL29mL2RldmljZS5jCmluZGV4IGE0NTI2MWUyMTE0NC4uN2JjMDBm
NzI0NjhmIDEwMDY0NAotLS0gYS9kcml2ZXJzL29mL2RldmljZS5jCisrKyBiL2RyaXZlcnMvb2Yv
ZGV2aWNlLmMKQEAgLTEwMCw4ICsxMDAsNiBAQCBpbnQgb2ZfZG1hX2NvbmZpZ3VyZShzdHJ1Y3Qg
ZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2Vfbm9kZSAqcGFyZW50LCBib29sIGZvcmNlXwogCW5w
ID0gZGV2LT5vZl9ub2RlOwogCWlmICghbnApCiAJCW5wID0gcGFyZW50OwotCWlmICghbnApCi0J
CXJldHVybiAtRU5PREVWOwogCiAJcmV0ID0gb2ZfZG1hX2dldF9yYW5nZShucCwgJmRtYV9hZGRy
LCAmcGFkZHIsICZzaXplKTsKIAlpZiAocmV0IDwgMCkgewotLSAKMi4yMy4wCgo=


--=-QzsDiLgE5dpWVAyKk5Wj--

--=-5Mzcra9IsjRjM5vnaomh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2Lf0sACgkQlfZmHno8
x/7mvQf6A++shc7v4vCUvlFLh6kIZ0UPBKuSnxpUpUn+R3BMoS6J5Ce/ma0SOzIJ
MRQmawROuL2F6qf0g3ykdpnaSD14TAEB9UnJzLoTkprKRFRhdq4pQjCDGDWIpWSO
fW6GnBbCLaTa0r38siU1DvnV3ZXCNnmN+lO5mqEp380R7cLwMj0hrH4mzkNuSUHK
uKWLMd/ZZyDk7e2j1qZ2bXg6PRRSfXZfU7Oqtwt6k7JNoPB/HneraMxoO43EyzDA
qt4Fxx6cDsZQAPbqJPChpSN4USdi0rN171NlKW3+PRsGfZN4LzUF3MoK2uvReV0n
DhW7JoNOzqhh0pk2iPTRov0M+zbYEg==
=jmQ8
-----END PGP SIGNATURE-----

--=-5Mzcra9IsjRjM5vnaomh--



--===============5882416185891835697==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5882416185891835697==--


