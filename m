Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F29FE16FCF3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 12:06:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0UfUbYQDcAIW+y/b2Ph0eZU31GjDpFd9zyiqhpLNR4U=; b=XUrZRUghd7/nMx
	L0TtVrokSNec67EPmjY92VlLTUlspGl1fuPDOzomp/FR0YxkzQp6LmPOBYBifvLEfW3PyosEgBep2
	yUkY+lgh+OLman1eTAhq8E9+tQBPG1mVYReIu6GG5MgW5DS42t3LANHGlKMu3FO7mO5SFNV3MvjNV
	9OK9BHvjZwvOQOk9OiBMlfWDqq+DNbtnhFF03G3Q0h1w/clBydFRk1sToIlb1fQZLDkHqnIVErpw3
	cOnYtdcDipgcfpFP5JOUXTkFZbYrhss4pTeOKemyfERePxq4jviwxcvhqVRYqhgiVH8+uYdSXDgHb
	2qSXZoPyaRYDtkyW0YAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6uWK-0000ix-DE; Wed, 26 Feb 2020 11:06:28 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6uWB-0000iW-8T; Wed, 26 Feb 2020 11:06:20 +0000
Received: by mail-ed1-x542.google.com with SMTP id e10so3230260edv.9;
 Wed, 26 Feb 2020 03:06:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qD490qP8YoHuMggNJ+4rCSwLuR21SazsOZ1+Y/A5tXY=;
 b=nAB7CUTnvsBjhe/PIwUREoSD8Dtea7xSb4TC/ZjuCq1rN7YookFkVvp8f5NZr8ViuK
 JDwLBw/0dPnEXcIRSMONvffCxwYafU6qASRFtw2FNJWsgVFLjapX7Y4NaqL3meEK0zbK
 uNBpTss6XQOEf+r08uX1VGCQ0l4g5Jtd4g7oug1CoUkmD6Lkte+9/zOKo7RA7ZGzOP5h
 34i5PNdEEhbSXfsPuH7I/CNg7jeUY9/lkboGTTuf0f5N0YJ2dZrhkAngbkNKktHnf1FZ
 /TIxN12YKiz/RCiSaMauemnXMy4FcKVLARcxQHPhLrOT7xcsiujLwxQ2HYaqpa7W2KQZ
 s4SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qD490qP8YoHuMggNJ+4rCSwLuR21SazsOZ1+Y/A5tXY=;
 b=tN4qjgba8bVBAKI4xq2C9ZBdW4mj9+dZTPyEkZSiQ11kM92Zc+z16B8O9jTxKhiZLD
 F4RxTYBkqsJM3qnhUpBkc+DT0tXzVywbhwJKj5idsTdy/yCSgfdKZePYVBfiSJHmI3nJ
 xlAvItguUpmUMKdvuZyNSRc+vNmyQGwKGQU1YhA1i8SZC2xi2ok6P1hqF5wVw2K1KEgn
 1zVPYK618CvA1E7s7BOe+xmVVtskB5uDw/2ZZHrA1b6vu/gfOCSQJXO9V3UD4Jelvhkk
 RpZIUyERk0gtE2KysNOoazqhUzLF8N55yHZ/ZAMTyBaoG8AmtKikbn2bi8nGkKLkciKS
 AXtA==
X-Gm-Message-State: APjAAAXzVlVmgPyyULtexW4XPhyx9fl1ID83LCaD4rkdI6oeGZk7HOiC
 5kELUd5yJtBezMJLXVC/8RWWqmgDbwVMh7VvV+I=
X-Google-Smtp-Source: APXvYqxKn9EHYJorI3u34MIoTYZ1p/XSstU3KzZU6YSsE3nbzrut7Z7pjBq/4/6dZdIrJEtcRK8EZjxaPv8Js3jOl/c=
X-Received: by 2002:a05:6402:3046:: with SMTP id
 bu6mr4201533edb.139.1582715177721; 
 Wed, 26 Feb 2020 03:06:17 -0800 (PST)
MIME-Version: 1.0
References: <20200226102312.GX25745@shell.armlinux.org.uk>
 <E1j6tqv-0003G6-BO@rmk-PC.armlinux.org.uk>
In-Reply-To: <E1j6tqv-0003G6-BO@rmk-PC.armlinux.org.uk>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Wed, 26 Feb 2020 13:06:06 +0200
Message-ID: <CA+h21hrR1Xkx9gwAT2FHqcH38L=xjWiPxmF2Er7-4fHFTrA8pQ@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/8] net: phylink: propagate resolved link
 config via mac_link_up()
To: Russell King <rmk+kernel@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_030619_325922_81663D4F 
X-CRM114-Status: GOOD (  22.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [olteanv[at]gmail.com]
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Ioana Radulescu <ruxandra.radulescu@nxp.com>, Jonathan Corbet <corbet@lwn.net>,
 Michal Simek <michal.simek@xilinx.com>, Jose Abreu <joabreu@synopsys.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev <netdev@vger.kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Felix Fietkau <nbd@nbd.name>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Wed, 26 Feb 2020 at 12:23, Russell King <rmk+kernel@armlinux.org.uk> wrote:
>
> Propagate the resolved link parameters via the mac_link_up() call for
> MACs that do not automatically track their PCS state. We propagate the
> link parameters via function arguments so that inappropriate members
> of struct phylink_link_state can't be accessed, and creating a new
> structure just for this adds needless complexity to the API.
>
> Tested-by: Andre Przywara <andre.przywara@arm.com>
> Tested-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Tested-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
>  Documentation/networking/sfp-phylink.rst      | 17 +++++-
>  drivers/net/ethernet/cadence/macb_main.c      |  7 ++-
>  .../net/ethernet/freescale/dpaa2/dpaa2-mac.c  |  7 ++-
>  drivers/net/ethernet/marvell/mvneta.c         |  8 ++-
>  .../net/ethernet/marvell/mvpp2/mvpp2_main.c   | 19 +++++--
>  drivers/net/ethernet/mediatek/mtk_eth_soc.c   |  7 ++-
>  .../net/ethernet/stmicro/stmmac/stmmac_main.c |  4 +-
>  .../net/ethernet/xilinx/xilinx_axienet_main.c |  7 ++-
>  drivers/net/phy/phylink.c                     |  9 ++-
>  include/linux/phylink.h                       | 57 ++++++++++++++-----
>  net/dsa/port.c                                |  4 +-
>  11 files changed, 105 insertions(+), 41 deletions(-)
>
> diff --git a/Documentation/networking/sfp-phylink.rst b/Documentation/networking/sfp-phylink.rst
> index d753a309f9d1..8d7af28cd835 100644
> --- a/Documentation/networking/sfp-phylink.rst
> +++ b/Documentation/networking/sfp-phylink.rst
> @@ -74,10 +74,13 @@ phylib to the sfp/phylink support.  Please send patches to improve
>  this documentation.
>
>  1. Optionally split the network driver's phylib update function into
> -   three parts dealing with link-down, link-up and reconfiguring the
> -   MAC settings. This can be done as a separate preparation commit.
> +   two parts dealing with link-down and link-up. This can be done as
> +   a separate preparation commit.
>
> -   An example of this preparation can be found in git commit fc548b991fb0.
> +   An older example of this preparation can be found in git commit
> +   fc548b991fb0, although this was splitting into three parts; the
> +   link-up part now includes configuring the MAC for the link settings.
> +   Please see :c:func:`mac_link_up` for more information on this.
>
>  2. Replace::
>
> @@ -207,6 +210,14 @@ this documentation.
>     using. This is particularly important for in-band negotiation
>     methods such as 1000base-X and SGMII.
>
> +   The :c:func:`mac_link_up` method is used to inform the MAC that the
> +   link has come up. The call includes the negotiation mode and interface
> +   for reference only. The finalised link parameters are also supplied
> +   (speed, duplex and flow control/pause enablement settings) which
> +   should be used to configure the MAC when the MAC and PCS are not
> +   tightly integrated, or when the settings are not coming from in-band
> +   negotiation.
> +
>     The :c:func:`mac_config` method is used to update the MAC with the
>     requested state, and must avoid unnecessarily taking the link down
>     when making changes to the MAC configuration.  This means the

Just to make sure I understand the changes:
- A MAC with no PCS can be configured in either .mac_config or .mac_link_up
- A MAC that needs to be manually reconfigured to the link mode
negotiated by its PCS needs to have the PCS configured in .mac_config
and the MAC in .mac_link_up
- A MAC with PCS where the MAC follows the PCS negotiation
automatically in hardware is basically equivalent with a MAC with no
PCS, and therefore can be configured in either .mac_config or
.mac_link_up
Is this correct?

Regards,
-Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
