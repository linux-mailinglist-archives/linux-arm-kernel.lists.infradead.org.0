Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 505531305AC
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 05:18:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M590A+PbfG/AD4Y17SsPZ1o7cDQu9v8nkPgGJ9UAh1Q=; b=CZN6VnBVrm1WPg
	/CoHd+mk+ctORiGpkYETSjwa/NsmB2qRqI+bYlRDCoJciTsvuVosG+oDNS7MCr/Z0Zyh0K1YAyW1Z
	rXyTt+av9WO5FbK1nwwGkuMAaUXz87DvIByGmPeIeKIlz2VcFSM+TkyHoS/W28tXsYNcpZgiULD3e
	IFEvJiaiZEhgrx71w9eRzEhT0jAPvtE7WtDoSQpCvRMzBYNF4wj5b42lbB0hLcfL1q3qSYO7VEMWg
	UHoLxaoug4sGrrIDxh2kbR27SjTkwoEQxWEIhk23nhOAjnaYWwq/B0M97wSJxQvsj0qriju/kkKsZ
	xhR+pKQqR4RY5VGE41Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inxNI-0004SM-Pl; Sun, 05 Jan 2020 04:18:48 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inxNB-0004R2-Tc
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Jan 2020 04:18:43 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A2822159F0B0A;
 Sat,  4 Jan 2020 20:18:33 -0800 (PST)
Date: Sat, 04 Jan 2020 20:18:33 -0800 (PST)
Message-Id: <20200104.201833.91020607861340266.davem@davemloft.net>
To: jiping.ma2@windriver.com
Subject: Re: [PATCH] stmmac: debugfs entry name is not be changed when udev
 rename device name.
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200102013544.19271-1-jiping.ma2@windriver.com>
References: <20200102013544.19271-1-jiping.ma2@windriver.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 04 Jan 2020 20:18:34 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_201841_962932_11D14B7D 
X-CRM114-Status: GOOD (  11.55  )
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jiping Ma <jiping.ma2@windriver.com>
Date: Thu, 2 Jan 2020 09:35:44 +0800

> Add one notifier for udev changes net device name.
> 
> Signed-off-by: Jiping Ma <jiping.ma2@windriver.com>
> ---
>  .../net/ethernet/stmicro/stmmac/stmmac_main.c | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index b14f46a57154..3b05cb80eed7 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -4038,6 +4038,31 @@ static int stmmac_dma_cap_show(struct seq_file *seq, void *v)
>  }
>  DEFINE_SHOW_ATTRIBUTE(stmmac_dma_cap);
>  
> +/* Use network device events to rename debugfs file entries.
> + */
> +static int stmmac_device_event(struct notifier_block *unused,
> +			       unsigned long event, void *ptr)
> +{
> +	struct net_device *dev = netdev_notifier_info_to_dev(ptr);
> +	struct stmmac_priv *priv = netdev_priv(dev);
> +
> +	switch (event) {
> +	case NETDEV_CHANGENAME:

This notifier gets called for every single netdevice in the entire
system.

You cannot just assume that the device that gets passed in here is
an stmmac device.

Look at how other drivers handle this to see how to do it correctly.

Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
