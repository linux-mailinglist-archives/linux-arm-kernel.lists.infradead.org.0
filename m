Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 140B21B0961
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:33:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gR0hiuLo9gXAtUFpSRpfFEHLNYe5poC1AjgRwiwJGYE=; b=IpBjf4qsOzv1CM
	tlnZKZ6sNQXtoWK9WWtmVShrtClk6dAHtthfyClE2WCc0+enGPHcFAD3HOgrAPH9wmKj1zlotWH/B
	OThIamHqQD+486nfwiIcrkFIYH1hvOVoZzP7MUq3ZnzDi79ZXMPbPdF+MnjqGIU4bZ+PU0QWQvmzK
	jkDF6V6osLNEzCuR/e0M9U5+1t9V+B7rPe8/d7zGbqvSwJnWedymC3w9Z7wXRrkKcuKKrujfHx38J
	xidJBVJhb4gkZW4vvvwZ80omx0Tbq6/AEI6WhfazvQe/w6xdmGXf18+DDYp0h+CzmWhuH48tY49Qw
	J0NVyNm8i1O9bHtHdVgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQVcN-0000wU-P9; Mon, 20 Apr 2020 12:33:43 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVcC-0000ss-KQ
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 12:33:34 +0000
Received: from plaes.org (localhost [127.0.0.1])
 by plaes.org (Postfix) with ESMTPSA id CCE9A40A95;
 Mon, 20 Apr 2020 12:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1587385978; bh=dD6UJxueO7iBXUJ0MYPcRp2vcNvPimi5NJR2GD1gM1U=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=pHC4uN65eK9FrZlif52Y7dJqnVpm/59WYaZQDMSv2CworsbmtUgWCLLJw63uW7CCa
 NRaKKkAAT30qxnEYe2S44AL0KbginlGKs6+yg/JSgw3RUUmSb6n30S7J9AHpYYP/JW
 XSfFlEORgxc42MBi9xx1ud5zA1c1FwBCIkh/PLXG62ZIN8UYfuF08m9yJ47cD/iVCm
 SjoYpBF/EY3FeRvMYE7AjvKCcG0vjoIFLfeXBlhuU30eo9IM5obdRQXXOmzBOfAL/j
 QEKlBuWLji8Vj3e6k7jWE0QNmAIhrvYllmH/RV9plJhx3kThbDA4ckR10tHEfDM4hf
 tZ+IfhX2kx/iQ==
Date: Mon, 20 Apr 2020 12:32:57 +0000
From: Priit Laes <plaes@plaes.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH 0/4] ARM: sun7i: Convert A20 GMAC driver to CCU
Message-ID: <20200420123257.GA18522@plaes.org>
References: <20200417221730.555954-1-plaes@plaes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417221730.555954-1-plaes@plaes.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_053332_892141_C5A0646A 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 18, 2020 at 01:17:26AM +0300, Priit Laes wrote:
> This serie converts Allwinner A20 (sun7i) GMAC driver to CCU
> while still retaining compatibility with existing devicetrees.
> 
> First two patches contain preliminary work which convert
> sun4i/sun7i clock drivers to platform devices and creates regmap
> to access gmac register from the sun7i gmac driver.
> 
> Third patch implements syscon-based regmap to allow driver manage
> its own clock source.
> 
> Fourth patch updates the devicetree and drops the unused clocks.
> 
> While testing the driver I noticed following bugs with the existing
> sun7i gmac driver:
> - driver relies on u-boot for initialization (fixed in this
>   implementation)

Scratch that.. this is actually due to unhandled rx and tx delays,
which I "accidentally" fixed by copying the value BIT(12) from the
u-boot..

> - `systemctl restart networking` fails to bring the link up again.
> 
> 
> Priit Laes (4):
>   clk: sunxi-ng: a10/a20: rewrite init code to a platform driver
>   clk: sunxi-ng: a20: export a regmap to access the GMAC register
>   net: stmmac: dwmac-sunxi: Implement syscon-based clock handling
>   ARM: dts: sun7i: Use syscon-based implementation for gmac
> 
>  arch/arm/boot/dts/sun7i-a20.dtsi              |  36 +----
>  drivers/clk/sunxi-ng/ccu-sun4i-a10.c          | 108 ++++++++++++---
>  .../net/ethernet/stmicro/stmmac/dwmac-sunxi.c | 124 ++++++++++++++++--
>  3 files changed, 206 insertions(+), 62 deletions(-)
> 
> -- 
> 2.25.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
