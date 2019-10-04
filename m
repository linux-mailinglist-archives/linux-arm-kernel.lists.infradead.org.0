Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6D4CBB19
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:59:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pT5v19nrihzMhh1O4CDsS/C8mwigJSLdTIe+cLMdsvQ=; b=UISqnTwH82RDL6Z/aC/tg1PJN
	RWEon+aVm19Ewnd5dXoa644K0ZRija2+HFtMGVdylyRnm4zH8nL10yN8EeVdGvMDdB3S/pfwQEkaw
	Skw6dmYEeqTOS0PzOdWXsOqP8yvQ/+db2dWQZtbWDpeCEcPr9EbGnLL8enf0OWj5U65+ZxRqYe92T
	VFhygoCOhv+7RsNr4eqJG09/UfocGlwNNkkRLKZ/bq4Aeu2ZtWiHQP2hWgM5FFI2RyDpsaGW4+5Fz
	nJh8zVv+uhHS+L/+RJfjj0UwdncsCXj9eyws6pqOBvuO5YmLQKKFgZek7OXeOVZ3VtmhNvMCt/cb8
	jCDIfB+Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGNBT-0007xY-8e; Fri, 04 Oct 2019 12:59:47 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGNBL-0007vc-AJ
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:59:40 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DFB78ABF4;
 Fri,  4 Oct 2019 12:59:37 +0000 (UTC)
Message-ID: <0b544f5bc31857fef2d13bd16275cf09ace58b89.camel@suse.de>
Subject: Re: [PATCH] mmc: sdhci-iproc: fix spurious interrupts on Multiblock
 reads with bcm2711
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Adrian Hunter <adrian.hunter@intel.com>, Ray Jui <rjui@broadcom.com>, 
 Scott Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com
Date: Fri, 04 Oct 2019 14:59:35 +0200
In-Reply-To: <20191004125226.27037-1-nsaenzjulienne@suse.de>
References: <20191004125226.27037-1-nsaenzjulienne@suse.de>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_055939_505161_9C3C37F8 
X-CRM114-Status: GOOD (  11.70  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Matthias Brugger <mbrugger@suse.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, wahrenst@gmx.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4975914091716079305=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4975914091716079305==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-E7U/NXt/RvithmmAJCzu"


--=-E7U/NXt/RvithmmAJCzu
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-10-04 at 14:52 +0200, Nicolas Saenz Julienne wrote:
> The Raspberry Pi 4 SDHCI hardware seems to automatically issue CMD12
> after multiblock reads even when ACMD12 is disabled. This triggers
> spurious interrupts after the data transfer is done with the following
> message:
>=20
>   mmc1: Got data interrupt 0x00000002 even though no data operation was i=
n
> progress.
>   mmc1: sdhci: =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D SDHCI REGISTER DUMP =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>   mmc1: sdhci: Sys addr:  0x00000000 | Version:  0x00001002
>   mmc1: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000000
>   mmc1: sdhci: Argument:  0x00000000 | Trn mode: 0x00000033
>   mmc1: sdhci: Present:   0x1fff0000 | Host ctl: 0x00000017
>   mmc1: sdhci: Power:     0x0000000f | Blk gap:  0x00000080
>   mmc1: sdhci: Wake-up:   0x00000000 | Clock:    0x00000107
>   mmc1: sdhci: Timeout:   0x00000000 | Int stat: 0x00000000
>   mmc1: sdhci: Int enab:  0x03ff100b | Sig enab: 0x03ff100b
>   mmc1: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
>   mmc1: sdhci: Caps:      0x45ee6432 | Caps_1:   0x0000a525
>   mmc1: sdhci: Cmd:       0x00000c1a | Max curr: 0x00080008
>   mmc1: sdhci: Resp[0]:   0x00000b00 | Resp[1]:  0x00edc87f
>   mmc1: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x00400e00
>   mmc1: sdhci: Host ctl2: 0x00000001
>   mmc1: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0xf3025208
>   mmc1: sdhci: =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Enable SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12 to enable ACMD12 on multiblock
> reads and suppress the spurious interrupts.
>=20
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Tested-by: Matthias Brugger <mbrugger@suse.com>

Forgot to add:

Fixes: f84e411c85be ("mmc: sdhci-iproc: Add support for emmc2 of the BCM271=
1")

I'll resend if needed.

Regards,
Nicolas


--=-E7U/NXt/RvithmmAJCzu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2XQjcACgkQlfZmHno8
x/5CBQf/WvHZDFKw37mxwtwN2x5i0WFg95fBCi+6Hk6D0vDWuVUVMZBYneEUmyIt
p42PpscEU854tHmqpqDn6/g2+O/9+g1XW3HOoOj4WjoP27d8uZPCPa0v8eWpahdI
vGVhVjoCIuFlu3rsBW1tz/zvzVGmRICBY8ZurPqA7Pi+mepPAnWgjC99v4RDUEZc
iqYqSupt4qyT7bhs5JOFywXm1Qu+KHQ0XoqGQdBD/vEVNuJn2bu0gOhvqKeWCWdl
l6cHyjZjtHvtILFZyo1+Ys2DjVJnjPBY3zRBFG2C8I+2Ep3ust80fZ6SbZnMqDGx
jjaH2rBVoZ7Ic5dAcBPXmjieSdo/Bg==
=mtyS
-----END PGP SIGNATURE-----

--=-E7U/NXt/RvithmmAJCzu--



--===============4975914091716079305==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4975914091716079305==--


