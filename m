Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F4C17DE0A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 11:56:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=otWzYE/iKaU/qCwRqXoOcNkIvoDdbLR6lUcZO/SRTQg=; b=QdxesHCDkmlNOhH664Cf9TVog
	AgcTE00EtH2t8MZhY0dOfwDwuEIQv73lZ/Z5uPyUY8jUTi8ORu9QHjzx/tue+0d9DPPKPG7c30Esq
	Ow2dO0t5RPa2XbrvbKLW0HbO7kOxdSfKx8nasu3MiRY80r5t5o8CViYOH+ixR3GFiMsBP69PTh4ul
	qQSaWWH1Ltij5BvijRZhbld/RqGJEWYHjfGC/UpMHbuBhyV4qoavz2VJ41nMRF0Jhvr7CUnUgrhou
	3cp6rtu0PaJq94KBdM4bfg/fTwpgmevUAE/J58CWFkYcUVsj9xW488M7TyaUEPH4vmQkaz3Laqw0c
	1PHRDPwSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBG4z-0000AX-0A; Mon, 09 Mar 2020 10:56:13 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBG4p-0000AA-Un; Mon, 09 Mar 2020 10:56:05 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 5CB0EAD8E;
 Mon,  9 Mar 2020 10:56:02 +0000 (UTC)
Message-ID: <1b8dac648f554095755379b505ea28a440d7a925.camel@suse.de>
Subject: Re: [PATCH v4 3/4] PCI: brcmstb: Wait for Raspberry Pi's firmware
 when present
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, 
 linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>, 
 bcm-kernel-feedback-list@broadcom.com, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Andrew Murray <amurray@thegoodpenguin.co.uk>
Date: Mon, 09 Mar 2020 11:55:57 +0100
In-Reply-To: <16c98273-a639-374d-e784-0d015aeee634@cogentembedded.com>
References: <20200306114348.5172-1-nsaenzjulienne@suse.de>
 <20200306114348.5172-4-nsaenzjulienne@suse.de>
 <16c98273-a639-374d-e784-0d015aeee634@cogentembedded.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_035604_137891_7E8F837A 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: tim.gover@raspberrypi.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: multipart/mixed; boundary="===============2595614371866313263=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2595614371866313263==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-yufnYxnrASv6QOp1sHw0"


--=-yufnYxnrASv6QOp1sHw0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2020-03-07 at 12:55 +0300, Sergei Shtylyov wrote:
> On 06.03.2020 14:43, Nicolas Saenz Julienne wrote:
>=20
> > xHCI's PCI fixup, run at the end of pcie-brcmstb's probe, depends on
> > RPi4's VideoCore firmware interface to be up and running. It's possible
> > for both initializations to race, so make sure it's available prior
> > starting.
>=20
>      Prior to starting?

Of course, thanks!

Nicolas


--=-yufnYxnrASv6QOp1sHw0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5mIL0ACgkQlfZmHno8
x/5Mvwf/U7iuxfkYayr+H7nxHE88bB6RJjaZmpq0JkgeI18h6/MvgpxmOuzrjOnK
VTPUGmw30F0dKzwEXh5jc09cTiIaarpXk0xDuIF53MQLhiToWRpBwF5du6lIZbym
HndNI+mnUkOx4C0x/Qo+uY+2fmlau5/zDclq5m1PD9BfUfr2+fU3z5WSCP04+NHh
LhYempQI0VIvBRepKy69F/PHbJ2gXhDKAczaTz/izsRJ6z5NJqhJKQw3hzqiPy5o
PUQGVobT03enITrvL10XbM99phOfxuOjfGHHGR2Ex85rcIHRC5s8pJlbfMu9N22N
tvpZ6FtIaCvEgO8dGHgHKXyQSNg4Fg==
=MleZ
-----END PGP SIGNATURE-----

--=-yufnYxnrASv6QOp1sHw0--



--===============2595614371866313263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2595614371866313263==--


