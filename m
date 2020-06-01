Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4151EA179
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 12:03:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:To:Subject:
	Message-ID:From:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pCWTsyef3OLwrjQ1GA8J6OyxilWZPEkpk9o6IUbOUzQ=; b=l0fNNiPdTafjsI
	wxX8yD0BBz6KGWAJ+5UaptFlddmrhXaPwieFh/aXZTsVb/qq2FsObXtKiCpkzTQ0Bg74qJiQrbu9/
	ffptsNC51IYTQdCp+GEGp0r3GDd97A5FauDvXlfIYOrro7x9G/+qDHsByqtNNQCcvXN7V4k3fiIt7
	Xx0aqWj0mB4RSmfnR+wUcz4OERA7VnT4OmDKgPf84IUN2t5AYHS0wNy8WbSla80+cNgl2LgO8cApg
	dwAGSx1hvmNyLQWTskGfgDmS8HZZRJJpJ+EnAD3j5iW7ttnhXS+rtR/W8lVN1Euddc7Lagzuy6ufz
	rYmcf7ZgrCmqcNrjB8/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfhHV-0004w4-K3; Mon, 01 Jun 2020 10:02:57 +0000
Received: from piie.net ([80.82.223.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfhHP-0004vX-Fw; Mon, 01 Jun 2020 10:02:53 +0000
Received: from mail.piie.net (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
 (Client did not present a certificate)
 by piie.net (Postfix) with ESMTPSA id 8D0C3163C;
 Mon,  1 Jun 2020 12:02:43 +0200 (CEST)
Mime-Version: 1.0
Date: Mon, 01 Jun 2020 10:02:43 +0000
X-Mailer: RainLoop/1.11.3
From: "=?utf-8?B?UGV0ZXIgS8Okc3RsZQ==?=" <peter@piie.net>
Message-ID: <23327363eae19d051b7c960d3cbc1523@piie.net>
Subject: Re: [PATCH v4 00/11] Stop monitoring disabled devices
To: "Andrzej Pietrasiewicz" <andrzej.p@collabora.com>,
 linux-pm@vger.kernel.org, linux-acpi@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
In-Reply-To: <20200528192051.28034-1-andrzej.p@collabora.com>
References: <20200528192051.28034-1-andrzej.p@collabora.com> <Message-ID:
 <4493c0e4-51aa-3907-810c-74949ff27ca4@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_030251_816920_5EC90CA3 
X-CRM114-Status: UNSURE (   2.91  )
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
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Vishal Kulkarni <vishal@chelsio.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Allison Randal <allison@lohutok.net>, NXP Linux
 Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>, Zhang
 Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>, Johannes Berg <johannes.berg@intel.com>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido
 Schimmel <idosch@mellanox.com>, Baolin Wang <baolin.wang7@gmail.com>,
 Jiri Pirko <jiri@mellanox.com>, Orson Zhai <orsonzhai@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Kalle Valo <kvalo@codeaurora.org>,
 Support Opensource <support.opensource@diasemi.com>,
 Enrico Weigelt <info@metux.net>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Sebastian Reichel <sre@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?utf-8?B?TmlrbGFzIFPDtmRlcmx1bmQ=?= <niklas.soderlund@ragnatech.se>,
 Shawn Guo <shawnguo@kernel.org>, "David S .
 Miller" <davem@davemloft.net>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

28. Mai 2020 21:21, "Andrzej Pietrasiewicz" <andrzej.p@collabora.com> schrieb:

[...]

> This v4 series addresses those concerns: it takes a more gradual
> approach and uses explicit tzd state initialization, hence there are more
> insertions than in v3, and the net effect is -63 lines versus -139 lines
> in v3.

I'd like to test it.  Which git repo / branch do you base this series of patches on?

[...]

> base-commit: 351f4911a477ae01239c42f771f621d85b06ea10

Can't find this hashref anywhere.

-- 
thanks
--peter;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
