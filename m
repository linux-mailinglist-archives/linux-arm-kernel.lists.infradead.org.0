Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CDD2E753
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 23:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8VE8pYtSako7emk+AZrKTdKzXh1CA5if/c8fRkHcwQ=; b=MLxFhDFK4eOZoo
	ZiU2XivQyrYn+YV8OiG1UlHTtk31aiVKHamHFT7/fi1oRAqjMiLTs2fVa6M+vwtr4TLDL3mti3c9b
	9a+3XvUgNYM+M5EX9j/v6ZQJh3yegNNs3iH7DfcGMOa5+/k9r3fE1gwAIhy2P2daQylcVIIygjhkf
	+aOK1UfAwrqAAlCgfej0e5AcmBZHaDFRfTTHmGeDqYEbdHIp1nKfH5H4PDKe1KHvIJsMnm28DV1+Z
	QgquRJXWBkZsSOUFjYwanpMYvxLJOeXJ5Glu0WTxqz+O66+tvp47PXQA9zsusM8MQ+S7betiecKXn
	WQ4FBmr93kncS0+CiT6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW5yn-0001Ke-Lz; Wed, 29 May 2019 21:19:25 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW5yh-0001KJ-1p
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 21:19:20 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 5E3FE136DF6FB;
 Wed, 29 May 2019 14:19:18 -0700 (PDT)
Date: Wed, 29 May 2019 14:19:15 -0700 (PDT)
Message-Id: <20190529.141915.945026439348535112.davem@davemloft.net>
To: yuehaibing@huawei.com
Subject: Re: [PATCH net-next] net: stmmac: Fix build error without CONFIG_INET
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190528091040.20288-1-yuehaibing@huawei.com>
References: <20190528091040.20288-1-yuehaibing@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 29 May 2019 14:19:18 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_141919_097754_CE141983 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: YueHaibing <yuehaibing@huawei.com>
Date: Tue, 28 May 2019 17:10:40 +0800

> Fix gcc build error while CONFIG_INET is not set
> 
> drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.o: In function `__stmmac_test_loopback':
> stmmac_selftests.c:(.text+0x8ec): undefined reference to `ip_send_check'
> stmmac_selftests.c:(.text+0xacc): undefined reference to `udp4_hwcsum'
> 
> Add CONFIG_INET dependency to fix this.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Fixes: 091810dbded9 ("net: stmmac: Introduce selftests support")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
