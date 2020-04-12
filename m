Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 033CD1A5FC5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 20:28:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4+MRIuNUjlp9FIBDiZ4/7uIqpRRQm+P3vhNKB6FTk0=; b=T5FXXghGStpCKk
	zS+3Y5hTPOamcil9n3UFObjzCwHG75GU2ZbJNiEdNrcEaK3Yv6dJqASX3387w0yae4d2JR1e/emim
	NbhcmUmw4asV3se0b2YrTyDn2lpnCWoMdfuahBYI8VQHBgs9xqZrw0TJYBtVF8rsNMGNN8UEufdZc
	q4MH5Irymu/FJeDoD/17WD3ZyETlVQtkqFfWgwxgEtbqU9m1N5oXm0wcbmVdp8LQlp2X6dB/lPPLk
	MPF8oa8zB7Xe0dLI6ZwJ7bnbNDisw68/2CJl5LYdJR1kXux/eSn6pmHVZkG8xjU+ed/KOTK2dyXUZ
	UCKW3XhfpkXKn4udl0wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNhL0-0004TD-Fs; Sun, 12 Apr 2020 18:28:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNhKu-0004SQ-Kh
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 18:28:05 +0000
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com
 (c-67-180-217-166.hsd1.ca.comcast.net [67.180.217.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D26B206C3;
 Sun, 12 Apr 2020 18:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586716083;
 bh=VF/nhuZkTZ8b9/mmFS8H59iIm0vUnbplPKcaVA78jYk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=uqvVcVx0nCzUrTkSmtbmJNs6AcH/x6NxpLIYwCeajkEnc1Zg47ZYTf+XfHIAh6isS
 cebWIL8AVtXk4dlUBHDL6nUkgzxHzsqTGH1cjO99Y/HlidtmYxMHuRCNFlpyeVizXx
 ep69wvlNg/MB1ZPWhG/IhaPm0VXgQtkQKtnIowMo=
Date: Sun, 12 Apr 2020 11:27:56 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH net] net: stmmac: Guard against txfifosz=0
Message-ID: <20200412112756.687ff227@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200412034931.9558-1-f.fainelli@gmail.com>
References: <20200412034931.9558-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_112804_697370_5B725AB2 
X-CRM114-Status: GOOD (  19.64  )
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [67.180.217.166 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org, open
 list <linux-kernel@vger.kernel.org>, mripard@kernel.org,
 "moderated list:ARM/STM32       
 ARCHITECTURE" <linux-stm32@st-md-mailman.stormreply.com>,
 Jose Abreu <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, olteanv@gmail.com, "David S.
 Miller" <davem@davemloft.net>, "moderated
 list:ARM/STM32        ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 11 Apr 2020 20:49:31 -0700 Florian Fainelli wrote:
> After commit bfcb813203e619a8960a819bf533ad2a108d8105 ("net: dsa:
> configure the MTU for switch ports") my Lamobo R1 platform which uses
> an allwinner,sun7i-a20-gmac compatible Ethernet MAC started to fail
> by rejecting a MTU of 1536. The reason for that is that the DMA
> capabilities are not readable on this version of the IP, and there is
> also no 'tx-fifo-depth' property being provided in Device Tree. The
> property is documented as optional, and is not provided.
> 
> The minimum MTU that the network device accepts is ETH_ZLEN - ETH_HLEN,
> so rejecting the new MTU based on the txfifosz value unchecked seems a
> bit too heavy handed here.

OTOH is it safe to assume MTUs up to 16k are valid if device tree lacks
the optional property? Is this change purely to preserve backward
(bug-ward?) compatibility, even if it's not entirely correct to allow
high MTU values? (I think that'd be worth stating in the commit message
more explicitly.) Is there no "reasonable default" we could select for
txfifosz if property is missing?

> Fixes: eaf4fac47807 ("net: stmmac: Do not accept invalid MTU values")
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index e6898fd5223f..9c63ba6f86a9 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -3993,7 +3993,7 @@ static int stmmac_change_mtu(struct net_device *dev, int new_mtu)
>  	new_mtu = STMMAC_ALIGN(new_mtu);
>  
>  	/* If condition true, FIFO is too small or MTU too large */
> -	if ((txfifosz < new_mtu) || (new_mtu > BUF_SIZE_16KiB))
> +	if ((txfifosz < new_mtu && txfifosz) || (new_mtu > BUF_SIZE_16KiB))
>  		return -EINVAL;
>  
>  	dev->mtu = new_mtu;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
