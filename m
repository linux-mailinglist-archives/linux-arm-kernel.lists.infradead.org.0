Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADA2DB78A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 21:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDTWJxXPnFIbZiofuikn1JnnMelke77cCBP+PaPNSS4=; b=c4UXvCv1g8zOlK
	qGdxz9YSK0vifRwVNSYHET21cJ/u7D+fd8CcZz+/CXTnvUQ0KkUiAgpaoclgMEqhCbFpzXA5L/L5w
	gJmpWxS7z0n6XotkrDJlz3gaTiXpdUqxWidAVOY3iSyizsi0nd7qoH17EwOGYTAW49bLa3R0jQvlk
	f+veH2bHkj3/vJDZhq+hsK6WcsAGY8a/y4gzMCj+C3Cv1YzZJInuno7CmL9cEqZ5qPCzJxBFK7yen
	KFE53s1t+ctSNHG0DOcw3l7nPmGduSB2he+yHSGcRcC0NA7u9CA96FTNkvxZFPWsngwJmxJkN6pJ8
	XrQ8GBzzZnLF2UYtCXdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLBVG-00031O-0w; Thu, 17 Oct 2019 19:32:06 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLBV6-00030b-Gg
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 19:31:57 +0000
Received: from localhost (unknown
 [IPv6:2603:3023:50c:85e1:5314:1b70:2a53:887e])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 8CD2614049CCB;
 Thu, 17 Oct 2019 12:31:51 -0700 (PDT)
Date: Thu, 17 Oct 2019 15:31:50 -0400 (EDT)
Message-Id: <20191017.153150.1433354673381849692.davem@davemloft.net>
To: ben.dooks@codethink.co.uk
Subject: Re: [PATCH] net: stmmac: fix argument to stmmac_pcs_ctrl_ane()
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191016082205.26899-1-ben.dooks@codethink.co.uk>
References: <20191016082205.26899-1-ben.dooks@codethink.co.uk>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 17 Oct 2019 12:31:52 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_123156_558966_91226FCF 
X-CRM114-Status: UNSURE (   7.17  )
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
Cc: linux-kernel@lists.codethink.co.uk, alexandre.torgue@st.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, joabreu@synopsys.com,
 mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
Date: Wed, 16 Oct 2019 09:22:05 +0100

> The stmmac_pcs_ctrl_ane() expects a register address as
> argument 1, but for some reason the mac_device_info is
> being passed.
> 
> Fix the warning (and possible bug) from sparse:
> 
> drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2613:17: warning: incorrect type in argument 1 (different address spaces)
> drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2613:17:    expected void [noderef] <asn:2> *ioaddr
> drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2613:17:    got struct mac_device_info *hw
> 
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
