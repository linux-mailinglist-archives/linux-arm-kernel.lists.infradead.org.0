Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A87142697
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 10:06:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EB+3185IstF72kRKn+Jn/vo1t4AB4z45KClhLjUSeh0=; b=h2O7WdSs+XVxschFOJq5d52bj
	tdrE1U6od9bGLuZ2vNWqaPD4DebUyzpzmRpPQLIY29Go1o7cp+DD+TJefwHzWDX8hsTfRw3XO92lj
	RSABB9JljbXkGuy+bjSry0mBbz4eNJUCkcwDU/ikZkvu158YYuZR7BDWB1wX4nPrFH1l4YBzMlYD0
	oDvnbZgmGyYlMCnVKIOzGjs+8mccAQBBYRq4GIE1ore26wi1lW1CUBq0NHh+oj6uDTqsj5IdtKT6Q
	G0VKWJWQ2nSAYu76uKDbvFM3lylEO4QSrENrnxh3VxhHJ3CRB54udENZiHVa6eDJmuNddFUnVGkJT
	4r/zbDbcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itT0V-0001fZ-IV; Mon, 20 Jan 2020 09:06:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itT0H-0001db-7p; Mon, 20 Jan 2020 09:05:54 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A7E862073D;
 Mon, 20 Jan 2020 09:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579511148;
 bh=hOGKfcLdv9OKkNbqFbJrj6fJFh85PVPo/RJsKujWiAo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=KbYBd1i7M1f6Yi0KbjFcHi7YS7/6lzCyR+2JxRRHfgmnMVia5eOQJ2GGnK/JBx0LP
 3gAE456ROqcf1XhKUVbR3cd/UJCKZIDyOj8x5UaTUH1Kpmdulkkbwe6veIF9ydwboF
 S+sYd70GT8p0L9wX4178FSqtf7Fn62N4DhyxDuRc=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1itT0E-000DbN-Tx; Mon, 20 Jan 2020 09:05:47 +0000
MIME-Version: 1.0
Date: Mon, 20 Jan 2020 10:05:46 +0100
From: Marc Zyngier <maz@kernel.org>
To: Qianggui Song <qianggui.song@amlogic.com>
Subject: Re: [PATCH v2 0/4] irqchip/meson-gpio: Add support for Meson-A1 SoC
In-Reply-To: <20191216123645.10099-1-qianggui.song@amlogic.com>
References: <20191216123645.10099-1-qianggui.song@amlogic.com>
Message-ID: <8e78c2728bec3601cb9a6615a7f5b103@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: qianggui.song@amlogic.com, tglx@linutronix.de,
 jason@lakedaemon.net, khilman@baylibre.com, narmstrong@baylibre.com,
 jbrunet@baylibre.com, jianxin.pan@amlogic.com, xingyu.chen@amlogic.com,
 hanjie.lin@amlogic.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org, mark.rutland@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_010549_301647_04D219EE 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Hanjie Lin <hanjie.lin@amlogic.com>, Jason Cooper <jason@lakedaemon.net>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-16 13:36, Qianggui Song wrote:
> This patchset adds support for GPIO interrupt controller of Meson-A1 
> SoC
> which use new register layout, two main things are done in the patchset
> 1. rework current driver
> 2. add a1 support
> 
> changes since v1 at [0]
>  - place initial macro after the definition of param structure
>  - make common data as parameter of initial macro
>  - add dummy init function for previous chips
> 
> [0]https://lore.kernel.org/linux-amlogic/20191206121714.14579-1-qianggui.song@amlogic.com
> 
> Qianggui Song (4):
>   dt-bindings: interrupt-controller: New binding for Meson-A1 SoCs
>   irqchip/meson-gpio: rework meson irqchip driver to support meson-A1
>     SoCs
>   irqchip/meson-gpio: Add support for meson a1 SoCs
>   arm64: dts: meson: a1: add gpio interrupt controller support
> 
>  .../amlogic,meson-gpio-intc.txt               |   1 +
>  arch/arm64/boot/dts/amlogic/meson-a1.dtsi     |   9 ++
>  drivers/irqchip/irq-meson-gpio.c              | 137 ++++++++++++++----
>  3 files changed, 122 insertions(+), 25 deletions(-)

I've queued the first 3 patches. The last one can go taken via arm-soc.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
