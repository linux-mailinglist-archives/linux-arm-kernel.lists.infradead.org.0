Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C193EF0404
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 18:20:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tDsvhe5hSMtJ9rlW8uIIXC5IpKNFCjkH60ztO7YyGFE=; b=GfCRJBwQd1t+Vd
	ziCkhtDkCaMVP6r+me3VSx7ubJW16qghVvN1ykCrKZe5hgLesqFhkRAz4HL/W3yx2hsMXmkWXlgAB
	6Hilqo98oS4iExv755011bKBgje5yDXQYMOW2jyWEwUL8xgG0nyw7iAHL5ZG4GdMtj92BC/tpoQyI
	iGOt1qsJeV+dU0uzb10AGAzo75QypO0AYq488LiVAMGID6yFA9eI8ik1ep2/puQTgKPpcWYDrNUNq
	C+sh5uWRxuDD63IJkYSwh/LZUGXPLY+e+WvMvknmaZxUsQaNrW3IZQg3oVrSPbTJ6pg8ldonfC/bL
	NTgZWtdeLZr0xcytEd8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS2VK-0006uc-9S; Tue, 05 Nov 2019 17:20:30 +0000
Received: from smtp2.axis.com ([195.60.68.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS2VB-0006tE-Gu
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 17:20:23 +0000
IronPort-SDR: F0oPtGUTmrMxkUzDVCVrZr5h34rmDSMXw6pi1MHjjcupDP4CkTU2+3tJPGZLl1JJ9ecwhWzveC
 BMO1xkLjJFp7T9CrU0hOck0ednRvpCS/YQLSbKjG02276SPboa0R9WDfKlw+Un695jXNFs1G9R
 OfjS9zAmL5jq0NsQ9DXJKTbZEvCCSDrYYgSBpo05VOTnMdSOOudHPefQXhoi3eHQTMokOu0jFq
 iKUOA5UCo7bRocKaqM9vOD9Ki8G6gvd5csLagUmJkRxI52GPyu3J7dZX/qods0VdOqA/L2Vapy
 o9E=
X-IronPort-AV: E=Sophos;i="5.68,271,1569276000"; 
   d="scan'208";a="2106277"
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bes.se.axis.com
Date: Tue, 5 Nov 2019 18:20:16 +0100
From: Jesper Nilsson <jesper.nilsson@axis.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v1 3/7] arm: dts: Use IRQ flags for legacy PCI IRQ
 interrupts
Message-ID: <20191105172016.iq4mx7qa4c5sregk@axis.com>
References: <20191104163834.8932-1-andrew.murray@arm.com>
 <20191104163834.8932-4-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104163834.8932-4-andrew.murray@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_092021_892543_8EBDD30C 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Santosh Shilimkar <ssantosh@kernel.org>, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@axis.com, Jesper Nilsson <jespern@axis.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Lars Persson <larper@axis.com>, linux-arm-msm@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Tsahee Zidenberg <tsahee@annapurnalabs.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 04:38:17PM +0000, Andrew Murray wrote:
> Replace magic numbers used to describe legacy PCI IRQ interrupts
> with #define.

Looks good,

Acked-by: Jesper Nilsson <jesper.nilsson@axis.com>

> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>  arch/arm/boot/dts/alpine.dtsi              |  6 ++--
>  arch/arm/boot/dts/artpec6.dtsi             | 10 +++---
>  arch/arm/boot/dts/gemini-dlink-dir-685.dts | 34 ++++++++++----------
>  arch/arm/boot/dts/gemini-sl93512r.dts      | 34 ++++++++++----------
>  arch/arm/boot/dts/gemini-sq201.dts         | 34 ++++++++++----------
>  arch/arm/boot/dts/gemini-wbd111.dts        | 34 ++++++++++----------
>  arch/arm/boot/dts/gemini-wbd222.dts        | 34 ++++++++++----------
>  arch/arm/boot/dts/imx6qdl.dtsi             | 10 +++---
>  arch/arm/boot/dts/imx6sx.dtsi              | 10 +++---
>  arch/arm/boot/dts/integratorap.dts         | 36 ++++++++++++----------
>  arch/arm/boot/dts/keystone-k2e.dtsi        | 11 ++++---
>  arch/arm/boot/dts/keystone.dtsi            | 10 +++---
>  arch/arm/boot/dts/qcom-apq8064.dtsi        | 10 +++---
>  arch/arm/boot/dts/qcom-ipq4019.dtsi        | 10 +++---
>  arch/arm/boot/dts/versatile-pb.dts         | 36 ++++++++++++----------
>  15 files changed, 162 insertions(+), 157 deletions(-)

/^JN - Jesper Nilsson
-- 
               Jesper Nilsson -- jesper.nilsson@axis.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
