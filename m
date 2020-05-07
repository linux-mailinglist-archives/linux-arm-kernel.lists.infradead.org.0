Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B92501C982F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WNxRt5oI0hQKx4XqfAM7ZjGs87h05D39UsyjHf2vnA0=; b=YYCwzacYuDQpyQ
	WW5+pBCCwYno4KDyRKM5IR5QFuqCQQTQR3XpAqH9QIwubCLbA/Scr1++l1kN9oHU9wwae60jIaM+R
	w+t8t/oonI0H9AgeTX4i10bZtMlakojAde4gyoGYkDHwugFVmv/go9rEtqlX9C8z1eOuCaCfBBhGl
	mlUsQDq/Q23jPATC3p2yZuEDaMnfSRUuvRJT2JuJJ4gsnRsCPezxJCiVElOrZd3ithHiqeyVMBVW/
	dQs+M8t7ShH0/M8Zy+7hnMhuyNzL1kL25WyqMOxAR3SDgD0KSmoMjXD2/ibi0EEIqbEQgIcPeupgN
	Q+dDFCyrjEJWx6NGRjig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkaa-0007IO-BD; Thu, 07 May 2020 17:45:40 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkaH-00079s-Pw; Thu, 07 May 2020 17:45:26 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 13D1A1C0257; Thu,  7 May 2020 19:45:20 +0200 (CEST)
Date: Thu, 7 May 2020 19:45:19 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Xing Zhang <Xing.Zhang@mediatek.com>
Subject: Re: [PATCH v1] Add support for MediaTek regulator vibrator driver
Message-ID: <20200507174519.GD1216@bug>
References: <20200429081759.26964-1-Xing.Zhang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429081759.26964-1-Xing.Zhang@mediatek.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_104522_239888_1AF1C806 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, linux-leds@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

> This patchset add regulator vibrator driver for MTK Soc. The driver 
> controls vibrator through regulator's enable and disable.

We'd prefer not to have vibrators in led subsystem.

> 
> Xing Zhang (3):
>   dt-bindings: add regulator vibrator documentation
>   arm64: mediatek: Add regulator vibrator support
>   Vibrator: Add regulator vibrator driver
> 
>  .../bindings/leds/regulator-vibrator.txt      |  39 ++
>  arch/arm64/configs/defconfig                  |   1 +
>  drivers/leds/Kconfig                          |  10 +
>  drivers/leds/Makefile                         |   1 +
>  drivers/leds/regulator-vibrator.c             | 450 ++++++++++++++++++

OTOH, connecting LED to regulator might make some sense. I can take the driver with
vibrator functionality stripped, provided it is named the usual way...

Best regards,
										Pavel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
