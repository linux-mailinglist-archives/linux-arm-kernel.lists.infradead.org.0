Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E041031C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 03:46:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBP9rrtU3EYMawbLbd0rvpC/zAl8umZrgV4WqfAOVg4=; b=pEqWk4DOw7afIR
	7OZfm21VYpCWNm+oJFBdGixWxWA6glsx2f3rajJKsqkt7z86NYg74apzqpADRcF/qXZZMJyyZzFKJ
	NajpWBepNXdizdzAQjDgcRjFLF5gPjiYZsxC+fnGlnw4WeoxTlhFP02c6CNNEmA5TwLngfVWgMQgm
	/BbjDwjnKSFe8ratqPouMhtbqBjJ+CSwWkFtk5vpiDj6QM1vxGDVLeJVwyc7jkVtZ8JEatjlwoZ7J
	afb5VScj1N9Ig3smglQv0eNfSjLtFFwQ4zVLUEbnrMk4EGxhEG3Kf9qyhWqMpqAkpMUDdKIqQV0sp
	mh+/tt00mJlBHAG7h5Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXG0Z-00039l-TM; Wed, 20 Nov 2019 02:46:19 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXG0S-00039A-Dy; Wed, 20 Nov 2019 02:46:13 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 28721146CFECE;
 Tue, 19 Nov 2019 18:46:05 -0800 (PST)
Date: Tue, 19 Nov 2019 18:46:04 -0800 (PST)
Message-Id: <20191119.184604.2256080146904190716.davem@davemloft.net>
To: rmk+kernel@armlinux.org.uk
Subject: Re: [RFC PATCH net-next] net: phylink: rename mac_link_state() op
 to mac_pcs_get_state()
From: David Miller <davem@davemloft.net>
In-Reply-To: <E1iX2jg-0005Us-6U@rmk-PC.armlinux.org.uk>
References: <E1iX2jg-0005Us-6U@rmk-PC.armlinux.org.uk>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 19 Nov 2019 18:46:05 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_184612_472142_66F82227 
X-CRM114-Status: GOOD (  12.73  )
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
Cc: andrew@lunn.ch, nbd@openwrt.org, f.fainelli@gmail.com,
 michal.simek@xilinx.com, alexandre.torgue@st.com, netdev@vger.kernel.org,
 sean.wang@mediatek.com, linux-stm32@st-md-mailman.stormreply.com,
 Mark-MC.Lee@mediatek.com, joabreu@synopsys.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 thomas.petazzoni@bootlin.com, john@phrozen.org, matthias.bgg@gmail.com,
 peppe.cavallaro@st.com, radhey.shyam.pandey@xilinx.com,
 vivien.didelot@gmail.com, mcoquelin.stm32@gmail.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>
Date: Tue, 19 Nov 2019 12:36:00 +0000

> Rename the mac_link_state() method to mac_pcs_get_state() to make it
> clear that it should be returning the MACs PCS current state, which
> is used for inband negotiation rather than just reading back what the
> MAC has been configured for. Update the documentation to explicitly
> mention that this is for inband.
> 
> We drop the return value as well; most of phylink doesn't check the
> return value and it is not clear what it should do on error - instead
> arrange for state->link to be false.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
> This is something I'd like to do to make it clearer what phylink expects
> of this function, and that it shouldn't just read-back how the MAC was
> configured.  However, it will require some testing and review as it
> changes quite a lot, and there's some things, particularly in DSA, that
> don't seem quite right from a phylink point of view, such as messing
> with state->interface in this function.

I don't have the expertiece to look into the DSA components of these
changes and your concerns.

Andrew, Florian, etc.?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
