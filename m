Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC85200076
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 05:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZnVqVmFGAfvqRs4AMdrIGwy7TKF4t3m6L+32uxoez8=; b=mMqO52LY2aZvwD
	oCU1nKFRltnSNuWAYFWaIP67KUQYjWUFVT8Ynj7MCKU+iO9lDRfywbP7/vRsUlFXuCkv7WQKK9RBp
	crk8aWsrmhMt4jbq6wN7Gs2RL/0LQ6YiR9gzQ2Bcw7hifWR4Cqpr6xNDivFJEE7ezLoql+K2+0SY9
	cW6rnz25+2R1CXhk/8lhmJWeVo4mt7GwnGrpxDQvh4sUWuCkBwpRsAFX6USn9ulcGqVcHExhUJmX+
	bStlLQcXJoYAxOchBSl3SXy57DmJUjTG1GYiXDY0f/9WsySZxwl9dxPL1isTulSfVsqxdpQWp04mv
	lc24csfc1rlfS++HHWsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm7Gn-0007uc-EJ; Fri, 19 Jun 2020 03:00:45 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm7GO-0007me-1h
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 03:00:21 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 6A86F120ED49A;
 Thu, 18 Jun 2020 20:00:10 -0700 (PDT)
Date: Thu, 18 Jun 2020 20:00:09 -0700 (PDT)
Message-Id: <20200618.200009.1375774785038059331.davem@davemloft.net>
To: s.hauer@pengutronix.de
Subject: Re: [PATCH 1/2] net: ethernet: mvneta: Fix Serdes configuration
 for SoCs without comphy
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200616083140.8498-1-s.hauer@pengutronix.de>
References: <20200616083140.8498-1-s.hauer@pengutronix.de>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 18 Jun 2020 20:00:10 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_200020_094196_6A43F196 
X-CRM114-Status: UNSURE (   9.29  )
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
Cc: kernel@pengutronix.de, netdev@vger.kernel.org, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, rmk+kernel@armlinux.org.uk,
 thomas.petazzoni@bootlin.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Jun 2020 10:31:39 +0200

> The MVNETA_SERDES_CFG register is only available on older SoCs like the
> Armada XP. On newer SoCs like the Armada 38x the fields are moved to
> comphy. This patch moves the writes to this register next to the comphy
> initialization, so that depending on the SoC either comphy or
> MVNETA_SERDES_CFG is configured.
> With this we no longer write to the MVNETA_SERDES_CFG on SoCs where it
> doesn't exist.
> 
> Suggested-by: Russell King <rmk+kernel@armlinux.org.uk>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
