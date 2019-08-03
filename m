Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D4B80714
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 17:54:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NudVR2j+d2k50Edki6NYfFbjMDrEFd/XakhFUAY2jA=; b=ss4zM/xUIX7DYu
	z4ZviP2tjVRXhxQxC2G7dbmgD7jjm1U3kGOnUOEedjNHuGi9UyChKX93RRUOTxFi8QET+tfSd2DDw
	s5AeQUW1IjN+FJPABl0AEaRbwat+fgyMPqYrBHc8mRq8Nv7IHygZ/jPttq1Q1CfiNRiEKxd4ubOd+
	l5vUkiIzDme0EdKchwowRkQyr7tQIf1Nf78N2MZcRh7c5wYEjrsk8qcrU9YNApCSGA7TYRxOhIlvV
	Bah+GjKi711qgAzVuZFxKtg+xNu7moL47o46n/jAQ0WJPijXy7Cace40QZan2m7lPvd0shQONvBSQ
	+FlpFUMQ3+hUXLEHkagw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htwM5-000874-Eo; Sat, 03 Aug 2019 15:54:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htwLt-00086k-1w
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 15:53:50 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6B0C42085B;
 Sat,  3 Aug 2019 15:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564847628;
 bh=/Sz995kn2vhhOIU477qk6hrw4p98X9l1OrZDiibt7XU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LSHJJGu70TAXfJmFefWWrw0g4zM7f/OgvZzu+LanKMT685a0IqwtfeL4GeBoPcpQ9
 TGJ5ZkXaE67LmgN7WIsBqG+BetrDYh0g91iaFSexahq5yMi1OW2jPRc8Ohhx6twoTB
 5thGucacB/PRcaOUjpEucPUJt9Y/o9OJDF10Y0HI=
Date: Sat, 3 Aug 2019 17:53:42 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Lukasz Majewski <lukma@denx.de>
Subject: Re: [PATCH v3] ARM: dts: vf610-bk4: Fix qspi node description
Message-ID: <20190803155341.GT8870@X250.getinternet.no>
References: <20190731141151.7196-1-lukma@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731141151.7196-1-lukma@denx.de>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_085349_121276_CC662321 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 04:11:51PM +0200, Lukasz Majewski wrote:
> Before this change the device tree description of qspi node for
> second memory on BK4 board was wrong (applicable to old, removed
> fsl-quadspi.c driver).
> 
> As a result this memory was not recognized correctly when used
> with the new spi-fsl-qspi.c driver.
> 
> From the dt-bindings:
> 
> "Required SPI slave node properties:
>   - reg: There are two buses (A and B) with two chip selects each.
> This encodes to which bus and CS the flash is connected:
> <0>: Bus A, CS 0
> <1>: Bus A, CS 1
> <2>: Bus B, CS 0
> <3>: Bus B, CS 1"
> 
> According to above with new driver the second SPI-NOR memory shall
> have reg=<2> as it is connected to Bus B, CS 0.
> 
> Fixes: a67d2c52a82f ("ARM: dts: Add support for Liebherr's BK4 device (vf610 based)")
> Suggested-by: Fabio Estevam <festevam@gmail.com>
> Signed-off-by: Lukasz Majewski <lukma@denx.de>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
