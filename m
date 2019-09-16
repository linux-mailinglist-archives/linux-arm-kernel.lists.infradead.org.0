Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 587C1B3562
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 09:14:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bhkagy6xDtJoaBWR8pEKj65rUUeuiHZwcA8sxkCkLO8=; b=Jfcyt4HeI5FTlO
	fMcQpRVrNrDBw54GWsXqrf3uPWYK1jOqOgafSpsOOhYEqKMEm7WSZ4YrMFoNQViZ7yqIPfLt6qBeh
	t+EkXqhrs/ocPICRqc5LyXEz0/Q/r1txvXteLi0T27aO5js5jAgUDPv+LUzND3pJ+neQ0rGfGSILK
	Mt2cp0IFLBgvsziniNLSIBxieqfgkOqVdJI+n1XUqhwQQjJtYc1VA4g1zm2HpMFSkuE55D7J5AGCe
	KDa7IwJK4V4agp6MLtEuaHe2+artda15xU27iN5lpSyrY3m6axCKTIt7h+iZqm24Kv0Du6w0k0KOX
	eViHzK+NUZ7RDNZ44ndg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9lD0-0000n1-6P; Mon, 16 Sep 2019 07:14:02 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9lBY-0000ls-BE
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 07:12:34 +0000
Received: from localhost (unknown [85.119.46.8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id D26FE1517258D;
 Mon, 16 Sep 2019 00:12:22 -0700 (PDT)
Date: Mon, 16 Sep 2019 09:12:20 +0200 (CEST)
Message-Id: <20190916.091220.1015956756124841222.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net] net: stmmac: Hold rtnl lock in suspend/resume
 callbacks
From: David Miller <davem@davemloft.net>
In-Reply-To: <66b6c1395e4bbc836e80083b89b2189ce7382d7b.1568360548.git.joabreu@synopsys.com>
References: <66b6c1395e4bbc836e80083b89b2189ce7382d7b.1568360548.git.joabreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 16 Sep 2019 00:12:25 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_001232_393602_CC7F98DD 
X-CRM114-Status: UNSURE (   5.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [85.119.46.8 listed in zen.spamhaus.org]
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
 linux-kernel@vger.kernel.org, christophe.roullier@st.com,
 mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Fri, 13 Sep 2019 11:50:32 +0200

> We need to hold rnl lock in suspend and resume callbacks because phylink
> requires it. Otherwise we will get a WARN() in suspend and resume.
> 
> Also, move phylink start and stop callbacks to inside device's internal
> lock so that we prevent concurrent HW accesses.
> 
> Fixes: 74371272f97f ("net: stmmac: Convert to phylink and remove phylib logic")
> Reported-by: Christophe ROULLIER <christophe.roullier@st.com>
> Tested-by: Christophe ROULLIER <christophe.roullier@st.com>
> Signed-off-by: Jose Abreu <joabreu@synopsys.com>

Applied and queued up for v5.3 -stable.

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
