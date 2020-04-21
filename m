Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8391B32B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 00:42:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxB2fHqz9UiuU3pH40uT11oN4ewikamP5cQK+MoMOng=; b=KgRBrlGHq7kO4i
	OvZ146W1gITPQQk13tFzXoS8HJb4NBnEd8LX7zSM23N+aRJWWO/rLzkOr5X3XT8OrPilrXLyBcxyx
	78yxiVZhf+XHdVN+0q1Bf0PAhq47x5ZMo9JHT8paSUgfRWAidqJQye51Df0HRrT6ciYjo7bwthTDP
	+mF3g8PaVK1yh7Ok36+VkzHnSKtrPjxZuTz9dMtKimL9Tcj1BcoESe8pWW9IiMoYIUgBTxsy2P1ky
	Xgf7n5K5JSMUZhbHu+u5XIDQKH/EFsOk/Z6UekUf/8ju+R+k3rKjtUm/i8KHmamEoT6ZpDX+5qwvg
	euBRtvvh2qXjofG4zxhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR1aq-00086t-CA; Tue, 21 Apr 2020 22:42:16 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR1ag-00085E-A4
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 22:42:07 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id BCEF3128E6F27;
 Tue, 21 Apr 2020 15:41:54 -0700 (PDT)
Date: Tue, 21 Apr 2020 15:41:53 -0700 (PDT)
Message-Id: <20200421.154153.172396683183248740.davem@davemloft.net>
To: vee.khee.wong@intel.com
Subject: Re: [PATCH net-next 1/1] net: stmmac: Add support for VLAN
 promiscuous mode
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200420033359.11610-1-vee.khee.wong@intel.com>
References: <20200420033359.11610-1-vee.khee.wong@intel.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 21 Apr 2020 15:41:55 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_154206_351322_CB850D13 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: alexandre.torgue@st.com, weifeng.voon@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 boon.leong.ong@intel.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wong Vee Khee <vee.khee.wong@intel.com>
Date: Mon, 20 Apr 2020 11:33:59 +0800

> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index e6898fd5223f..80250c7be783 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -4877,7 +4877,6 @@ int stmmac_dvr_probe(struct device *device,
>  		}
>  	}
>  
> -	ndev->features |= ndev->hw_features | NETIF_F_HIGHDMA;
>  	ndev->watchdog_timeo = msecs_to_jiffies(watchdog);
>  #ifdef STMMAC_VLAN_TAG_USED
>  	/* Both mac100 and gmac support receive VLAN tag detection */
> @@ -4892,6 +4891,7 @@ int stmmac_dvr_probe(struct device *device,
>  			ndev->features |= NETIF_F_HW_VLAN_STAG_TX;
>  	}
>  #endif
> +	ndev->features |= ndev->hw_features | NETIF_F_HIGHDMA;
>  	priv->msg_enable = netif_msg_init(debug, default_msg_level);

This change has no effect, because hw_features does not change across
this code block you are moving the line across.

So please remove this part of the patch it is pointless and makes your
change harder to review.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
