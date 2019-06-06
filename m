Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1098369D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 04:11:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tS8vrlK16qK2n9jRxJVkfMUw6J9cMLhjzerLkh0TYLQ=; b=PI16Te1OIqn6Ny
	RiPifIluSdOyRhsNKfRzKIiILn+BDHV8Tx1giknipJPwYSPLHgd5oh6Hc3P/rvVcvfQ5jTZysNJa1
	/ZdmWg25BmtbuOxo5RLoXnIHi0dUAnn8O6UV/FIASGKUDVTfq7mxlbRV94Cd/EIztyejFWzsfGPkD
	FvxKcHW+rKMiLeaq+2nXqqpVw0YCk/5KnOxuuY8AUkyatbRrpgsByVqumqJVNws6i3hB2Y0/+ox2F
	R52JsZzTJpigyQgRq+uyMqNXw+8GcE75zn5nNBGqRV1nllcztWaq9KSw0kiYpq6R1rZfjiT1cye0u
	Y6Wu6x4EOJSXvRdE8igQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYhrs-0000if-UC; Thu, 06 Jun 2019 02:11:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYhrm-0000iH-5I
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 02:10:59 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 943F920717;
 Thu,  6 Jun 2019 02:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559787057;
 bh=1wV4ExVvlN5EgzNFrCwIfBYS4g4614HuuxSdiSYaE/s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iaBgjkWHvEUB8xTxgpH7CYMJSqAEFJfcmI6o0nb7AXcneh+zDM86Ycr7Dgq2kb6yz
 mmwwCHGq64fFLsorar9SPLF5AZaKCC1oM+7C3300P/f7k+roVd1FB3O9wi4YsBL8w9
 X2EyQoBRKcUrQF+WyBrJQ4Y6VrM9A4SyL2ECfOYQ=
Date: Thu, 6 Jun 2019 10:10:32 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2] ARM: configs: Remove useless UEVENT_HELPER_PATH
Message-ID: <20190606021027.GV29853@dragon>
References: <1559636093-26005-1-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559636093-26005-1-git-send-email-krzk@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_191058_222295_2305B3D3 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mans Rullgard <mans@mansr.com>, linux-aspeed@lists.ozlabs.org,
 Tony Lindgren <tony@atomide.com>, Liviu Dudau <liviu.dudau@arm.com>,
 linux-kernel@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>,
 Ludovic Desroches <ludovic.desroches@microchip.com>, arm@kernel.org,
 Joel Stanley <joel@jms.id.au>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, Arnd Bergmann <arnd@arndb.de>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, Sascha Hauer <s.hauer@pengutronix.de>,
 Vladimir Zapolskiy <vz@mleia.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Andrew Jeffery <andrew@aj.id.au>, Dinh Nguyen <dinguyen@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 10:14:53AM +0200, Krzysztof Kozlowski wrote:
> Remove the CONFIG_UEVENT_HELPER_PATH because:
> 1. It is disabled since commit 1be01d4a5714 ("driver: base: Disable
>    CONFIG_UEVENT_HELPER by default") as its dependency (UEVENT_HELPER) was
>    made default to 'n',
> 2. It is not recommended (help message: "This should not be used today
>    [...] creates a high system load") and was kept only for ancient
>    userland,
> 3. Certain userland specifically requests it to be disabled (systemd
>    README: "Legacy hotplug slows down the system and confuses udev").
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Acked-by: Geert Uytterhoeven <geert+renesas@glider.be>
> 
> ---
> 
> Changes since v2:
> 1. Remove unrelated files.
> 2. Add Geert's ack.
> ---
...
>  arch/arm/configs/imx_v4_v5_defconfig      | 1 -

Acked-by: Shawn Guo <shawnguo@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
