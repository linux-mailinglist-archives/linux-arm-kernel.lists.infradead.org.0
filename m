Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29ECD75749
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 20:53:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eAj/Hwn0kNTiYFV8dYD4NkR44QnuTiyBUCpeBuHxQ1g=; b=E8vdDlqdjh6JOy
	hPZx1icTHYtMbb2pazlbcxptgqrIk3xEWuSfN+4yctsxJS9ArddWrF8UPGSE0MSstFUi5CVXPaf2t
	9SDDKekY5Cx+gKavTh48nYGx5TBi/pP0XiEfptYjGKy2LFbase4nMgjm0VIyzBRFbNKxpqH2DaZCp
	Dr064H4Tq4sUGogXnlrU5huPLs6/saNjFWpZgAXfLQ29+jjc2A7rP1ziLixpzON6uwqtRbCDVQMGa
	rna3fAwNVFOMIG93h7Xl8uoPzPZjpK2CAKeey4cetaxcyzd8NW8RpxY59SKrll9slAKJHa4dDOHXK
	ju1KH1XZDEgfZrDf7sVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqirb-0004Z3-7i; Thu, 25 Jul 2019 18:53:15 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqirP-0004YG-0J
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 18:53:04 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id D7C4E1439869E;
 Thu, 25 Jul 2019 11:52:56 -0700 (PDT)
Date: Thu, 25 Jul 2019 11:52:56 -0700 (PDT)
Message-Id: <20190725.115256.1232519801887604352.davem@davemloft.net>
To: navid.emamdoost@gmail.com
Subject: Re: [PATCH] stmmac_dt_phy: null check the allocation
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190723222809.9752-1-navid.emamdoost@gmail.com>
References: <20190723222809.9752-1-navid.emamdoost@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 25 Jul 2019 11:52:57 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_115303_045819_9D0C440A 
X-CRM114-Status: GOOD (  10.28  )
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
Cc: joabreu@synopsys.com, alexandre.torgue@st.com, secalert@redhat.com,
 netdev@vger.kernel.org, kjlu@umn.edu, linux-kernel@vger.kernel.org,
 emamd001@umn.edu, mcoquelin.stm32@gmail.com, smccaman@umn.edu,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Navid Emamdoost <navid.emamdoost@gmail.com>
Date: Tue, 23 Jul 2019 17:28:09 -0500

> @@ -342,10 +342,13 @@ static int stmmac_dt_phy(struct plat_stmmacenet_data *plat,
>  		mdio = true;
>  	}
>  
> -	if (mdio)
> +	if (mdio) {
>  		plat->mdio_bus_data =
>  			devm_kzalloc(dev, sizeof(struct stmmac_mdio_bus_data),
>  				     GFP_KERNEL);
> +		if (!plat->mdio_bus_data)
> +			return -ENOMEM;

This leaks a reference to plat->mdio_node() which is acquired in the
for_each_child_of_node() loop right before the context here.

This is what I really fear about these automated patches, it is quite
often the case that acquired resources are subtly acquired in nearby
code and not released by the proposed "fix".

Therefore, either we end up with a regression, or as is the case here
a reviewer invests more time into double checking your patch than you
put into writing the patch in the first place.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
