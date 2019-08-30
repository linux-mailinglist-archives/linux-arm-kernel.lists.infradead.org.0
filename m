Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8396BA3701
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 14:44:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7otter05N/waINYDQ0aOohMr6gHzr4yM3jV35Z1YSS8=; b=F5i5WAd5xllYEm
	WifqSZUoavcVA6vpfoL9WL2I0e5y2fJP8XXornOHM3Gmk7JGK8L5YqDVNhDE2eRRbhSdukMRqb7dB
	fS9vEtXt5XozxNzYjSXhgAxaVhlHe+TLQDDcODcQ/wwm6xrOTL809KGl1E9UBz4vYBnu19NaDb2cJ
	LcqEk/kINoVpL5FYxr16xR4enHWygB50XfPzPzbCsKb9DLA2Eub+TrJRtjw5AxEykkWvnb3KJYdZd
	o77Qsw4TmMOR2mJOnH0Gsk+80cuxHVvcx84hZCjO6xlJfyODl2wVYR4adlhWZvE9DjN+dXGR77yqa
	5xz15riIIfw0eutQzm4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3gGB-0001Kj-7t; Fri, 30 Aug 2019 12:44:11 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3gFu-0001Jl-Fa
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 12:43:56 +0000
Received: from marcel-macbook.fritz.box (p4FEFC580.dip0.t-ipconnect.de
 [79.239.197.128])
 by mail.holtmann.org (Postfix) with ESMTPSA id 17EFACECDE;
 Fri, 30 Aug 2019 14:52:35 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [RESEND PATCH 0/5] Add bluetooth support for Orange Pi 3
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <20190830092104.odipmbflounqpffo@flea>
Date: Fri, 30 Aug 2019 14:43:48 +0200
Message-Id: <D02B89FB-F8C0-40AD-A99A-6C1B4FEB72A0@holtmann.org>
References: <20190823103139.17687-1-megous@megous.com>
 <5524D5E9-FA82-4244-A91F-78CF1C3FB3FB@holtmann.org>
 <20190830092104.odipmbflounqpffo@flea>
To: Maxime Ripard <mripard@kernel.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_054354_671814_7625091C 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.132.17 listed in list.dnswl.org]
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

Hi Maxime,

>>> (Resend to add missing lists, sorry for the noise.)
>>> 
>>> This series implements bluetooth support for Xunlong Orange Pi 3 board.
>>> 
>>> The board uses AP6256 WiFi/BT 5.0 chip.
>>> 
>>> Summary of changes:
>>> 
>>> - add more delay to let initialize the chip
>>> - let the kernel detect firmware file path
>>> - add new compatible and update dt-bindings
>>> - update Orange Pi 3 / H6 DTS
>>> 
>>> Please take a look.
>>> 
>>> thank you and regards,
>>> Ondrej Jirman
>>> 
>>> Ondrej Jirman (5):
>>> dt-bindings: net: Add compatible for BCM4345C5 bluetooth device
>>> bluetooth: bcm: Add support for loading firmware for BCM4345C5
>>> bluetooth: hci_bcm: Give more time to come out of reset
>>> arm64: dts: allwinner: h6: Add pin configs for uart1
>>> arm64: dts: allwinner: orange-pi-3: Enable UART1 / Bluetooth
>>> 
>>> .../bindings/net/broadcom-bluetooth.txt       |  1 +
>>> .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 19 +++++++++++++++++++
>>> arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  | 10 ++++++++++
>>> drivers/bluetooth/btbcm.c                     |  3 +++
>>> drivers/bluetooth/hci_bcm.c                   |  3 ++-
>>> 5 files changed, 35 insertions(+), 1 deletion(-)
>> 
>> all 5 patches have been applied to bluetooth-next tree.
> 
> The DTS patches (last 2) should go through the arm-soc tree, can you
> drop them?

why is that? We have included DTS changes for Bluetooth devices directly all the time. What is different with this hardware?

Regards

Marcel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
