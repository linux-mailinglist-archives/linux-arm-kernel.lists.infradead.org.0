Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F19120174
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 10:49:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/zWWbLnKs4BRFBCCGliIXwzdnzvQwHPwEzeSUGnBIR0=; b=FhHVLdG71terePe4Hk9CznRO6
	75HAy2Edumv9DN4/o46B98vT7ZynBqy0SbH/Co/dSV9rqGwglWBl1YkGKarVp/v7unzYbMFD5PyVg
	1tYu20+VuQzjgSdwa090LacJ+FXJBGuac0sksyHE7GzmqoJlSkc7aT2hGhgJ5wvTHesFKkiPBom8B
	BIrKLUYMUBwsZY8UJFbHUx3iZpoJtd7eiK5BNXzQR7oiRZI3d1oYQvdncADkhQncTtBmhaY5uXUVp
	Mhg2EnoaA3A24KEuNVo34GmZ+Mz6cIFb4K3J9fWbr4hOUwwvo59sTNfn7Ea7wcmgnF4PzGjAaXoEd
	UNcRDk7bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ign0I-0001wm-0e; Mon, 16 Dec 2019 09:49:26 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ign06-0001vt-Lm; Mon, 16 Dec 2019 09:49:16 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1D467AF13;
 Mon, 16 Dec 2019 09:49:11 +0000 (UTC)
Message-ID: <6384f1dac3bfbcad625138b2d528b1855c4a92a0.camel@suse.de>
Subject: Re: [PATCH v4 2/8] ARM: dts: bcm2711: Enable PCIe controller
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Jian-Hong Pan <jian-hong@endlessm.com>
Date: Mon, 16 Dec 2019 10:49:08 +0100
In-Reply-To: <20191216064638.5067-1-jian-hong@endlessm.com>
References: <20191203114743.1294-3-nsaenzjulienne@suse.de>
 <20191216064638.5067-1-jian-hong@endlessm.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_014914_857485_EC87127E 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 mbrugger@suse.com, linux-pci@vger.kernel.org, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com, eric@anholt.net,
 robh+dt@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 maz@kernel.org, andrew.murray@arm.com, linux@endlessm.com,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: multipart/mixed; boundary="===============0742745611588102657=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0742745611588102657==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-ca9uKgWQRdtwH/iqxJQ5"


--=-ca9uKgWQRdtwH/iqxJQ5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jian-Hong,
On Mon, 2019-12-16 at 14:46 +0800, Jian-Hong Pan wrote:
> Thanks for your effort! System can have USB with this patch series, if th=
e

:)

> device tree is modified properly.
> Here is the question: Will not the device tree "scb/ranges" in this patch
> conflict with commit be8af7a9e3cc ("ARM: dts: bcm2711-rpi-4: Enable GENET
> support")?

You're right, the patch needs to be refreshed.

I'm going to send a v5 of the series factoring out all the log2.h changes, =
and
addressing this.

Regards,
Nicolas


--=-ca9uKgWQRdtwH/iqxJQ5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl33UxQACgkQlfZmHno8
x/5qZAgAspvPWdeld7fMjDA7RgPcepOG/7Tlr7qM5Pj4OqiMED5mmllk/dlq9t9v
I2VQp6/JpG1KuEjaSQdy7i+0xJrQsl9NAKUyqDnp704MXqpLHa7prZUehxuIsyGf
jvVThTMIcdp8/XBp5QfuuVIZ/6DkCh0eg/P1f/SXsImRR6waGSprkWfertIMgf+L
nKsupBFPruKtVSAUPuI33r8TvQxRJsU7qdMQ+djmPI6CpChYtzFfUk0xqYHvgGKB
B8h+kjrZLw1G4rlN8o0BMgnO8EX/fvuH3kKMYMpQAxWAlRoMfbcu7vFg+uiaOY/t
2RDihMFD4GAnIcNHrU0l5J8RKBGkVA==
=WVjN
-----END PGP SIGNATURE-----

--=-ca9uKgWQRdtwH/iqxJQ5--



--===============0742745611588102657==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0742745611588102657==--


