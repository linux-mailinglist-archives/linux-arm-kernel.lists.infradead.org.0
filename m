Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FD1FF5C4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 22:14:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+kZ4XHk1wOuOhPbDRXyUaToGMFBBfu5K1XdP4+TrQjM=; b=QLeSarzh854EyX
	XUz3LglXnx1PWNGYLwB89lPUVW8L04kbTviTjCmF0F2Uye8CB/xxKWGortFybV7VBTh0xf2W51emM
	MPeU4g7/AdYKAHrmHfK+xM5Q+fF3ykJTh57ntFJymy1tCxdChLrHrScE9Kh4BGl9SfTyHp8CtJpbP
	/sWjwgZD9EGFpRRJRt2mAgHpRebpl73lm0fweAKf/EZ2D8Rne1g9GQegqUBwhm/RC4y8u9gipsppj
	niUaiuBr8wjalFcd6fwBkc7rf7/StHw5HlPshph+EscfJaQNw3DYTeur1voArYwGJbuRRuoKVFk2Z
	uhivL5vfjprifgpeI1JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW5Ov-0005fS-PZ; Sat, 16 Nov 2019 21:14:37 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW5Oo-0005eq-HR
 for linux-arm-kernel@lists.infradead.org; Sat, 16 Nov 2019 21:14:31 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 16535151A21BC;
 Sat, 16 Nov 2019 13:14:30 -0800 (PST)
Date: Sat, 16 Nov 2019 13:14:29 -0800 (PST)
Message-Id: <20191116.131429.2205837170380620136.davem@davemloft.net>
To: chenwandun@huawei.com
Subject: Re: [PATCH] net: stmmac: remove variable 'ret' set but not used
From: David Miller <davem@davemloft.net>
In-Reply-To: <1573876246-139122-1-git-send-email-chenwandun@huawei.com>
References: <1573876246-139122-1-git-send-email-chenwandun@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 16 Nov 2019 13:14:30 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_131430_574771_2C5A3A1B 
X-CRM114-Status: GOOD (  10.96  )
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
Cc: netdev@vger.kernel.org, joabreu@synopsys.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen Wandun <chenwandun@huawei.com>
Date: Sat, 16 Nov 2019 11:50:46 +0800

> Fixes gcc '-Wunused-but-set-variable' warning:
> 
> drivers/net/ethernet/stmicro/stmmac/stmmac_main.c: In function stmmac_rx_buf1_len:
> drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:3460:6: warning: variable ret set but not used [-Wunused-but-set-variable]
> 
> Signed-off-by: Chen Wandun <chenwandun@huawei.com>
> ---
>  drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index 39b4efd..7003a30 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -3457,7 +3457,7 @@ static unsigned int stmmac_rx_buf1_len(struct stmmac_priv *priv,
>  				       struct dma_desc *p,
>  				       int status, unsigned int len)
>  {
> -	int ret, coe = priv->hw->rx_csum;
> +	int coe = priv->hw->rx_csum;
>  	unsigned int plen = 0, hlen = 0;

You are breaking the reverse christmas tree ordering of the local
variables here, please don't do that.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
