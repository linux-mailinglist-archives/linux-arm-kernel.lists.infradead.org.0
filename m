Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EC51E18B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 03:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1E8FHHmpz/d/D3k87Vj9d1pUZPSgmsrg61z8bWAwUI=; b=Zt6pIWFYIgcT30
	XAd/+XvpiO0XkpA/IqAJtlbL2MIVLKnQABQ7oRzgKYsaIwJM4Sil2xNZ/vnhk8kBH6/en5g/gsIyr
	L1tnFpL0rsPuFAYQxedLz1QoZeTGfmK50y+XFZcOhysKUq6C9e0yyL0SCcGRclEJoTMq2zrHWEadq
	Hw8qHMmj+RTOo8QPBF8ffAQe9ViHYG1EJpaKooiqwhW+87JJtAmOzxKrBHu9fmJ4JISfOMb9Fr4Nw
	+lTASUqbIyvyhmxiGtBfjoz/ep6FIwi1vKSdThm2xpJHezp9Umqg3x0i2Y56KkaYqe4WvZnPJmcVs
	d+6E3WxWjHGk+isU+u5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdO9z-00056d-GP; Tue, 26 May 2020 01:13:39 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdO9m-00055X-GI
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 01:13:27 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 8D51C127AA591;
 Mon, 25 May 2020 18:13:18 -0700 (PDT)
Date: Mon, 25 May 2020 18:13:17 -0700 (PDT)
Message-Id: <20200525.181317.1216905484376882401.davem@davemloft.net>
To: fugang.duan@nxp.com
Subject: Re: [PATCH net 1/2] net: ethernet: dwmac: add Ethernet glue logic
 for NXP imx8 chip
From: David Miller <davem@davemloft.net>
In-Reply-To: <1590402554-13175-2-git-send-email-fugang.duan@nxp.com>
References: <1590402554-13175-1-git-send-email-fugang.duan@nxp.com>
 <1590402554-13175-2-git-send-email-fugang.duan@nxp.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 25 May 2020 18:13:18 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_181326_573247_10779150 
X-CRM114-Status: UNSURE (   5.82  )
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
Cc: p.zabel@pengutronix.de, alexandre.torgue@st.com, netdev@vger.kernel.org,
 joabreu@synopsys.com, mcoquelin.stm32@gmail.com, kuba@kernel.org,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fugang Duan <fugang.duan@nxp.com>
Date: Mon, 25 May 2020 18:29:13 +0800

> +static int imx_dwmac_init(struct platform_device *pdev, void *priv)
> +{
> +	struct imx_priv_data *dwmac = priv;
> +	struct plat_stmmacenet_data *plat_dat = dwmac->plat_dat;
> +	int ret;
> +

Please code these sequences as:

	struct plat_stmmacenet_data *plat_dat;
	struct imx_priv_data *dwmac = priv;
	int ret;

	plat_dat = dwmac->plat_dat;

In order to have reverse christmas three local variable ordering.

THank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
