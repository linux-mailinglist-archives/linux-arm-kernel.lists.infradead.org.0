Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 434B71C3529
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 10:59:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z87aay3U/5onCeJM/Rc5JjiortgnF7Lq5WfLcw0J06M=; b=NGTxyPr9zm0lHOpZoXVborFNL
	+vy6H2yG74ClaHZ+PgxxXhJwpxLdKm9Hi8uGALZ9NxlAbc/KxRlI96YkevlsBphvSvPrbELUWSzNv
	OLrdRbvd8Ozuve/mmb3Ei8h0l1w2xYu7BeFBFiUVpRdMMqo7VDG8Rxpi0lc779qNHAEBzgf9dpYb7
	MK3j2vLKzEgf6RfHRk9GmINC6BMYev9gc1oV9ef1GQi+6Q/zh5S+3x1k0lfeXUAlkVI1fWxxLGlpJ
	mRjQKXcSoPBDKTbu/0wy76ok1LQrF8kK1ySLGcup3lxbsam6ilgia5xJqit6Vxhqy15muYBxkB79+
	PFMjUr9fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVWwy-0006Dk-MY; Mon, 04 May 2020 08:59:44 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVWwr-0006Bd-5P; Mon, 04 May 2020 08:59:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E65D5ACF1;
 Mon,  4 May 2020 08:59:33 +0000 (UTC)
Message-ID: <d105712418b93ebce7c0498d05eea77171892366.camel@suse.de>
Subject: Re: [PATCH v7 2/4] firmware: raspberrypi: Introduce vl805 init routine
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>, helgaas@kernel.org
Date: Mon, 04 May 2020 10:59:29 +0200
In-Reply-To: <5fce05ca-5d7e-f4cc-be34-0764fbe4edff@gmx.net>
References: <20200429164734.21506-1-nsaenzjulienne@suse.de>
 <20200429164734.21506-3-nsaenzjulienne@suse.de>
 <5fce05ca-5d7e-f4cc-be34-0764fbe4edff@gmx.net>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_015937_341595_C3F7F679 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: f.fainelli@gmail.com, ScottBranden <sbranden@broadcom.com>,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, RayJui <rjui@broadcom.com>,
 tim.gover@raspberrypi.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7707380593720006210=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7707380593720006210==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-xrGwwQwF9+uJnqYpmvFb"


--=-xrGwwQwF9+uJnqYpmvFb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stefan, thanks for the review!

On Sat, 2020-05-02 at 11:05 +0200, Stefan Wahren wrote:
> > +	/* Make sure we don't trigger a firmware load unnecesarely *
> s/unnecesarely/unnecessarily/

Noted

> > +	pci_read_config_dword(pdev, VL805_PCI_CONFIG_VERSION_OFFSET, &version=
);
> pci_read_config_dword() can fail, we might want to store the return value=
?

I planned on doing that, but realised that the vast majority of
pci_read_config_*() users pass on checking for errors.

Bjorn, any rule of thumb on when to check for errors here?

> > +	if (version)
> > +		goto exit;
> > +
> > +	dev_addr =3D pdev->bus->number << 20 | PCI_SLOT(pdev->devfn) << 15 |
> > +		   PCI_FUNC(pdev->devfn) << 12;
> > +
> > +	ret =3D rpi_firmware_property(fw, RPI_FIRMWARE_NOTIFY_XHCI_RESET,
> > +				    &dev_addr, sizeof(dev_addr));
> > +	/* Wait for vl805 to startup */
> > +	udelay(200);
>=20
> I know, it makes it harder to read but do we really want to wait
> unnecessarily if rpi_firmware_property failed?

Yes, I figured that it wouldn't hurt much at that faulty state, and you'll =
be
waiting some extra 5s further down the line in quirk_usb_handoff_xhci().

But if you feel it's more correct I'll be happy to change it.

> Btw i assume we are in non-atomic context, so maybe it's worth to use
> usleep_range() here?

Of course, I'll fix that.

Regards,
Nicolas


--=-xrGwwQwF9+uJnqYpmvFb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6v2XEACgkQlfZmHno8
x/6tJQgAqKxAf6yuXPyZ70bzD6f9Lw8O516dwBki+Md23tM1+Fw/cmdCe77tbMgq
d0xAlhNfnHxXiXWLX3+C5jEGn7rJyVAjLHZx8JC+uPrGZyuZMPHfxRwBwLglkkIt
U4B07Kan2MZRiQ1ZQ3jlpzEXvNfGl7KpComy8U/fPad8wpGXqZjIy1e+rlQO9FEg
1weKYQIGSSdJSK2hIlnMPVLw9o342QE6KL7DCxV025ttlasor0mavVvfdX+HYRns
fDtXerc+8wWRTNwusO4f5Zd/7GS1mAPYOYSUHrSMzT5rkSS5rDTfT33hQLUKFIaB
bsGjvNxDJbG1cPJFfYYStNo4Id0Oqg==
=Vbo6
-----END PGP SIGNATURE-----

--=-xrGwwQwF9+uJnqYpmvFb--



--===============7707380593720006210==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7707380593720006210==--


