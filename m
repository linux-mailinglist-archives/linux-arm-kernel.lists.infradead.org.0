Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE27AEECE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 17:46:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfrftQNguuZ8poVAC3166AMlZ7h8Kz2nFIC1lVNnXCE=; b=ZbpuT3tlr8aJaK
	khm2ZUePNserAIkM+Ly926VGYWnyRVPTtauwdrd7qrPDNI1ndPT2TgrW2J+Hnb2ooygCe3FkNfv+i
	wdEOOPpMxTJ7qBo/Cbz32kI4TQ0Ne+GT8HXzPPFS/GMjyl4ayUqPiaDfoIoifs1UXVjxqtuM4Vp/U
	BjvdDRht5aKxfXsBqXiBcREGHpEHf2DDjDezzyXlllEPJaBbuUIOeaps4N0w33iQuDA4F+k4yWXcX
	v3pK/sHTx4K2Hl2OTsRtwvaxpWSASzjTZtfpVqGCSJge0YQuuPpz4PgStk6yi9suB+/SK6DS5o/FE
	m+eCW5aYT9NaVW8VTfMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7iLH-0005MS-9P; Tue, 10 Sep 2019 15:46:07 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7iL3-0005J5-5E
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 15:45:54 +0000
Received: from localhost (unknown [148.69.85.38])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id C02AA154F499A;
 Tue, 10 Sep 2019 08:45:47 -0700 (PDT)
Date: Tue, 10 Sep 2019 17:45:44 +0200 (CEST)
Message-Id: <20190910.174544.945128884852877943.davem@davemloft.net>
To: alexandru.ardelean@analog.com
Subject: Re: [PATCH] net: stmmac: socfpga: re-use the `interface` parameter
 from platform data
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190906123054.5514-1-alexandru.ardelean@analog.com>
References: <20190906123054.5514-1-alexandru.ardelean@analog.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 10 Sep 2019 08:45:49 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_084553_220096_77587B98 
X-CRM114-Status: UNSURE (   8.53  )
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
Date: Fri, 6 Sep 2019 15:30:54 +0300

> The socfpga sub-driver defines an `interface` field in the `socfpga_dwmac`
> struct and parses it on init.
> 
> The shared `stmmac_probe_config_dt()` function also parses this from the
> device-tree and makes it available on the returned `plat_data` (which is
> the same data available via `netdev_priv()`).
> 
> All that's needed now is to dig that information out, via some
> `dev_get_drvdata()` && `netdev_priv()` calls and re-use it.
> 
> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>

This doesn't build even on net-next.

And if your patch does target net-next you must indicate this properly in the
Subject line as "[PATCH net-next]" vs. "[PATCH net]"

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
