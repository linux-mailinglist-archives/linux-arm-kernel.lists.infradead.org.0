Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E85BEFF9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 12:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kCZCV6wqrwnH2NTnD0a4ZuP0AoBK35gA4jlIrzbWU54=; b=fHshE7YdPAjIe35T/mzgFvypq
	g63FS073EZAYW5wsXrj2JVXLR2YDNy0Tr0RJltI+CjG1ADYuK/lk9X0jWkTpwlncnl0FVq0O++3Vb
	Y8Wv7q35OiqFIWMm91bFk9oAWo58C8oh3vw2bJhEE/hlr8KLyoEWcbhpXRHvZRXXfONfN1H7T20M5
	sLeMuldfgIjHxg0+AD4Li+rwRjdNJR4UWLeOOf1X+wUnVjDV3zAlKgndxM8yiMX/L3r17CjGXmZKp
	/ou9Y+4LWVc9qWvePHCa7MyJgRFo2ItDHriwvCXil5oypgO7fbJ50An5ptmrXJW1B5yjrCQ0f8sm4
	hhtJ6U7Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDRH7-0003RT-1K; Thu, 26 Sep 2019 10:45:29 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDRGd-0003Bj-Sa
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 10:45:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4D89AAFA7;
 Thu, 26 Sep 2019 10:44:56 +0000 (UTC)
Message-ID: <307b988d0c67fb1c42166eca12742bcfda09d92d.camel@suse.de>
Subject: Re: [PATCH 00/11] of: Fix DMA configuration for non-DT masters
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>
Date: Thu, 26 Sep 2019 12:44:53 +0200
In-Reply-To: <CAL_JsqKKYcHPnA80ZwLY=Sk3e5MqrimedUhWQ5+iuPZXQxYHdA@mail.gmail.com>
References: <20190924181244.7159-1-nsaenzjulienne@suse.de>
 <CAL_Jsq+v+svTyna7UzQdRVqfNc5Z_bgWzxNRXv7-Wqv3NwDu2g@mail.gmail.com>
 <d1a31a2ec8eb2f226b1fb41f6c24ffb47c3bf7c7.camel@suse.de>
 <e404c65b-5a66-6f91-5b38-8bf89a7697b2@arm.com>
 <43fb5fe1de317d65a4edf592f88ea150c6e3b8cc.camel@suse.de>
 <CAL_JsqLhx500cx3YLoC7HL1ux3bBpV+fEA2Qnk7D5RFGgiGzSw@mail.gmail.com>
 <aa4c8d62-7990-e385-2bb1-cec55148f0a8@arm.com>
 <CAL_JsqKKYcHPnA80ZwLY=Sk3e5MqrimedUhWQ5+iuPZXQxYHdA@mail.gmail.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_034500_211523_CBFEA560 
X-CRM114-Status: GOOD (  17.04  )
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
Cc: devicetree@vger.kernel.org, Matthias Brugger <mbrugger@suse.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, etnaviv@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Stefan Wahren <wahrenst@gmx.net>, james.quinlan@broadcom.com,
 linux-pci@vger.kernel.org, "open
 list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 xen-devel@lists.xenproject.org, Dan Williams <dan.j.williams@intel.com>,
 freedreno <freedreno@lists.freedesktop.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============7279930956241962407=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7279930956241962407==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-spHfnjbbIi+e7UZn+wYh"


--=-spHfnjbbIi+e7UZn+wYh
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> > > > Robin, have you looked into supporting multiple dma-ranges? It's th=
e
> > > > next thing
> > > > we need for BCM STB's PCIe. I'll have a go at it myself if nothing =
is in
> > > > the
> > > > works already.
> > >=20
> > > Multiple dma-ranges as far as configuring inbound windows should work
> > > already other than the bug when there's any parent translation. But i=
f
> > > you mean supporting multiple DMA offsets and masks per device in the
> > > DMA API, there's nothing in the works yet.

Sorry, I meant supporting multiple DMA offsets[1]. I think I could still ma=
ke
it with a single DMA mask though.

> > There's also the in-between step of making of_dma_get_range() return a
> > size based on all the dma-ranges entries rather than only the first one
> > - otherwise, something like [1] can lead to pretty unworkable default
> > masks. We implemented that when doing acpi_dma_get_range(), it's just
> > that the OF counterpart never caught up.
>=20
> Right. I suppose we assume any holes in the ranges are addressable by
> the device but won't get used for other reasons (such as no memory
> there). However, to be correct, the range of the dma offset plus mask
> would need to be within the min start and max end addresses. IOW,
> while we need to round up (0xa_8000_0000 - 0x2c1c_0000) to the next
> power of 2, the 'correct' thing to do is round down.

IIUC I also have this issue on my list. The RPi4 PCIe block has an integrat=
ion
bug that only allows DMA to the lower 3GB. With dma-ranges of size 0xc000_0=
000
you get a 32bit DMA mask wich is not what you need. So far I faked it in th=
e
device-tree but I guess it be better to add an extra check in
of_dma_configure(), decrease the mask and print some kind of warning statin=
g
that DMA addressing is suboptimal.

Regards,
Nicolas

[1] https://lkml.org/lkml/2018/9/19/641


--=-spHfnjbbIi+e7UZn+wYh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2MlqUACgkQlfZmHno8
x/6+gwgAlzKCB9vN8cCZUfRnnPT+EcYA2/s3oFjf1ar+/e5UsMfCNI5W7cJaKzg9
w0PGZ5VKk5N0wpkGIpUjOYQ9J5PFZwu5bqsce0zWywlRlYCexKvzpQfkplWi0JuI
cVAt9Sw5mle+ppW+x9T5UlBcHoCByuQDG9ga44Z7O4jrk/lIp7vK2fmSN3hIEcHV
gUPxojWighnxCu+5COgwa182Ncfo3tTLw39oV8uiLOzxXxVkprxdxQHakXPoyg1o
WH0OvR09u1lXZAQ1qKtOxHNgKcrNzpr69VBUL/WYvrSqKdg0EI8QRmkByk5cYgrC
ztco//83y3fCRh8dEph0BSrKU3/vFA==
=P2KB
-----END PGP SIGNATURE-----

--=-spHfnjbbIi+e7UZn+wYh--



--===============7279930956241962407==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7279930956241962407==--


