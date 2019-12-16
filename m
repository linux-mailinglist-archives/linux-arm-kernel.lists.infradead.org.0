Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 172FD12028F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 11:30:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mapv0Muu9VbIVe1OLDXQAXGN+i8gk2nKCnCGu9qFQQs=; b=KmVWC+7TJHN95VIB+IupOvURW
	d9yhPYZu7UlJDAn5Jcm5Mj0lhdYHlPCfcwuS0+xkUGVVOxTVbDOAwgpc5iKR2WKrKMw6E+xvu1TSK
	5Pbi+9cHLVPiTbaDBm7uIsCsKEIfI9S4MDEm5kwvFvK6Ifb/ijiV9iuDvDpp4f5h/V4MGYyKd/q3Y
	CLVI8bTDOE+Ll6KFINJ8+p00Z9l8ZSNgbR+iEefayS0nJnUwPZg0OPgTSlw9EOYoL4F2T05Ey480g
	+vxW8+CxzNijwfPkJQA3W+7S5c2EYibLDhjlwQoHBMNf6sdLzBOKkAg7MpbWY4pjAqTqaI7lPrts1
	Vc2h+YogA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igneQ-0007jy-3O; Mon, 16 Dec 2019 10:30:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igndw-0007U1-A1
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 10:30:25 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73AD7206CB;
 Mon, 16 Dec 2019 10:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576492223;
 bh=KmOjsO485jZWPyMI0JTSr6CCJZxWMYYXDKFUfapkW0k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KcB9P/2h/9Ud9VmZpuZ737sZN6xDA/T/iKVKsFkI4QgKMissDmHwcz+tU8/zU0XuQ
 e+5y+DSi5/tXT/uWOXMRg8j/ooYnhFd8jg+rFGOr8hn7kjhv3h+/p8/uyQsirCdQJB
 uWqhnBl7t1rYareJCRlX0yeY6o6vVqWhtmh/+AQ0=
Date: Mon, 16 Dec 2019 11:30:21 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 01/14] dt-bindings: media: sun4i-csi: Add compatible for
 CSI1 on A10/A20
Message-ID: <20191216103021.z4zmd5wz3fbt6p76@gilmour.lan>
References: <20191215165924.28314-1-wens@kernel.org>
 <20191215165924.28314-2-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20191215165924.28314-2-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_023024_390180_0E5E4EC1 
X-CRM114-Status: GOOD (  10.89  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5911486468407134203=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5911486468407134203==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="c5dhr4zeahfmg3rc"
Content-Disposition: inline


--c5dhr4zeahfmg3rc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 16, 2019 at 12:59:11AM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> The CSI1 block has the same structure and layout as the CSI0 block.
> Differences include:
>
>   - Only one channel in BT.656 instead of four in CSI0
>   - 10-bit raw data input vs 8-bit in CSI0
>   - 24-bit RGB888/YUV444 input vs 16-bit RGB565/YUV422 in CSI0
>   - No ISP hardware
>
> The hardware found in the A20 is the same as in the A10.
>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--c5dhr4zeahfmg3rc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfdcvQAKCRDj7w1vZxhR
xT3dAQCxY6xWEXeQcYr/d7+QSenbOtBVqgdSzjafmezoosWGJQEAzy+LF9CQBWZn
xOxhZnZen3CAWEOsFLZ6ul8WsuPC6AM=
=C0Mw
-----END PGP SIGNATURE-----

--c5dhr4zeahfmg3rc--


--===============5911486468407134203==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5911486468407134203==--

