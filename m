Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 568FF168EEB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 13:40:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rtnD12uocYKA15QQ9pEl+PaNu5ThKQm9W+Ox44UsBhk=; b=Fh2oIwnG28W61x57HPWge6010
	i5m/Zd3mEKtzL8Oq9hyRl+oXG+l1T9C8ZQpP6d371blhrsN+tPe/eMN2Mk0PSMAbYgAXacLsPo57o
	5KIuTp9rOgfJ0RucPal4oqP9JpyLFllL1AFwaEXXceC1wfSncnxz5JgA238nfv/4/qUFtsOti1ofR
	acHqyqYz0FcCosgaVthbdoaFJoGjCTaV8XvmBw3NjPceXjxR5kwBESDB6k1u5t+lnKUPfRbkHH6W4
	KRyL4ZschrVwiLaqDgfZUrJ/Cld+6AUmKu4usgQjsX4fArZumMjWm1eSeAzfc4JmiCEJ3A9Hvw6w1
	ZkwTXvzPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5U4u-0002nt-FB; Sat, 22 Feb 2020 12:40:16 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5U4g-0002KE-US
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 12:40:04 +0000
Received: from localhost (p5486C6B7.dip0.t-ipconnect.de [84.134.198.183])
 by pokefinder.org (Postfix) with ESMTPSA id 291152C07F9;
 Sat, 22 Feb 2020 13:40:02 +0100 (CET)
Date: Sat, 22 Feb 2020 13:40:01 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH 3/5] i2c: i2c-stm32f7: add a new st,stm32mp15-i2c
 compatible
Message-ID: <20200222124001.GH1716@kunai>
References: <1579795970-22319-1-git-send-email-alain.volmat@st.com>
 <1579795970-22319-4-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1579795970-22319-4-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_044003_149431_A749A78E 
X-CRM114-Status: UNSURE (   8.79  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0026860469015539320=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0026860469015539320==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KscVNZbUup0vZz0f"
Content-Disposition: inline


--KscVNZbUup0vZz0f
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 23, 2020 at 05:12:48PM +0100, Alain Volmat wrote:
> Add a new stm32mp15 specific compatible to handle FastMode+
> registers handling which is different on the stm32mp15 compared
> to the stm32f7 or stm32h7.
> Indeed, on the stm32mp15, the FastMode+ set and clear registers
> are separated while on the other platforms (F7 or H7) the control
> is done in a unique register.
>=20
> Signed-off-by: Alain Volmat <alain.volmat@st.com>

Looks good (patch 2 as well). You'd only need to adapt the naming if you
change the naming in patch 1, obviously.


--KscVNZbUup0vZz0f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5RISEACgkQFA3kzBSg
KbaaDw//TvaXXxfk/UfcOGsDNuLxbiqLPHG3i6DtQPijfEd93ekH6LKIwE5kpDV2
pbsCUtpHku3mQvQyPScHSdgyMyqbd31mwDSB8waFOfG4SuNDDJXxqo5GltD62/8w
HSBfAAvF4TM58QMDIaDYokrUhVZm5BJ/Cofv2z4+jBx4uRBWC829pmxvuf/sHWbo
gti4PZZLQRMbBs6i9/7ShPsLmn4NffZ6+U2GDyVl11EmYdhOP0fMVFPgnbS/0Z7C
/xfuMFs5Cu3wyq1oHNF0//SurRD4b1YfENh87h+cjYElICT5EUZ+Yv65TPTE4Xpf
lWUGKKVcJ6nGoYOLCJOz1YoG/cRUtxSG+RCQXVAkwyHuoswOl8UrWyPUuuOh51xf
AvrobB4WbHE3Z0KtGryxl3q2XEnoA5XHQTl8vOKiPfJTQYsRTb300Oh1Ym25E2H1
Oj3iUlI2EL2VC+hleMywRQgXZLtGyNL2C2xphOmASWRBC2zVVGcrfr8eaA5V+5AU
LvFKZPIjVaLa8suLgoxqatPo7d52ZskkXpzOtKOLp5joFYxjaNxjJDRLmlGCaa4g
EcErYOqMz3SJQuV8jyG+zNrmzZh8/1oQx6u7hkKzU2c0XaPCJhtjv8dXpMYS0Eqf
eP6JDxzkRYh4GT2xc2GwLpEL9Ysy31G1yw2RhKurA6rRGHJpkMo=
=epcM
-----END PGP SIGNATURE-----

--KscVNZbUup0vZz0f--


--===============0026860469015539320==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0026860469015539320==--

