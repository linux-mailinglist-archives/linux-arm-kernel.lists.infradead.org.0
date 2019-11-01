Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCE3EC0C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 10:49:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E1BHc6KhG9CzZ58iaU6vl1tDn3kRjEClKi1mUqhss0A=; b=GsKt3tcPC1c6vuoyl/X0hXKIQ
	Mkjhb20FMm7EC6lLdHb4p8DkOIUVR4NPK1C6xjk4I4EvcNHWLdLnsy38EO5Oqr6/XN3p9dfz55ao/
	oN5P43Go2QtvrVDDsxd6hCRDIiPW/iCelk84OeB/LLpKzwTxNMnXp1knQX0T830jwFb/SXSDpdLUT
	3HNUQcZfCaC++adnJlOK+MiwfjBTZt0A4nIRTHwJGEGC8Xn6FYbDcRjK2WCihs8DL+R8qjDbbyFtE
	ybtAYDISz6YLCIxzs43+/gL391CW0R/uGizTXsL3HmtlL8RzIBZ72PZBPuD8uXNT6MacENxZRRXGX
	b3VzO5lqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQTZ3-0003AF-63; Fri, 01 Nov 2019 09:49:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQTYw-00039d-Cw
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 09:49:47 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C21E21734;
 Fri,  1 Nov 2019 09:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572601785;
 bh=aiGS91Hq8+Tec6OiEGfp5Qwq1/HH+r0uYEeMYIfR75k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i3qeQrfZSl3zPj3zgJ30NfU7CFQF6wiw1wKgjJT2us5LYriK7mZUp7vPfkzIQq6DE
 c2bYz9vhIqMCQCzs/YkdCyepzJSh5lmKiCesD810nITnWA0su/BJ3EnXAFlwUV5zAA
 vziUQOMwyTUiIzbjW9o3TXvNm0jL9qWrEMZxW1i8=
Date: Fri, 1 Nov 2019 10:12:53 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Georgii Staroselskii <georgii.staroselskii@emlid.com>
Subject: Re: [PATCH v2] arm64: dts: allwinner: bluetooth for Emlid Neutis N5
Message-ID: <20191101091253.oxopdmq7igtyfpjz@hendrix>
References: <1572601413-10353-1-git-send-email-georgii.staroselskii@emlid.com>
MIME-Version: 1.0
In-Reply-To: <1572601413-10353-1-git-send-email-georgii.staroselskii@emlid.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_024946_457099_866C0320 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-sunxi@googlegroups.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1070384519975330961=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1070384519975330961==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mzwb6azrgqwhad27"
Content-Disposition: inline


--mzwb6azrgqwhad27
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 01, 2019 at 12:43:33PM +0300, Georgii Staroselskii wrote:
> The Emlid Neutis N5 board has AP6212 BT+WiFi chip. This patch is in
> line with 8558c6e21ceb ("ARM: dts: sun8i: h3: bluetooth for Banana Pi
> M2 Zero board") and other commits that add Bluetooth support for
> similar boards.
>
> Signed-off-by: Georgii Staroselskii <georgii.staroselskii@emlid.com>

Applied, thanks!
Maxime

--mzwb6azrgqwhad27
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbv3FQAKCRDj7w1vZxhR
xfUgAQCuRYFEN+ejqrBG+YTreOb8P10E18Xoz+gEr6dNf53YUwEApuYBkd0OBB8p
ZnbSNQFsqFeh7t/NBMUCdjJEEIO3fg4=
=1eoJ
-----END PGP SIGNATURE-----

--mzwb6azrgqwhad27--


--===============1070384519975330961==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1070384519975330961==--

