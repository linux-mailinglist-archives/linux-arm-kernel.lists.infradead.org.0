Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9925253D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=srjnMxp6WahbD7yvTBGWtTNjIpJuKaZ0x1P1UtXDFLs=; b=S7qZg0NBWP+EZs
	1JN1g7KcTQyd3zB1aXwdVAD1jH3DjIDnaI4Lv5GvgxKgAfiJs12dzrvuCN/8RZ87LjNdevVJVSKox
	f6r5CQlK4pOBVLBPhjc8ZErfXGhIQ5BWqMzpo5bULUgaFZmC1N1s4Tq6Od11vMVrLXop1/6IbmJe3
	ke4+fDtL+pvbS8ctTGr3bNyuPuJwukzNsjMYmNdJp7pZOWGZCbq2fSHNT8efhizBt9AItxle+x2Fc
	FBk71HILAhUezDzzBASQvsEzK+jmexdjk4kRI5Fq0/wO0Max7DfPfRmQjqhfBWP6aDZv0797ZYLMJ
	/4KT1ICT6yyMZdb1dq1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgEG-00064d-CF; Tue, 25 Jun 2019 07:51:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgE3-00063Y-0J
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 07:50:48 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hfgDq-0002jy-Qy; Tue, 25 Jun 2019 09:50:34 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: stmmac regression on ASUS TinkerBoard
Date: Tue, 25 Jun 2019 09:50:34 +0200
Message-ID: <4489696.oEgVQY3s1y@diego>
In-Reply-To: <78EB27739596EE489E55E81C33FEC33A0B9D7065@DE02WEMBXB.internal.synopsys.com>
References: <8fa9ce79-6aa2-d44d-e24d-09cc1b2b70a3@katsuster.net>
 <78EB27739596EE489E55E81C33FEC33A0B9D7065@DE02WEMBXB.internal.synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_005047_198280_2FEDCEBF 
X-CRM114-Status: GOOD (  13.72  )
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
Cc: Andrew Lunn <andrew@lunn.ch>, Alexandre Torgue <alexandre.torgue@st.com>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am Dienstag, 25. Juni 2019, 09:46:12 CEST schrieb Jose Abreu:
> From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> 
> > I checked drivers/net/ethernet/stmicro/stmmac/stmmac_main.c and found
> > stmmac_init_phy() is going to fail if ethernet device node does not
> > have following property:
> >    - phy-handle
> >    - phy
> >    - phy-device
> > 
> > This commit broke the device-trees such as TinkerBoard. The mdio
> > subnode creating a mdio bus is changed to required or still optional?
> 
> Yeah, with PHYLINK the PHY binding is always required ...
> 
> How do you want to proceed ? I think DT bindings can never break between 
> releases so I will probably need to cook a patch for stmmac.

Correct ... old devicetrees on new kernels should not break.
Especially as this affects a big number of boards potentially loosing
network support and in the devicetree binding the phy property is also
marked as optional.

Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
