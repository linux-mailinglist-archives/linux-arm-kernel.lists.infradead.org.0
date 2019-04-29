Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FF5DBC6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 08:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EBkMWodC2CnOEooA0vP7NsQC0CJN1Df1X5P44EyQW7c=; b=nYMrbSeEqt3LQX
	FfGzMlpAl4gprD++DejmCnT8Pb9Kvo5e8v82wni77cdNCB0GmLN+4El8tjC89RiDR+3pP1hrm6S4W
	LqKYexUvcKlqU+2ScY+FoMdLtUQulCt28tXb0Ovdi5hu79PGLxRrB9dIvpYPLcla2YlnpRZK0kFge
	MGcGO6KTrsthDic4qU+pEGOJQ8ODn95YOFbmFU76/HoK67Mryrxu1PZn8cgI6w+gvqkXZYzxlbAGI
	jJ049fj6OpRgpHVNrASbeCGPN9BYMAsTv2OgLvtuVxU4JJA5lzYuw/ySRofFGAodNjnYqVtuQQhMT
	INtMpH+7eltkb9CU7EIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKzQ8-0002PF-QL; Mon, 29 Apr 2019 06:05:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKzQ1-0002Ng-7I; Mon, 29 Apr 2019 06:05:39 +0000
X-UUID: 696e6df33369435e82c3f21050945e40-20190428
X-UUID: 696e6df33369435e82c3f21050945e40-20190428
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 908794319; Sun, 28 Apr 2019 22:05:30 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 28 Apr 2019 23:05:29 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 29 Apr 2019 14:05:26 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 29 Apr 2019 14:05:25 +0800
Message-ID: <1556517925.24897.17.camel@mhfsdcap03>
Subject: Re: [PATCH 5/6] net: stmmac: add mdio clause 45 access from mac
 device for dwmac4
From: biao huang <biao.huang@mediatek.com>
To: Andrew Lunn <andrew@lunn.ch>
Date: Mon, 29 Apr 2019 14:05:25 +0800
In-Reply-To: <20190428163705.GH23059@lunn.ch>
References: <1556433009-25759-1-git-send-email-biao.huang@mediatek.com>
 <1556433009-25759-6-git-send-email-biao.huang@mediatek.com>
 <20190428163705.GH23059@lunn.ch>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_230537_269552_2BFD9A93 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Matthias Brugger <matthias.bgg@gmail.com>, Giuseppe
 Cavallaro <peppe.cavallaro@st.com>, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Sun, 2019-04-28 at 18:37 +0200, Andrew Lunn wrote:
> On Sun, Apr 28, 2019 at 02:30:08PM +0800, Biao Huang wrote:
> > +static int stmmac_c45_read(struct mii_bus *bus, int phyaddr,
> > +			   int devad, int prtad)
> > +{
> > +	struct net_device *ndev = bus->priv;
> > +	struct stmmac_priv *priv = netdev_priv(ndev);
> > +	unsigned int mii_address = priv->hw->mii.addr;
> > +	unsigned int mii_data = priv->hw->mii.data;
> > +	u32 v, value;
> > +	int data;
> > +
> > +	if (readl_poll_timeout(priv->ioaddr + mii_address, v, !(v & MII_BUSY),
> > +			       100, 10000))
> > +		return -EBUSY;
> 
> Hi Biao
> 
> readl_poll_timeout() returns an error code. It is better to return
> that, than make up some other error code. Yes, i know the C22 read
> returns EBUSY, but we don't need to copy that behaviour into C45.
> 
OK, will return error code here.
> > +
> > +	value = 0;
> > +	value |= (prtad << priv->hw->mii.cl45_reg_shift)
> > +			& priv->hw->mii.cl45_reg_mask;
> > +	writel(value, priv->ioaddr + mii_data);
> > +
> > +	/* delay 2ms to avoid error value of get_phy_c45_devs_in_pkg */
> > +	mdelay(2);
> 
> Please could you explain this a bit more?
when of_mdiobus_register is invoked,
the C22 PHY addr information will be obtained in device tree(reg = xx,
no need through mdiobus),
but C45 PHY addr should be got through mdiobus->read according to
current flow.
    of_mdiobus_register -->
    of_mdiobus_register_phy -->
    get_phy_device -->
    get_phy_id -->
    get_phy_c45_ids -->
    get_phy_c45_devs_in_pkg

In my platform, mdio bus read will return 0xffff or 0x0000 for C45 in
of_mdiobus_register callstack, and that's not the expected value. 
So that the mdiobus register fails.

We took some time to find that only after adding 2ms delay here,
the read action will be stable and return the expected value.

did you try C45 support in your platform? I can't tell whether it's a
common or specified issue.

our version is 4.21a.
> 
>        Andrew



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
