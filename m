Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB60E58BB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 07:27:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZNk5DaiDAS4taQ8vwjFjxkjSkd+UiXis/5KAXLH9yJI=; b=V1DyprcHqryLvj
	iphcIcj5BHB3fz38i9t4w1pV6y0ItLtsNniNYRQeOyenmJORjV4j7MSzh+9KpNe/KAHcFWVNJjCDz
	B3OX/ao+RoWY2iaHsui9yKfylZ6D8YRlE9JvH+3eouvVVBi4u+Ub82bt/UANNyWnOseeH5x4ojUZQ
	C//J7iuU0V78cK9FGqgpyuoFCFHA9jKAf909sbSe6e6NPTYWOlmOexJNtmazrxw52bdZN2TEMsQEL
	2OLZVZiUdCcQf87mXYroHmSnzn33EXTt2R5Uhp7zdxuoh392nx5sd+HKAqhFMOu4jgqxwbwXReI6e
	ggx/LtJ0zgfaqgVei/wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOEbi-0001Pa-Pl; Sat, 26 Oct 2019 05:27:22 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOEbY-0001NC-Jb; Sat, 26 Oct 2019 05:27:15 +0000
Received: from [172.20.19.11] (unknown [213.61.67.157])
 by mail.holtmann.org (Postfix) with ESMTPSA id CC3E8CED0C;
 Sat, 26 Oct 2019 07:36:03 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3594.4.19\))
Subject: Re: [PATCH 0/3] ARM: dts: rockchip: Use hci_bcm driver for bcm43540
 on Veyron devices
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <20191025215428.31607-1-abhishekpandit@chromium.org>
Date: Sat, 26 Oct 2019 07:27:02 +0200
Message-Id: <4680AA6A-599F-4D5E-9A96-0655569BAE94@holtmann.org>
References: <20191025215428.31607-1-abhishekpandit@chromium.org>
To: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
X-Mailer: Apple Mail (2.3594.4.19)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_222712_796294_CDACE072 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.132.17 listed in list.dnswl.org]
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree <devicetree@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 netdev <netdev@vger.kernel.org>, dianders@chromium.org,
 linux-kernel@vger.kernel.org,
 Bluez mailing list <linux-bluetooth@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, Johan Hedberg <johan.hedberg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Abhishek,

> This patch series enables using the Broadcom HCI UART driver with the
> BCM43540 Wi-Fi + Bluetooth chip. This chip is used on a RK3288 based
> board (Veyron) and these changes have been tested on the Minnie variant
> of the board (i.e. rk3288-veyron-minnie.dts).
> 
> 
> 
> Abhishek Pandit-Subedi (3):
>  Bluetooth: hci_bcm: Add compatible string for BCM43540
>  dt-bindings: net: broadcom-bluetooth: Add BCM43540 compatible string
>  ARM: dts: rockchip: Add brcm bluetooth module on uart0
> 
> .../bindings/net/broadcom-bluetooth.txt       |  1 +
> arch/arm/boot/dts/rk3288-veyron.dtsi          | 31 +++++--------------
> drivers/bluetooth/hci_bcm.c                   |  1 +
> 3 files changed, 9 insertions(+), 24 deletions(-)

patches 1 and 2 have been applied to bluetooth-next tree. I leave patch 3 to the appropriate ARM maintainer to pick up.

Regards

Marcel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
