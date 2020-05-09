Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 089061CBFFE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 11:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ueYi8/6/O2z3LoCv8OQNTJVUo6jhtGj2Xv9zNMo7ro=; b=Mtng1mZK8bVbBP
	H9hIW4ycl0KLpfJSap0dwXVs3qEc5TpBMK+eLOON1L+qBH8XgLXhdxKyPmRB36R6QNdjsn642HOXW
	o61W1xVaFWd1OodMfhgCYvm+nuIjczEeGam6+By2boD1fPIXAnUUkvdQFu2pJvLZ1+aP9/iLoHggE
	Ou6g/6DxY3Ysh32rZ839kB+gyT6obyssFeuXXpP1pR/aZF7nVw+tiEENtXc5gjKoXBlQxYBXgtTpz
	WgoUEE6ajqBQlmDUGXYep/OENmRhkrWUzAGsHepH3VNPBXY2GU4yar2WiAZYhrEcAvmthYzmQvQPm
	mheGal243JxO3TqxV2Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXLxF-0007I6-TA; Sat, 09 May 2020 09:39:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXLx7-0007Gt-Sg
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 09:39:27 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jXLwx-0002uz-Fz; Sat, 09 May 2020 11:39:15 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1jXLww-0005mD-2O; Sat, 09 May 2020 11:39:14 +0200
Date: Sat, 9 May 2020 11:39:14 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Fengping Yu <fengping.yu@mediatek.com>
Subject: Re: [PATCH v6] Add mtk matrix keypad driver for keypad on MTK SoC
Message-ID: <20200509093914.qidkjwkp32gn6td6@pengutronix.de>
References: <20200509020458.8359-1-fengping.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509020458.8359-1-fengping.yu@mediatek.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:36:19 up 176 days, 54 min, 170 users, load average: 0.06, 0.07, 
 0.01
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_023925_928062_3B4B0DE9 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-input@vger.kernel.org,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yu,

sorry if this is not your first name..
Something went wrong with you v6 since you are sending diffs to files
that are not present in input-master/next.

Regards,
  Marco

On 20-05-09 10:04, Fengping Yu wrote:
> Change since v5:
> - remove unnecessary include files
> - remove redundant comments and newlines
> - use local irqnr variable instead of member variable of mtk_keypad struct
> - use regmap to read and write registers
> - drop kpd_get_dts_info directly into probe function
> - use devm_add_action_or_reset to avoid goto error handling when do clk setting
> - use devm_request_threaded_irq api to request irq
> - remove platform_set_drvdata
> 
> fengping.yu (3):
>   dt-bindings: Change keypad documentation schema
>   drivers: input: keyboard: Add mtk keypad driver
>   configs: defconfig: Add CONFIG_KEYBOARD_MTK_KPD=y
> 
>  .../devicetree/bindings/input/mtk-kpd.txt     |  61 -------
>  .../devicetree/bindings/input/mtk-kpd.yaml    |  93 +++++++++++
>  arch/arm64/configs/defconfig                  |   1 +
>  drivers/input/keyboard/Kconfig                |   5 +-
>  drivers/input/keyboard/mtk-kpd.c              | 151 ++++++++----------
>  5 files changed, 163 insertions(+), 148 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.txt
>  create mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.yaml
> 
> --
> 2.18.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
