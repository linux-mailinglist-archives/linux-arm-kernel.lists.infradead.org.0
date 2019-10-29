Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 849FAE8314
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 09:20:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KFgc+Vy/bg7CPyOJdn2ydCd3BC8Z2qAvGOc00qXe2dY=; b=j0mh1jUQ+GT+/UdwTGVPskXv2
	1QcSmecifK6WzaogkQE1GdmmSADgUi3f4ACwzyB9PcDCWVT0JfXG6syggGEOP1QTN230sFEDVUGIO
	2Ikg1GPM3FLV3DptUq3eEzuIjaIXB6KhSm/5Q38lKLrLqHXOsRfMOEO5dsBiD2Z/4U5QNaGUUFyO1
	j/9VG0NEZeEhEdUVsrIERcnICaXz1RTo1Nn1zlm7o279v6nxP9Dr3lv/bpUNcZ+M7GvZ8Z5ID5xt5
	6PN+lYHm5bAqC4cGrBFBeyoMrFRi3sfyv0tl/3Ndf9z5K3JFeUHpPfAuvcEgjfHg2nHLYPDOEThZP
	ilu4Sq2Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPMjO-0008WS-Ge; Tue, 29 Oct 2019 08:19:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPMjE-0008VY-Eq
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 08:19:49 +0000
Received: from localhost (unknown [91.217.168.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D7BA2086A;
 Tue, 29 Oct 2019 08:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572337188;
 bh=ZRF796Wus2o0Ya1YW5Koj4SnZvUVISTZ2oEhfyYzeN0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wEVhW4da2JeAw+Ddhxd52NlhX9cZj8HNq84M+PJTQsTrWHCN/WYR4BU8SgnxIMBzG
 vMFgmkP33ElOyQ0oYD8GjVNUL6l/Bllq8lvXxpyZU3eg39Kl63Ih+U6nRFukiaJNSO
 cvty9ZXBYVkMla+Noi6iKTf9r9AOWHntdAMPhHog=
Date: Tue, 29 Oct 2019 09:10:32 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH] ARM: sunxi: Fix CPU powerdown on A83T
Message-ID: <20191029081032.5xhysz3mv65e7azv@hendrix>
References: <20191028214914.3465156-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20191028214914.3465156-1-megous@megous.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_011948_526994_E259B556 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: open list <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-sunxi@googlegroups.com,
 Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1818179879565092538=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1818179879565092538==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="c2ir2aunacvuu6l7"
Content-Disposition: inline


--c2ir2aunacvuu6l7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 28, 2019 at 10:49:14PM +0100, Ondrej Jirman wrote:
> PRCM_PWROFF_GATING_REG has CPU0 at bit 4 on A83T. So without this
> patch, instead of gating the CPU0, the whole cluster was power gated,
> when shutting down first CPU in the cluster.
>
> Fixes: 6961275e72a8c1 ("ARM: sun8i: smp: Add support for A83T")
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> Cc: stable@vger.kernel.org

Applied, thanks

Maxime

--c2ir2aunacvuu6l7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbfz+AAKCRDj7w1vZxhR
xabNAQDq9EMAe4I8hY+8J4KL3Khhrxd27KAbY3b3TIuqdn3a/AD/U7cgXhoTiEyI
oc9v/zgOOL7PxQCykeoNxNc8SHYdiQc=
=XYsh
-----END PGP SIGNATURE-----

--c2ir2aunacvuu6l7--


--===============1818179879565092538==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1818179879565092538==--

