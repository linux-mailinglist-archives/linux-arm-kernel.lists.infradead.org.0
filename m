Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7D410486D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 03:18:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IG1RJQg3I7QhzveBd/5WG0PAP4cbP5UeQB0wWSlHRFg=; b=FHp72UynktcwrH
	NagdDuBhW82t6FYcr/govjnEzhGyvs5d/G6Z4yC44J83GtkUrycGUaF2Z0SnvZx9ar6uLnS7hptRx
	LZJZHjUF1mHVt3BSU4yV/FIp8M5CvZcWPycmD7/Zo0233Z5sYxN5QJtEod8dF2qtuGD8XXgS+E+gR
	/YNYXa4dY2Njw9llSb3SQEgBQv9qXp7IxHkFDSUMKCqzlnmeqhsRYhtfAcJMc3y2kgKCxTEMG4EYU
	tuwEFoZ3pPqdBAJhDlR8nYOMlP0362Xj3EYCYhY6FJLKu7/PQ2MUr2/Ac04RxDkarvosmg8t8xPYM
	QPgmCi9a4r5PGBEbAaBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXc2x-0008AW-8I; Thu, 21 Nov 2019 02:18:15 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXc2o-0008A8-G5; Thu, 21 Nov 2019 02:18:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qAkKunk23IfftGddy2mr2fXtQy4avDcjS8V5azXyJbE=; b=Bmf7v9bag6lEBI4LryUMTXnfQG
 u4GCxMREmKr3MSE23XME+XmJvGhzJsmc20sNat7tD5Rpwznz1fJ+ufqHYunvbY2FxsBxFpFKQ5iK2
 bcIneYtAgt74WdlqmNIHGuvQvWli2iEk4V+KRFbsRFR3bk/l+XBGT81f/FedUI+W4+6M=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iXc2O-00071y-VP; Thu, 21 Nov 2019 03:17:40 +0100
Date: Thu, 21 Nov 2019 03:17:40 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [RFC PATCH net-next] net: phylink: rename mac_link_state() op to
 mac_pcs_get_state()
Message-ID: <20191121021740.GE18325@lunn.ch>
References: <E1iX2jg-0005Us-6U@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1iX2jg-0005Us-6U@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_181806_536234_DD02745C 
X-CRM114-Status: UNSURE (   8.65  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Felix Fietkau <nbd@openwrt.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-stm32@st-md-mailman.stormreply.com,
 Vivien Didelot <vivien.didelot@gmail.com>, Jose Abreu <joabreu@synopsys.com>,
 linux-mediatek@lists.infradead.org, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> This is something I'd like to do to make it clearer what phylink expects
> of this function, and that it shouldn't just read-back how the MAC was
> configured.  However, it will require some testing and review as it
> changes quite a lot, and there's some things, particularly in DSA, that
> don't seem quite right from a phylink point of view, such as messing
> with state->interface in this function.

Hi Russell

Could you have more detail about DSA issues? Do you means the 6250
setting interface to PHY_INTERFACE_MODE_NA?

I think you and i have pretty similar marvell hardware. So i don't
think i can do much additional testing. Ideally we want Florian to do
some testing on b53.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
