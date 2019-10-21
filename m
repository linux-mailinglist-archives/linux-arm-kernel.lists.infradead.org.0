Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A00CDEE98
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:00:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RiVoamXXLuRHEP6BkbxX/dfENhGilBxF37Hq5iwrRiI=; b=dnWXfs/hm4QeaZOPZ4ftk5260
	HQ4SboOtceTYhS3J7k1qcSlkxlD70DCdafLbaZ5YQ8GnwWdmpICLxvw+QcXosquXEFwVUtgqUPze+
	CWMDOkJZMMehcCqAch6+YVSuqX/To7mcefpg933F96VZ6UKCOMOAJ+be6re0ui5KUiDsA3cK9gwWF
	CWbcEr4utF/56x5LWk7BWjZmcqh72/dbnMDVUSyJeTqnQflJoI/iVfIAZTE91zj05Ln0jV6h0VhcY
	GvtExK5IuY+/tzzSEJ7WlUvsECZETAicNO6j4TeRbMwdL2Z6KleeZrjXnY1jPlI2qdwHOqpr3+pse
	2EeLFseJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYEK-0001ot-Rz; Mon, 21 Oct 2019 14:00:16 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYE9-0001P4-Lz
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:00:07 +0000
Received: from localhost (p54B33572.dip0.t-ipconnect.de [84.179.53.114])
 by pokefinder.org (Postfix) with ESMTPSA id 00D412C0076;
 Mon, 21 Oct 2019 16:00:04 +0200 (CEST)
Date: Mon, 21 Oct 2019 16:00:04 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] i2c: i2c-stm32f7: fix first byte to send in slave mode
Message-ID: <20191021140004.GB26782@ninjato>
References: <1569857281-19419-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
In-Reply-To: <1569857281-19419-1-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_070005_875308_78F5F6F8 
X-CRM114-Status: UNSURE (   8.75  )
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, alain.volmat@st.com, linux-i2c@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5482122309134632043=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5482122309134632043==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0ntfKIWw70PvrIHh"
Content-Disposition: inline


--0ntfKIWw70PvrIHh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 30, 2019 at 05:28:01PM +0200, Fabrice Gasnier wrote:
> The slave-interface documentation [1] states "the bus driver should
> transmit the first byte" upon I2C_SLAVE_READ_REQUESTED slave event:
> - 'val': backend returns first byte to be sent
> The driver currently ignores the 1st byte to send on this event.
>=20
> Fixes: 60d609f30de2 ("i2c: i2c-stm32f7: Add slave support")
>=20
> [1] https://www.kernel.org/doc/Documentation/i2c/slave-interface
>=20
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Applied to for-current, thanks!


--0ntfKIWw70PvrIHh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl2tueQACgkQFA3kzBSg
KbZTyhAAp/6ikU2tjHpRxjgZnSAod2mj8OCWeVydcZ/Gap7u+MByaZr7O8UmP6ag
tOOEm0xsfIT1pvIu4akUdeA2y9OsXJK28GhjOadbAtuJyjOrk2NyN68XI0dXMXet
tB+va3XAy8LrlM0JzhoTQOquxv0UwkcCOhWq2estjbC31eYSAz8/8SYifQ0+XwqH
mKaJ9BGYl0UtfP3vGg06vSEniZOY5YB5U1876X0JAjtYkXnwjBaKRn8Dda+BjrNl
TdIYcQN3scBOk32sdkSjqTTPLbV3X1+wDA7GplLF4EIcEobB27xGZ8r8JoUQeiqu
miR8ve5vXkIXSkvH4AN/8rHKQZzXO4UGMgt8/a4/6/7IMn+UrjIKv31z0Jaj1hha
IO/rRr38DVCDy0RVIOuTLBjfohi4VuQcR0GsdkQJRFDQQDnD8zzBXq5ud67McLDO
phzybx1wvtC1u0JNrpdYaEvl5E7rZdtBHG2Dhyk7wfs2FV7289an+/891Nl97lCj
KoxpVgcXdaPpyIdnvrB/iLkV9pX07S6TUTaY5E1t7XVqQayuI578Gq+7BK46PLaL
kHvnQU5/2ZIV9gmw5hyK0byMi80F933BZyRHgwoC2RHJEpdjzvERsjHS4KllgIJ7
99bZCeNxQZdbfD7I580nH6w8YNtHTfxZs2h83RWH04QpmOcjgHY=
=uZla
-----END PGP SIGNATURE-----

--0ntfKIWw70PvrIHh--


--===============5482122309134632043==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5482122309134632043==--

