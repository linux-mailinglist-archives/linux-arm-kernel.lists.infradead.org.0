Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDE3EC0B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 10:42:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u/KoQF21octzhHJivQTFdwK8WtoMxIgDvQS1HBDYVqA=; b=G73hM1Uc14X3Lu5QUPnpejMBY
	tjNxP3+2lDxHB92+bkSnZauQsNFahJZNLI4AvR4qSkqDhJ67CqHjNUNPtG9I0Te/qOg5Fn7SRurMk
	0tMiIyr3v6LW45Z/C/T8/EgiGHVLIC6ObbDn3s8J9hc2fpjjJBRYZNhausI0yqgGBa2+rKwsYXWES
	HfPX8GlpmrABFE05mj2SenMhfuSmSlEdAidUcVf/80I0jox3K1nqPDqiwRsU9/Yfy0HLW5KcF6JNm
	xBOIz2/V5JwIMPX+exN7fQR/o9heLQ/mlwBha+fUUteipmqHUbdoadUJpptcp2v5yiqHrzfsUp9zp
	AAZJ5W9EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQTRU-00081o-E7; Fri, 01 Nov 2019 09:42:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQTRM-00081K-Vi
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 09:41:58 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA5BE217D9;
 Fri,  1 Nov 2019 09:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572601316;
 bh=tEMJDPD00qXngI6LNp82zMonWmqPFzQMshTm9haaMwE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c4LcTFQcq15Pdfx0F4HWMJvnLB9+5sFUyNt+YnR3X/x9KnMu3CsmsYaFhvIvHfVED
 J7Llp+Sn66+amL0hdii5JbGnqB3Zv7R+ITTvwid8t300uB5t/fPDHAKx9O1vx/NQeZ
 3e+Lwrj/tcrsBG5d1cOJki/zekq7lS/AT5PzyRjM=
Date: Fri, 1 Nov 2019 10:05:41 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Karl Palsson <karlp@tweak.net.au>
Subject: Re: [PATCH 1/3] ARM: dts: sunxi: h3/h5: add missing uart2 rts/cts pins
Message-ID: <20191101090541.y356ypmhanin3b5p@hendrix>
References: <20191031231104.30725-1-karlp@tweak.net.au>
MIME-Version: 1.0
In-Reply-To: <20191031231104.30725-1-karlp@tweak.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_024157_042917_3ABB68BF 
X-CRM114-Status: UNSURE (   8.74  )
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
Cc: wens@csie.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6761521528424922306=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6761521528424922306==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4gbx4puw3y3iu37l"
Content-Disposition: inline


--4gbx4puw3y3iu37l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 31, 2019 at 11:11:02PM +0000, Karl Palsson wrote:
> uart1 and uart3 had existing pin definitions for the rts/cts pairs.
> Add definitions for uart2 as well.
>
> Signed-off-by: Karl Palsson <karlp@tweak.net.au>

Applied, thanks!
Maxime

--4gbx4puw3y3iu37l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbv1ZQAKCRDj7w1vZxhR
xd40AQDPwX5hGxm0kGpRus9G/8bkcIVDkTuXYQklkfz7XM6+/wEA+kFUT6fxMRzD
KMKiaMvuxl/UINB+1nYB7yRZi4THnAQ=
=cI1M
-----END PGP SIGNATURE-----

--4gbx4puw3y3iu37l--


--===============6761521528424922306==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6761521528424922306==--

