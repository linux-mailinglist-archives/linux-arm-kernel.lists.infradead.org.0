Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDC717F5D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 12:13:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=exfEUb1UdithQZBRcYtZWaatLdI4OZL3zmLfyAlS9wI=; b=dnSY3frW7O6KnHlWS1biFNbz8
	8YC477yjN/2Kb96Kv/EI7WZ1CqhpJUuMVBu2OHWjEc7g+mFVXaG4/YmJL1rnc79Td2IXKdHA1nCUl
	dvVmvPstjIsV8z7R/fuWSfflUcwYNat1a04hSpDqkbcHcwKAhf7z7Ox/yzKZ6S/0To58d1wxRah74
	Tk47Msqd3DWMv30j5LSOGpgniiJwurrroVFqU+rMRTrML8QAFf7bBKpod4mD0bgSJjXkRSXJnrlon
	Ku1G00WHRbAXxqxRG3NstB7F96dNEDIB9T7CD9DI2/qzfpesPYoNOUnhSxfDUKsEgE2YZvE04V0qH
	SMk+KnTnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBcoj-0004Sy-HX; Tue, 10 Mar 2020 11:12:57 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBcoX-0004SJ-W4
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 11:12:47 +0000
Received: from localhost (p54B33196.dip0.t-ipconnect.de [84.179.49.150])
 by pokefinder.org (Postfix) with ESMTPSA id BE3D12C1EB6;
 Tue, 10 Mar 2020 12:12:44 +0100 (CET)
Date: Tue, 10 Mar 2020 12:12:44 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCHv2 1/5] i2c: i2c-stm32f7: disable/restore Fast Mode Plus
 bits in low power modes
Message-ID: <20200310111244.GP1987@ninjato>
References: <1583148787-24236-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1583148787-24236-1-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_041246_180350_E35C909F 
X-CRM114-Status: UNSURE (   7.25  )
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
Content-Type: multipart/mixed; boundary="===============3019572363543207108=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3019572363543207108==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6sj9mcRtP+pTWLOo"
Content-Disposition: inline


--6sj9mcRtP+pTWLOo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 02, 2020 at 12:33:07PM +0100, Alain Volmat wrote:
> Defer the initial enabling of the Fast Mode Plus bits after the
> stm32f7_i2c_setup_timing call in probe function in order to avoid
> enabling them if speed is downgraded.
> Clear & restore the Fast Mode Plus bits in the suspend/resume
> handlers of the driver.
>=20
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>
>=20

Applied to for-next, thanks!


--6sj9mcRtP+pTWLOo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5ndiwACgkQFA3kzBSg
KbYEHA/+Ii6H+eSACR3Z7Q3F8CXBe8hDrrbKV/s/nJR1yi71hGOHyOhHN/H2odRe
lCVxKyWLCYhubBtWa/QvgGO9oIBtRfmiW72X6xeOeF8pI9Zwy/n0NOj+GhmrpTOI
O1rtHwvza+3t5BAf2pohXpil2X9BLhvBrzSLZ9q956N0bHKE2i6A5LWMenyVmZL5
kEmJ0ok2WJEfeSBF3eDL2hwDZzMRzRL8BRYNj7sXyG4wqbTe3HmZiAdFbMwuSuec
QbvFnKhtaQCWDGFz/W2eKyIK0H6YDuKpeGWRtW/c/pf5Nk3MXiU3xJCLkAsvmYq0
WXErJI/nbWyH1fDDV2lVUWd9qUbFdEafVoHqTPZ5HYeOvoRiRAlIT3GrYZzucvNX
OMsfShttaR5CJVS7ahRuqcJxHXTaJS11Jo6yVH7L1zB4p7DKSXfu4Rf7nvQgyk7x
zcEdlW8W7sGaPmEpSENRYsHANq3r6q3QpA5A9l14CQtQykIos4E3f9LDwheRn+Ei
/m8KW1MUqkY2PRsBT+hSlG2GezzHMTo4YXJaiTZi87urY3+LbbcWkHcCwUMfI6vq
2clES4iA9hZS8GAhUOqPHbQZc/bRM+n7zNmR9JHI1SoDdKpVgOLZv1MLofVJWOWI
q46Y8Z5LtBHYj59iyZT/qYXVGogkg1PkZIk6/UBSeV2wrKsenxI=
=J1aj
-----END PGP SIGNATURE-----

--6sj9mcRtP+pTWLOo--


--===============3019572363543207108==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3019572363543207108==--

