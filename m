Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAFFF9A55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 21:12:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8gxpE9ZY7yuNxevrBXqpjug/MuwGjy0Wk0UuTNsPiIs=; b=Pa/Gnb3oj2MVrG
	iw7zIC5gZbqYlX5fv88lm3cNuAVmWnEdmSlTqItix/8Jf0w1OapOvk77O/3vLXaBepiQN06bnliYt
	XpyqVwVsEwZohs5IVZrDn4yXHYK8yFWWpRwD5/Is3tx2BWD5zbJ/ifAhpMIoMYkoYQbc0uSx7UCwW
	ISve29ztN+L9VNM9ag6kDdQv+D7qdQlHBotmBC6rfQZipJ562L7PROa/LB4Hc8s4yEfAKS8fXG76T
	LiAsIezC9+4Hj2KONGiwCoRKYCWcoZ6ovwMrV06YQAvi6GocjW/YaLdg4pIe5KT65lbY688d+VPVT
	p4VrjWz9Evi4POEzwJ7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUcWT-00082J-Qx; Tue, 12 Nov 2019 20:12:21 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUcWN-00081r-66
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 20:12:16 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id D1376154D250F;
 Tue, 12 Nov 2019 12:12:08 -0800 (PST)
Date: Mon, 11 Nov 2019 15:14:35 -0800 (PST)
Message-Id: <20191111.151435.931035548376130641.davem@davemloft.net>
To: clabbe@baylibre.com
Subject: Re: [PATCH] net: ethernet: dwmac-sun8i: Use the correct function
 in exit path
From: David Miller <davem@davemloft.net>
In-Reply-To: <1573385448-30282-1-git-send-email-clabbe@baylibre.com>
References: <1573385448-30282-1-git-send-email-clabbe@baylibre.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 12 Nov 2019 12:12:09 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_121215_226160_444A423E 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, joabreu@synopsys.com, stable@vger.kernel.org,
 peppe.cavallaro@st.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Corentin Labbe <clabbe@baylibre.com>
Date: Sun, 10 Nov 2019 11:30:48 +0000

> When PHY is not powered, the probe function fail and some resource are
> still unallocated.
> Furthermore some BUG happens:
> dwmac-sun8i 5020000.ethernet: EMAC reset timeout
> ------------[ cut here ]------------
> kernel BUG at /linux-next/net/core/dev.c:9844!
> 
> So let's use the right function (stmmac_pltfr_remove) in the error path.
> 
> Fixes: 9f93ac8d4085 ("net-next: stmmac: Add dwmac-sun8i")
> Cc: <stable@vger.kernel.org> # v4.15+
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
