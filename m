Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD1F16B9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 21:44:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/Mhe6o0xjhhodjkWBsQdY8ph27WV8fTHotJAYepcXA=; b=fO7hq9RmD8dkDg
	iePok0c8iaYO2HoJoxxMvVzOnnWYmmodDdBH8BvD3LXR+ZUdkdqav51kMLo6IJNIGgWaMxD47PA95
	rD5kz8Hj8wxtvyKgPAmMD2/W164T2DZHI4EGmb33stPAr53fSzzMZiYToVX7mUUfpOlbLrtdhyhYM
	LTZPe/Ada/OHQno7cTO02S0OjTnx2zZsg9PpoprKf6fgV3r4Zk+akRICAJtVJqWOuFjLfpnBeNb2f
	Clmf9Hya1oOm+mbT7I/qOEPOsp6xzp9UsdHFDtxpgInVvKym4EG35sjzCM1hSHAO7QP+X8sj99A6/
	j08Kr8WxHjCEtnbr1glQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO60U-0008E5-Ce; Tue, 07 May 2019 19:44:06 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO60N-0008Dd-B9
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 19:44:00 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 676D614B8AF42;
 Tue,  7 May 2019 12:43:58 -0700 (PDT)
Date: Tue, 07 May 2019 12:43:58 -0700 (PDT)
Message-Id: <20190507.124358.1158001675039394639.davem@davemloft.net>
To: maxime.chevallier@bootlin.com
Subject: Re: [PATCH net] net: mvpp2: cls: Add missing NETIF_F_NTUPLE flag
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190507123635.17782-1-maxime.chevallier@bootlin.com>
References: <20190507123635.17782-1-maxime.chevallier@bootlin.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 07 May 2019 12:43:58 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_124359_379478_299E36D1 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: jakub.kicinski@netronome.com, antoine.tenart@bootlin.com,
 netdev@vger.kernel.org, gregory.clement@bootlin.com,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk, nadavh@marvell.com,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com, stefanc@marvell.com,
 mw@semihalf.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Date: Tue,  7 May 2019 14:36:35 +0200

> Now that the mvpp2 driver supports classification offloading, we must
> add the NETIF_F_NTUPLE to the features list.
> 
> Fixes: 90b509b39ac9 ("net: mvpp2: cls: Add Classification offload support")
> Reported-by: Jakub Kicinski <jakub.kicinski@netronome.com>
> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
> ---
> Hello David,
> 
> This patch applies on top of a commit 90b509b39ac9, which is in net-next
> but hasn't made it to -net yet.
> 
> Thanks,
> 
> Maxime
> 
>  drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
> index 25fbed2b8d94..1f164c893936 100644
> --- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
> +++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
> @@ -5040,8 +5040,10 @@ static int mvpp2_port_probe(struct platform_device *pdev,
>  	dev->hw_features |= features | NETIF_F_RXCSUM | NETIF_F_GRO |
>  			    NETIF_F_HW_VLAN_CTAG_FILTER;
>  
> -	if (mvpp22_rss_is_supported())
> +	if (mvpp22_rss_is_supported()) {
>  		dev->hw_features |= NETIF_F_RXHASH;
> +		dev->features |= NETIF_F_NTUPLE;
> +	}

As Jakub said, this definitely looks like a typo and this should
be hw_features.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
