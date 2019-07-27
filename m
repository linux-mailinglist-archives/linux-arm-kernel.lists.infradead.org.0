Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB1B77BE6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 22:52:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rzWLGNj0D8SAnmCya8Cz1Os17IU/iFopfTA02j3lot0=; b=OwSG9fQ75j1dw8
	kwsxRZK8M7hMQ3wZBn6LwwyGMzwXx+F8mw2kXFTacx+4D92XAKWJD3ifRJo9U0zZ60zYZnP5mPJZn
	z1rCErEZ9F7VGGoA/ucmPtW27CDhlMGDvyoI13bFfIqoG6fqAgiJbtzNbUUTOfR8HOAoUhFmLBuQT
	I2eCvvmhWtHSl5sNTyou/mYre+e9LQBozEiH1u1I9ozAS8xp+5cQ6NnSx0WdxMJu7NiL9FATx+Q+H
	aAMP4CapT5WIGznEO0xTTnjZlkFOd1mTpU29BZ05TPeNRdEr/mQLyzznQsJtNWtF2fhRSy5ajpMxG
	99Vcem2E3JnlXIbm7yQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrTgT-0002DT-Pz; Sat, 27 Jul 2019 20:52:53 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrTgI-0002D0-3K
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 20:52:43 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 9F9361534D12A;
 Sat, 27 Jul 2019 13:52:39 -0700 (PDT)
Date: Sat, 27 Jul 2019 13:52:39 -0700 (PDT)
Message-Id: <20190727.135239.1789409094437500386.davem@davemloft.net>
To: thierry.reding@gmail.com
Subject: Re: [PATCH net-next 1/2] net: stmmac: Make MDIO bus reset optional
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190726102741.27872-1-thierry.reding@gmail.com>
References: <20190726102741.27872-1-thierry.reding@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 27 Jul 2019 13:52:39 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_135242_145114_95359CF3 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org, jonathanh@nvidia.com,
 joabreu@synopsys.com, linux-tegra@vger.kernel.org, peppe.cavallaro@st.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <thierry.reding@gmail.com>
Date: Fri, 26 Jul 2019 12:27:40 +0200

> From: Thierry Reding <treding@nvidia.com>
> 
> The Tegra EQOS driver already resets the MDIO bus at probe time via the
> reset GPIO specified in the phy-reset-gpios device tree property. There
> is no need to reset the bus again later on.
> 
> This avoids the need to query the device tree for the snps,reset GPIO,
> which is not part of the Tegra EQOS device tree bindings. This quiesces
> an error message from the generic bus reset code if it doesn't find the
> snps,reset related delays.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
