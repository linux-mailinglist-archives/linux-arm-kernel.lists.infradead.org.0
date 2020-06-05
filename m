Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EC61EFE8F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 19:11:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLVh2yZYodsX7IF9n3nTRSBG2OZoKPs1lEL5vjXNKzs=; b=Y0vULBd4iCWGFL
	yL+gp6GXp/jJvPje/nEeNh90Kqb1Z4NqkvZzLFYO/EWzSzuHbGvpw27Xm8Cow4URRT5uJE4zNzFb2
	BwUGvm5+jfIfsjUD1yYpBCW/yCvP/BzZo4FSZS1uUtmldd1mi44TDRNgTWIHu5Bz3NSqd1nN2HRkm
	uAWcWvrHP/Upzyf2YroCl2lUzgAPfoh6+XoVcSHtU4huihssgDAOHxMM1wGy6dKSiY6ByhlAgwBol
	7nKK/7+z7xNk+GstBdfnD4cJwaCrT0INJiPfx1P2QcE4FW2vUIPd+k+ZUBvhHkV0FeO1mm/U3pdHP
	J+OULK/cidqMmtBPxhTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhFsS-0008N2-8K; Fri, 05 Jun 2020 17:11:32 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhFsK-0008MQ-Gl
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 17:11:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bFULnDIrcoo5vNAMnbXJrSEdqEqeynJptngL9eBaw6Q=; b=mgNuAmUwerwSjSW1bP6sifoPS
 oyVwlxDFU7+6K95DTJN/uwBCgVG6qcNHeOgU0MVAnOt2q4JbtLYZfrweVP3G/cqYVPqZhl4W5CNjN
 MJbvyHd2J4Nql52XeMpptQ1Q+13NExysoGAIKH08TLLVx6OhYbIet0IQZ+GLXOUHr/vV/7udIPsdW
 o5OdwuPmPbbxZm2flSEafet9dPMWGpM+vtWRxxT/KECZBkTHOS9SGFTw+q8GjqeGfstsqeVV5KVwj
 T9X+Gd/EDJEsZ6PVmiL58axOmosAqd9bJDfLU42hHldolIO3DWkVp2mqLn7n31Pwm/5v/M7JzwmyY
 jrApGxyYw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:49774)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jhFrf-0002d2-8n; Fri, 05 Jun 2020 18:10:43 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jhFrW-0007dl-Ma; Fri, 05 Jun 2020 18:10:34 +0100
Date: Fri, 5 Jun 2020 18:10:34 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next 7/8] net: phy: Add Synopsys DesignWare XPCS MDIO
 module
Message-ID: <20200605171034.GF1605@shell.armlinux.org.uk>
References: <cover.1583742615.git.Jose.Abreu@synopsys.com>
 <7d9880643585e4347027538df2a722dde54156cf.1583742616.git.Jose.Abreu@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d9880643585e4347027538df2a722dde54156cf.1583742616.git.Jose.Abreu@synopsys.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_101124_557370_4A95ED41 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jose,

I just tripped over a bug while grepping for something else and
reading a bit of this driver:

On Mon, Mar 09, 2020 at 09:36:26AM +0100, Jose Abreu wrote:
> +static int xpcs_read_lpa(struct mdio_xpcs_args *xpcs,
> +			 struct phylink_link_state *state)
> +{
> +	int ret;
> +
> +	ret = xpcs_read(xpcs, MDIO_MMD_AN, MDIO_STAT1);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (!(ret & MDIO_AN_STAT1_LPABLE)) {
> +		phylink_clear(state->lp_advertising, Autoneg);
> +		return 0;
> +	}
> +
> +	phylink_set(state->lp_advertising, Autoneg);
> +
> +	/* Clause 73 outcome */
> +	ret = xpcs_read(xpcs, MDIO_MMD_AN, DW_SR_AN_LP_ABL3);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (ret & DW_C73_2500KX)
> +		phylink_set(state->lp_advertising, 2500baseX_Full);
> +
> +	ret = xpcs_read(xpcs, MDIO_MMD_AN, DW_SR_AN_LP_ABL2);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (ret & DW_C73_1000KX)
> +		phylink_set(state->lp_advertising, 1000baseKX_Full);
> +	if (ret & DW_C73_10000KX4)
> +		phylink_set(state->lp_advertising, 10000baseKX4_Full);
> +	if (ret & DW_C73_10000KR)
> +		phylink_set(state->lp_advertising, 10000baseKR_Full);
> +
> +	ret = xpcs_read(xpcs, MDIO_MMD_AN, DW_SR_AN_LP_ABL1);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (ret & DW_C73_PAUSE)
> +		phylink_set(state->lp_advertising, Pause);
> +	if (ret & DW_C73_ASYM_PAUSE)
> +		phylink_set(state->lp_advertising, Asym_Pause);
> +
> +	linkmode_and(state->lp_advertising, state->lp_advertising,
> +		     state->advertising);

This is incorrect - you should not mask the link partner's advertisement
with our advertisement like this; consider the table in 802.3 for
resolving the pause modes, where simply doing a bitwise-and operation
between the two advertisements would severely restrict the resulting
resolution to either symmetric pause or nothing at all.

You want to do this when you resolve the speed, but only _temporarily_
in order to resolve the speed - you do not want to write back the
result to state->lp_advertising.

You may wish to fix that.

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
