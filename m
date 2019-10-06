Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6494BCD3A0
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 18:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fE7E48Nop7b8hifQ36ViwtRv34rG/R0mLCudDg9NFTo=; b=GW43HNumOTkJ/r
	lTZ0oevUcMXkXsgthSk09gOD6TC5tzLSADGQvyPT403cfhmcfAz7WZGSkl9Lz8SkYBNCKrUwbU+eA
	WLqjtmWMEf7Ki+hWmk1kKjiKLZ5LT9N6ytYdy/EIl4mfJLSuhN+ySWnjpouy0tlSeGqXwQCZV0Dd0
	A5ao2yvTRa0Un4C39Ji3vAsS4TKHezqilUGnGynIouYxVXAqI2pxyX31CedAeWVWWThMVT7i9n6IT
	+LxboJQeT6F9UBT1uYyalCMLI6jTxIfKHsBKPyobe8hqX4A2k6Xpqz8fknVVzOYzN0rgTJ29sQZgH
	sc56T0Zg/M3U4i/XnzFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH9hS-0003VU-CM; Sun, 06 Oct 2019 16:48:02 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH9hL-0003VD-Cu
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 16:47:56 +0000
Received: from localhost (unknown [8.46.76.29])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 8536E145F6110;
 Sun,  6 Oct 2019 09:47:44 -0700 (PDT)
Date: Sun, 06 Oct 2019 18:47:40 +0200 (CEST)
Message-Id: <20191006.184740.105501099485690881.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net-next 0/3] net: stmmac: Improvements for -next
From: David Miller <davem@davemloft.net>
In-Reply-To: <cover.1570360411.git.Jose.Abreu@synopsys.com>
References: <cover.1570360411.git.Jose.Abreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 06 Oct 2019 09:47:55 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_094755_439079_95976480 
X-CRM114-Status: UNSURE (   6.67  )
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
Cc: Joao.Pinto@synopsys.com, alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Sun,  6 Oct 2019 13:17:11 +0200

> Improvements for -next. More info in commit logs.

Series applied but you have to do better than this in your header
postings.

This is the place where you must describe the high level purpose of
the patch series, what it is implementing, how it is implementing,
and why it is implmenting it that way.

Just "look at the commit logs" is not acceptable.

Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
