Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 159CC14B2AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 11:35:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:
	Subject:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=cUonX275bPqXBy6qhvcfVY01oFdOK0nWXteHZIQlDYg=; b=EIikCEours2N1U
	TOEkxKFMotaTHGfKmj7Veeb8mTHk/ok93rEGjNG2dsVkV98Mwav1VQs3Ps49u6bazgclLJvNGh5Kv
	diDuGP+DI1Rt91HrW/OLRITnFlRPi4zqgTL44zt/5pnCVEX2xk/cE6IslWP9b/+hk9Y9TsXZHR9BT
	vxuo0joB1nLXLO5stVgAVBQkM49kCgb0vuMCnJKRA3JGKRUU42/ym3bRJ3A7+8lnpIkeDBI257psI
	HXf4AixEcd9wP7k/cuPxP5UQ2vmhHxznZAZx9WC6TScpWZC+lCjqIFvcvNct0bh4jwg8iOlksEcpf
	/Td6Yeona7/1qkUZexYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwOCw-0002rZ-Pk; Tue, 28 Jan 2020 10:34:58 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwOCj-0002qw-5s
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 10:34:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 51BA8ACA3;
 Tue, 28 Jan 2020 10:34:43 +0000 (UTC)
In-Reply-To: <1580148908-4863-1-git-send-email-stefan.wahren@i2se.com>
Date: Tue, 28 Jan 2020 11:17:17 +0100
Subject: Re: [RFC PATCH 0/4] pinctrl: bcm2835: Add support for all BCM2711
 GPIOs
From: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
To: "Stefan Wahren" <stefan.wahren@i2se.com>, "Florian Fainelli"
 <f.fainelli@gmail.com>, "Linus Walleij" <linus.walleij@linaro.org>, "Ray
 Jui" <rjui@broadcom.com>, "Scott Branden" <sbranden@broadcom.com>
Message-Id: <C07CI3G3XJXI.3C8TI4AHX37K2@linux-9qgx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_023445_375413_2A634CE1 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon Jan 27, 2020 at 7:15 PM, Stefan Wahren wrote:
> The BCM2711 supports 58 GPIOs [1] by using the existing BCM2835 GPIO
> registers
> completely. So there is no need to change the binding.
>
> Patch 1 and 2 prepare the pinctrl driver to be extended to 58 GPIOs in
> Patch 3.
> I didn't want to squash them in order to make review as easy as
> possible.
> The final patch 4 assigns all SoC GPIOs a label as we already did for
> the older Raspberry Pi boards.
>
> [1] -
> https://github.com/raspberrypi/linux/issues/3101#issuecomment-573092294
>
> Stefan Wahren (4):
> pinctrl: bcm2835: Drop unused define
> pinctrl: bcm2835: Refactor platform data
> pinctrl: bcm2835: Add support for all GPIOs on BCM2711
> ARM: dts: bcm2711-rpi-4-b: Add SoC GPIO labels
>
> arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 74 ++++++++++++++++++++++++
> drivers/pinctrl/bcm/pinctrl-bcm2835.c | 106
> ++++++++++++++++++++++++++--------
> 2 files changed, 156 insertions(+), 24 deletions(-)

Apart from the review, I gave it a test on an RPi4 and RPi3b, looks good to me.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
