Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B7EE3AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 15:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1HqiGlPWrFKyR4YcxkERAfbztl8dXYcQt2GYMV3fzI=; b=ry5cK7Y0D1GV0U
	79GKhvkh3dFLpZY+w15LgRENPBxWWhBrY1Voxwf9/e0Zw9wSdxHiEeRqxFSxXZn33nQqRLY9LKJJx
	HkK9s2XkrZFkmbLWBcKWbmsgXioKJrqt2+Uh3jsLNodvQJaffOT4Yb5X21w6+FgzSn9bFAoS3BCsG
	uFEl8Db67TpdjbppDjWB/cbxJmbpF5o4Sh8pguUnuZMe7pWf4+MVTWMlZiDLWnrMWrLjg9Iv5mBVM
	aPit4Rgvlh+hVQ5h1rF1BFvoAkInD2QKvrM945bk795ilAfxVtbP/J/LASUpnXjzuREneNGm2906Y
	G1lyQ/YKlKgEzQxFBwiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL6G2-0000el-Lj; Mon, 29 Apr 2019 13:23:46 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL6Fv-0000da-M8; Mon, 29 Apr 2019 13:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G9+UVkmUelZPc/fq6yyI9wbOx04gDxUNqmqWJk98Nkg=; b=UJxTcsu3QVfNUjU0YZtQzi6U3y
 wqS5EGC5LSO/GkxW9xCydVDvbZ1fs37BBldYsyRB4/OLeWLrobP38ZeMf/gS1JrYsru+wKb40eq3m
 ceOmhYYufSpplKctvC8LKsMTHYMWy3AnrSfh9BAbBMXdDsP07MKex5LVfvQ4FhluvDmg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hL6Fj-00010z-OB; Mon, 29 Apr 2019 15:23:27 +0200
Date: Mon, 29 Apr 2019 15:23:27 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: biao huang <biao.huang@mediatek.com>
Subject: Re: [PATCH 5/6] net: stmmac: add mdio clause 45 access from mac
 device for dwmac4
Message-ID: <20190429132327.GF10772@lunn.ch>
References: <1556433009-25759-1-git-send-email-biao.huang@mediatek.com>
 <1556433009-25759-6-git-send-email-biao.huang@mediatek.com>
 <20190428163705.GH23059@lunn.ch>
 <1556517925.24897.17.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556517925.24897.17.camel@mhfsdcap03>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_062339_873357_C5CF1D40 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

> > Hi Biao
> > 
> > readl_poll_timeout() returns an error code. It is better to return
> > that, than make up some other error code. Yes, i know the C22 read
> > returns EBUSY, but we don't need to copy that behaviour into C45.
> > 
> OK, will return error code here.
> > > +
> > > +	value = 0;
> > > +	value |= (prtad << priv->hw->mii.cl45_reg_shift)
> > > +			& priv->hw->mii.cl45_reg_mask;
> > > +	writel(value, priv->ioaddr + mii_data);
> > > +
> > > +	/* delay 2ms to avoid error value of get_phy_c45_devs_in_pkg */
> > > +	mdelay(2);
> > 
> > Please could you explain this a bit more?
> when of_mdiobus_register is invoked,
> the C22 PHY addr information will be obtained in device tree(reg = xx,
> no need through mdiobus),
> but C45 PHY addr should be got through mdiobus->read according to
> current flow.
>     of_mdiobus_register -->
>     of_mdiobus_register_phy -->
>     get_phy_device -->
>     get_phy_id -->
>     get_phy_c45_ids -->
>     get_phy_c45_devs_in_pkg
> 
> In my platform, mdio bus read will return 0xffff or 0x0000 for C45 in
> of_mdiobus_register callstack, and that's not the expected value. 
> So that the mdiobus register fails.
> 
> We took some time to find that only after adding 2ms delay here,
> the read action will be stable and return the expected value.
> 
> did you try C45 support in your platform? I can't tell whether it's a
> common or specified issue.

It sounds like you need to put a logic analyser on the bus and see if
it performs a C22 transaction, or an invalid transaction, without the
2ms pause.

This sounds like a 'silicon' bug. There should not be a need to pause
here. And the comment should talk about this silicon bug, not
get_phy_c45_devs_in_pkg(). It will fail for all accesses, not just
those for get_phy_c45_devs_in_pkg().

	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
