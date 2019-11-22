Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD2E105EF1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 04:14:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zX7391+9vBGPprx8CZUjgzmmjfTU1XpYKobpcdex4Ec=; b=gwVLy6yuZNI4wL
	9SkniHvB/F8T1UEe0GyPy4ZNm+zP6/Z4Fiphez1+L+8OP48swQs7bdIRuFh3j4LnOmVrMw8QsnYek
	WONSSphBjIbt8H1fxnc3EB2DCigL/oOMyxDMk1HyfauTxqkd8z/qaB0g9YrSMd+GkwYNS3YVOnE9+
	hCF50ZRHBdY55j0SXAW0VV3Vqi+souSZ0TdBeddQJ1E57Kz+ySbNHv+vnhmBFOWr8uFWK8XB1vHiB
	QnVoK4uiBJicmdo0K98QPklfhRNNAOARaaY3Krl0MgQdPFCGlNuM/KMbdNYItmkbuk+NDN+pL+2/Z
	xHcdnFtNmRsBPaoMw2Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXzP3-00052T-1U; Fri, 22 Nov 2019 03:14:37 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXzOs-000520-JD; Fri, 22 Nov 2019 03:14:27 +0000
Received: from localhost (c-73-35-209-67.hsd1.wa.comcast.net [73.35.209.67])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4376C15102FA7;
 Thu, 21 Nov 2019 19:14:19 -0800 (PST)
Date: Thu, 21 Nov 2019 19:14:17 -0800 (PST)
Message-Id: <20191121.191417.1339124115325210078.davem@davemloft.net>
To: rmk+kernel@armlinux.org.uk
Subject: Re: [CFT PATCH net-next v2] net: phylink: rename mac_link_state()
 op to mac_pcs_get_state()
From: David Miller <davem@davemloft.net>
In-Reply-To: <E1iXaSM-0004t1-9L@rmk-PC.armlinux.org.uk>
References: <E1iXaSM-0004t1-9L@rmk-PC.armlinux.org.uk>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 21 Nov 2019 19:14:20 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_191426_633050_F256829C 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: andrew@lunn.ch, nbd@openwrt.org, f.fainelli@gmail.com,
 alexandre.torgue@st.com, netdev@vger.kernel.org, sean.wang@mediatek.com,
 linux-stm32@st-md-mailman.stormreply.com, vivien.didelot@gmail.com,
 michal.simek@xilinx.com, joabreu@synopsys.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 thomas.petazzoni@bootlin.com, john@phrozen.org, matthias.bgg@gmail.com,
 peppe.cavallaro@st.com, radhey.shyam.pandey@xilinx.com,
 Mark-MC.Lee@mediatek.com, mcoquelin.stm32@gmail.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>
Date: Thu, 21 Nov 2019 00:36:22 +0000

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
> This is something I'd like to do to make it clearer what phylink
> expects of this function, and that it shouldn't just read-back how
> the MAC was configured.
> 
> This version drops the deeper changes, concentrating just on the
> phylink API rather than delving deeper into drivers, as I haven't
> received any feedback on that patch.
> 
> It would be nice to see all these drivers tested with this change.

I'm tempted to just apply this, any objections?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
