Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3CDD870C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 05:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nACNFt/8JA+iPxCx6UsmTt37ACMG6xqq0H7U1oDYE+8=; b=bV/WzMXVWFqFeQ
	JZ/QEF9zLyABP9B9riPhD3GYSdUj2JfisuaIbvYvaXFkKBysvtHVZvwLlCCIEfK4yqmckPG6AqM8w
	KLYJw+ponUNz+13ZYkNJ5/XcOCAmKt0JVLlvx/PPKXeCmNpt0EKDHAQK6UN/6rs4wByWeA+8bjpio
	onrH1TI4FXPj9BTFeLRYXm2zXHReaXmJOYfqXhNpCd0UFyxdG+de+rP8orD3pF6SUHuvSX1KKAHgu
	+GYp1DbI0CKFZaD6vjYHaa8OHXmLoQChP3IQhrv7F81jjlAx9FyluLCVkrAhRXOmKnSK+q76Ehcoa
	t5Pfyd4yTyurcum4CSFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKaR5-00083s-C8; Wed, 16 Oct 2019 03:57:19 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKaQw-00083Z-EX
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 03:57:11 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B66F6108B8674;
 Tue, 15 Oct 2019 20:57:09 -0700 (PDT)
Date: Tue, 15 Oct 2019 20:57:09 -0700 (PDT)
Message-Id: <20191015.205709.544930489994384528.davem@davemloft.net>
To: ben.dooks@codethink.co.uk
Subject: Re: [PATCH] net: stmmac: make tc_flow_parsers static
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191015161748.31576-1-ben.dooks@codethink.co.uk>
References: <20191015161748.31576-1-ben.dooks@codethink.co.uk>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 15 Oct 2019 20:57:10 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_205710_488967_FE0CAA94 
X-CRM114-Status: UNSURE (   7.45  )
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
Cc: linux-kernel@lists.codethink.co.uk, alexandre.torgue@st.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, joabreu@synopsys.com,
 mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
Date: Tue, 15 Oct 2019 17:17:48 +0100

> The tc_flow_parsers is not used outside of the driver, so
> make it static to avoid the following sparse warning:
> 
> drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c:516:3: warning: symbol 'tc_flow_parsers' was not declared. Should it be static?
> 
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
