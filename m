Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EE462CAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 01:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKrate9f/3XBoc9gkyZxvpYR1ayH+6nW7y3ppp62qJM=; b=NhPRVkxwXXApoS
	BuZFNa81WfYCHLND91N/0MxhOCz4g0p3E/F6gtMd4dtIGF+AO0gVi+k/1LCCN6Uu1TcWI0y3DlQP6
	xcyBvLZA43rFoJ2QAGeAUdwSq9gKblrU6mMz1iMKyXzuJVz1LpUIwCqJzoJ08SlShOiUJYyyJJKbu
	TcCRZKbK7NbpbH/ebEjqqU8On22FquRvqClil4ellnQ0rAuViDQusjQcxMDdPP6LsyYIG1Z0gZrt0
	rTAlqDCgXkUmhcyKo79VhVLabwAxmAtJznNuRCOOREX3kss2Ny0PmOMwp2ZYEaa1N7jRkJCDL0fYv
	jaR2mtDdjN0XrDB4Prig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkd7p-0003T8-Ki; Mon, 08 Jul 2019 23:32:49 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkd7d-0003SK-Hd
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 23:32:38 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7F1F112E4E44D;
 Mon,  8 Jul 2019 16:32:36 -0700 (PDT)
Date: Mon, 08 Jul 2019 16:32:35 -0700 (PDT)
Message-Id: <20190708.163235.455094269982602106.davem@davemloft.net>
To: wen.yang99@zte.com.cn
Subject: Re: [PATCH] net: axienet: fix a potential double free in
 axienet_probe()
From: David Miller <davem@davemloft.net>
In-Reply-To: <1562384321-46727-1-git-send-email-wen.yang99@zte.com.cn>
References: <1562384321-46727-1-git-send-email-wen.yang99@zte.com.cn>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 08 Jul 2019 16:32:36 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_163237_584942_7FFF9304 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
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
Cc: wang.yi59@zte.com.cn, xue.zhihong@zte.com.cn, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, michal.simek@xilinx.com, hancock@sedsystems.ca,
 anirudh@xilinx.com, cheng.shengyu@zte.com.cn, John.Linn@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wen Yang <wen.yang99@zte.com.cn>
Date: Sat, 6 Jul 2019 11:38:41 +0800

> There is a possible use-after-free issue in the axienet_probe():
> 
> 1701:	np = of_parse_phandle(pdev->dev.of_node, "axistream-connected", 0);
> 1702:   if (np) {
> ...
> 1787:		of_node_put(np); ---> released here
> 1788:		lp->eth_irq = platform_get_irq(pdev, 0);
> 1789:	} else {
> ...
> 1801:	}
> 1802:	if (IS_ERR(lp->dma_regs)) {
> ...
> 1805:		of_node_put(np); ---> double released here
> 1806:		goto free_netdev;
> 1807:	}
> 
> We solve this problem by removing the unnecessary of_node_put().
> 
> Fixes: 28ef9ebdb64c ("net: axienet: make use of axistream-connected attribute optional")
> Signed-off-by: Wen Yang <wen.yang99@zte.com.cn>

Applied to net-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
