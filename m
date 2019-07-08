Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C2F629CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 21:41:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ty60EK7SzlZWTfEIwERgVkApr00DF3FEKee1V6nD6qw=; b=hWgPVKrUqSiN6G
	jLBQESDjq9Ga7LdXfz7PLx0Q4PsS54nvrUD46VLUVN1iK+I7BWimFHG3zP54VBfsm/6aCFwpl2ybR
	BUAdr5LXl1GQ3EAdCxkPBeg5QO+SuPWm62uh+8h2RN1xTXA2aoqfZY81bNNS487EO1Fty+49+1PvK
	wkbt9x1JTox2R++JBkDWL5ZdWv83bB+Wy7kXnlcPaRvyxi8Yl0QR8DD6V9H//D52LyAAJLTquxOXb
	+/c4bGOxER93ncZBrahZN+XurZg1WSdU+OA7MEC7ldqhFUwoHxLXPG87i42ZW4APTOeAOLenhx39M
	kjMIX4YW+9jWhtVTE+QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkZW9-00054m-Om; Mon, 08 Jul 2019 19:41:41 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkZVx-00053l-OG
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 19:41:31 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 29EF5133E9BDB;
 Mon,  8 Jul 2019 12:41:26 -0700 (PDT)
Date: Mon, 08 Jul 2019 12:41:25 -0700 (PDT)
Message-Id: <20190708.124125.1938757647213542470.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net] net: stmmac: Re-work the queue selection for TSO
 packets
From: David Miller <davem@davemloft.net>
In-Reply-To: <36018491f47206728e04d67a9e6263635e64f721.1562588640.git.joabreu@synopsys.com>
References: <36018491f47206728e04d67a9e6263635e64f721.1562588640.git.joabreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 08 Jul 2019 12:41:26 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_124129_792683_2A07139C 
X-CRM114-Status: GOOD (  10.21  )
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
 peppe.cavallaro@st.com, ben@decadent.org.uk,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Mon,  8 Jul 2019 14:26:28 +0200

> Ben Hutchings says:
> 	"This is the wrong place to change the queue mapping.
> 	stmmac_xmit() is called with a specific TX queue locked,
> 	and accessing a different TX queue results in a data race
> 	for all of that queue's state.
> 
> 	I think this commit should be reverted upstream and in all
> 	stable branches.  Instead, the driver should implement the
> 	ndo_select_queue operation and override the queue mapping there."
> 
> Fixes: c5acdbee22a1 ("net: stmmac: Send TSO packets always from Queue 0")
> Suggested-by: Ben Hutchings <ben@decadent.org.uk>
> Signed-off-by: Jose Abreu <joabreu@synopsys.com>

Applied and queued up for -stable.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
