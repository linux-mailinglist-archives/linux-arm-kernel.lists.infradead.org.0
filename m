Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6FCCE4CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 16:12:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XR5dURLdPdqTVBsSC4vKaqUbv+djJu+DcM2Upc7xB4Q=; b=dXYPy0ecU0Y02+
	lbTtZjeZko74tCTNnbdkmwkRFKa7DkSkO5fY+xxgsPVMjO40730C2T2DIs3w2/EGXk8o/GyIUk1AA
	KBwMktNVnqoLduivkbg5sG35CyiI9LO3IKfwFkWkCdsPUA70qzZjgNjPNAMwyWYOiU6Z/rVHjD9ds
	K6aVjqOe8I7dxV3KFhlRR3xRDlH3eB7YEYGMckgTQzgcfDMWjNS5vcWlL0to+Lalt9dxXf0BZmBBJ
	k6XhhzOQqMSOYxaFJiVrH6v4C55k2YNia7LD7VpB+1fCUws3IxBTly/mDE0u0ZbdqwwP/RKpwjpg3
	IzAZBOAN/EnKQTUnCk8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHTk6-0004W6-EY; Mon, 07 Oct 2019 14:12:06 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHTjy-0004Ur-A2
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 14:12:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1570457513; bh=vCAFf9C0br5VOI1ZEU2yHBKcKssDrCWtMjeUus4lEvs=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=tKFYuF7CIbqBRHvfCbUenSAaxcz2/NEiihFPgquA588JE7l65OI+ZFs3BxqUXBeb3
 TkIIg1l8zsVvcLmp9N/rKDlseQuzb2rM4cGMspVzIb7OTTU72+40vWEHTpVi6zq6NH
 qiiN7TechdSJTKlkvQz+q9S8zk3HZuGQXQGL2Ylk=
Date: Mon, 7 Oct 2019 16:11:53 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>
Subject: Re: [RESEND PATCH 0/5] Add bluetooth support for Orange Pi 3
Message-ID: <20191007141153.7b76t4ntdzdojj5m@core.my.home>
Mail-Followup-To: Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
References: <20190823103139.17687-1-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823103139.17687-1-megous@megous.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_071158_676116_BA530F03 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

On Fri, Aug 23, 2019 at 12:31:34PM +0200, megous hlavni wrote:
> From: Ondrej Jirman <megous@megous.com>
> 
> (Resend to add missing lists, sorry for the noise.)
> 
> This series implements bluetooth support for Xunlong Orange Pi 3 board.
> 
> The board uses AP6256 WiFi/BT 5.0 chip.
> 
> Summary of changes:
> 
> - add more delay to let initialize the chip
> - let the kernel detect firmware file path
> - add new compatible and update dt-bindings
> - update Orange Pi 3 / H6 DTS

Please consider the DTS patches for 5.5.

Thanks,
	Ondrej

> Please take a look.
> 
> thank you and regards,
>   Ondrej Jirman
> 
> Ondrej Jirman (5):
>   dt-bindings: net: Add compatible for BCM4345C5 bluetooth device
>   bluetooth: bcm: Add support for loading firmware for BCM4345C5
>   bluetooth: hci_bcm: Give more time to come out of reset
>   arm64: dts: allwinner: h6: Add pin configs for uart1
>   arm64: dts: allwinner: orange-pi-3: Enable UART1 / Bluetooth
> 
>  .../bindings/net/broadcom-bluetooth.txt       |  1 +
>  .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 19 +++++++++++++++++++
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  | 10 ++++++++++
>  drivers/bluetooth/btbcm.c                     |  3 +++
>  drivers/bluetooth/hci_bcm.c                   |  3 ++-
>  5 files changed, 35 insertions(+), 1 deletion(-)
> 
> -- 
> 2.23.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
