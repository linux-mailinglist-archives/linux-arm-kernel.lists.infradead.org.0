Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9F4A37AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 15:20:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=69cC3eKokNEazFVQFQp1xMA0IkWzydICIoJ/45lX5+Y=; b=eaabeQU7sFbuL1
	wEgIlICzbH7PNi6I1YBxeln4JMqBhPi9y5dAlI26MHD6kEJyMRK9GHOHVHCJEy4lLR2a+FdBOUtaw
	VJXn8Xn15CKoLPA+ND8GwFe4FUvB7Be9Sv4r8sgvOtqveyFTZjLVDA1WBf1BrT2U6RElaj2kiijTp
	xsQmadDVIukgkid/kP1geH9H7P6vWpaq/iyFC4F0iefhpnnZuUAgTZBjw2iYJdJV4bI/RTRT74O60
	YpR4uE8Rr+9V3pMWOrRuxXKMz8LuWrFvo0k6O8S57TW5azfCPEVdN9gvEMW2r0FdG7UKqVs19ZIqe
	shb5QaRits+4GpZBIyig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3gpd-0000D0-7k; Fri, 30 Aug 2019 13:20:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3gpR-0000Cb-Kt
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 13:20:39 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E0A72186A;
 Fri, 30 Aug 2019 13:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567171237;
 bh=SK7MIU26ekdFufN9wFcNBBpMKeHmFfdUbjP+h2nZYvI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kwwbxERsPTczwEsIdSPds2TKEG8g1kxDybF1PiA0Z0k+fDM25ivomVokZGGEPDksp
 V5RitlF0EmcbfhMrs9eRJRJvkJNLgEqIMUh1urS042x+/5RNzhWrXyLQOLdO8LwvzU
 U8zyEwOecd8CSGBUqh2E+L94YyODq2KLxmWw6Pco=
Date: Fri, 30 Aug 2019 15:20:34 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Marcel Holtmann <marcel@holtmann.org>
Subject: Re: [RESEND PATCH 0/5] Add bluetooth support for Orange Pi 3
Message-ID: <20190830132034.u65arlv7umh64lx6@flea>
References: <20190823103139.17687-1-megous@megous.com>
 <5524D5E9-FA82-4244-A91F-78CF1C3FB3FB@holtmann.org>
 <20190830092104.odipmbflounqpffo@flea>
 <D02B89FB-F8C0-40AD-A99A-6C1B4FEB72A0@holtmann.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D02B89FB-F8C0-40AD-A99A-6C1B4FEB72A0@holtmann.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_062037_712203_C82050F5 
X-CRM114-Status: GOOD (  19.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: megous@megous.com, Mark Rutland <mark.rutland@arm.com>,
 Johan Hedberg <johan.hedberg@gmail.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 02:43:48PM +0200, Marcel Holtmann wrote:
> >>> (Resend to add missing lists, sorry for the noise.)
> >>>
> >>> This series implements bluetooth support for Xunlong Orange Pi 3 board.
> >>>
> >>> The board uses AP6256 WiFi/BT 5.0 chip.
> >>>
> >>> Summary of changes:
> >>>
> >>> - add more delay to let initialize the chip
> >>> - let the kernel detect firmware file path
> >>> - add new compatible and update dt-bindings
> >>> - update Orange Pi 3 / H6 DTS
> >>>
> >>> Please take a look.
> >>>
> >>> thank you and regards,
> >>> Ondrej Jirman
> >>>
> >>> Ondrej Jirman (5):
> >>> dt-bindings: net: Add compatible for BCM4345C5 bluetooth device
> >>> bluetooth: bcm: Add support for loading firmware for BCM4345C5
> >>> bluetooth: hci_bcm: Give more time to come out of reset
> >>> arm64: dts: allwinner: h6: Add pin configs for uart1
> >>> arm64: dts: allwinner: orange-pi-3: Enable UART1 / Bluetooth
> >>>
> >>> .../bindings/net/broadcom-bluetooth.txt       |  1 +
> >>> .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 19 +++++++++++++++++++
> >>> arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  | 10 ++++++++++
> >>> drivers/bluetooth/btbcm.c                     |  3 +++
> >>> drivers/bluetooth/hci_bcm.c                   |  3 ++-
> >>> 5 files changed, 35 insertions(+), 1 deletion(-)
> >>
> >> all 5 patches have been applied to bluetooth-next tree.
> >
> > The DTS patches (last 2) should go through the arm-soc tree, can you
> > drop them?
>
> why is that? We have included DTS changes for Bluetooth devices
> directly all the time. What is different with this hardware?

I guess some maintainers are more relaxed with it than we are then,
but for the why, well, it's the usual reasons, the most immediate one
being that it reduces to a minimum the conflicts between trees.

The other being that it's not really usual to merge patches supposed
to be handled by another maintainer without (at least) his
consent. I'm pretty sure you would have asked the same request if I
would have merged the bluetooth patches through my tree without
notice.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
