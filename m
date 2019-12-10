Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A52F119C77
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 23:32:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTA5kkYGosIdSGv8qhjR9/68ubDyfZsDx74IUn5YGdk=; b=ieGmnbJxuXk1tA
	Q5ZjvnaYK3DJR5r8Ni+jOgZbXZeeAHN2ECaulkiTr7lcGhI/bcpq1BfxWRHKGarw0D0Zg867vqujv
	XfXsXfRWCeA2XDZov2Sac44GPqLoOvl2vgF2/DPYAeM647Lv+0WY83z06FW+hOV0ZeUqPnUcLMVfJ
	t1Hqdr9nN7VGLKE9BrOM8ViUXoipPFwonr9DkhVgjUIGSxZnC2ZWiT1RfZaPB5+asQhNXo1KNTFh9
	QO+BlCw5JEpahgYn+K+Mr9pNK49NvglrewuoEr4NoRbC/Cf13hdh5kinp1br6F15jGFQpoFst4NN0
	4LNooVrRbRoQpiJ8O1SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieo3s-0004xy-IQ; Tue, 10 Dec 2019 22:32:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieo3h-0004w4-BQ; Tue, 10 Dec 2019 22:32:47 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ieo3b-0001KO-MX; Tue, 10 Dec 2019 23:32:39 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
Subject: Re: [PATCH v2 1/1] ARM: dts: rockchip: Add brcm bluetooth for
 rk3288-veyron
Date: Tue, 10 Dec 2019 23:32:38 +0100
Message-ID: <4093066.yl7jOIBBcd@phil>
In-Reply-To: <20191127223909.253873-2-abhishekpandit@chromium.org>
References: <20191127223909.253873-1-abhishekpandit@chromium.org>
 <20191127223909.253873-2-abhishekpandit@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_143245_536215_A501E849 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-rockchip@lists.infradead.org, dianders@chromium.org,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 27. November 2019, 23:39:09 CET schrieb Abhishek Pandit-Subedi:
> This enables the Broadcom uart bluetooth driver on uart0 and gives it
> ownership of its gpios. In order to use this, you must enable the
> following kconfig options:
> - CONFIG_BT_HCIUART_BCM
> - CONFIG_SERIAL_DEV
> 
> This is applicable to rk3288-veyron series boards that use the bcm43540
> wifi+bt chips.
> 
> As part of this change, also refactor the pinctrl across the various
> boards. All the boards using broadcom bluetooth shouldn't touch the
> bt_dev_wake pin.
> 
> Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>

applied for 5.6 with Matthias' Rb.

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
