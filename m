Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA842133BC2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 07:39:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iOVPV71JzO94udVX+g69aiWNxvNWGdrkVVR1C2JOGj8=; b=S9vJ/BLmKtqwby
	2yZJ0CLyL5ZrDVtVAbR2bj0cWHGP6COiipmUi9e2qCp3mmKKqL1iXq99sKol41c2ZdizUwGd3/fX6
	UccIHEKPVujlYsWF4lHCeUTtnUdCX2Dmfh3tTdZrrVsF30AQLaVr1UnGCd4xf6VyVfNn8FkHgPfJY
	OTDi3pEeSohAjMSc0Z1A8TM2hIZviVrD1HMzdhcn3Q6OoNAEi+Zkapzn3ZFxNoDpxGdB62YY7MlhV
	Ik5yyU2eGQyPtXbPCj0HHQ6nsaam1Xbpf0fX2jP77YGSnkCIfwuCtbqwKE13Pm9TqhAjOunT3feH7
	6RUoFNkqciRWXeUklW5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip4zj-0007Ue-23; Wed, 08 Jan 2020 06:39:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip4zX-0007T1-2i
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 06:38:56 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ip4z9-0007YA-Nu; Wed, 08 Jan 2020 07:38:31 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1ip4z6-0001lR-90; Wed, 08 Jan 2020 07:38:28 +0100
Date: Wed, 8 Jan 2020 07:38:28 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: fengping yu <fengping.yu@mediatek.com>
Subject: Re: Resend [PATCH V2] dt-bindings:input:keyboard:add MediaTek keypad
 controller binding
Message-ID: <20200108063828.6t4r7wkkptfdnvxj@pengutronix.de>
References: <20200108062923.14684-1-fengping.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108062923.14684-1-fengping.yu@mediatek.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:37:17 up 53 days, 21:55, 46 users,  load average: 0.03, 0.05, 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_223855_123342_7A85954E 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 wsd_upstream@mediatek.com, Stefan Agner <stefan@agner.cn>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>, YueHaibing <yuehaibing@huawei.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 linux-input@vger.kernel.org, Thierry Reding <treding@nvidia.com>,
 Valentin Schneider <valentin.schneider@arm.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Maxime Ripard <mripard@kernel.org>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, Aisheng Dong <aisheng.dong@nxp.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

thanks for your patches. Please can you write something into the cover
letter if you use it?

Regards,
  Marco

On 20-01-08 14:29, fengping yu wrote:
> 
> fengping.yu (2):
>   Documentation: devicetree: bindings: input
>   drivers: input: keyboard
> 
>  .../devicetree/bindings/input/mtk-kpd.txt     |  52 +++
>  arch/arm64/configs/defconfig                  |   1 +
>  drivers/input/keyboard/Kconfig                |   8 +
>  drivers/input/keyboard/Makefile               |   1 +
>  drivers/input/keyboard/mtk-kpd.c              | 357 ++++++++++++++++++
>  5 files changed, 419 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.txt
>  create mode 100644 drivers/input/keyboard/mtk-kpd.c

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
