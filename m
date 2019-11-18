Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9B21001F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 11:00:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YJ9JqdtxOeeTQtH/PvJDthkrQwNFYbqCoMXOq39veZY=; b=t8RPwr9KJD7H+Jw3twC9LWcPm
	VmNK9I9RaMn8joDrd6KCCXvGMf4Tp0s7cwXr++b7Q/oCAj+tdpl2dZvlzypyKlET2fZXsTyn5WZs7
	nSKea7gdOmhu5GVEITgXClfUceIvZCZPpIAuIXMRvMSr+QkoUdmOELyIQN6ts7wuPy3qMyoxxcFoN
	HOo3kicIYVKuPwr38OLIhzyzw3HIJo5yY1U/jvOdjvtPDfaYSbbvJ/3NJhuGvbvVU7oys4EExW5S+
	QAOraAo0xHsLzLqYmVAlOfHRALWNHehJZSCc+NgHWyGrU/JbWA/oKB0iz3mPVQ4sBS/GqLPBLg7UM
	7LarYnUEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdp5-0005z4-Ki; Mon, 18 Nov 2019 09:59:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWdoy-0005yY-2z
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 09:59:49 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 466A420726;
 Mon, 18 Nov 2019 09:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574071187;
 bh=9l9y8mbUUWdHV0d1LTAj4+3W9N3gykUXna0pQednssQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QL2+16G0flSQmGtRJTrCS3XRl2jo8nP/OjcamNRMmG3DlRpdCXG2xsWq1EZ0vKaCw
 eOV7bo488UXESbXTNVGjT6km/We/YXL2lckB8TQ0apwqpD2JNp0hGfnxo9AAL4UTiM
 pGT4Ef0faPy0e3CZazu5ZkaoJqsMUglxM/lpofdo=
Date: Mon, 18 Nov 2019 10:59:45 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH] ARM: dts: sun8i: h3: Add rc map for Beelink X2
Message-ID: <20191118095945.GC4345@gilmour.lan>
References: <20191117125250.1339829-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20191117125250.1339829-1-jernej.skrabec@siol.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_015948_150121_6C32A56B 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5078076528547427311=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5078076528547427311==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lRwEuQLrOweSgmPW"
Content-Disposition: inline


--lRwEuQLrOweSgmPW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sun, Nov 17, 2019 at 01:52:50PM +0100, Jernej Skrabec wrote:
> Beelink X2 box comes with a remote. Add a mapping for it.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Queued for 5.6, thanks!
Maxime

--lRwEuQLrOweSgmPW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXdJrkQAKCRDj7w1vZxhR
xYOyAPwPmxyRoHp8QXtQebwxInzAnzmCF3T67rKVNR7q1DoBxQD/fETiy0lIdbyr
U1mpqsVBkyA5sCFQYXHgfXRP/xX8vg0=
=JJzO
-----END PGP SIGNATURE-----

--lRwEuQLrOweSgmPW--


--===============5078076528547427311==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5078076528547427311==--

