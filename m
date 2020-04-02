Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE61F19C39A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 16:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qxZiMtCUzkUvqOu8QymO9jU1TEWUNJT8sCORMY0K80=; b=hTmqPmOvAV8n42
	s14RaHZN98OatYAcO/hW7rBfh6mnw1rpHaPD5r6fkPER6FgwIMo+xqB5stAHXK/q2vjlM1PvzkScX
	nKQs/9e6dLLGCX5dVXVdLeJ50NMTnFOqefmJf98DPU1uklXTnl8iRqltAyjwz/8ksCwD75UBgvnjv
	/ChBtFOaAHYvePt8s4H2CSRwKVm72BuP0zTdBX0FsUVEJDn9jmDf5UxoJwHxiyV46dK0cSmUkk9wG
	yEf9fno9D2t+7Oqfoptxpz3NCnVvNwgTkbiFwwLk1SrMAIvCdo85/xmQRfSoaSJ7mqQtSuym1LF5n
	x9GmW3yle2YHQS4N+KEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0TG-0000Ul-TQ; Thu, 02 Apr 2020 14:05:26 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0TA-0000TW-5Y
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 14:05:21 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id AD889128A134D;
 Thu,  2 Apr 2020 07:05:12 -0700 (PDT)
Date: Thu, 02 Apr 2020 07:05:11 -0700 (PDT)
Message-Id: <20200402.070511.202780885237451617.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net] net: stmmac: xgmac: Fix VLAN register handling
From: David Miller <davem@davemloft.net>
In-Reply-To: <daf6d10d679c24e9b33b758b249b9b70e5eb1f01.1585835790.git.Jose.Abreu@synopsys.com>
References: <daf6d10d679c24e9b33b758b249b9b70e5eb1f01.1585835790.git.Jose.Abreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 02 Apr 2020 07:05:13 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_070520_212710_E40D4921 
X-CRM114-Status: UNSURE (   6.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Date: Thu,  2 Apr 2020 15:57:07 +0200

> Commit 907a076881f1, forgot that we need to clear old values of
> XGMAC_VLAN_TAG register when we switch from VLAN perfect matching to
> HASH matching.
> 
> Fix it.
> 
> Fixes: 907a076881f1 ("net: stmmac: xgmac: fix incorrect XGMAC_VLAN_TAG register writting")
> Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
