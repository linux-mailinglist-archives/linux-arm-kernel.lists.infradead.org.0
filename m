Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5071DA7E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 04:19:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3aN3PiX6e45bg0O7dJAnk6SLGNTuaG9YyPjx5GrZwMM=; b=FlPfZ4jErMfLGW
	gTPK3ndAzloNcFA4BA3Qy7mwsLxC9LEzgDF4MRKg9jomGDa9eSbfaDvY00b+s2W0u14D8XTaKQ+Er
	hl5LHGq5dF+QcJ0tU0mmu005qu5bgUjI89TKo+yGB/uF2Dx3NlqHm1p5YU6I6cu45l58yBtqH+2+H
	V+XbGePnMZtNH8kfE6gUCRHxX64I2zlPiVHGtsuLr9+KikESwl+dmYl53Uy9xpUv/xEnOca42+Oom
	fend+G+B85+ocmOVDOHMOYVitz4+GV3KhZlPYg0f700nQQh4gMWovncM9wPePOgfvDrZw5Lz/OFR0
	8nnkS6mUucnCWTDJYVjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbEK1-0004qp-Al; Wed, 20 May 2020 02:19:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbEJp-0004q0-1M
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 02:18:54 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 05C0F2070A;
 Wed, 20 May 2020 02:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589941132;
 bh=GDNAaNZP3qMwBaDYx1p3xLKPDrxahudWnRS7ySIVvIE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eYtrGcsRUrItN9pLIsFGpnLwrKeOmPDNNOPQ/CwZtX0CMIk7sTfnuiYMcFayVVSF3
 OP2lQa6b/Fte6tocvgS8QguqHJIW56U4pJgdpC05wOQ6TkeIji+1VEOWnwAMwtuw/d
 atFog8WR2+AgbI+o9lRxbK0MEocpjVl1FIPFqcv4=
Date: Wed, 20 May 2020 10:18:47 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Tim Harvey <tharvey@gateworks.com>
Subject: Re: [PATCH] ARM: dts: imx6qdl-gw5910: add support for bcm4330-bt
Message-ID: <20200520021847.GP11739@dragon>
References: <1589320455-23844-1-git-send-email-tharvey@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589320455-23844-1-git-send-email-tharvey@gateworks.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_191853_094462_0148A343 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 02:54:15PM -0700, Tim Harvey wrote:
> The Sterling-LWB has a BCM4330 which has a UART based bluetooth
> HCI. Add support for binding to the bcm_hci driver to take care
> of handling the shutdown gpio and loading firmware.
> 
> Because the shutdown gpio is more of an enable than a regulator
> go ahead and replace the regulator with a shutdown-gpio.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
