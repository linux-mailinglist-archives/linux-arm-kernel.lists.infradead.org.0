Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B61DEE91
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 15:59:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mw6yegbtLnFtUqD/g9SMTyRX25PI6phppTfFsPHMFyw=; b=S9oTbb1Mjnw17YHRuHFU1KPle
	SycnsnXfedQCqerBsMdUYU25Zgla4n5nUDzy4XTr7t9iEB1HSKFxtbSKuU6+DmCfmHSZRbW4kGuH2
	/uu2nTNCstP7ammFmXcRKW1EMyZqdZIHQH3FCZgiKbUVeXR37oaNiPvjTfBlGyEWVoHUJpH4qP60m
	YgbIKV7aMT6lec2kukxCcTUVgoweOVdCbGdzFEGwGdgSThWYfdPhBcgm0nkHHFd9oRk05biVuLdOj
	Sn2VWZkNZFUnQyUmNkuQi3mrNMsyn1e8AEGuO3rLg3XrcN2SfVIDoVpTlW514oXU1ANoUbkCEWgo9
	Mo9+NT3aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYDR-0000Mz-6i; Mon, 21 Oct 2019 13:59:21 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYDI-0000Lr-8e
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 13:59:14 +0000
Received: from localhost (p54B33572.dip0.t-ipconnect.de [84.179.53.114])
 by pokefinder.org (Postfix) with ESMTPSA id C76372C0076;
 Mon, 21 Oct 2019 15:59:10 +0200 (CEST)
Date: Mon, 21 Oct 2019 15:59:10 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] i2c: i2c-stm32f7: fix a race in slave mode with
 arbitration loss irq
Message-ID: <20191021135910.GA26782@ninjato>
References: <1569919869-3218-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
In-Reply-To: <1569919869-3218-1-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_065912_456580_9009F8F2 
X-CRM114-Status: GOOD (  12.63  )
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
Content-Type: multipart/mixed; boundary="===============3422119733111780452=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3422119733111780452==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+HP7ph2BbKc20aGI"
Content-Disposition: inline


--+HP7ph2BbKc20aGI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 01, 2019 at 10:51:09AM +0200, Fabrice Gasnier wrote:
> When in slave mode, an arbitration loss (ARLO) may be detected before the
> slave had a chance to detect the stop condition (STOPF in ISR).
> This is seen when two master + slave adapters switch their roles. It
> provokes the i2c bus to be stuck, busy as SCL line is stretched.
> - the I2C_SLAVE_STOP event is never generated due to STOPF flag is set but
>   don't generate an irq (race with ARLO irq, STOPIE is masked). STOPF flag
>   remains set until next master xfer (e.g. when STOPIE irq get unmasked).
>   In this case, completion is generated too early: immediately upon new
>   transfer request (then it doesn't send all data).
> - Some data get stuck in TXDR register. As a consequence, the controller
>   stretches the SCL line: the bus gets busy until a future master transfer
>   triggers the bus busy / recovery mechanism (this can take time... and
>   may never happen at all)
>=20
> So choice is to let the STOPF being detected by the slave isr handler,
> to properly handle this stop condition. E.g. don't mask IRQs in error
> handler, when the slave is running.
>=20
> Fixes: 60d609f30de2 ("i2c: i2c-stm32f7: Add slave support")
>=20
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Applied to for-current, thanks!


--+HP7ph2BbKc20aGI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl2tuaoACgkQFA3kzBSg
KbY98A/+L5w+rU+ZlnLyPHs8O2CoyNVWD0XjDnXAYbAwpuCKQBjMjaTmom8/ucQM
JU86jNaLS9KM3yL8bhXnPiuXit/DXnq484npH49uK+GTVFK7pnVNu/QhBuLJzXPO
xvO4glb1xpFoNHAA7o16T4EQvK5YfZFmdxcbqPVxNfNOyxIHxwBkb5ZQHQwdVNvq
8izptQqmRWwm6DUQj5Cnbd3DOghf73SBMarADbzZOIJn2yIKNInWJTw18WY+sj8T
ayrS0KbcITMSbiArT5on/5Vwv0tM5uPYKilQPUR81YDSpZTidmXRblR04h5MS3or
j41iqKTldQ1xCBG/V9Z1unE4d3CWtBzGQD55UlBlzkvlV+kFsN8EjkW2Ow4HCIG9
Xn1NbcBvhidymJe94yGgu+YhUVmj5web+EjqLwZoodofg4fxZXRDWHYE8WMUdB9R
aYv6JERZJq0TSdr1kfGa2lB1FCzMAvtlyH+nnRQsskYHoVWgco5j/VSHfxnQog8+
O3Doke9VfMtAyOyYmKdogBD5jeO/iZJGLjE/LVC/jnPYVNI0psVD5ifeT1WZprqU
5JnzBK5JVMZxFrP20nT6ZBdGWFi9YygUHF7tichu6LAk+lCZddE9g9rHghVwMlwN
/RjlN9Ada2ceFOp3MzL2R4WORf1WZgAPSjrU2Tpz7CRuy0K4r3M=
=Kfp4
-----END PGP SIGNATURE-----

--+HP7ph2BbKc20aGI--


--===============3422119733111780452==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3422119733111780452==--

