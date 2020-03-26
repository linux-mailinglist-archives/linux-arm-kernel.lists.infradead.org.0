Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E58B193ECC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 13:25:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mVkZ8noGcigohc7d982BFw398qQbc0nR7vIFyD36xkM=; b=ZqioINlEvrN+9aiOFB3D+AFlW
	C+Jlt6csChpiLt2oGFUkY4sQtohTdj2CWITnwR2nPR3b2U+poYiKhaN8qsIreEvFTc2LIVy5hxw9v
	N/zKPobiUaVwKrIPW4DLWByLQ+sv/SL1tfn1xBn8rbf+KJ9+OleFARYhpvG1V26H7nXcye876/A32
	ujIqTLvnHorojxQUAUfoXXcGwWWrhNhCCDVpYv9V/LTGHyTmas6O9/FT1b9q+p/N8/J9ZoLi84IGY
	aKkWa1g4oYnnmLU0iarw44JiOB+gxw51Sc+zIxigWOZM1fFJgto9zn+TzPg0poNw/toke6xuxx+jT
	i4w8p/M+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHRZ4-0006eH-Cg; Thu, 26 Mar 2020 12:24:50 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHRYw-0006YP-Sj; Thu, 26 Mar 2020 12:24:44 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 91F3CB153;
 Thu, 26 Mar 2020 12:24:41 +0000 (UTC)
Message-ID: <24f850f64b5c71c71938110775e16caaec2811cc.camel@suse.de>
Subject: Re: [PATCH] ARM: dts: bcm283x: Use firmware PM driver for V3D
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Eric Anholt <eric@anholt.net>
Date: Thu, 26 Mar 2020 13:24:39 +0100
In-Reply-To: <20200303173217.3987-1-nsaenzjulienne@suse.de>
References: <20200303173217.3987-1-nsaenzjulienne@suse.de>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_052443_075256_E1202EFF 
X-CRM114-Status: GOOD (  12.08  )
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 wahrenst@gmx.net, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7160322191613111791=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7160322191613111791==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-d7LQKba6+yuwYb7BdPgp"


--=-d7LQKba6+yuwYb7BdPgp
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stefan and Florian,

On Tue, 2020-03-03 at 18:32 +0100, Nicolas Saenz Julienne wrote:
> The register based driver turned out to be unstable, specially on RPi3a+
> but not limited to it. While a fix is being worked on, we roll back to
> using firmware based scheme.
>=20
> Fixes: e1dc2b2e1bef ("ARM: bcm283x: Switch V3D over to using the PM drive=
r
> instead of firmware")
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---

now that the problem Stefan was seeing is being taken care of, I think it's
fair to reconsider taking this patch. Maybe even adding a Tested-by by Stef=
an?

Regards,
Nicolas


--=-d7LQKba6+yuwYb7BdPgp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl58nwcACgkQlfZmHno8
x/5rvAf+LW4zqdNAw+skEf7gLWSz8i+ghmc3P0YNFupl4fEuGA62RCruBfIx7zSM
YKS3V9/dAqd4on3dweqB/7/mixPvF/lLbLDpF0AvDySg+dkItI6QhXIcfKCiFWzP
Dyd2w32POGUKljy0gsgRBgxebQ4+bPaDgyTlMnaSnlux7+IDOH9Vr1v4YamYE7N7
9EdGV6fTuib7iOWvkfXmWQoE9Gj0RCoJQ+dGbopRkuAJ9Jng4tqrRy5hHh7Us+2P
u1IpuzS9e2xHRaVSanhkzHqQv9s9Kd0Q0+pqnXwa5//nvuaz8kxWotQl7MMEQ0nV
IaL3nI09Wexdg+FaH1f9grkdodD8pQ==
=TDc9
-----END PGP SIGNATURE-----

--=-d7LQKba6+yuwYb7BdPgp--



--===============7160322191613111791==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7160322191613111791==--


