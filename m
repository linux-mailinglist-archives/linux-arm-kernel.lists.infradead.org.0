Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1264419E74B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 21:20:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FtpTuvkMK+2dIqT9KMqeKuLLDhROewElHRwGotylITY=; b=RCwIqUD9PokScg/YEozZmY65c
	NnTaCjDH/JGixsgbngGijYZKixAVbSahK/or4EWC11qPlN/RN7OUcmExOA5n1uFCcYVzKDyWvu0WQ
	tdJJ4iP8HwefsYCFsURc7QFw6wB5XHLIM9VTBAWkFAuTy14ZRLdd9r5hOwdhE3RQVu29DrZW/I85J
	qV+bNlyt3ViCQxPEj+ibpgGcJ0uNNQC+3QAI/xGAxaFTV/kxVKlEINMrkUGaGVO597IGfi89jVY0A
	xI6pBdPTIXpViPgdC9lfPbZzfwLOrtLKq6bYONI02upFZHFYzl22RBRAjI5XzcYSIosk08gF3MmN+
	Q/GNRx6FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKoLV-0002ja-Iy; Sat, 04 Apr 2020 19:20:45 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKoLO-0002iX-DV; Sat, 04 Apr 2020 19:20:39 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 634ADAEF7;
 Sat,  4 Apr 2020 19:20:35 +0000 (UTC)
Message-ID: <6b81402dd7ab6431f69dba301ce07822cb8dd753.camel@suse.de>
Subject: Re: [PATCH v6 3/4] PCI: brcmstb: Wait for Raspberry Pi's firmware
 when present
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Bjorn Helgaas <helgaas@kernel.org>
Date: Sat, 04 Apr 2020 21:20:27 +0200
In-Reply-To: <20200402193820.GA32107@google.com>
References: <20200402193820.GA32107@google.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_122038_747675_A5E674A9 
X-CRM114-Status: GOOD (  22.77  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, wahrenst@gmx.net,
 sergei.shtylyov@cogentembedded.com, tim.gover@raspberrypi.org,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: multipart/mixed; boundary="===============5671598553964235159=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5671598553964235159==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-LNav0Mbq0jkFum1SVnUz"


--=-LNav0Mbq0jkFum1SVnUz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-04-02 at 14:38 -0500, Bjorn Helgaas wrote:
> [+cc Rob for DT platform device dependency question]
>=20
> On Thu, Apr 02, 2020 at 04:27:23PM +0200, Nicolas Saenz Julienne wrote:

[...]

> > Sorry it wasn't clear enough, I'll redo this comment. Also note that
> > the PCIe bus and the XHCI chip are hardwired, so that's the only
> > device that'll ever be available on the bus.
> >=20
> > VIA805's XHCI firmware has to be loaded trough RPi's firmware
> > mailbox in between the PCIe bus probe and the subsequent USB probe.
> > Note that a PCI reset clears the firmware. The only mechanism
> > available in between the two operations are PCI Fixups. These are
> > limited in their own way, as I can't return -EPROBE_DEFER if the
> > firmware interface isn't available yet. Hence the need for an
> > explicit dependency between pcie-brcmstb and raspberrypi's firmware
> > mailbox device.
> >=20
> > Your concern here showcases this series' limitations. From a high
> > level perspective it's not clear to me who should be responsible for
> > downloading the firmware.=20
>=20
> I think it's fairly common for drivers to download firmware to their
> devices.  I guess there's not really any need to download the firmware
> until a driver wants to use the device, right?
>=20
> > And I get the feeling I'm abusing PCI fixups. I haven't found any
> > smart way to deal with this three way dependency of
> > platform/non-platform devices.
>=20
> So IIUC, the three-way dependency involves:
>=20
>   1) brcm_pcie_probe(), which initialize the PCI host controller
>   platform device, enumerates PCI devices, and makes them available
>   for driver binding,

Yes, and also resets the PCI bus, which will clear VL805's firmware (the XH=
CI
chip).

>   2) the firmware mailbox initialization (maybe
>   rpi_firmware_probe()?),
>
>   3) quirk_usb_early_handoff(), which downloads firmware to the VL805
>   PCI USB adapter via rpi_firmware_init_vl805(), which uses the
>   firmware mailbox?

And yes, that's the general idea.

> Is there some way to express a dependency between
> "raspberrypi,bcm2835-firmware" (the platform device claimed by
> rpi_firmware_probe() and "brcm,bcm2711-pcie"?  If we could ensure that
> rpi_firmware_probe() runs before brcm_pcie_probe(), would that solve
> part of this?

That's ultimately what this patch tries to achieve. If there was a way to
offload it to DT it would be way nicer.

Regards,
Nicolas


--=-LNav0Mbq0jkFum1SVnUz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6I3fwACgkQlfZmHno8
x/7yVwf/WCJwmohpLUsUVej5HvbKKbr47tjWtIup3ZkGd73iGu0ksx2odYhV02XX
i++eva/mzXf9XTFBvpfpaExqIrEiKjbzPhpm6Vgt0J7q4uB/T1LYN6q+jfKP5Dbo
sCrxifMx7JSqM1r5ZKFUPHd1rOqiTzR+MpLsgcjvqI/NwDdm8dramibWKiIR74OU
7n1hvoW5S2nMfLjSbwW7UAxv9XIg9WLpobebE94QaYGAsGSDzqTPI4ZDXpP+9Y9p
zE8KUuxi611Nus5Pz6DrgUTrnz2tMvZBOxiIbClGduGRQdy/U1oRLOf2SK3/LD0Q
zu9X6I23eZhtVtQ5l4Wtynxkx6oK8A==
=N5AC
-----END PGP SIGNATURE-----

--=-LNav0Mbq0jkFum1SVnUz--



--===============5671598553964235159==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5671598553964235159==--


