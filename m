Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56940EB789
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 19:47:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z2njPbiFFJORVgeHbtdOEXxXLXmbFq/2QkZjhy+Oou0=; b=s5bCbsJVaX+2Vo
	V1iO+OzbnUF5A3pDaxE5Jkk2aHq0oErYMYitIpHdLpMyq0n8H3a53BtHBha8nh0RiNT0cIwJAic9o
	m5nA9F178hD287keRl+mS0gciq53AQd7p3eOH6uBj9w0aQrB9tyg/+/uxUEcJFle23scOrtYp26u2
	wT3vNbPSUrJLDQT0FRNtbra2IsfkXGswja8cWNcSjppE9aTpSP9XtFHlUQ52SCgP6EGqlrV+175uf
	/13HAH7bROQx7cM9wWwHquDrHlRsqiad6AkPwZhfxeCS2jFgmCMpt3PZtR4OkNWr5xSdRQxxR1roo
	xh1uMZMbmRo6mWaJG/kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQFU3-0001yC-Qm; Thu, 31 Oct 2019 18:47:47 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQFTu-0001xP-8X
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 18:47:40 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 245B814FC76C7;
 Thu, 31 Oct 2019 11:47:32 -0700 (PDT)
Date: Thu, 31 Oct 2019 11:47:31 -0700 (PDT)
Message-Id: <20191031.114731.1020357883148278664.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net v2 01/10] net: stmmac: Fix sparse warning
From: David Miller <davem@davemloft.net>
In-Reply-To: <e2f11aad32bb264a31074877b5a568f1dd1383ee.1572519070.git.Jose.Abreu@synopsys.com>
References: <cover.1572519070.git.Jose.Abreu@synopsys.com>
 <cover.1572519070.git.Jose.Abreu@synopsys.com>
 <e2f11aad32bb264a31074877b5a568f1dd1383ee.1572519070.git.Jose.Abreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 31 Oct 2019 11:47:32 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_114738_307180_4F7EFD45 
X-CRM114-Status: UNSURE (   8.12  )
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
Date: Thu, 31 Oct 2019 12:00:39 +0100

> The VID is converted to le16 so the variable must be __le16 type.
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Fixes: c7ab0b8088d7 ("net: stmmac: Fallback to VLAN Perfect filtering if HASH is not available")
> Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

This doesn't even come close to applying to my 'net' tree.

[davem@localhost net]$ git am --signoff bundle-19989-stmmac-fixes.mbox 
Applying: net: stmmac: Fix sparse warning
error: patch failed: drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c:733
error: drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c: patch does not apply
error: patch failed: drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c:555
error: drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c: patch does not apply
error: patch failed: drivers/net/ethernet/stmicro/stmmac/hwif.h:357
error: drivers/net/ethernet/stmicro/stmmac/hwif.h: patch does not apply
error: patch failed: drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:4207
error: drivers/net/ethernet/stmicro/stmmac/stmmac_main.c: patch does not apply
Patch failed at 0001 net: stmmac: Fix sparse warning
hint: Use 'git am --show-current-patch' to see the failed patch
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
[davem@localhost net]$ patch -p1 <.git/rebase-apply/patch 
patching file drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
Hunk #1 FAILED at 733.
1 out of 1 hunk FAILED -- saving rejects to file drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c.rej
patching file drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
Hunk #1 FAILED at 555.
1 out of 1 hunk FAILED -- saving rejects to file drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c.rej
patching file drivers/net/ethernet/stmicro/stmmac/hwif.h
Hunk #1 FAILED at 357.
1 out of 1 hunk FAILED -- saving rejects to file drivers/net/ethernet/stmicro/stmmac/hwif.h.rej
patching file drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
Hunk #1 FAILED at 4207.
Hunk #2 FAILED at 4221.
2 out of 2 hunks FAILED -- saving rejects to file drivers/net/ethernet/stmicro/stmmac/stmmac_main.c.rej
[davem@localhost net]$ 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
