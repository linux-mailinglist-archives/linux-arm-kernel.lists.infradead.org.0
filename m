Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 315F518C643
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 05:08:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oge2R+SzlEguUEfwGmjSwPN5qCGLU8xhaPNlxLE/Qks=; b=dwwDxGf7ASsFz0
	0s9LYRdHVFhXpv0WiC2UQKMlOtVugZ5Fy1DL2b/XPs7gqF63xNpA3Ij50HpRc//Pc9X6iymCda2Di
	p0FupB3UJjx5oCp97OJBl5CP4P278iouUbvEyx5jdC0Ox6YP1iZ7CW3bGUgWMjaQkpou2icZ8wyaV
	ktJVQsk+F62mgYoawdphih0M+yTvYRWwgoq2eomVuU2wFeIRcGC/LpKZZZUMV9IhL7B39KZ7k2aI2
	OFxtZa0uqULmEYhwg8WYnlmeTaFoyPSQF+TH4kr0ZJkJSN5ojE3BJYGrKKVs00bAtmKkoPtZCmp+u
	vE5cuF+ngbpf4HNQU9BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF8xA-0008SF-Lw; Fri, 20 Mar 2020 04:08:12 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF8x3-0008Rh-Fn
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 04:08:06 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A9CE3158F9869;
 Thu, 19 Mar 2020 21:08:04 -0700 (PDT)
Date: Thu, 19 Mar 2020 21:08:04 -0700 (PDT)
Message-Id: <20200319.210804.13050792474896711.davem@davemloft.net>
To: zhengdejin5@gmail.com
Subject: Re: [PATCH] net: stmmac: dwmac_lib: remove unnecessary checks in
 dwmac_dma_reset()
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200319131019.12829-1-zhengdejin5@gmail.com>
References: <20200319131019.12829-1-zhengdejin5@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 19 Mar 2020 21:08:05 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_210805_528212_0A9BD51E 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dejin Zheng <zhengdejin5@gmail.com>
Date: Thu, 19 Mar 2020 21:10:19 +0800

> it will check the return value of dwmac_dma_reset() in the
> stmmac_init_dma_engine() function and report an error if the
> return value is not zero. so don't need check here.
> 
> Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
