Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96973D8A78
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 10:04:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kfeQWwENQeX+e3WtawL2Hwc+CBhoDs31cOti0UO5wbc=; b=sFcIOk/PV5jZWOWeTsZjEZltN
	PBBvc5sHl3F/9JaqlA9ojQ0tXivQdCYtA6hhW5EwOoZV/BIox9WG7+MScIHGIsU3xQyDYQYahwxFA
	gPs4nAIWESy5kuuT4DNQRLKBQcn1jyBlUN3CY3spClcgMUImRwo5AfL3y2RgLNNnRcDHuP0Ucsv1w
	eB6VKF6v95PAGKB7rsZDUM0aakz4rzpIngiOHQjyaCMpMcfaJYja0MsXlB0rcFcVs3CIPp23+qoUs
	5mwOyrANjK/1QsoPXln8rDCa45ZXR+n13G1bihvSvpxKOLVpIasFWZvdevk21jave2OQolVbvArDm
	jKSIMl3Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKeIK-0007TM-86; Wed, 16 Oct 2019 08:04:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKeIB-0007St-CM
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 08:04:24 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8CAA12168B;
 Wed, 16 Oct 2019 08:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571213063;
 bh=rReuVb132ii3iV3YvU4PNL9utgLRGUbc4m/9hSBbvoo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EKslahbuYYEfHHiHvt1LJUtrJWPfqhT+U1un2c0j+oyJD91TSdrEHjpXKqUUdPIJJ
 mgavniH/wVMdLjNQLohrfunzsw+5485YLEid7Go0xRWtGD7O6wnaocKqQUEKalZxdD
 IBQ8K1DJ/CSH4iz7+Qrrmxnjfi0bKsbH9cBkhfAM=
Date: Wed, 16 Oct 2019 10:04:20 +0200
From: Maxime Ripard <mripard@kernel.org>
To: codekipper@gmail.com
Subject: Re: [PATCH v6 1/7] ASoC: sun4i-i2s: Move channel select offset
Message-ID: <20191016080420.4cbxn2hdt3wwtrhl@gilmour>
References: <20191016070740.121435-1-codekipper@gmail.com>
 <20191016070740.121435-2-codekipper@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191016070740.121435-2-codekipper@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_010423_441503_8AC2650B 
X-CRM114-Status: UNSURE (   9.43  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, lgirdwood@gmail.com, be17068@iperbole.bo.it,
 wens@csie.org, broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4135987742393967958=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4135987742393967958==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7ms26mvxh6nbjd52"
Content-Disposition: inline


--7ms26mvxh6nbjd52
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 16, 2019 at 09:07:34AM +0200, codekipper@gmail.com wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>
> On the newer SoCs the offset is used to set the mode of the
> connection. As it is to be used elsewhere then it makes sense
> to move it to the main structure.

Elsewhere where, and to do what?

Maxime

--7ms26mvxh6nbjd52
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXabPBAAKCRDj7w1vZxhR
xWfVAP9ZDeCUM6YB6ieMATn24AtmYaqNFpUuWyfe7WmRM0R1qAEAkXYiT7NBO4dm
xSC0H+a6BM1oFgGWjOiNULlLMAySTQ4=
=HbkX
-----END PGP SIGNATURE-----

--7ms26mvxh6nbjd52--


--===============4135987742393967958==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4135987742393967958==--

