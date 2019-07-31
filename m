Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 983057D1BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 01:11:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WsT+l/mSv624IxHPKiKPbBAwbn+CK7EY/fdDa1CvCjA=; b=eaAL0l1MAPX0uJ
	Z2OLUojDA1JVdsVwxdwK2dMWp6Ul7seD/kscrLyykyStmF+AeC3CqyxGwIypBUPo3hHt/QUJELI1u
	ebqXyrtF+Az2Fg8wDBEvp0zs/cWe0ph3dxSvC7VZmTqq512Y6e2DlCEJxgvhYcQ+jaxOY7Do/jf/F
	hZmqtb6Z61rJ7fMcI/ElMutNbMEgOBNGDKZ0uZLpg0OXzxxpYIDgY2pq7XPuUDzYSh8979nJ9cjjn
	OaPLVYtR2jv/e4MgCdLuUpaFEQ4eQY/U8Uu7sH3MsCssWjOwyCYIDNdeWvyOcplWW7oPQtV4zgye+
	4ccASP/OXhZ6YUKTOLVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsxkJ-0006ee-M3; Wed, 31 Jul 2019 23:10:59 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsxkB-0006eF-Kl
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 23:10:52 +0000
Received: from localhost (c-24-20-22-31.hsd1.or.comcast.net [24.20.22.31])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id CE1C1126598C9;
 Wed, 31 Jul 2019 16:10:45 -0700 (PDT)
Date: Wed, 31 Jul 2019 19:10:45 -0400 (EDT)
Message-Id: <20190731.191045.1364878383424980981.davem@davemloft.net>
To: brgl@bgdev.pl
Subject: Re: [PATCH] net: stmmac: Use netif_tx_napi_add() for TX polling
 function
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190730113814.13825-1-brgl@bgdev.pl>
References: <20190730113814.13825-1-brgl@bgdev.pl>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 31 Jul 2019 16:10:46 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_161051_683273_14BA3E1D 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: fisaksen@baylibre.com, alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bgolaszewski@baylibre.com, joabreu@synopsys.com,
 mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 30 Jul 2019 13:38:14 +0200

> From: Frode Isaksen <fisaksen@baylibre.com>
> 
> This variant of netif_napi_add() should be used from drivers
> using NAPI to exclusively poll a TX queue.
> 
> Signed-off-by: Frode Isaksen <fisaksen@baylibre.com>
> Tested-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Applied and queued up for -stable.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
