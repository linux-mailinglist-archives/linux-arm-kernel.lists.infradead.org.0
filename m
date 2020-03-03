Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969581774FF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 12:06:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UB4QGz/9U45G3hR2w3FB/au0EG+7jhAWz8dHoaUEbBo=; b=TzvkFwo5EFO9sE
	RqG86SgMtGao0qG2NHJZD6ThfBvtCO0q2ehf+xI+RpTRRaLvDFJaF+R9H1D8wT0Kll3fb0nV5VZOZ
	Dd/TXH+K9vTW1lHuW1AFYFwV3YrSyGlmtxyWtS47vD8vqyW6K6YSr7+O1IppGxJVsJw+P1NHQ5V4q
	vlALF9VS7eNQ5Kwcyz+JS2G8uYfX1rEzRisboIPZDkj2sRt82go00HOzx+kfbawdGKN3/hS1ZXKo3
	8bhM2meY4m/VFIcm7paOBhkqphbzp2ixfSFSt7ggH3qzZcN1+JqhRkrfgubLOs6DhfOpsUd9XgcHG
	wTH/odcaxDmIl3KaMhdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j95N5-0000hw-Gz; Tue, 03 Mar 2020 11:05:55 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j95My-0000hE-AT
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 11:05:50 +0000
Received: from localhost (lfbn-lyo-1-16-97.w86-202.abo.wanadoo.fr
 [86.202.111.97])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 148C2240005;
 Tue,  3 Mar 2020 11:02:16 +0000 (UTC)
Date: Tue, 3 Mar 2020 12:02:16 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2 7/8] rtc: imx-sc: Align imx sc msg structs to 4
Message-ID: <20200303110216.GG4803@piout.net>
References: <cover.1582216144.git.leonard.crestez@nxp.com>
 <13404bac8360852d86c61fad5ae5f0c91ffc4cb6.1582216144.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <13404bac8360852d86c61fad5ae5f0c91ffc4cb6.1582216144.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_030548_499292_E7B9BE33 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 Alessandro Zummo <a.zummo@towertech.it>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stefan Agner <stefan@agner.ch>,
 linux-clk@vger.kernel.org, Franck LENORMAND <franck.lenormand@nxp.com>,
 linux-gpio@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/02/2020 18:29:38+0200, Leonard Crestez wrote:
> The imx SC api strongly assumes that messages are composed out of
> 4-bytes words but some of our message structs have odd sizeofs.
> 
> This produces many oopses with CONFIG_KASAN=y.
> 
> Fix by marking with __aligned(4).
> 
> Fixes: a3094fc1a15e ("rtc: imx-sc: add rtc alarm support")
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---
>  drivers/rtc/rtc-imx-sc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
