Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E23E117295
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 18:15:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSHeIFaP+k7m9ClUZhRPTkaQ8J45G2L4pPf3wV2VuOk=; b=bnP7g2ALFQOhpS
	z7bdAOYa0vBHC7yfv2AMSLFTZkubcU4YrkeEqsPDx82tPb4LQc5yVSE8gTvO0JitJw9OZkyJv744w
	SR4t+gCKCqL7CvSt1chrYMJ/0ulSiHkDJXC2MykEB0Prolu+VhBYdrotfqb+E6iIXDS9/1Q7aqi06
	9sRGKhtJO6LCQdc5HsXFRXKyVmx1UNo5IEoWWAOsg7ovrpU6cLFGuzaBm2dEiyAf2xsIQoObLI7J4
	QvL0raBBWBTZs8Dfy4c1CYVuY5EHttU1cx5TpmiLZexL+p07ads43lLMLNuSVCpNYn8n+4nUnzlBi
	x6PD2MGzT3TCrYmARFgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieMd7-0007IJ-Ju; Mon, 09 Dec 2019 17:15:29 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieMd0-0007HL-Vp
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 17:15:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yDkXn8c2FrkGfy+U0MRLuXrzEaNV8CpIo/QaRFz2xmk=; b=EGDMJAMzVzZqYHI5GtOsZe0vDx
 tq8tD6m0jNbrFCUTpJbj/4Q8jHLyi8GIWgNxrZFofOGSyH4vg6mJF5LvyTMJ6XF/mmlL1xiiKgPKd
 LVAHbKb2+yDoAQvdWqny4t+JS45zWGe18sLJa+z1g2gsUBblNbqfm8XM6no+X5BudnFc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1ieMcm-0006d0-NV; Mon, 09 Dec 2019 18:15:08 +0100
Date: Mon, 9 Dec 2019 18:15:08 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v1] ARM i.MX6q: make sure PHY fixup for KSZ9031 is
 applied only on one board
Message-ID: <20191209171508.GD9099@lunn.ch>
References: <20191209084430.11107-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209084430.11107-1-o.rempel@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_091523_030211_A247CDC4 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabio Estevam <festevam@gmail.com>, netdev@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Oleksij

> This patch changes the MICREL KSZ9031 fixup, which was introduced for
> the "Data Modul eDM-QMX6" board in following patch, to be only activated
> for this specific board.

...

>  static void __init imx6q_enet_phy_init(void)
>  {
> +	/* Warning: please do not extend this fixup list. This fixups are
> +	 * applied even on boards where related PHY is not directly connected
> +	 * to the ethernet controller. For example with switch in the middle.
> +	 */
>  	if (IS_BUILTIN(CONFIG_PHYLIB)) {
>  		phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
>  				ksz9021rn_phy_fixup);
> -		phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
> -				ksz9031rn_phy_fixup);
> +
> +		if (of_machine_is_compatible("dmo,imx6q-edmqmx6"))
> +			phy_register_fixup_for_uid(PHY_ID_KSZ9031,
> +						   MICREL_PHY_ID_MASK,
> +						   ksz9031rn_phy_fixup);
> +
>  		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffef,
>  				ar8031_phy_fixup);
>  		phy_register_fixup_for_uid(PHY_ID_AR8035, 0xffffffef,

What about the other 3 fixups? Are they not also equally broken,
applied for all boards, not specific boards?

	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
