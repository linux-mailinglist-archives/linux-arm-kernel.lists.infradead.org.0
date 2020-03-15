Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21203185B0D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 08:38:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m0RSSYTp68yb+XW7quqJm+PTI0WfNwpguGxWSOZ2rNU=; b=rPkRPwkUMC7VGf
	9am0CMqStN4aUianage57o/Gvyp2N/scKGw4nQwmaOcrWoVeb+0fxh0PWY4eztfuawVAXkNQHEuSV
	4AZ1qjgb4nz0SYZoQsuLE3mml0B0a/kBGJ7jNbzo2c2E31hNCFZl0cqVT60ockLjBMUzf+hGPFFzz
	A2H6fYMFOejsaPIC+cMOuROixcW3g9Qf4dUeav2Tqj28arb+XkOXiYDvC/V+5j1waGUzG8NYZZfbf
	0uNS07QjRBA/B1nAATYzJlYoAV3UhMWagwuipbH5P1kL04O9YA8s57jvzk98abyziusxu18fcIs6d
	33PKqslrY1O4KpGG6gbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDNqU-00040W-U0; Sun, 15 Mar 2020 07:38:02 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDNqN-00040F-RH
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 07:37:57 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 9A848141B9DD1;
 Sun, 15 Mar 2020 00:37:46 -0700 (PDT)
Date: Sun, 15 Mar 2020 00:37:45 -0700 (PDT)
Message-Id: <20200315.003745.329177895751390879.davem@davemloft.net>
To: zhengdejin5@gmail.com
Subject: Re: [PATCH net-next] net: stmmac: platform: convert to
 devm_platform_ioremap_resource
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200313144257.9351-1-zhengdejin5@gmail.com>
References: <20200313144257.9351-1-zhengdejin5@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 15 Mar 2020 00:37:48 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_003755_883784_11E6CAF8 
X-CRM114-Status: UNSURE (   5.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

From: Dejin Zheng <zhengdejin5@gmail.com>
Date: Fri, 13 Mar 2020 22:42:57 +0800

> Use devm_platform_ioremap_resource() to simplify code, which
> contains platform_get_resource and devm_ioremap_resource.
> 
> Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>

Applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
