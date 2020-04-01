Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE89119B54C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 20:21:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UtH9z4NfHnxsGXhKKaHa+vOh23X7QvyTcU2bEzpuiVE=; b=MjXi2A9ZiShhHz
	xoZeOH4UALikJP1TtEN2gZrSQMCjXvwn17pFVt7UPc/GgBDmOEesYgeVCPeyfQLK0PdqKtr6bucQD
	DdaiBnwc1YVQ6n3iLh5pyxtVG0iE7L8rOZjRANQ9GM5bzAcDez1l7LQ/446uYyZEF96p/tgnmC/d/
	qX3d3hKzsLDIhUEvj92dhn0X2ocZcnoqBQHWsY3SzoW52xlEab1/XAPdg5WYYi+WEbWK95UA+atN8
	izBnxq6pN4rbj4AZE9YiOYpnbh8xMB8w4NNHMpnq8knV05NbTxWBRWePLX5+RS0McWcz4NKSmm1zF
	OV6rMO1lCmI3yxbKWCoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJhzq-0000BI-DK; Wed, 01 Apr 2020 18:21:50 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJhzl-0000Ae-DE
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 18:21:46 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 209BC11D69C3E;
 Wed,  1 Apr 2020 11:21:37 -0700 (PDT)
Date: Wed, 01 Apr 2020 11:21:36 -0700 (PDT)
Message-Id: <20200401.112136.685481342101422062.davem@davemloft.net>
To: o.rempel@pengutronix.de
Subject: Re: [PATCH] net: phy: at803x: fix clock sink configuration on
 ATH8030 and ATH8035
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200401095732.23197-1-o.rempel@pengutronix.de>
References: <20200401095732.23197-1-o.rempel@pengutronix.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 01 Apr 2020 11:21:38 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_112145_445461_4EEC2B43 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, linux@armlinux.org.uk, lgirdwood@gmail.com,
 philippe.schenker@toradex.com, robh+dt@kernel.org, broonie@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, david@protonic.nl,
 shawnguo@kernel.org, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  1 Apr 2020 11:57:32 +0200

> The masks in priv->clk_25m_reg and priv->clk_25m_mask are one-bits-set
> for the values that comprise the fields, not zero-bits-set.
> 
> This patch fixes the clock frequency configuration for ATH8030 and
> ATH8035 Atheros PHYs by removing the erroneous "~".
> 
> To reproduce this bug, configure the PHY  with the device tree binding
> "qca,clk-out-frequency" and remove the machine specific PHY fixups.
> 
> Fixes: 2f664823a47021 ("net: phy: at803x: add device tree binding")
> Reported-by: Russell King <linux@armlinux.org.uk>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Applied with Reported-by: fixed and queued up for -stable, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
