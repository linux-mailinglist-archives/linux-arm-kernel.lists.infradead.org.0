Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 557FB1BA67
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 17:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7h4I2HyusF01+HkwAcMBdc9f0VMQTnFSsWW3kNql7PA=; b=nqVmDrRaivY361
	E/I5t3Z1MRbC0ZclGAltB4XUlWa0VcMgxwr/oEmwWVvBFmuCDZBuAK8GgrDM+ErQSiIXm6FjhalWM
	h6lvWGx2LqT0rHvA3+ruRe12KeJvs05b5FMHG14DbLpDvHK0MsjDV3gzZCRKASgvtbzh06+8mlZ9t
	Yt4NojZa6uJbep+zi52SpgEgGlrocWz/wPTz+HiNJSG5fLk+hq/3Oi4jgPoL6h2BSlVSGT3zX4Tx0
	dckGY3FKTfo3JHrrFUANHu7p9Ta5u8QvMFKHSk53qXzon5/05f0M5wiVzJPwOqsjii+Gtxg825p+b
	FKYBUrbX8TKCMhLyzx5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDEY-0006WS-5M; Mon, 13 May 2019 15:51:22 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQDEQ-0006TV-BM
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 15:51:15 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 9625514E11A09;
 Mon, 13 May 2019 08:51:07 -0700 (PDT)
Date: Mon, 13 May 2019 08:51:04 -0700 (PDT)
Message-Id: <20190513.085104.1611937467438995000.davem@davemloft.net>
To: maxime.chevallier@bootlin.com
Subject: Re: [PATCH net v2] net: mvpp2: cls: Add missing NETIF_F_NTUPLE flag
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190513073033.15015-1-maxime.chevallier@bootlin.com>
References: <20190513073033.15015-1-maxime.chevallier@bootlin.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 13 May 2019 08:51:08 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_085114_392392_EBE5B31A 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: jakub.kicinski@netronome.com, antoine.tenart@bootlin.com,
 netdev@vger.kernel.org, gregory.clement@bootlin.com,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk, nadavh@marvell.com,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com, stefanc@marvell.com,
 mw@semihalf.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Date: Mon, 13 May 2019 09:30:33 +0200

> Now that the mvpp2 driver supports classification offloading, we must
> add the NETIF_F_NTUPLE to the features list.
> 
> Since the current code doesn't allow disabling the feature, we don't set
> the flag in dev->hw_features.
> 
> Fixes: 90b509b39ac9 ("net: mvpp2: cls: Add Classification offload support")
> Reported-by: Jakub Kicinski <jakub.kicinski@netronome.com>
> Acked-by: Jakub Kicinski <jakub.kicinski@netronome.com>
> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
> ---
> V2: Rebased on latest -net, added Jakub's Ack, gave more details in the
>     commit log about not adding the flag in hw_features.

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
