Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34274A3770
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 15:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qb+PPmCYeAO/HEqipZ8Wh/0+QFAzeKegp9tmtpcq5z4=; b=qkQJe/Bbh8eRPJQBuZZYLvFMP
	AWjB09a7Umss9szkK3lRmYxQcGj0zglonynhcGea7JlicAcdPLPHascdbUnGGhqrpRxEmBI42FdEQ
	PwnXQ7gXYb+9dt2605QnRorolWnbhFFHLra45ACueHYNJNwL9LcuonP9PpwdlKXJT6Uowh7QeS4dq
	der4F+P7xCIVvzImCqjkYVHJtX+Jwy+I9IVGo7B8cccfKZQpywDGg2m8FJJ4fAos4519sEi4bBY//
	l3kRWtvZdrUzi6W9klKJdqoq5se4L/70KziJLmvMARPa52HzyJA4CHdmd989CQQgi1trpHumt8dqn
	voup1OweQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3gVr-0008GH-Ps; Fri, 30 Aug 2019 13:00:23 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3gVJ-00089k-Ai
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 12:59:51 +0000
Received: from localhost (p54B335BE.dip0.t-ipconnect.de [84.179.53.190])
 by pokefinder.org (Postfix) with ESMTPSA id 9444D2C0095;
 Fri, 30 Aug 2019 14:59:48 +0200 (CEST)
Date: Fri, 30 Aug 2019 14:59:48 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Subject: Re: [PATCH v1 2/2] i2c: iproc: Add full name of devicetree node to
 adapter name
Message-ID: <20190830125948.GE2870@ninjato>
References: <1565235473-28461-1-git-send-email-rayagonda.kokatanur@broadcom.com>
 <1565235473-28461-3-git-send-email-rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <1565235473-28461-3-git-send-email-rayagonda.kokatanur@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_055949_533907_5B9A4739 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lori Hikichi <lori.hikichi@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, Ray Jui <ray.jui@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5294725256464821372=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5294725256464821372==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5xSkJheCpeK0RUEJ"
Content-Disposition: inline


--5xSkJheCpeK0RUEJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 08, 2019 at 09:07:53AM +0530, Rayagonda Kokatanur wrote:
> From: Lori Hikichi <lori.hikichi@broadcom.com>
>=20
> Add the full name of the devicetree node to the adapter name.
> Without this change, all adapters have the same name making it difficult
> to distinguish between multiple instances.
> The most obvious way to see this is to use the utility i2c_detect.
> e.g. "i2c-detect -l"
>=20
> Before
> i2c-1 i2c Broadcom iProc I2C adapter I2C adapter
> i2c-0 i2c Broadcom iProc I2C adapter I2C adapter
>=20
> After
> i2c-1 i2c Broadcom iProc (i2c@e0000) I2C adapter
> i2c-0 i2c Broadcom iProc (i2c@b0000) I2C adapter
>=20
> Now it is easy to figure out which adapter maps to a which DT node.
>=20
> Signed-off-by: Lori Hikichi <lori.hikichi@broadcom.com>
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>

Applied to for-next, thanks!


--5xSkJheCpeK0RUEJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1pHcQACgkQFA3kzBSg
KbabhRAAqkAUPTyDcgsxg6iBp9wHBqOf4Tvov5KX9lLAKKkdBJPIHlplIbc932uT
UFFRU/aU4B/IezQYOlq6e3vLCH0gqjXb3lTqUJNEQYxZAFKHZIHjawk8aFeFsRXo
xaMNNLBzOggSzZSSIRetueIlvz5VK3UiTBR5jNLJ8RKAjEWeP7xSBLn2SJOCgfY5
U+XLVMWw7MC+URR+0f/JICFexPkf4guujDe40MjLHLziEWUauGpDpAGKyx6n5KYG
GjSM88vlK8TYmACciAa5avC3HUC2wrzvjoXoSkF57wupss35t3gi5KHaAbOZL4kc
LocZMGDmEdTxM9aEEqWkeX/z3zH89TNuRIHv49V94OkoWzOpwl2Vxv5iJiapSW8W
BNxGoI6ELmHx+dOEP3rDwq588XL0i5MlLE+sPHabWZvbUwSdibiUZ6UyuELRv/iV
ynZLprkU2jQaMnmSflUbPKlfe4g4ugrA7ABySopWjcAZYkOjHmJKYQArmTipH9Zo
ju7cNo6jhQPxpypMCLWkfrm+fmPQsUWDBtqcIRqyQBFcrtpcdZkww0gHLmo4BQ8L
7HEgIIameZ2NfJ3S047grLxUz0gwYhYj69v5KwOm+q5sqfaJgGWMs75EsfQ/Gs3Y
E5sMlpq7v32WuhRu9fRTHCo747TVWh7tYWlihBI+zsUr7Xi8q5A=
=KZnX
-----END PGP SIGNATURE-----

--5xSkJheCpeK0RUEJ--


--===============5294725256464821372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5294725256464821372==--

