Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2031214C900
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 11:52:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BCfCKTiumlTonf4SdutSxGQ3Dn+J68O3nIwB0JzcDgA=; b=doi8lilZ+P9NVI
	0Uzy9ob0CJlmWoaHzOb7uxUvDqtjC4QJpSbyZWeCxzz8AIaOUpV4QF7lvcAtWwbE9/4D6nCP47zRl
	9UUAtf3ddxI9HfGxLhpT1L/vAV9ciLn8lFcITymLkRc57UZcsTnaPGBI4REIs5muHxWRVXTh+DB3F
	ZrsHxGw47kodK7wbWKgGM7Isa5ymyBew9UROD0xJcLFU3ZacgbeU/YE00ZGlO/MI9NR0FWc2y55Dd
	8iKgT4ApKBIrDewL1ZkhD0RYbHjbpfiy3AhjoC6xQ1+FDxwCaoSGzqLfFZTQ5cZdQtfNshQltcCSX
	DnsQdkV3c2rXF5/sBejA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwkwq-0003JF-Fc; Wed, 29 Jan 2020 10:51:52 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwkwf-0003Is-R3
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 10:51:43 +0000
Received: from localhost (unknown [IPv6:2001:982:756:1:57a7:3bfd:5e85:defb])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A09B015C045A5;
 Wed, 29 Jan 2020 02:51:33 -0800 (PST)
Date: Wed, 29 Jan 2020 11:51:31 +0100 (CET)
Message-Id: <20200129.115131.1101786807458791369.davem@davemloft.net>
To: christophe.roullier@st.com
Subject: Re: [PATCH 1/1] net: ethernet: stmmac: simplify phy modes
 management for stm32
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200128083942.17823-1-christophe.roullier@st.com>
References: <20200128083942.17823-1-christophe.roullier@st.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 29 Jan 2020 02:51:35 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_025141_876934_E16565ED 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christophe Roullier <christophe.roullier@st.com>
Date: Tue, 28 Jan 2020 09:39:42 +0100

> No new feature, just to simplify stm32 part to be easier to use.
> Add by default all Ethernet clocks in DT, and activate or not in function
> of phy mode, clock frequency, if property "st,ext-phyclk" is set or not.
> Keep backward compatibility
> -----------------------------------------------------------------------
> |PHY_MODE | Normal | PHY wo crystal|   PHY wo crystal   |  No 125Mhz  |
> |         |        |      25MHz    |        50MHz       |  from PHY   |
> -----------------------------------------------------------------------
> |  MII    |	 -    |     eth-ck    |       n/a          |	    n/a  |
> |         |        | st,ext-phyclk |                    |             |
> -----------------------------------------------------------------------
> |  GMII   |	 -    |     eth-ck    |       n/a          |	    n/a  |
> |         |        | st,ext-phyclk |                    |             |
> -----------------------------------------------------------------------
> | RGMII   |	 -    |     eth-ck    |       n/a          |      eth-ck  |
> |         |        | st,ext-phyclk |                    |st,eth-clk-sel|
> |         |        |               |                    |       or     |
> |         |        |               |                    | st,ext-phyclk|
> ------------------------------------------------------------------------
> | RMII    |	 -    |     eth-ck    |      eth-ck        |	     n/a  |
> |         |        | st,ext-phyclk | st,eth-ref-clk-sel |              |
> |         |        |               | or st,ext-phyclk   |              |
> ------------------------------------------------------------------------
> 
> Signed-off-by: Christophe Roullier <christophe.roullier@st.com>

If anything, this is more of a cleanup, and therefore only appropriate for
net-next when it opens back up.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
