Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 885E4495D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 01:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kbyqzcJPal80ald1B8G6fD44optEUB1BleR29CgY9fk=; b=VYWry4xTmV17KQ
	l5J4QvAuVto0Q1hSB1DEvKEgm/XDeZDq/jvmqTiljgmWl4T+7avqHXz4iS8sg/cExk/Avhr9aL/mY
	MO1USQBJFbXBjA1ULNj8fr+JMGVUHeKudPABrqvh6KjQUc/qI6JP7vqnL/UdiMLQZUJxLDbMtovhc
	zSLr47XzVmjkeuLmtOPeXkYr5PXoRD3GIbzFW/AqedBLR1dMtp/KuBFKaQKgVpGHsVwxEEMvDK0Vx
	DrbPTSIabInGDHmdPhx6tF0jAjV8ixFl4rZemWGCD451sMGn1iZVo828/k9uPW9WGIpa9/5Xsm5u8
	MmAiGShFbGb8Yb+jNGwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd0zc-0006mg-Fp; Mon, 17 Jun 2019 23:24:52 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd0zT-0006lu-9d
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 23:24:44 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 8BDFB151BE539;
 Mon, 17 Jun 2019 16:24:38 -0700 (PDT)
Date: Mon, 17 Jun 2019 16:24:38 -0700 (PDT)
Message-Id: <20190617.162438.1788457252346173528.davem@davemloft.net>
To: arnd@arndb.de
Subject: Re: [PATCH net-next] net: stmmac: fix unused-variable warning
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190617131327.2227754-1-arnd@arndb.de>
References: <20190617131327.2227754-1-arnd@arndb.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 17 Jun 2019 16:24:39 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_162443_336594_A82FA224 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, linux-kernel@vger.kernel.org,
 alexandre.torgue@st.com, jpinto@synopsys.com, netdev@vger.kernel.org,
 linux@armlinux.org.uk, aaro.koskinen@nokia.com, joabreu@synopsys.com,
 mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 17 Jun 2019 15:13:03 +0200

> When building without CONFIG_OF, we get a harmless build warning:
> 
> drivers/net/ethernet/stmicro/stmmac/stmmac_main.c: In function 'stmmac_phy_setup':
> drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:973:22: error: unused variable 'node' [-Werror=unused-variable]
>   struct device_node *node = priv->plat->phy_node;
> 
> Reword it so we always use the local variable, by making it the
> fwnode pointer instead of the device_node.
> 
> Fixes: 74371272f97f ("net: stmmac: Convert to phylink and remove phylib logic")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
