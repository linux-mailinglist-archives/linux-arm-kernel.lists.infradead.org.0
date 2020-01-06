Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A22C130F26
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 10:04:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0vfduEfhot1XCjXr6D5tm+8GANTM3sQAAiA9p9zhtPI=; b=kctsmqfntZ1xE7eQWqgFOU9JV
	eGQzTkiHBKsCwOVGlWXPxm4XvHkVVsf8gylOKEhGJZndsret11J54ZuE+aOaV9GkXpQUz+Rh8itmD
	KGObTwO03EXWlglasu+Y3AELUExC5lw98i/Obl4W5/v8mpC7NFyZhLEzrk0Mt/pmzQdvJ2IoWytgJ
	qMmAsmzF3B083Sq5GbPbKLYh5ThrhlXku9uQGqh/aCaXy1/C54Okp4JUtPPm7twkKL3UIj4ClmLui
	9tzE68dZdVAZuqzrZQYgTqs+a3CF7W5k3hXXOC5l2+Py7bkVBmls7DITIVhWUxLNRzxklmuNuv+bg
	/rCg36eUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOIk-0004OB-Bj; Mon, 06 Jan 2020 09:03:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOId-0004Nj-U5
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 09:03:49 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 180B420848;
 Mon,  6 Jan 2020 09:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578301427;
 bh=3AZoB5lzq7P9xtp5x7IB8Ry3pqmrEZMSxIru7I6Mayw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TFdhnAj6rBK3Po0t2XoT3/A4g80GoPtZw8KMSnGYkUvUlhLmhQZl+8pWIy0S3Pai3
 VMDuZpbn0KigLOlyW851x3P+wJOgnmiNJE7iKhdOW8wV3EFzHzvu4EVZM1N9iKn3Di
 XkpfD3pQ26VjyK8eUkv8vLThmC399+j6YbVaVCWI=
Date: Mon, 6 Jan 2020 10:03:44 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] arm64: dts: allwinner: h5: Add Libre Computer ALL-H5-CC
 H5 board
Message-ID: <20200106090344.wlqwlhnshj7c5j6q@gilmour.lan>
References: <20200106085820.7082-1-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200106085820.7082-1-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_010347_988992_95317EF2 
X-CRM114-Status: GOOD (  12.81  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6668838303442582074=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6668838303442582074==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wopthskqafqpdmgu"
Content-Disposition: inline


--wopthskqafqpdmgu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 06, 2020 at 04:58:20PM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> The Libre Computer ALL-H5-CC board is an upgraded version of the
> ALL-H3-CC. Changes include:
>
>   - Gigabit Ethernet via external RTL8211E Ethernet PHY
>   - 16 MiB SPI NOR flash memory
>   - PoE tap header
>   - Line out jack removed
>
> Only H5 variant test samples were made available, and the vendor is not
> certain whether other SoC variants would be made or not. Furthermore the
> board is a minor upgrade compared to the ALL-H3-CC. Thus the device tree
> simply includes the one for the ALL-H3-CC, and adds the changes on top.
>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Applied, thanks!
Maxime

--wopthskqafqpdmgu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhL38AAKCRDj7w1vZxhR
xQN7AQDvYzlQWw3vCLjwH1x+5WWoSKJTHRA94foaIILZoivGfAEApMPC1Zqmqddk
ZuBHerNDSThxQgHT2dRhQg380OuJKQM=
=CUUd
-----END PGP SIGNATURE-----

--wopthskqafqpdmgu--


--===============6668838303442582074==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6668838303442582074==--

