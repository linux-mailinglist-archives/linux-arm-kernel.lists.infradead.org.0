Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF9DF22A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 00:30:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lH6jw/SJ+rL2D+KfPMTF9cpy6aRgKwgNeqlTERDA+Us=; b=ROBPZHYqvR62ZY
	orYILMDb37BPAQ1BOCUIBiNi4mSDH5kq1zHOM98cJcu/JeVN2pUdGLHy9f7ul/4alQEUb13HeOH7B
	IqGiT2Aui32sYw5S+nhZ62QJnab4LBpOCUw+FAn7fYsms5RSYp9rBQxmdPUeo/3BPpTxWP2HZ0arY
	jGygrrlOPjKP7R8fnYF06AIIWulEQEGh1nLxCVs0qDnSR+W6saraUuwH0Wl4gll56Yz6K3UMXPdjm
	Oyx0Ld/1gtPII3vyImNfyfy9eQdvK5lVgv8V9BTy+4jZ3IocZg1Sc5gVidMaZ1m1i1LO5m4ovXrXj
	RO+ub7TyywjK3vbOV2gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSUki-0004O3-2s; Wed, 06 Nov 2019 23:30:16 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSUkX-0003aL-S9
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 23:30:07 +0000
X-Originating-IP: 92.184.100.196
Received: from localhost (unknown [92.184.100.196])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 4FD6E60006;
 Wed,  6 Nov 2019 23:29:46 +0000 (UTC)
Date: Thu, 7 Nov 2019 00:29:32 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v3 2/2] ARM: dts: at91: add a dts and dtsi file for
 kizbox2 based boards
Message-ID: <20191106232932.GM8309@piout.net>
References: <20191105212234.22999-1-kamel.bouhara@bootlin.com>
 <20191105212234.22999-2-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105212234.22999-2-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_153006_060809_3B85AD9C 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Mickael GARDET <m.gardet@overkiz.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?iso-8859-1?Q?K=E9vin?= RAYMOND <k.raymond@overkiz.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/11/2019 22:22:34+0100, Kamel Bouhara wrote:
> There are several boards available depending on the PCB
> (3 antennas support and several revison). Add a dtsi file to share
> common binding between all kizbox2 boards. This patch also add support
> for the kizbox2-2 variant.
> =

> Signed-off-by: K=E9vin RAYMOND <k.raymond@overkiz.com>
> Signed-off-by: Mickael GARDET <m.gardet@overkiz.com>
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
> Changes in v2:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 	- Replaced "_" by "-" in dts/dtsi file names
> 	- Fixed unusual C++ Style comments
> =

> Changes in v3:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 	- Removed the kizbox changes from this patch
> =

> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
>  arch/arm/boot/dts/Makefile                 |   2 +-
>  arch/arm/boot/dts/at91-kizbox2-2.dts       |  26 +++
>  arch/arm/boot/dts/at91-kizbox2-common.dtsi | 258 +++++++++++++++++++++
>  arch/arm/boot/dts/at91-kizbox2.dts         | 244 -------------------
>  4 files changed, 285 insertions(+), 245 deletions(-)
>  create mode 100644 arch/arm/boot/dts/at91-kizbox2-2.dts
>  create mode 100644 arch/arm/boot/dts/at91-kizbox2-common.dtsi
>  delete mode 100644 arch/arm/boot/dts/at91-kizbox2.dts
> =

Applied, thanks.

-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
