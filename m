Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7BBF805D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 20:42:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xhz9HTkrPSVTxWPeORwrzMaoZcbARv7BUDzQUwGtKIw=; b=PYGV46MeXwluEhAvexX7nZl1E
	+kLvW8EtaiMPTd26TH64ZHuW+XwjJ6Vsb+KOzRG8JZPMeBzAzwz4x6PIFkbW2TmSTt0gwwT0pnn9U
	JwPDYrlsOZ193nuadapId7C0Wo5wZ5iJrVr4GJABLsWlhFeRpVR6AE2j+0Cjw7vKDr67EQOSkhaGO
	qpMtvp+lkr4g/uYCm+3L06TEvqpJAweQSk1canK5znXTU4yaW9P10/UJEp0MxHIZhPnyenope5Im4
	gkam6upGU71dvEj4+9980CCy8O0WD4668DNI+s1nsB2K0wvHrSynBFP5BZk+Jh7Z0MMrCnqvgYL7N
	5i/q+n8PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFZi-0006AU-Ku; Mon, 11 Nov 2019 19:42:10 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFZb-0006AD-BU
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 19:42:04 +0000
Received: from localhost (x4db75ae4.dyn.telefonica.de [77.183.90.228])
 by pokefinder.org (Postfix) with ESMTPSA id 985922C0428;
 Mon, 11 Nov 2019 20:42:02 +0100 (CET)
Date: Mon, 11 Nov 2019 20:42:02 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH] i2c: i2c-stm32f7: fix & reorder remove & probe error
 handling
Message-ID: <20191111194202.GD1608@kunai>
References: <1572012264-31996-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1572012264-31996-1-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_114203_542248_0DE642AD 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7358686230079691165=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7358686230079691165==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VV4b6MQE+OnNyhkM"
Content-Disposition: inline


--VV4b6MQE+OnNyhkM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 25, 2019 at 04:04:24PM +0200, Alain Volmat wrote:
> Add missing dma channels free calls in case of error during probe
> and reorder the remove function so that dma channels are freed after
> the i2c adapter is deleted.
> Overall, reorder the remove function so that probe error handling order
> and remove function order are same.
>=20
> Fixes: 7ecc8cfde553 ("i2c: i2c-stm32f7: Add DMA support")
>=20
> Signed-off-by: Alain Volmat <alain.volmat@st.com>

Applied to for-next, thanks!


--VV4b6MQE+OnNyhkM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl3JuYkACgkQFA3kzBSg
KbYcnRAAq1jv0t+cBFdjV0cAyRRX0WL1Iv9MAU84u/vxXm3x5WV277AuXXWzofmd
XqKJsLIq6lSoh20bC+LHePMkmQ+T8oX6C8c4wjmqzls5Uq2St0evOX39JoQa+yFu
Q+/S1xdhPIjOzqJbwtEw/iVZ3KaHzEsTJEBpQEhH786eiv1vfkUiAKFrJ7KLSEMs
BUsNPYE/b+EasW9rylAPjoVp6ALXxPU8ScXQq4H8mh7Ifvlp01kx8Vi4ukI0niXQ
W+VtoiCxEjRTIx9EaeVZAzcbVouvePqp8hB7GP5+ys5s8bXaTnJcSc86Uu5tY9Ax
0oZ1s1irGqpDz67hb5inyDvC0d0cvhaqNcqW5Ez6tCA4A0sKYETGfRWXMmFIbNTd
8j8M2Ecq+twpTpwoMwtYMLwkFJvVhizOM7MSYctisgGkhZcLzNVq2CzJ1bEIVk3I
qSQT4JfDWiVCpt/aUSrxdrzAarpbKIbfKmBtNlXKkOu2g4QTioty1LxntndndIpC
HHgk7ZuoqnDk2IQdzv7MJiBDVEmAZICPCZ/dESjNnZuQ/W45Iuc28CZiYpDW+mmh
64zfpSo/jAp9ZVoU0Imp+zKCtuqldEEAScptvP3e06kMuNsZRuShAl1DAudYfFIf
Y8NeKiE3ex/XEW5c5jLlt7o9oc0ipoOd0CPALRJjXnjyl4DICFE=
=exY/
-----END PGP SIGNATURE-----

--VV4b6MQE+OnNyhkM--


--===============7358686230079691165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7358686230079691165==--

