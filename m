Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E66D76C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 14:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4xl1y6bM0ugx9zuMozY3VUQ8lKqrIsFVII4d+fjBms=; b=XNZAcwvWzvieES
	tj49mtArDulLUVOm8zbrdTp9x/K+7FAH9cGB4OKy5Qz9UrOQNRT673jQfVObdSv861tT3/cPJxOha
	tcWzvEwt74yCgfPsOPWqrMY0OroXjx4eIPYE0oL5RK0ilvossJKbXSoE9wTaFqZh2Nsku5Y6PsM/9
	V6L1OLVhKcigwwFdVCD/o7FQM+CUln+B1fze7SXdaWsVB0rvLSIcvQ3677Cz4vKby5D2KIMs8r7gF
	F6CP16uk09bLJfq9lagt8/UZ739XN0fizXvI0AQxt7Ia9/Whfvk2qJk+YU5HZrfsFSNjamiICm3aM
	ZHqQIhl1vHROBTZYNjtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKME5-0001HU-4t; Tue, 15 Oct 2019 12:46:57 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKMDa-00015I-Nv
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 12:46:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Cc1o6O0GLcNmuIJAd1oHLMPB851qrt/yI8fCRGWgBCo=; b=Fh0dTqlc8R4ICOnWmHzdgesJtH
 NtyKe2TmNpUZ4B+dLAsXM78IGvzhTh4/psRIvHMWoSzR43MUd0tiZ9iBC0tuMn+K3gBhWycJ+osdJ
 OS85mC/uGOZCiWbN/e/sBfEnxmrlc5GdcbH2XvWbb4209XLKV1U4EkluWzKRy6vevIaQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iKA1O-00078m-TP; Tue, 15 Oct 2019 01:45:02 +0200
Date: Tue, 15 Oct 2019 01:45:02 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 2/2] net: lpc_eth: parse phy nodes from device tree
Message-ID: <20191014234502.GG19861@lunn.ch>
References: <20191010204530.15150-1-alexandre.belloni@bootlin.com>
 <20191010204530.15150-2-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010204530.15150-2-alexandre.belloni@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_054626_796276_09D01980 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vladimir Zapolskiy <vz@mleia.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 10:45:30PM +0200, Alexandre Belloni wrote:
> When connected to a micrel phy, phy_find_first doesn't work properly
> because the first phy found is on address 0, the broadcast address but, the
> first thing the phy driver is doing is disabling this broadcast address.
> The phy is then available only on address 1 but the mdio driver doesn't
> know about it.
> 
> Instead, register the mdio bus using of_mdiobus_register and try to find
> the phy description in device tree before falling back to phy_find_first.
> 
> This ultimately also allows to describe the interrupt the phy is connected
> to.
> 
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Hi Alexandre

>  
> -	if (mdiobus_register(pldat->mii_bus))
> +	if (of_mdiobus_register(pldat->mii_bus, pldat->pdev->dev.of_node))
>  		goto err_out_unregister_bus;

It is normal to use a container node 'mdio' in the ethernet node to
contain the PHY nodes. If you don't do this, you run into issues when
you have Ethernet switches on the MDIO bus.

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
