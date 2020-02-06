Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2920F1544ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 14:33:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pmt54+s1EwpUCcbDkFp5lAuFchE1/uJGBUAoCTcHwdc=; b=h+ANqPiS06pHk/
	eKVZPNigiQoEJchn7q/zbRPb1QzqpRea2CU10xFrf++SjcnGa0mcucLu+UCyVcNUcyOXM4c/a8hkm
	uIn9vZv7SAJTCKebAPbbk0gOOGHMga4TnBR564BRh+wdtld7+5qojxhlv36VKgQH625jlLFcZiPKn
	we+3K6UFIZhnzFNH4Rp/58KE8lYuljrPRBkD4HxvKdqVZaz48ogmFmwE4TWAlQsSehPqO1MH3c2ss
	KRiXVxn07FNHtVByuQMDcjakM8o+owuk+YWL4XMsrAp6biz7A6IZ1d95iL4JZ24oLG4y1wlILdoFg
	Nw7xT0pWDQtB2cIgShdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izhHH-0005gQ-L4; Thu, 06 Feb 2020 13:33:07 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izhHB-0005fa-Cp
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 13:33:02 +0000
Received: from localhost (unknown [IPv6:2001:982:756:1:57a7:3bfd:5e85:defb])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A9E3E14CCC9A7;
 Thu,  6 Feb 2020 05:32:55 -0800 (PST)
Date: Thu, 06 Feb 2020 14:32:54 +0100 (CET)
Message-Id: <20200206.143254.1285608674662555598.davem@davemloft.net>
To: zhengdejin5@gmail.com
Subject: Re: [PATCH] net: stmmac: fix a possible endless loop
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200206132147.22874-1-zhengdejin5@gmail.com>
References: <20200206132147.22874-1-zhengdejin5@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 06 Feb 2020 05:32:57 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_053301_437267_0CF386FB 
X-CRM114-Status: UNSURE (   7.09  )
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, joabreu@synopsys.com,
 mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dejin Zheng <zhengdejin5@gmail.com>
Date: Thu,  6 Feb 2020 21:21:47 +0800

> It forgot to reduce the value of the variable retry in a while loop
> in the ethqos_configure() function. It may cause an endless loop and
> without timeout.
> 
> Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>

Please resubmit this with an appropriate Fixes: tag.

Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
