Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5443BB641
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 18:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBRA3w4o3BYcOBkvvovbdBU0ChBKM3Rqyt/fiZlQiUY=; b=OyXUWIA1j61OUY
	d6HGrGdQh9VFLxZvacQdRgCWP2nlR6B1gQHybRYwYXnn5jWUEKcwLLprsJoce3O9WLzlp4KhYoZIQ
	bCEbkE+1SzhUHOzM95yUPvyvD3/OAV9HQy4pZQ6F7AOzlVuApmCLOc0OHHL4UiC8Isc6aVymcS2+/
	hPwp3bX5idYxFC9mewt5ZinxUJRuEzakG+JxCbnlDAx+PCfsFDrN8ZgUU564QWm5Z6evcsdfxxNGW
	bXPgqP8VBuuFJ/dDEeBSTgI1rF0sR9TnV0Bhqp9xxFnOvZ8lnF+w3yUUCdEvbfbtyT+hdfUkiek2b
	m5gOZpvTtH33qK7LQAAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKmnu-0001K2-38; Sun, 28 Apr 2019 16:37:26 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKmnn-0001JX-L3; Sun, 28 Apr 2019 16:37:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uoSXhyD3TOK7i4eaxOafe7KFL4hfzJB0aeciU8oRpF8=; b=FP3HHRzzpWRywBh93FGqVkg6WT
 VQ741RPEI3K435alYDJFEzFaFh//UpVWpB0PhdXWmLbW5JqY/9XW4Lyc8aNvIWrci3qXgoVwdXGgE
 js4/0at4IXwEHMGAbwXjNUrbbm/glQmhXL5LUrUBsSg9qfgaiiAIFB6lVLpxONw76LGo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hKmnZ-0000m8-Rk; Sun, 28 Apr 2019 18:37:05 +0200
Date: Sun, 28 Apr 2019 18:37:05 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Biao Huang <biao.huang@mediatek.com>
Subject: Re: [PATCH 5/6] net: stmmac: add mdio clause 45 access from mac
 device for dwmac4
Message-ID: <20190428163705.GH23059@lunn.ch>
References: <1556433009-25759-1-git-send-email-biao.huang@mediatek.com>
 <1556433009-25759-6-git-send-email-biao.huang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556433009-25759-6-git-send-email-biao.huang@mediatek.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_093719_841447_BCD99894 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jianguo.zhang@mediatek.com, Alexandre Torgue <alexandre.torgue@st.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, yt.shen@mediatek.com,
 Jose Abreu <joabreu@synopsys.com>, linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 28, 2019 at 02:30:08PM +0800, Biao Huang wrote:
> +static int stmmac_c45_read(struct mii_bus *bus, int phyaddr,
> +			   int devad, int prtad)
> +{
> +	struct net_device *ndev = bus->priv;
> +	struct stmmac_priv *priv = netdev_priv(ndev);
> +	unsigned int mii_address = priv->hw->mii.addr;
> +	unsigned int mii_data = priv->hw->mii.data;
> +	u32 v, value;
> +	int data;
> +
> +	if (readl_poll_timeout(priv->ioaddr + mii_address, v, !(v & MII_BUSY),
> +			       100, 10000))
> +		return -EBUSY;

Hi Biao

readl_poll_timeout() returns an error code. It is better to return
that, than make up some other error code. Yes, i know the C22 read
returns EBUSY, but we don't need to copy that behaviour into C45.

> +
> +	value = 0;
> +	value |= (prtad << priv->hw->mii.cl45_reg_shift)
> +			& priv->hw->mii.cl45_reg_mask;
> +	writel(value, priv->ioaddr + mii_data);
> +
> +	/* delay 2ms to avoid error value of get_phy_c45_devs_in_pkg */
> +	mdelay(2);

Please could you explain this a bit more?

       Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
