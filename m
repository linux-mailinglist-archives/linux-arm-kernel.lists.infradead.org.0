Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 325D14BADC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:11:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0LnNw/fn1vbR3Z9aOrzRUrwi6PcKujQXCunawJPPHUg=; b=lkFUNRpIyUIY6R
	Fefh2WjLFCSp7ypXkg/YvMV2+++5NicPm+2aUFjUZJro8D7845aeO00CvllayytFfOaLhVXtUP8yB
	KXXjpbqaKm9PkBRe8/QoUhjUOY4RliLBnRQNI9Mv/w5gAugzn7XPNJv5lSkbOqKcXM5Y7gZF84Czg
	XjVc0/rc+/AfoSTav7BrMiJov1iNnTa+Iy/QWQNT6YuOI320GKhYxwusBSgmYrWwZ15xEHlGIweGo
	N8llELeUlbIw0z8IrfvCGN1PKzAyL0dNKggh/rlGE5/8fTjYaF/1qXGETaMNVALMoVkoAfXhUBHp9
	2/8ep8YHtNuTXfNoDBIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbJM-0008MB-HP; Wed, 19 Jun 2019 14:11:40 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbJA-0008LW-QE
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:11:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v0kj21FKTfc8hI0Hhv3Jpr9qgTaeqZ90JjRurjLbLxE=; b=aJW4ugajucQKu9Yyy9ttcxLUbB
 /OMtxcJOC9W9XEDDqR5MHfWCpOiBiRNCkdDCCcFQ8QwEcWC1OGDIZ3P/ln8CWphBQqcIU32s1MFqI
 85ao32RIPpUllKTmvCc8SsxJDxiRkXmohQ4E6ID7RzulnFWX2s6mBzFc2CNy8ESYZZ28=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hdbJ2-0001ul-Hn; Wed, 19 Jun 2019 16:11:20 +0200
Date: Wed, 19 Jun 2019 16:11:20 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v3 14/16] ARM: dts: sunxi: Switch from phy-mode to
 phy-connection-type
Message-ID: <20190619141120.GD18352@lunn.ch>
References: <27aeb33cf5b896900d5d11bd6957eda268014f0c.1560937626.git-series.maxime.ripard@bootlin.com>
 <50f869f466acb110c5924d7e8a67087fd97106fd.1560937626.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50f869f466acb110c5924d7e8a67087fd97106fd.1560937626.git-series.maxime.ripard@bootlin.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_071129_892167_02F60405 
X-CRM114-Status: UNSURE (   9.01  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Antoine =?iso-8859-1?Q?T=E9nart?= <antoine.tenart@bootlin.com>,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 11:47:23AM +0200, Maxime Ripard wrote:
> The phy-mode device tree property has been deprecated in favor of
> phy-connection-type, let's replace it.

Hi Maxime

net/ethernet/stmicro/stmmac/dwmac-mediatek.c:		dev_err(plat->dev, "not find phy-mode\n");
net/ethernet/stmicro/stmmac/dwmac-anarion.c:		dev_err(&pdev->dev, "Unsupported phy-mode (%d)\n",
net/ethernet/stmicro/stmmac/dwmac-meson8b.c:		dev_err(dwmac->dev, "fail to set phy-mode %s\n",
net/ethernet/stmicro/stmmac/dwmac-meson8b.c:		dev_err(dwmac->dev, "fail to set phy-mode %s\n",
net/ethernet/stmicro/stmmac/dwmac-meson8b.c:		dev_err(dwmac->dev, "unsupported phy-mode %s\n",
net/ethernet/stmicro/stmmac/dwmac-meson8b.c:		dev_err(&pdev->dev, "missing phy-mode property\n");

As a follow up patch, you might want to change these error messages.

   Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
