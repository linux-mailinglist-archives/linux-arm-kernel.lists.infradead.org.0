Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 150C91262DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 14:05:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jVXnJv35JTb5vivvRkqYNSHVlhjIbRN8LAxCPDRL7BM=; b=YNU/PnRHXHrajjrtFyGSF0YhX
	YCqne7AdnKUNhtTg+q2Qh0Nx6NrdltpGc8KZNUi1F6Ns99a7lzZ1biXI06DsVEsf2l4b+TXE2Yo4F
	TjP57MdANI+2Cem4UYR8FEQwfr/88mmsY+UIoiEF1e4yaXF41owi7YCOyGsTjtWWuda7Hfo0DI8Ev
	p6vFLYJCszCTPpLDUkZ6yp7qWw8sfO3Thsr4lS5FfuDETbcnklS+ZSFCXr43kGBLPHbpgm6UPEbvm
	20XuN17l8j6qWETpO4K5a9vnobSmyfdTT44BARi5E1E+HaX+OjvQKNneOa45BcNCDLW/CNU8bVrJk
	kRtQzs9iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihvUT-0005Kc-My; Thu, 19 Dec 2019 13:05:17 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihvUI-0005JP-OY
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 13:05:09 +0000
Received: from localhost (p5486C702.dip0.t-ipconnect.de [84.134.199.2])
 by pokefinder.org (Postfix) with ESMTPSA id 518302C2D2A;
 Thu, 19 Dec 2019 14:05:02 +0100 (CET)
Date: Thu, 19 Dec 2019 14:05:01 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Radu Pirea <radu_nicolae.pirea@upb.ro>
Subject: Re: [PATCH] i2c: cadence: Added slave support
Message-ID: <20191219130501.GA958@kunai>
References: <20191219124120.53754-1-radu_nicolae.pirea@upb.ro>
MIME-Version: 1.0
In-Reply-To: <20191219124120.53754-1-radu_nicolae.pirea@upb.ro>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_050507_275185_DDE4BBDB 
X-CRM114-Status: UNSURE (   6.76  )
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
Cc: Michal Simek <michal.simek@xilinx.com>,
 Chirag Parekh <chirag.parekh@xilinx.com>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4448801836450331720=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4448801836450331720==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xHFwDpU9dbj6ez1V"
Content-Disposition: inline


--xHFwDpU9dbj6ez1V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> +/**
> + * enum cdns_i2c_mode - I2C Controller current operating mode
> + *
> + * @CDNS_I2C_MODE_SLAVE:       I2C controller operating in slave mode
> + * @CDNS_I2C_MODE_MASTER:      I2C Controller operating in master mode
> + */

Can't the hardware operate as master and slave at the same time?


--xHFwDpU9dbj6ez1V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl37dXkACgkQFA3kzBSg
Kbbt0A/9G7dnHkPv6eu3f7KNRWgl+KyWAG1doDbApk+NkT47uu+hfNRDnb3XzAs6
2NsXG9/26GVEJL/ATHPBxWahXHzvvd4Dh2kYx8vUpy09EmlHUEFennlKdWUXAezQ
23SfiuyrbZLJuM+hlEag2FPhIKxdExkotQYa+Qn2TjbR51VAPz0uDK7tzqt/aQ5g
4Q5KYZrUaFlgG6rRSnncOyrZb3GHDXeMS4gQuGu0U1sn9CEcWzswlJHMBug+D+Uy
4HnwS6ADhHbGIqXROqcrAyemGP7WKFwajmJ0dg7nDXFtyU4pZm6zbTtHlKj+r5aJ
VtvXQJSxUxTuy4iQFg0pY0Vs+E1uIsO/TGuVhNh1TrBsLFgn48kIugAsyKE3Fl0F
nDUJvEiuFUa3eWe+fwpECpFxIQkUsF194rWiMJQeNnE3BWN4k+2c/tP/CGy110Ca
0CT+I/aQaFFMbih71E6kzazR+PkmKeFksl+jRp3Uiw8Krg3Gk669FbhySuwTqDeJ
zjfWhKxuc4dkvCuXpxUi2nF4uzF16M2/1ZUL+xP4b4FB4ciHKomK0Du0jShn4zsF
qSNg6udixqR097xmg1UeDqDXtPyJx5iI/txwIAO2w6LKg/WqLSCYph1F15nAeKOb
hKJkSf7g9rrgz5Kd6bf7IVa8ckdh0q1Mtr+XeYe6ubKpB2BM1LE=
=L4Bm
-----END PGP SIGNATURE-----

--xHFwDpU9dbj6ez1V--


--===============4448801836450331720==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4448801836450331720==--

