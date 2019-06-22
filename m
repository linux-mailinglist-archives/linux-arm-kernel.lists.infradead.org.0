Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8521D4F796
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 19:55:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eL4zLSOWbebcpnv312zRjYgZdcZ0ec8YI785Ft211Bc=; b=tgbn5h9jq1+gpS
	Qi46p+NJGhNzH/OLjhojA67NzCoegFm3Xm6h+mATRCX+Lt7fcczn9pc3NhGbILySlVlrsm3qpPr9n
	PvAAyzYsBsIYPvc/5uAE2WycgvQJCRU8PFbvgb0DnijtHAn24EO3TcqDe5EopEc2EIsw6v0U4EYGl
	J/lNyumlNVB1w5vm5DOWxRdLKsb5Qxc2606RFXs/UxUcM9BrIqlcqABrFqJqWLINH+REKYSu4o33k
	uWxFz6eWTdaCYIPhNJXZBq9Tpc9RKqut0nOfJbiF3jrku1cGFcLcZDsExYDv/+guh793qZZp91JE+
	kE/p67txYieHdpXjHe/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hekEc-0007W9-H9; Sat, 22 Jun 2019 17:55:30 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hekEP-0007V9-P8; Sat, 22 Jun 2019 17:55:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mFFGkaI0iidPz6D6ZS4fu8dpqoCBpKXPSU6kWYWGKoA=; b=T/Ak48u3jVqwCPZX7scFXH1Lko
 zV6l5OAc4BpmDF9HEJ9ZhX3XIoiSrCgnfv5hgmeB1F7USdvhsYqQvh9w7X5KHovLTRHPyzLzbEH7x
 GY1iJGAcIiWeIoI501iO3vNwRWqdKgjoNlAEXQOm4lPTO1D9SsnR0HQzWqqomEi/q7fw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hekEG-0003Ea-Vr; Sat, 22 Jun 2019 19:55:08 +0200
Date: Sat, 22 Jun 2019 19:55:08 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Jose Abreu <joabreu@synopsys.com>
Subject: Re: [PATCH] ARM: dts: rockchip: add ethernet phy node for tinker board
Message-ID: <20190622175508.GE8497@lunn.ch>
References: <20190621180017.29646-1-katsuhiro@katsuster.net>
 <1871177.hjLhdHVgcu@phil>
 <ccf5ad2c-bd56-2d77-4728-d7906045e302@katsuster.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ccf5ad2c-bd56-2d77-4728-d7906045e302@katsuster.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_105517_972196_F5BE893A 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 22, 2019 at 11:50:10PM +0900, Katsuhiro Suzuki wrote:
> Hello,

Hi Katsuhiro

Please also report this to netdev, and the stmmac maintainers.

./scripts/get_maintainer.pl -f drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
Giuseppe Cavallaro <peppe.cavallaro@st.com> (supporter:STMMAC ETHERNET DRIVER)
Alexandre Torgue <alexandre.torgue@st.com> (supporter:STMMAC ETHERNET DRIVER)
Jose Abreu <joabreu@synopsys.com> (supporter:STMMAC ETHERNET DRIVER)
"David S. Miller" <davem@davemloft.net> (odd fixer:NETWORKING DRIVERS)
Maxime Coquelin <mcoquelin.stm32@gmail.com> (maintainer:ARM/STM32 ARCHITECTURE)
netdev@vger.kernel.org (open list:STMMAC ETHERNET DRIVER)
linux-stm32@st-md-mailman.stormreply.com (moderated list:ARM/STM32 ARCHITECTURE)
linux-arm-kernel@lists.infradead.org (moderated list:ARM/STM32 ARCHITECTURE)
linux-kernel@vger.kernel.org (open list)

> I have not bisect commit of root cause yet... Is it better to bisect
> and find problem instead of sending this patch?

My guess is that it is one of these three which broken it:

74371272f97f net: stmmac: Convert to phylink and remove phylib logic
eeef2f6b9f6e net: stmmac: Start adding phylink support
9ad372fc5aaf net: stmmac: Prepare to convert to phylink

	     Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
