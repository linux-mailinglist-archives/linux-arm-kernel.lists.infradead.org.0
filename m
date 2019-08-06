Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8D5839A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 21:26:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWcVQX5QRWt++I/9ySS0iNbE+crENinm1PW+pbxo9Ls=; b=ESzo1uiSHn1/rz
	PgSHADxrvs6/3bmW4IANZnLI59O/1o8MvR2b8C7cXZ/eOIUaYndZwEBMRC5FQeCQF+VkfW7YZ6/AQ
	THVNtXDTjtC3r5CY/f8+XXErf3TtP4X8lOAGMdFtEGv8n2i/84MpV9a2Pay8h1dFEiL+5YUB6rHgO
	8WNvGVZW2yXN5b9Q6Fb/2w85IrYlq1g99jHVLK+Rc2nPDPcT45o76pTameFkmHtaNpMthj/T9l1mj
	AY7hSIbDc+7O58nR6FHW0vU+hnomGARaGnYGMRJsMnhsBZdYSHOIRO/XetnDBurknGt0TzK3qyPaX
	tWOKczgO/ksDEO5cc+/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv56S-0001Ea-KS; Tue, 06 Aug 2019 19:26:36 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv56J-0001Dw-C2
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 19:26:30 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B72511555E86C;
 Tue,  6 Aug 2019 12:26:26 -0700 (PDT)
Date: Tue, 06 Aug 2019 12:26:26 -0700 (PDT)
Message-Id: <20190806.122626.411533304373473992.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net 0/3] net: stmmac: Fixes for -net
From: David Miller <davem@davemloft.net>
In-Reply-To: <cover.1565097294.git.joabreu@synopsys.com>
References: <cover.1565097294.git.joabreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 06 Aug 2019 12:26:27 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_122629_084748_1EB68B9C 
X-CRM114-Status: UNSURE (   4.98  )
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
Date: Tue,  6 Aug 2019 15:16:15 +0200

> Couple of fixes for -net. More info in commit log.

Series applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
