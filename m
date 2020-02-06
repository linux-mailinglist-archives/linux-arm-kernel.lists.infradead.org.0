Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0D0154513
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 14:38:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OXUFm9cDii3PUbmK9R5UQZA9UN+hGaH2leU77jAwkTY=; b=nLG+b3S8cpojYU
	pjMEM75biZi0eDvKJ8JsL4cAYVBoWKQ+kLLvlxo9scYscnYg01c+PAG4Hvn0ilFQSS96MW8+Q0PGb
	n8XWpvRFcB/+OcIEvO5mN+wzu+fg42C+NJWH+PTq669drEoMDxDLGQnhfcgmPoIozujKqu8JCdqqn
	9pXB7MIRLmzSiBGHZgNOkbBmdGrtlwdKPS9t9iB5/ogOmmXGMhO2Gtez4rDdvYNwjq913YXvIoZPH
	dttL3b5Kk/xt48uOr0pY04yZvR34DM9FqDoEmD31PIj8Yg7CBAPrQl+yVOr1Bo04dRUzYu6PwTZo2
	d/QKNYL3OuQbS+SFiqnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izhM3-0007e1-91; Thu, 06 Feb 2020 13:38:03 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izhLx-0007dd-4P
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 13:37:58 +0000
Received: from localhost (unknown [IPv6:2001:982:756:1:57a7:3bfd:5e85:defb])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2B0AB14CCCAD3;
 Thu,  6 Feb 2020 05:37:54 -0800 (PST)
Date: Thu, 06 Feb 2020 14:37:53 +0100 (CET)
Message-Id: <20200206.143753.1516354381077365451.davem@davemloft.net>
To: vkoul@kernel.org
Subject: Re: [PATCH] net: stmmac: fix a possible endless loop
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200206133554.GO2618@vkoul-mobl>
References: <20200206132147.22874-1-zhengdejin5@gmail.com>
 <20200206133554.GO2618@vkoul-mobl>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 06 Feb 2020 05:37:56 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_053757_170691_221CE6AF 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: alexandre.torgue@st.com, zhengdejin5@gmail.com,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 netdev@vger.kernel.org, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vinod Koul <vkoul@kernel.org>
Date: Thu, 6 Feb 2020 19:05:54 +0530

> On 06-02-20, 21:21, Dejin Zheng wrote:
>> It forgot to reduce the value of the variable retry in a while loop
>> in the ethqos_configure() function. It may cause an endless loop and
>> without timeout.
> 
> Thanks for the fix.
> 
> Acked-by: Vinod Koul <vkoul@kernel.org>
> 
> We should add:
> Fixes: a7c30e62d4b8 ("net: stmmac: Add driver for Qualcomm ethqos")
> 
> Also, I think this should be CCed stable

Networking patches do not CC: stable, I queued them up myself manually.

Please read the netdev FAQ under Documentation/ for details.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
