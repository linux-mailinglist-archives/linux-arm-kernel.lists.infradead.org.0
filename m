Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2EFEA5C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 22:52:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0OQe6A995MNmNlZavWBVqLKAeaV4bF/Etf2Ab6pgNY=; b=HsGoPvmodvZl/w
	o9z64yeWIKXtcK26CujTAWkifZmOvw8AdLBs/5P0yBpi1dFtRTn1SuSVGAqlFu8ygmPnviVVWoG81
	A5T4A26uyEhgwPZmjFsPvJLfgN6ssUo7/Ggr47Y74Gjk9ScTehVylKV9b99ryMhhwhssRyi/YgmHm
	ePHxRpjipv2UR+QewgmY+Cw9EUvE2615r5nrjLXrd8OyhxmU5rYmnmy8yairlilJCNpHXxvY1dIsF
	9x5PXgMiJxyxE1ZwoqQKhOU8fD6bk9dFlJvmHgBylkkBj+KQMI7xFtbQV0NIWrFe2V5s/URKhKilD
	flMx5zGK4EKHesqBp9VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPvtZ-0005zk-9r; Wed, 30 Oct 2019 21:52:49 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPvtP-0005yg-K5
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 21:52:40 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 5DB1114CFAAEA;
 Wed, 30 Oct 2019 14:52:35 -0700 (PDT)
Date: Wed, 30 Oct 2019 14:52:34 -0700 (PDT)
Message-Id: <20191030.145234.1629187794527849559.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net 4/9] net: stmmac: selftests: Must remove UC/MC
 addresses to prevent false positives
From: David Miller <davem@davemloft.net>
In-Reply-To: <36d9af9080068c4e38cf50e80b6f2a5eafc9ed99.1572355609.git.Jose.Abreu@synopsys.com>
References: <cover.1572355609.git.Jose.Abreu@synopsys.com>
 <cover.1572355609.git.Jose.Abreu@synopsys.com>
 <36d9af9080068c4e38cf50e80b6f2a5eafc9ed99.1572355609.git.Jose.Abreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 30 Oct 2019 14:52:35 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_145239_660959_E681F396 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Joao.Pinto@synopsys.com, alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Tue, 29 Oct 2019 15:14:48 +0100

> @@ -499,9 +501,18 @@ static int stmmac_test_hfilt(struct stmmac_priv *priv)
>  	if (netdev_mc_count(priv->dev) >= priv->hw->multicast_filter_bins)
>  		return -EOPNOTSUPP;

This test above...

> +	dummy_dev = alloc_etherdev(0);
> +	if (!dummy_dev)
> +		return -ENOMEM;
> +
> +	/* Remove all MC addresses */
> +	netdev_for_each_mc_addr(ha, priv->dev)
> +		dev_mc_add(dummy_dev, ha->addr);
> +	dev_mc_flush(priv->dev);

No longer makes any sense now that you're removing all of the MC
addresses.

Also I know it seems that it should be guaranteed that re-adding all of
the previously configured MC addresses should succeed.  But I am always
wary when I see error codes ignored like this.

This test makes destructure changes to the device's configuration,
perhaps in a non-restorable fashion if errors occur re-adding the MC
list entries.

Running a test should never even remotely introduce a change in the
device state like that.

I really don't like this, to be honest.  I'd hate to be the user who
had this somehow trigger on them and then have to diagnose it. :-/


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
