Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAC217167C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 12:56:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MqziEjCdfi4WCaK9zV9VX+evZo1/SJ5HBgu/7zg1l4Y=; b=CrX/4mNFyGsstMFBVvotIYlCJ
	N7mHefH1NS6iZtJaoa6ZE38KozIljRInyabFW1sSRlz422udyZQBefbxgv2kMyO1dPi28oMK0Xtih
	xMUyJCtk6G6Gu6w+M5qwV/WZ9nflVxDOT4lfyWlgCdQf4nLI4I/MXIx926QeIE++Pfkaq3oEEM3g7
	HVbZ6QWJrImd1fjjozvQa/Z6rqCmkXjdIEF4pDg5inSvZMfb0lhXANTLkvR5CngmHD9l/6K2hQt4v
	O1Yez+Z8frldkqc0aptmPISBCE+NPR5rJpaagRttA+zFQ5gAX/ccb2qRz4U3iUKsAhRkhZhIN3Zma
	usPnz/9TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7HmU-0007rL-RU; Thu, 27 Feb 2020 11:56:42 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7HmL-0007qs-IR; Thu, 27 Feb 2020 11:56:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 20EDFAD81;
 Thu, 27 Feb 2020 11:56:32 +0000 (UTC)
Message-ID: <7b18ea13c4c5b4a291bf9d5ea6603d3a934ea105.camel@suse.de>
Subject: Re: [PATCH] pci: brcmstb: Fix build on 32bit ARM platforms with
 older compilers
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu, 27 Feb 2020 12:56:30 +0100
In-Reply-To: <20200227115146.24515-1-m.szyprowski@samsung.com>
References: <CGME20200227115151eucas1p22ff7409009d917addcc7e20f523c9051@eucas1p2.samsung.com>
 <20200227115146.24515-1-m.szyprowski@samsung.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_035633_755989_54122550 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: multipart/mixed; boundary="===============7116105673768697627=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7116105673768697627==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-7amc1oclgjqFS8I7Y744"


--=-7amc1oclgjqFS8I7Y744
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-02-27 at 12:51 +0100, Marek Szyprowski wrote:
> Some older compilers have no implementation for the helper for 64-bit
> unsigned division/modulo, so linking pcie-brcmstb driver causes the
> "undefined reference to `__aeabi_uldivmod'" error.
>=20
> *rc_bar2_size is always a power of two, because it is calculated as:
> "1ULL << fls64(entry->res->end - entry->res->start)", so the modulo
> operation in the subsequent check can be replaced by a simple logical
> AND with a proper mask.
>=20
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!
Nicolas


--=-7amc1oclgjqFS8I7Y744
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5Xrm4ACgkQlfZmHno8
x/7tZQf/dMFAYcOBhzFTZmFEMIfMkuXU9giUcGSfumSa0v3JAaCqEQwo7r2xoj3/
kfcJKW9ly/JVmht9Xu/uVZQ0k1RWxfcMS4pKSZHn+AGL2sGDWyRoLEAtybNtzjBr
6szjLBdHWiIIll4GdM5oHnGQHn+Sh2tcGDY+EtDtJFtazTL5pU30JuPob/i1fTWE
bBvRdqusbNg4deJ/l1aE5pK5O2HjTOyV/8k7lnfwMRq+U90Bt3W1mKO77tyCWWlx
jXF50TwlWBW1aepYUtQTomqN9FIjYaF9rdmAwtMIL/Xlyq122SyU3XN2zZ9+FbWc
gJMzVpo12RQ8aou54F/ZqPJnMjQF1A==
=whFO
-----END PGP SIGNATURE-----

--=-7amc1oclgjqFS8I7Y744--



--===============7116105673768697627==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7116105673768697627==--


