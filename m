Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 731AB322D1
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Jun 2019 11:33:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S2g3EgKeZ3uNTMAR7BhTDEcAwlzBPA4o/4MX5OhW5pQ=; b=sFH0QKDxEbbfzjaUFXbpvlxnb
	IvL+mR+zHXkq/oTXzu/5RapIvIvJI0WoXUjUpH3CXmIojVCnrvvXVaAUaoK4tVlT6E9iZ0Q65Dcl3
	0Pu6dYpJrLWn0J+u/Quzr+UCQ1drVQKD3R/l0icKafSis69bsxZ6QBS5oM21RA/0w3WPMTI0xbiHp
	uMP4nfvv5TrSwxhMc/fMzti7exCgJqp0DPizcgxqTe+XnOQ0C1JQZpyh7EAe63jKk8gRGH/HgTaF5
	0wvNk3LGtNqepNIIaK6dmPmJpjJ/NKzsg89I+M7v8B8dM6P94iANZCthSV53/Nc1ezdOTBJVaqOKC
	j0GLBaBIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXMs0-00056r-La; Sun, 02 Jun 2019 09:33:40 +0000
Received: from mail.z3ntu.xyz ([128.199.32.197])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXMrr-000560-Nr
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Jun 2019 09:33:33 +0000
Received: from g550jk.localnet (188-23-224-77.adsl.highway.telekom.at
 [188.23.224.77])
 by mail.z3ntu.xyz (Postfix) with ESMTPSA id CB64EC62FD;
 Sun,  2 Jun 2019 09:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=z3ntu.xyz; s=z3ntu;
 t=1559468008; bh=pQdvPMLIBmdIcqXAkWH+WvQdnCpnkFRtt4HIJgSnwC4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=mvP5P3mXB/dB/BvooP+TNehmDN6t1qMkvdl5CKdYRgltnKJO9kpa7fU37fFxFDiy4
 0UXkiSOpD3TQfZGcOQZdzeS6m8IU7DMfmUKH9kfPRpppTaxnQhtnGTx3v+SfBowUxH
 uTH0vnS1/M55LTnxWhCcMDZFJK5uo7VMp+SuBl1E=
From: Luca Weiss <luca@z3ntu.xyz>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 3/8] dt-bindings: net: bluetooth: Add rtl8723bs-bluetooth
Date: Sun, 02 Jun 2019 11:33:19 +0200
Message-ID: <3444508.DTbMFtmaYk@g550jk>
In-Reply-To: <CAL_Jsq+kqFrY3DoHG_TJCCSxVHRkin4OwM+F9qm6W0w5YfjPQQ@mail.gmail.com>
References: <20190118170232.16142-1-anarsoul@gmail.com>
 <CA+E=qVdq5GORg-t-vVXM3zBxy3Aq93iCE+zmcGgLFBMcnTDgfw@mail.gmail.com>
 <CAL_Jsq+kqFrY3DoHG_TJCCSxVHRkin4OwM+F9qm6W0w5YfjPQQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_023332_077199_FBBE50B8 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Johan Hedberg <johan.hedberg@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 Marcel Holtmann <marcel@holtmann.org>,
 "open list:BLUETOOTH DRIVERS" <linux-bluetooth@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, "David S. Miller" <davem@davemloft.net>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4891794949723689328=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============4891794949723689328==
Content-Type: multipart/signed; boundary="nextPart8714085.0COXUpWfup"; micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart8714085.0COXUpWfup
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Dienstag, 19. Februar 2019 15:14:01 CEST Rob Herring wrote:
> > > How is this used?
> > 
> > rtl8723bs-bt needs 2 firmware binaries -- one is actual firmware,
> > another is firmware config which is specific to the board. If
> > firmware-postfix is specified, driver appends it to the name of config
> > and requests board-specific config while loading firmware. I.e. if
> > 'pine64' is specified as firmware-postfix driver will load
> > rtl8723bs_config-pine64.bin.
> 
> We already have 'firmware-name' defined and I'd prefer not to have
> another way to do things. The difference is just you have to give the
> full filename.
> 

Hi Rob,

I'm working on a v2 for this patchset and I've looked on how using "firmware-
name" with the full filename would be possible but as David Summers has already 
written [1], the existing code [2] takes this "postfix" as parameter and 
basically fills it into a filename template ("${CFG_NAME}-${POSTFIX}.bin"). So 
either we stay with the "firmware-postfix" property or the existing code would 
have to be modified to accomodate the full filename; but if using firmware-postfix 
is unacceptable, I can rework the existing code.

Luca

[1] https://lore.kernel.org/netdev/d06e3c30-a34a-bd84-9cdf-535f253843e3@davidjohnsummers.uk/
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/
drivers/bluetooth/btrtl.c#n566
--nextPart8714085.0COXUpWfup
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE66ocILd+OiPORlvAOY2pEqPLBhkFAlzzl98ACgkQOY2pEqPL
BhnnFA//VC5cSighumkwqn1tDlKT2am98yezWEof4TyDc9ep57nBLBfxfVi/J9o7
S3uuBW876kpDuh5jCZ9jc7ajY/HOVk2kP63WklFmCPrFSatDw8JGaNV03cnbgV4z
NFZh3Vgnouz+9ELHRG6o2gQiQgu4FLHrQZWzHoccDS5RmerDEFN+1/LYEQuPuFay
WzXUcwNW4STqqQrw0AqfR61Gws1JarHMqShEmvI/5OEdfCFBlVu7uEkyMhQgurNO
dz6Nc6KQQKPV6xBHDAHnTtXKauBENpAe8GSZyIcqpDdIIMzLm/xP1uSG7E9W2yQ8
8YI62hXxCuKcLqNhMmmlxtnR4zQPpqV8b0bMlTHqZ/xdMsiksx/dgagafvPorvRs
U76IRzgrye43KpLQQEmYZxCVjrvtI6RAPY764AfdwoUpo17VEUrmT40W1NkmsPyQ
zo8m3Sl8DIvbxPTOSivZeMpN5GdgkCBT9mEQbYEkdMlDf+mUVOJBqZSNyfimwqL5
mvtTWXneuQmpRrrIhugsO0T0fLEUqTzddawDOgA3r3f6KjQQ6JnGA7FOfF8eJNeO
8uwK36whihKCYqUaUJaWSayF6VZVV4uurjyOMccHD+h1dYiNRBOLxcEns2XiWftw
fcKG10h3MfKscapGVYL6HegnxTnmTSDdeb3CD+v7aP57RIqLb0g=
=np+i
-----END PGP SIGNATURE-----

--nextPart8714085.0COXUpWfup--





--===============4891794949723689328==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4891794949723689328==--




