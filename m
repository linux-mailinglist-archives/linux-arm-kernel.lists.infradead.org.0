Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2184EC958E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 02:22:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytxCXGfkE/xekowsLkXtCKt5jjQIfiSXbTzWOBiADGc=; b=ZQ4LDzY40g2G3p
	6OqnKp9s/GRXfCjoZimb4WdcQiShDeSlZbEEDcTfLjL+Wdt55wEXlqgvakBQMQ4rJQ8shr0BBL9cm
	LS6q/9w4icNAC/mcj3jGOyZzsSW2NOmtFX2WTNFOl9O9GIZiOhp+ranMclEVCxuGioKGJ7t8MYedN
	LPrWymqzrPO4eNwHxhoQpGUI+iIouAMfkcx0WDdspcf2PgkISRR3G1h8Sqi4BUy+/y92rHOnGXXMu
	2ZkoNY+9WdH/LJoTqoV7C1sbGueA3sHl+ZCIpZLGp5QH2ooCACAX9nx87L5n7V3S7OF6yWskEakN1
	rj4KU5CX+wfPQcoT160A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFosw-00041F-OG; Thu, 03 Oct 2019 00:22:22 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFosq-00040O-Sr
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 00:22:18 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4A6B415527ED1;
 Wed,  2 Oct 2019 17:22:14 -0700 (PDT)
Date: Wed, 02 Oct 2019 17:22:13 -0700 (PDT)
Message-Id: <20191002.172213.1475260023258384833.davem@davemloft.net>
To: thierry.reding@gmail.com
Subject: Re: [PATCH net] net: stmmac: Avoid deadlock on suspend/resume
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191002144946.176976-1-thierry.reding@gmail.com>
References: <20191002144946.176976-1-thierry.reding@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 02 Oct 2019 17:22:14 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_172216_932171_30A40606 
X-CRM114-Status: UNSURE (   7.38  )
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
Cc: f.fainelli@gmail.com, alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, peppe.cavallaro@st.com,
 linux-arm-kernel@lists.infradead.org, bbiswas@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <thierry.reding@gmail.com>
Date: Wed,  2 Oct 2019 16:49:46 +0200

> From: Thierry Reding <treding@nvidia.com>
> 
> The stmmac driver will try to acquire its private mutex during suspend
> via phylink_resolve() -> stmmac_mac_link_down() -> stmmac_eee_init().
> However, the phylink configuration is updated with the private mutex
> held already, which causes a deadlock during suspend.
> 
> Fix this by moving the phylink configuration updates out of the region
> of code protected by the private mutex.
> 
> Fixes: 19e13cb27b99 ("net: stmmac: Hold rtnl lock in suspend/resume callbacks")
> Suggested-by: Bitan Biswas <bbiswas@nvidia.com>
> Signed-off-by: Thierry Reding <treding@nvidia.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
