Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CED14D7D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 09:38:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b0/fg0B2fOU1glUsBytu54kZK2UTJsKp9+7imesrmbk=; b=fp2KPblDCFHNMxzIcO73CuVNf
	3R1521vkoyJlBZXckj4kDbsi1B/Tk35pcJbORb14V2ozrbwoh4xxoyniKHMG4vRspXsg2V8Wtgv1J
	nbbHjvO1wPtZVnDiyk4ZtJEjs3B6Ha08mgKZM/8JGWBvSWkLbrHQ13eMPiLSHWbr4r6hUwksTHR7k
	yR3ammOeJejQNBM68WOfSG8DPsrEbM+zQyJl+js/hwcSYk9+7obD3Zoi8FmthkIfc2gpH2YW5MEM4
	xT05N9EzJDhwgbVW7gORIp/ykvkkAkzc3Hw9kDA0ky1w6hfrBqV85mqiLfojgY9qSjB2Nz9NalGka
	Rx5YGgyTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix5LB-0001vJ-46; Thu, 30 Jan 2020 08:38:21 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix5L2-0001tg-Nj
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 08:38:13 +0000
Received: from localhost (p54B33261.dip0.t-ipconnect.de [84.179.50.97])
 by pokefinder.org (Postfix) with ESMTPSA id 0929F2C0697;
 Thu, 30 Jan 2020 09:38:11 +0100 (CET)
Date: Thu, 30 Jan 2020 09:38:10 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH 4/6] i2c: i2c-stm32f7: add PM_SLEEP suspend/resume support
Message-ID: <20200130083810.GG2208@ninjato>
References: <1578317314-17197-1-git-send-email-alain.volmat@st.com>
 <1578317314-17197-5-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1578317314-17197-5-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_003812_927004_EC12126A 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6672905466144901922=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6672905466144901922==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oOB74oR0WcNeq9Zb"
Content-Disposition: inline


--oOB74oR0WcNeq9Zb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 06, 2020 at 02:28:32PM +0100, Alain Volmat wrote:
> Backup/restore I2C registers as part of the suspend/resume
> handlers. The device is marked as suspended to ensure that
> transfers are rejected during the suspended period.
>=20
> Signed-off-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>
> Signed-off-by: Alain Volmat <alain.volmat@st.com>

Applied to for-next, thanks!


--oOB74oR0WcNeq9Zb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4yle4ACgkQFA3kzBSg
KbY32g/+MsJU/Mz6bHmAAS9cTmzSotAvgy/o+WUUunotmJ7EHIyl25iZjMCFrs2z
Xi3Gk59qbPt4oMVu1wQNhT7NDbvjyyfltJPFyRjevxMfBKwcMGdd6lI4W+jsogCk
JtzOEIkiDrSXFqrC58/zjxbTV6vxpR0gtvbhnvVUvhtcAaVEWtrKm+f3NE7XoDt3
E4IhMehFrxlHxaBtzJUzlEyUrv0rRav4knChHnpAgtCHIh5wOVdj2PAMTibteAJ2
56Mt6MvU+W+vs6enYkDcFCtEu9sgOZF1RM3ozUurkI98Efqn/21M2fP7WtxZMDih
Ai/bVREnuAeJWI8LA65h9diLll6Wfi+QKlgh8Lq1XQmIfsPtv9kZGD3jCLZ9AEcJ
Gv//iQpUstLg728O+atN0pTYLyQ0Tuync+LxYnqyFHclpqFb4nwe37zF2gzVMkY8
H5Xaz+I7jqzG+I42img+kcLYIYbmT7Wjq/LJdivpAA8EzETeLzxX0QVroIDXzcOs
vGrk26aCR8xAfST/6KAb7AC8G5HSIDYFzsfbGhYMYm6jVvXw2pZYBXGsxtxTOXJ8
S8GsbiiY+3sND5foLLbEAtqpNgDNnJsPxS3R8MwES/2MiuPp+yEk1oinnS8cY6li
lom0Vqb3JaX8OQjZDu6uYyPAvhm2ED4jCCSMSvdMJNZtojtASKo=
=yyQ3
-----END PGP SIGNATURE-----

--oOB74oR0WcNeq9Zb--


--===============6672905466144901922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6672905466144901922==--

