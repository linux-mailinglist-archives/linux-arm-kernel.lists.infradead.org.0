Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD501157F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 20:51:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILWwm/XQ5yVuP2DpMk9MJeTl+M92CK6wKz8VD4/MzkI=; b=eN0NMLZ9b13Rma
	rHJkKTWIPEBReozUqe/X2GFfmm+/moikHLD9BKyNECCOxocQ8k9rATpUwCTtJ89Gs290gmYk3tKkl
	HtYKSJdMCHyoFYzngCV/R9/NxK4TzE6JEgsb+ZXbHm06F5yjAUty0FYBFnpE+jNOwTbTn3OW5IT2E
	s5QlyH8u8o4vB/0MvmkmKFZQgwWWZUgHvM/73WyYuCJ/HvpwFDRxXjgwvLRMHO89lC7aG/XADMiRJ
	FjqmLmzaweFwJpXk3t1ZR0QZdhlf9wMs3owlBUEvy6WfRaTCSTIZZThr3hJ0b1gIjRpPVahUzYGLj
	2AK+WdhI5LAcAb7SHEZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idJd6-0001ND-0q; Fri, 06 Dec 2019 19:51:08 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idJcx-0001ME-NP
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 19:51:00 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id D9CA01511E7DD;
 Fri,  6 Dec 2019 11:50:50 -0800 (PST)
Date: Fri, 06 Dec 2019 11:50:50 -0800 (PST)
Message-Id: <20191206.115050.2225203369041453711.davem@davemloft.net>
To: neidhard.kim@lge.com
Subject: Re: [PATCH] net: stmmac: reset Tx desc base address before
 restarting Tx
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191206114000.27283-1-neidhard.kim@lge.com>
References: <20191206114000.27283-1-neidhard.kim@lge.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 06 Dec 2019 11:50:51 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_115059_766165_659423FF 
X-CRM114-Status: UNSURE (   7.69  )
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jongsung Kim <neidhard.kim@lge.com>
Date: Fri,  6 Dec 2019 20:40:00 +0900

> Refer to the databook of DesignWare Cores Ethernet MAC Universal:
> 
> 6.2.1.5 Register 4 (Transmit Descriptor List Address Register
> 
> If this register is not changed when the ST bit is set to 0, then
> the DMA takes the descriptor address where it was stopped earlier.
> 
> The stmmac_tx_err() does zero indices to Tx descriptors, but does
> not reset HW current Tx descriptor address. To fix inconsistency,
> the base address of the Tx descriptors should be rewritten before
> restarting Tx.
> 
> Signed-off-by: Jongsung Kim <neidhard.kim@lge.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
