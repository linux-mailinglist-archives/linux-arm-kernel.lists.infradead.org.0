Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2582F118179
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 08:44:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wk+j1t85kgdgQ+/rDP0fe0H1YFtywMD5PxOuMvxDhfw=; b=rBWlsaAmJn7FIv
	lIkmcuFrReuUI5QeHgVXs32l2z0J3DV8JyTV+14zUUMxOq+be/CQJ7Q/Uzij9UtSr55E8u1bMMQTp
	KLYC46ZeDqk4TXTkXAjNyrEW4UEKwUnlfWsfOD8zJyr9O7q1QOIX90SDyGbYbyPjqkbsSQu19/9zH
	uClPOUNvjGsITtPCdxX8IjKmT0bjPegPz51cb4Mmq23hbhnrNanTEDXwRhOu9z64LrCp7rsJyyOck
	eEFTfvuTHq6J8R/1VpJVKKMjy8qdeXrFaDUxtGCGrY41imTyurVhJOI7C8sAqNMiMa6pcw+/G1nN3
	y6S1sNt1M9yN0VJxyHeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieaBy-0005Yg-MQ; Tue, 10 Dec 2019 07:44:22 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieaBs-0005YF-HM; Tue, 10 Dec 2019 07:44:18 +0000
Received: from marcel-macbook.fritz.box (p4FF9F0D1.dip0.t-ipconnect.de
 [79.249.240.209])
 by mail.holtmann.org (Postfix) with ESMTPSA id 9618DCED2A;
 Tue, 10 Dec 2019 08:53:16 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
Subject: Re: [PATCH v2 1/1] ARM: dts: rockchip: Add brcm bluetooth for
 rk3288-veyron
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <1788857.Va9C3Z3akr@diego>
Date: Tue, 10 Dec 2019 08:44:05 +0100
Message-Id: <B42F187B-C289-4140-841D-D1BF219E72D7@holtmann.org>
References: <20191127223909.253873-1-abhishekpandit@chromium.org>
 <20191127223909.253873-2-abhishekpandit@chromium.org>
 <61639BAF-5AA0-4264-906F-E24E2A30088D@holtmann.org>
 <1788857.Va9C3Z3akr@diego>
To: =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-Mailer: Apple Mail (2.3601.0.10)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_234416_725869_212C9257 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-rockchip@lists.infradead.org,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 BlueZ <linux-bluetooth@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heiko,

>>> This enables the Broadcom uart bluetooth driver on uart0 and gives it
>>> ownership of its gpios. In order to use this, you must enable the
>>> following kconfig options:
>>> - CONFIG_BT_HCIUART_BCM
>>> - CONFIG_SERIAL_DEV
>>> 
>>> This is applicable to rk3288-veyron series boards that use the bcm43540
>>> wifi+bt chips.
>>> 
>>> As part of this change, also refactor the pinctrl across the various
>>> boards. All the boards using broadcom bluetooth shouldn't touch the
>>> bt_dev_wake pin.
>> 
>> so have these changes being merged?
> 
> not yet
> 
> Doug wanted to give a Reviewed-by, once the underlying bluetooth
> changes got merged - not sure what the status is though.

the Bluetooth changes have been merged into net-next.

Regards

Marcel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
