Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B03181692E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 19:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E/GiuyxEH/aA4+giQZ+ULu6r3fLmAEtASq74D4G/2Z8=; b=bBLI5y4WnVsTJB
	VCRFhNALlps6U/0JwYlAIrPSVroFdWC34NRSA8Hh/QBeUR7koYz+nmRTojeQ7tA04X5mGM3isEkHZ
	bycDP2C+IKiEubgP4VB0VgdQptGBHIk3FLfOmq2neM2khfVWwXxHQRgOL6e6ARL/8qirE89SIwR62
	kd/CvoxfMMxqp4tdQKdX9iwlCWRzTjFHcwRBkyax9eF9Y7tEg9YKySSckRZEg5gK60BRHurIWUpj8
	9ZOyDrlealRUS9LtBUep9kfsPFx/s1TusZJxhV8r8pa5dtBHfq7k0qiK8N5hW1HdiH+MYPmlsgi4e
	AntK9oy3V862si6UnzEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3t7-0005YO-Ki; Tue, 07 May 2019 17:28:21 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3sz-0005Xp-Or
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 17:28:15 +0000
Received: by mail-qt1-x844.google.com with SMTP id m32so16899180qtf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 10:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=EXaJJYnOhCMm1Ies7w0+ULwlGJK0FIFIMnFExUlBqmk=;
 b=o/r9IVM5MhwMiJDJ9GVBWFCxkF0ebVK49NOcXyK3oMxdQdwXCejyZcGgqxxZbluDRm
 TkLtTH/eX9lZ8Hmmjn3AjqvEtJOSVkbfEWlTF8X+cx3Ci0C6l/baZ/3IDmdJYLkq9Gxl
 qNfjNfWyviSVQuJ5NI/NVbGyZcbmMWcmfOPDmg1bZcSh/1hDkQy+VnbtYiIy9KVel14o
 Bh1AvI5Q4EXXWRlncz5nllTS/shUOyYW9YzFHkr3z+BRlktQFpIiru9Klc6AWvRe0uSa
 0LWCXqSSHhiYrQQYtkK2F7v0nNk19iYZYDgbfam9iurl9vHv5dReP0Nx7sQLTqdLcpQS
 XQEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=EXaJJYnOhCMm1Ies7w0+ULwlGJK0FIFIMnFExUlBqmk=;
 b=Q3rABo2wdxPFB7zi/mJUkJrMDMnh5AK5h//+c3jWeww5fdTdGmM4GSpKaqotlFEuMU
 0EYGobJfnSGyrQtLv8d6gItj6DR0rQLvKG6a8Ziyy7OWNBu8EYvz6FmAjnWxblsIWRcI
 QYmWHgXJO7oa5kUzqdwr4Nb82IMpGMM3rlGOnPT4wq8ERSg8pKMbHdSTa1Mr+BxZUuzs
 hV5arROQZwRMqHW3GgVLOOzY6fP9Jbmb0lghqBl6xm6dNEmhxKzyAc9fCrzr0nPniPML
 J/hBUMfSTrlyYpD9Yz6QKOrWovJBpDcCtCcnmBLFTB9Ii+X6nUCZdyLnaPAOl6ZZU3RL
 2dRw==
X-Gm-Message-State: APjAAAWL/qjc7Q7dxocYjpITVsRHpOcZS5FmuEqyNpnknksbtTYT8Uoi
 8mz6eNG6IgVWJCoqmdw6FQzLFA==
X-Google-Smtp-Source: APXvYqyIrBg1/Odexc0u9Gyx6vUUNEENb9y4VJBTuXlyJ+UvZiEnf2cIcBUNxrZ//Bz917WhUaM9ew==
X-Received: by 2002:ac8:2565:: with SMTP id 34mr28459068qtn.37.1557250092551; 
 Tue, 07 May 2019 10:28:12 -0700 (PDT)
Received: from cakuba.hsd1.ca.comcast.net ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id p6sm7274766qkc.13.2019.05.07.10.28.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 07 May 2019 10:28:12 -0700 (PDT)
Date: Tue, 7 May 2019 10:28:03 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: Re: [PATCH net] net: mvpp2: cls: Add missing NETIF_F_NTUPLE flag
Message-ID: <20190507102803.09fcb56c@cakuba.hsd1.ca.comcast.net>
In-Reply-To: <20190507123635.17782-1-maxime.chevallier@bootlin.com>
References: <20190507123635.17782-1-maxime.chevallier@bootlin.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_102813_812371_3CA838AA 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, nadavh@marvell.com,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com, stefanc@marvell.com,
 mw@semihalf.com, davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  7 May 2019 14:36:35 +0200, Maxime Chevallier wrote:
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

Hm, why not in hw_features?

> +	}
>  
>  	if (port->pool_long->id == MVPP2_BM_JUMBO && port->id != 0) {
>  		dev->features &= ~(NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
