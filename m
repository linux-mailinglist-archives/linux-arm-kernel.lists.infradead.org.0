Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A293417F612
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 12:19:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZmOPZwoXqejo+ROO8kfDuwFy/rfJdbby1aPMtHEh8nY=; b=e+4F3M52zjTJBS67a0wXrC/CV
	NsobVEgGIgs03o0RTXSFv7ufZ3uxjtwDLmmYgQSzDZtPGXN3sxHFrpyFxzaCsRyWH9Y0Hj3zcKL5g
	hcMAEwYZ2bBxfr3VapJh/LmFgLNvqYIbN9VBwwqTwz9qqASysjXRjKJwafJbMTFfXECZw6OA7zcCQ
	H59mgTGtNTyLdqnC/caHY2lIVqWhz5hn+OR6AXvUtDL0OmVm1JLjFdWhSvisVgfdJModJxM7sIACq
	QHAAo9iJ3a0wh5qqCBz4gqaPAVzQ2RVlfkw/RHtQ9RlpsEeYYAENh7SAuAYcgp1PEurZuYV2Zq7s7
	xQEgSLRTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBcua-00070D-Ue; Tue, 10 Mar 2020 11:19:00 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBcuB-0006nx-FD
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 11:18:36 +0000
Received: from localhost (p54B33196.dip0.t-ipconnect.de [84.179.49.150])
 by pokefinder.org (Postfix) with ESMTPSA id B82582C1EB6;
 Tue, 10 Mar 2020 12:18:34 +0100 (CET)
Date: Tue, 10 Mar 2020 12:18:34 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH] i2c: stm32f7: do not backup read-only PECR register
Message-ID: <20200310111834.GR1987@ninjato>
References: <1583413141-1268-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1583413141-1268-1-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_041835_650209_3FE02943 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3156054277489386514=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3156054277489386514==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TDVcAd+kFgbLxwBe"
Content-Disposition: inline


--TDVcAd+kFgbLxwBe
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 05, 2020 at 01:59:01PM +0100, Alain Volmat wrote:
> The PECR register provides received packet computed PEC value.=C2=A0
> It makes no sense restoring its value after a reset, and anyway,
> as read-only register it cannot be restored.
>=20
> Fixes: ea6dd25deeb5 ("i2c: stm32f7: add PM_SLEEP suspend/resume support")
> Signed-off-by: Alain Volmat <alain.volmat@st.com>

Looks good, but I can't apply. Please rebase on top of your other
patches.


--TDVcAd+kFgbLxwBe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5nd4oACgkQFA3kzBSg
KbZHZg//eBBQyGXSgFi5dgT7rnfeukqPIx67/g3xi+EVigN2zR1MqSNIRgS6gdI2
hou5993KGHyxg55JYVEGPjPriPPyXkBkmaXvsH5luYF1cEObodZ7CuBalIFldW47
y/bcLA/e9Z+hyCx+W97X+AXDv6/Bncpht8hIzg5Axia8T/yLHixPKgaz3yMHdC9V
ltIOxkEU2QEMLarGbqTeRNEa4/wzVlJuRuwzAR3htjSX0lg7N3/crNnCNZdLT30i
zlBp3FhIJ9mHrUmDleg0rZtQimLiQK/BY0iO3aaCzfUFt3IQSyqQc5uxaqo/Tkn/
hc8/NZ6090W2hRtydtEfJp6mE6R1RaW4w00qLf60uhiK5imsNIPXvNYHKdkG84RJ
CwfcTWzq6JNPIJ+M1VtcZbE7u0rFsNaYVneGThOUes64T8kymMwVAn07wzaK6w7j
+3+tuJNpTWjEi8wvtpEyXRpJtJZTQstFBJPpe7BdjtHL00YViE80h7gFuc6AqoZy
qriyt497GVbwDQPN7qO0w++2dTY/l8awDq0UAodAGcTXl92IOn8jRNvD1UpA9YNI
TwJktN5qx9EHR4qgP1YgInk7kgL2zVT3FXR9XEz//U7ilLjT8mtZGVW1UOzhRUlb
Yomy7tf5FP9VE86KmflMVGg/EQe8+wTIboXbdoWLktq/AS+BQoI=
=Qlcu
-----END PGP SIGNATURE-----

--TDVcAd+kFgbLxwBe--


--===============3156054277489386514==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3156054277489386514==--

