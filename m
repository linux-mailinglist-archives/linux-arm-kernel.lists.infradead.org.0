Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6341737FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 14:10:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I5u6N86h7407cPZbQA+dYXkYuqLcBNve5xHltqbTQj8=; b=YsdeuB2EiGAwfzFqC2El9EC4J
	WNuQyMYygA/6FZfzzI0gLNR8OLrZGOFvbrVy+6NtHc4HLAkxrLc5+yDl6b8pIvZ8srT8S6HU3lz3L
	/KuZynEXAWu8DXbx3cdQHPi3p4GrXAGfjZDLM9h3jCYZaHJjF+7No8dNNgSFMpe7R92q/SyBd7mv0
	NlW8T1DFTVN7qWpHpIScaAptj5/K6UFlkaQDTwClHxY9bO1UT22yGXujk4iQcrlTWzVpcuE7+cDhg
	0C38O2NHhorOpG+sh16KWLUCU+ymfKNnr9ZHF3rhKD+gzMQYbddLA1GOVi4FB6w4UfCGkm2VWo7/u
	Mv2cAA8bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7fPI-0001qT-4Y; Fri, 28 Feb 2020 13:10:20 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7fP5-00015T-4Z; Fri, 28 Feb 2020 13:10:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9B753AD14;
 Fri, 28 Feb 2020 13:10:02 +0000 (UTC)
Message-ID: <b71f1af17d68ee66a2781a694e8a77dcafedd76b.camel@suse.de>
Subject: Re: vc4 on rpi3 A+
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Sergey Suloev <ssuloev@orpaltech.com>, 
 linux-rpi-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
Date: Fri, 28 Feb 2020 14:09:59 +0100
In-Reply-To: <8b353626-f62a-2aff-96b4-91712ed36095@orpaltech.com>
References: <8b353626-f62a-2aff-96b4-91712ed36095@orpaltech.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_051007_495272_7C1640AB 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Noralf =?ISO-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2615522801503814539=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2615522801503814539==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-iHP+2GMv7hO7VSi+MOY4"


--=-iHP+2GMv7hO7VSi+MOY4
Content-Type: multipart/mixed; boundary="=-xARFLKywRE19QhV/jOVz"


--=-xARFLKywRE19QhV/jOVz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sergey,

On Thu, 2020-02-20 at 11:21 +0300, Sergey Suloev wrote:
> Hello, guys,
>=20
> could anyone clarify the status of vc4 drm support on RPI 3A+ ?
>=20
> I tried to build kernel 5.5 and 5.6-rc2 in 32bit and aarch64=20
> configurations with VC4 turned ON but both unsuccessful - vc4 drm driver=
=20
> is listed in memory but not working and not producing any typical DRM=20
> log output.

I managed to get my hands on a rpi3a+ and reproduce the issue. 'dmesg -lerr=
'
outputs this:

	bcm2835-power: Timeout waiting for grafx power OK

This is a known issue, see https://github.com/raspberrypi/linux/issues/3046=
.
I attached a device-tree patch in case you want to verify it fixes the issu=
e on
your board.

@Stefan I guess I'm going to have to revert the pm patch, any comments befo=
re I
do?

Regards,
Nicolas


--=-xARFLKywRE19QhV/jOVz
Content-Disposition: attachment;
	filename*0=0001-HACK-ARM-dts-Use-v3d-s-firmware-based-power-domain-o.pat;
	filename*1=ch
Content-Transfer-Encoding: base64
Content-Type: text/x-patch;
	name="0001-HACK-ARM-dts-Use-v3d-s-firmware-based-power-domain-o.patch";
	charset="UTF-8"

RnJvbSBlNmQxYWFhYjg5YWY2NTZmYmI2OTg0NWNlOGVhODc1MzA1OTg5NGEzIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBOaWNvbGFzIFNhZW56IEp1bGllbm5lIDxuc2FlbnpqdWxpZW5u
ZUBzdXNlLmRlPgpEYXRlOiBGcmksIDI4IEZlYiAyMDIwIDE0OjAzOjIyICswMTAwClN1YmplY3Q6
IFtQQVRDSF0gSEFDSzogQVJNOiBkdHM6IFVzZSB2M2QncyBmaXJtd2FyZSBiYXNlZCBwb3dlciBk
b21haW4gb24KIHJwaTNhKwoKdGVtcCBmaXguLi4KClNpZ25lZC1vZmYtYnk6IE5pY29sYXMgU2Fl
bnogSnVsaWVubmUgPG5zYWVuemp1bGllbm5lQHN1c2UuZGU+Ci0tLQogYXJjaC9hcm0vYm9vdC9k
dHMvYmNtMjgzNS1jb21tb24uZHRzaSAgICAgIHwgMSAtCiBhcmNoL2FybS9ib290L2R0cy9iY20y
ODM3LXJwaS0zLWEtcGx1cy5kdHMgfCA0ICsrKysKIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvYmNt
MjgzNS1jb21tb24uZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2JjbTI4MzUtY29tbW9uLmR0c2kK
aW5kZXggMmIxZDlkNGMwY2RlLi40MTE5MjcxYzk3OWQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jv
b3QvZHRzL2JjbTI4MzUtY29tbW9uLmR0c2kKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvYmNtMjgz
NS1jb21tb24uZHRzaQpAQCAtMTMwLDcgKzEzMCw2IEBAIHYzZDogdjNkQDdlYzAwMDAwIHsKIAkJ
CWNvbXBhdGlibGUgPSAiYnJjbSxiY20yODM1LXYzZCI7CiAJCQlyZWcgPSA8MHg3ZWMwMDAwMCAw
eDEwMDA+OwogCQkJaW50ZXJydXB0cyA9IDwxIDEwPjsKLQkJCXBvd2VyLWRvbWFpbnMgPSA8JnBt
IEJDTTI4MzVfUE9XRVJfRE9NQUlOX0dSQUZYX1YzRD47CiAJCX07CiAKIAkJdmM0OiBncHUgewpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvYmNtMjgzNy1ycGktMy1hLXBsdXMuZHRzIGIv
YXJjaC9hcm0vYm9vdC9kdHMvYmNtMjgzNy1ycGktMy1hLXBsdXMuZHRzCmluZGV4IDY2YWIzNWVj
Y2JhNy4uN2ZkZGVkZTkyYjY4IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9iY20yODM3
LXJwaS0zLWEtcGx1cy5kdHMKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvYmNtMjgzNy1ycGktMy1h
LXBsdXMuZHRzCkBAIC0xNzYsMyArMTc2LDcgQEAgJnVhcnQxIHsKIAlwaW5jdHJsLTAgPSA8JnVh
cnQxX2dwaW8xND47CiAJc3RhdHVzID0gIm9rYXkiOwogfTsKKworJnYzZCB7CisJcG93ZXItZG9t
YWlucyA9IDwmcG93ZXIgUlBJX1BPV0VSX0RPTUFJTl9WM0Q+OworfTsKLS0gCjIuMjUuMQoK


--=-xARFLKywRE19QhV/jOVz--

--=-iHP+2GMv7hO7VSi+MOY4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5ZEScACgkQlfZmHno8
x/7yHwgAo6775SGFwYdJXvh4asV7+UrWZCy0CzWFRRID5lmu32GqAVNQjRvTmgJG
P+p5XYZXMogbF8FyMoaOeU3jiuc1Pbe0fyhjhJOSbHGBfaBV/ziWHOXAmkCQsu75
Vt7djT0lbhY2e47vNCXnqz+PDyrNl3gz2TQKDL5RelmbtsREuNxk9rDETcXTeCHm
gZbQfAT1wmztxXdyuGRnWA9vt7zVg5EHntpLB1OCFZAapqyiCwJA76/8SWc3+rEj
YF9ujiUOE25dp5unOIKiixgId87zRdks5R5ecEmZqiEBUNOHNj9FOFgrBfvOJ3Bu
fIvCBQbfsPC8wwTL0wzxflP+Nla9Nw==
=31ff
-----END PGP SIGNATURE-----

--=-iHP+2GMv7hO7VSi+MOY4--



--===============2615522801503814539==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2615522801503814539==--


