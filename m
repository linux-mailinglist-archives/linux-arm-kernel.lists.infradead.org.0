Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39787B05C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 00:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N7BjHT1hp9y9E0/Rca4RMMykfa2Z0fimRv5xk/0gfGM=; b=HBQoZB79PUR1DF
	Y3oXO3hjnK7TjPfQm0oPKxVW1M7NHkrRV58mC6h+t8gXq8INv6KJmBt6neLzufICceQmKrLgy5X0j
	byn4WyF9WjBaNB3ZGjzeKWKQ/qQfCPTa4e7OmhD8EYuWqmxeUHU75FttuEDF/OhFK/L+xUqREIXgY
	TdgqXYWMBGVlxhe9OP/OCylj/8wAyezK67sy5YaY63SeQQkdPISAdQqU+YgFbGUPZ1CVy2DYlanZh
	kNsL/ZvAzHxtPu/Aq35XzKsuWCFijH5ycVF9RTE+4L/i/jfoWZECSvXACGxnXEFLcKHZb+KbXFHtY
	OECaZJot03X2+dSKsTDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8BRp-0002Ux-T8; Wed, 11 Sep 2019 22:50:49 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8BRd-0002Ub-Su
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 22:50:39 +0000
Received: from localhost (unknown [88.214.186.163])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 594FE154FCEC3;
 Wed, 11 Sep 2019 15:50:33 -0700 (PDT)
Date: Thu, 12 Sep 2019 00:50:31 +0200 (CEST)
Message-Id: <20190912.005031.1882887947559838557.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net-next] net: stmmac: pci: Add HAPS support using GMAC5
From: David Miller <davem@davemloft.net>
In-Reply-To: <c37a55225e1ef66233b47c02b1441b91abeb3b76.1568047994.git.joabreu@synopsys.com>
References: <c37a55225e1ef66233b47c02b1441b91abeb3b76.1568047994.git.joabreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 11 Sep 2019 15:50:35 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_155037_935774_8D2978FA 
X-CRM114-Status: UNSURE (   5.61  )
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
Cc: Joao.Pinto@synopsys.com, alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Mon,  9 Sep 2019 18:54:26 +0200

> Add the support for Synopsys HAPS board that uses GMAC5.
> 
> Signed-off-by: Jose Abreu <joabreu@synopsys.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
