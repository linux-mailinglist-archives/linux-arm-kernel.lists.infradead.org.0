Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F46F80A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 20:53:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RDVKRZLiwY3DmFxH2CXKo06grGlo4GSQRl/RIA3x68w=; b=ONJWAmhtw/x1DjQ/q9M4k7eQR
	aDKZAlBLhhnRK46Hqx39LiFbbfk+6sRbd/Qj/5YnLFEFpu7VkZB8LadRqILzaGuBP+g0kgEGYMDGr
	YFEXn2i1vQa+ee2SiQfX6p0WtxE4R1tJRv8mQWmpdR56KXlKQSb9cLiOsGHgUkPMsoiXynEVMs42R
	VDwj7NcG2eYq7KofG1GkPDyVcydMrXAHKVdbRiOVuV6oQuAHXjH56BudmX7gsAgsaGw9zPgnQaIfJ
	AhhSPyoouu3S7X2YqGU2St84+2yTLlNQWEgnD+yE8kE41GjbzGteaWaI6nWrE/eiWZ+MerslOKkEI
	FjhIS9eiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFkq-0003gm-VD; Mon, 11 Nov 2019 19:53:41 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFiq-0001jT-7o
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 19:51:37 +0000
Received: from localhost (x4db75ae4.dyn.telefonica.de [77.183.90.228])
 by pokefinder.org (Postfix) with ESMTPSA id 569DA2C0428;
 Mon, 11 Nov 2019 20:51:35 +0100 (CET)
Date: Mon, 11 Nov 2019 20:51:34 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH] i2c: i2c-stm32f7: report dma error during probe
Message-ID: <20191111195134.GG1608@kunai>
References: <1571921521-8502-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1571921521-8502-1-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_115136_447491_AC84A63E 
X-CRM114-Status: UNSURE (   7.79  )
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
Content-Type: multipart/mixed; boundary="===============4495687658069053305=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4495687658069053305==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HB4mHL4PVvkpZAgW"
Content-Disposition: inline


--HB4mHL4PVvkpZAgW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 24, 2019 at 02:52:00PM +0200, Alain Volmat wrote:
> Distinguish between the case where dma information is not provided
> within the DT and the case of an error during the dma init.
> Exit the probe with error in case of an error during dma init.
>=20
> Fixes: bb8822cbbc53 ("i2c: i2c-stm32: Add generic DMA API")
>=20
> Signed-off-by: Alain Volmat <alain.volmat@st.com>

Applied to for-next, thanks!


--HB4mHL4PVvkpZAgW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl3Ju8YACgkQFA3kzBSg
KbZO1g/9Ejg7dTPbsECJT9cFjP1yXrbGjFWabztNPI9cB407mc32FMMHolmR+e7t
Qar4sss2ieh/Rf+AG13KAk5y8VQ+0ioVReojH968fYVPPOxrx2G58rhOYiZnvz8p
BWZ6/wJGn66eJtSP7OfdyXKdDuewHrlE0GWx0hHxhEf6clN4bSbKyvcUIEUu3Z0R
91vC3pIxRY+6uEGSeFSnl+2m+zClqdP8kdAHW0vpNzPjjkJyhLWZTi/So0CN4Ymc
mL2MEAI6Epl4MADbMqXvSFViGbDeTMfK0WVnxnWIKCivOviWwbvzb7RGf+uF8wzG
mOX3rWgyHWe6laUDpvsVJ8gqJ7kQbEXAKitU9ERmFAmUSHGwjx69zWM8S4aF7J7m
sBkXaU7tp1L56wtoiy/v3UoDVMAkYkcTj6pXwsINgvNE44GslOdbHQwdd0p6Elgb
ivH0H7Sv+mRZU9ZPYot8rG4jKg2hQKS0dpKWo7d5nCmWf0unpRCmKxBSjdi8Kddr
8Qp4BXyjPm3GhsELW+Cpwz2n7VBcxRfHXW9v8BAng1pqgBkShfpB4zT4sLcltRjj
3+TfkDPjpqPGjmQRozWvSP5E34HXR7luMWr2TrD/2wxOsBZr6+q0TDOj3Uii6cxx
ZeKVrXSY1Xgg5tboDZSEYfY1WrsIfUF5NKduYnc21SsUbsQ+z9w=
=XSn5
-----END PGP SIGNATURE-----

--HB4mHL4PVvkpZAgW--


--===============4495687658069053305==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4495687658069053305==--

