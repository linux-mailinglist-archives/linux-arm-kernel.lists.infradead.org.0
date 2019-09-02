Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02835A5AC3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 17:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X31Wn26Heg8FI5XwxKdA777J4E/3GfgDUEQSrLG5j4c=; b=sVEqvFP537SRFl9uz5fg5OLA8
	EZe+9lwYwJon/AliLei+mSksAVChSl305vuuSXKSwoAtVWQFLlCJwYY4v7k2Akvea4DFgY2j1ruyr
	Kw7ljFEdi29Helh7xVpMlxE0Lv8WZJX8owaNTbV2S1d0EmK1iDDzl5SDxDSiCCafpGJmEEannUswz
	Xbjc9UCQ9JtTGFPfWgaA/RNr+MuLItcOtbRunMYzlg7YplhBh39cplcv7+A2YmWvJueKdNjkxjeM7
	FfHY4OiuZtlQwu3KCJjIhhUGAfx2HizX3Rc2OXfL+WTH6Hqjo1J6FujMlzeY2Xwz52zTWZBsaxTgK
	09HadSegw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4oY9-0006jI-K9; Mon, 02 Sep 2019 15:47:25 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4oY0-0006i7-3s
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 15:47:18 +0000
Received: from localhost (p54B337C1.dip0.t-ipconnect.de [84.179.55.193])
 by pokefinder.org (Postfix) with ESMTPSA id 983A52C0165;
 Mon,  2 Sep 2019 17:47:12 +0200 (CEST)
Date: Mon, 2 Sep 2019 17:47:12 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v4 2/9] dt-bindings: i2c: add bindings for i2c analog and
 digital filter
Message-ID: <20190902154712.GA5213@kunai>
References: <1567418773-2427-1-git-send-email-eugen.hristev@microchip.com>
 <1567418773-2427-3-git-send-email-eugen.hristev@microchip.com>
 <9a9c209c-2fb8-0a4c-4e0a-b04fefda3360@axentia.se>
 <b6528812-65d3-6561-38e7-c0545af900d8@microchip.com>
MIME-Version: 1.0
In-Reply-To: <b6528812-65d3-6561-38e7-c0545af900d8@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_084716_312338_1F5A608A 
X-CRM114-Status: UNSURE (   5.63  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7112490126173641500=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7112490126173641500==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="envbJBWh7q8WU6mo"
Content-Disposition: inline


--envbJBWh7q8WU6mo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Eugen,

> Wolfram, what do you think ?

Yes, the bindings should be generic. Peter's reasoning makes much sense
to me. I am quite sure if the two of you can work things out, I'll have
nothing to add.

Thanks,

   Wolfram

--envbJBWh7q8WU6mo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1tOXsACgkQFA3kzBSg
KbZ7WA/8CbJ1UkV+wsS6wze/wZkPVWdaE81SHoM/BY0/LIXC1uApajeR60OQDs8U
nrX2j4+7BJyqB9UxW+qfYe5XDbhKeb7a2iL3JNx1hBZgTZ6Gi1O58teEdkWyooD6
Jxze/jkMdt4GB8862rK7Qg4L6yzOSBVYwenv5zKgyKjcq2T4IciumJ0yY3XkmFQ+
/q+kYiEPdGdKH8Mt/YQI6emeVSwcBo+ngHSt+6GeIu8P+2RUd5tvWKfx8E3lKIaN
P5ISf+KG3IEInS09yI5Dzn5mh55VFHIvU3Vg/BDomAJyU5eszjT4ECwplkWRRX64
eTxFhJfpxhmY+MHDiFsOG16TCS7yQAXFTHiVddvJY4/POL6zfEEHT8Kix8BRDZoR
z5Q6CBmMXDgHPlMLSs6yJ7vo1A1vguT/kjO1sTeGlmZXQYp0fJt1E5+UtCp3dMvH
KE5Pj8++x6W3KhUG9oESkckfwFXB1w32uM4uUCcHQV0Z/t/HA289cWxoHuVtG2H6
PyiR9zuCYU9s4iG72JrlzZmEmo8pxz4df9sy37Xph1ssF9vuBcRDbwoqU+NiuWea
EDWvL4HeJTUQh6O6rICgDMg8WZXpKDuFzXqHDY3hB31L0TT4qc8kIwRAOoxIKp3/
EFCJL/jKr+Sr4HiHvP1QN9luY7W/eHKjvZtGEfaby2QO+YeIfEA=
=4puT
-----END PGP SIGNATURE-----

--envbJBWh7q8WU6mo--


--===============7112490126173641500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7112490126173641500==--

