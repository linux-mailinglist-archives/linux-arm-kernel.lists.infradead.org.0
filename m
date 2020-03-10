Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F1217F5E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 12:15:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fytKYPHdaZVk/XbHqSfRZEpBSU/sJXEShASst4bzkJ4=; b=JAm/Cj2Km8a0vnUyo4252EwLD
	yEoqPXKkWU4Kq7HwqFzmBvU4MDdeTzx8hZLiRoQo4B5H1YtmvMoZepQlIEJinsaLnjeyoyXdUgZ6D
	C1p1VA3VcJYsvSYbP3Vybed1/fDDnSc9xRWgbarARn6f1YDaj8cvbXUvsum64wZj+g4tISyDVXP/3
	fdxQCIESYnvUWHAePb78z0i1P09PdfUa0Ketwo5AF5z5P/y0KVt5jJIzyZvONJDiP3ud3QCNE0WZH
	l4yC0MtTVtP4ZzG1bIz/JCt/ySLVt2Ut19qVlU7GPV+C5zwhSepsUIz4IHIFmvzrHvTMzzDSlytLv
	Tyl0mGNlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBcqz-00065f-2r; Tue, 10 Mar 2020 11:15:17 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBcqo-0005cd-Tz
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 11:15:08 +0000
Received: from localhost (p54B33196.dip0.t-ipconnect.de [84.179.49.150])
 by pokefinder.org (Postfix) with ESMTPSA id 33A132C1EB6;
 Tue, 10 Mar 2020 12:15:06 +0100 (CET)
Date: Tue, 10 Mar 2020 12:15:05 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCHv2 3/5] i2c: i2c-stm32f7: add a new st,stm32mp15-i2c
 compatible
Message-ID: <20200310111505.GQ1987@ninjato>
References: <1583148796-24285-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1583148796-24285-1-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_041507_125961_5FFC7DC8 
X-CRM114-Status: UNSURE (   8.24  )
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
Content-Type: multipart/mixed; boundary="===============7420484977837608044=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7420484977837608044==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="V2tfspbppmK1TQo2"
Content-Disposition: inline


--V2tfspbppmK1TQo2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 02, 2020 at 12:33:16PM +0100, Alain Volmat wrote:
> Add a new stm32mp15 specific compatible to handle FastMode+
> registers handling which is different on the stm32mp15 compared
> to the stm32f7 or stm32h7.
> Indeed, on the stm32mp15, the FastMode+ set and clear registers
> are separated while on the other platforms (F7 or H7) the control
> is done in a unique register.
>=20
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>
> ----
> v2: adapt struct stm32f7_i2c_dev fmp register variable naming (regmap_ ->=
 fmp_)
> ---

Please move the "v2" information after the "---" so our tools can cut
them off automatically. A custom "----" is not not detected.

Applied to for-next, thanks!


--V2tfspbppmK1TQo2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5ndrkACgkQFA3kzBSg
KbarhxAAqcBaLCnzs4qnFRbgblz5ZqjqbO5416DrW/MoOQ+g+6VA+t/2evDb3Ww6
nz7e48UVYa0TEwRBkFLlb//9j/K8vov/uqKHmLbJHwqQRr6RUN73pVw7OF1z8CHg
GeyFW0Q1Dta3OuuDRKVCgcEcfPDH+jvkr3zUDZUi2SmwriuexWpqVAfXq8M90YiH
9iFHhrtOV9BUxlYclWllyMOZosuCFxsMTeQDabrPJgqMWovq+UZNtL9E8rv9+/Kh
KrsYUngBLRYvwLDhrCl0B4YX7dcRt+qSN+tedHPfP57pPlF/XhQctr1vzlppB+VS
GK5NqXjM1zBcMax5m0xk6IrPj50MhKlms52bVrSWNToF838iUBglxoEjM0tezPqi
1xxKvOWafWWBvMK7fiYoNDS5mwTFt2PkunVZ93xT/8nEEChLNHQCZS6uImwO8rCx
i0cKHBBSMxPAbs0TftAqz+LTvoSFKbVJ2BDonAbyjdyJqCdKwuyme5LTWcQy7FXT
K3FHDYfHJ/Kw2hbK1BVlXoXo9bqeBrW83NWsWYaxJmAcEu4TTh+/3HeoL83hdlcw
kpBmvEa2b9CQNaN/KFyI19XfR9sv4FdvlxZYQWdZ+rU6ZU9tSRPXrz3pXikly2pj
goj61CYymvTiBvTzZum4mQngiq7hmypLwQ5RxPHD4UkW633qqYc=
=q/s7
-----END PGP SIGNATURE-----

--V2tfspbppmK1TQo2--


--===============7420484977837608044==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7420484977837608044==--

