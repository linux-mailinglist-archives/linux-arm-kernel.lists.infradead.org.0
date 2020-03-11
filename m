Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D17181246
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 08:47:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=82eT/wa0v4IOMQRlvHhMsdBI+DIGfg6ryJYSnk1akAg=; b=edgPt2s4xucbaI
	8dF1cs6Xa5TebT/Ts6TTHPwPXK7Zgqx7uKV7x1Fw8ZAx2brMfeKCqUM9BzhMSIzKykvAuaMu/0kmj
	g/SeIV81ToqlZOyIvwUzOaCGJfW2xcboYR/xxUCw6rEahKd77z26Om+vvBCAuYjulEgLG18tvy01c
	ktXEzVtMnQxS4UTHr6ltDN8Zw4xcacY/m/CfJdWD1zGYQqJYAvzMgKUQiJ4c7z4pQag/qwGV659XL
	c1o0TjP+Gi1cvJfj8h+yGkHH8KZIyKtTN33BvKvHwn8VisdvKPP/YpSGUGMnS7GEVxaHlqKRnkUkd
	7MSaxgTWzJlWhXLLOYNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBw4y-00077c-JX; Wed, 11 Mar 2020 07:47:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBw4R-0006zt-Cx
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 07:46:28 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B27B9206B7;
 Wed, 11 Mar 2020 07:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583912786;
 bh=wPWavU0XnNFcX/SZ6TFjnJus+JRvVZy3+xSxDbg/boM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h+4oCQZiitlQdZsnfxzykvSh+zavohpJ0bhv88o/Z8aQdiDBJPrjQ6u9vn/ze5HZy
 bcDa55DQjSL/qM6V0RtxfCMBcc4+qv7LE5FC34a2UYQppOJosBWSzFS6RyKS481isn
 O9wTYS+JNCD+0gBBv9SFTHBEC3aAr6VR94ZM/XDk=
Date: Wed, 11 Mar 2020 15:46:18 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH] ARM: dts: imx6qdl-sr-som-ti: indicate powering off wifi
 is safe
Message-ID: <20200311074617.GU29269@dragon>
References: <E1j7I7v-0004dS-5u@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1j7I7v-0004dS-5u@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_004627_467071_A9CCE0A0 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 12:18:51PM +0000, Russell King wrote:
> We need to indicate that powering off the TI WiFi is safe, to avoid:
> 
> wl18xx_driver wl18xx.2.auto: Unbalanced pm_runtime_enable!
> wl1271_sdio mmc0:0001:2: wl12xx_sdio_power_on: failed to get_sync(-13)
> 
> which prevents the WiFi being functional.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
