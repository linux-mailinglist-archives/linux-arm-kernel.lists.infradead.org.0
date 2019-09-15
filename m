Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 058AEB317C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 20:52:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2FcQVyu3TSFDs+/0FttRCqMSg8icHFW4PKZ+QbleqE=; b=SCa2paka0kv+dQ
	Au6PJ0fqsw47z8UJ0oan6Yn7ACrcLuKInudJI2MZfmtMpO+NlwX1P8D6r5SaCl1ismu97b8BYK3/E
	qQUebijkGGncuoFVwsBkQ1WQZ8rQULgLhZxXlCc2Q6H1ZYfKrDcKTPdRyBiMFqEOiLR9Ot6TStcVe
	nG8LKUzPPRr+buqZgBDllXmqJBzHSPGU2icIxErvYXt/WF81K76BoTW3D7p2/E8w4RlHzC4+JG7iV
	m3QXmvhmGc4/GrDeIzZxcxlx6xv9YLBuWsyg4s0eKzLsR9Eq/bjXrbnePi/yq1g2v3PKqU6Lkjir4
	AkdQ92qT9N0LI/FZzz0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9Zd9-00007i-Tw; Sun, 15 Sep 2019 18:52:16 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9Zcv-000079-MQ
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 18:52:03 +0000
Received: from localhost (93-63-141-166.ip28.fastwebnet.it [93.63.141.166])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 99A15153E82EC;
 Sun, 15 Sep 2019 11:51:50 -0700 (PDT)
Date: Sun, 15 Sep 2019 19:51:49 +0100 (WEST)
Message-Id: <20190915.195149.86866545205816280.davem@davemloft.net>
To: alexandru.ardelean@analog.com
Subject: Re: [PATCH v2] net: stmmac: socfpga: re-use the `interface`
 parameter from platform data
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190912132850.10585-1-alexandru.ardelean@analog.com>
References: <20190912132850.10585-1-alexandru.ardelean@analog.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 15 Sep 2019 11:51:52 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_115201_736635_F507CDFD 
X-CRM114-Status: UNSURE (   7.26  )
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandru Ardelean <alexandru.ardelean@analog.com>
Date: Thu, 12 Sep 2019 16:28:50 +0300

> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c
> index c141fe783e87..5b6213207c43 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c
 ...
> +static inline int socfpga_get_plat_phymode(struct socfpga_dwmac *dwmac)

Please do not use the inline keyword in foo.c files, let the compiler device.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
