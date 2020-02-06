Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA021546A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 15:51:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dLrgENJdpIFem/2Cj659Dvz7L7cME6wuct+6ZDA/aQQ=; b=eNVO+ifXomeBVD
	c5asEAaaV0//L+GNal17LpbQilwxTkzFpolMV0RrWkhP0K1BZiB8FDTQ5ozftxJzpwYuLyvPcj6uk
	wzOcCJO4aUIVgmJvRw51yZqQDM1S3biGrjbHRwHHirokv3v85qt6qdj71+XkAM/3Sqmyp9A4q4doY
	SKMQCPrOKVM3BjkgbbdwiMUaGFPWyW0EyY37I/Y7KGTZ0QB0U2Zx5JaykIfoxkVYUGPjEposk73zo
	1UXPu4Lu9JPQBq3TGAamMyGFZOt9CvetXqlu9GZzwHvY+h63CToBZcRztB8VJXWbfANWTDEY4WYcp
	piP/EBdj+QK47TJe8LSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iziV8-0004ky-Oh; Thu, 06 Feb 2020 14:51:30 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iziV0-0004kU-Se
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 14:51:24 +0000
Received: from localhost (unknown [IPv6:2001:982:756:1:57a7:3bfd:5e85:defb])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id ADC3514E226FC;
 Thu,  6 Feb 2020 06:51:20 -0800 (PST)
Date: Thu, 06 Feb 2020 15:51:19 +0100 (CET)
Message-Id: <20200206.155119.1859518790111659504.davem@davemloft.net>
To: zhengdejin5@gmail.com
Subject: Re: [PATCH 0/2] use readl_poll_timeout() function
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200206142404.24980-1-zhengdejin5@gmail.com>
References: <20200206142404.24980-1-zhengdejin5@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 06 Feb 2020 06:51:22 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_065122_919864_C8037DA0 
X-CRM114-Status: UNSURE (   7.72  )
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
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dejin Zheng <zhengdejin5@gmail.com>
Date: Thu,  6 Feb 2020 22:24:02 +0800

> This patch series just for use readl_poll_timeout() function
> to replace the open coded handling of use readl_poll_timeout()
> in the stmmac driver. There are two modification positions,
> the one in the init_systime() function and the other in the
> dwmac4_dma_reset() function.

This is a cleanup and thus appropriate only for net-next, which
is closed right now.

When you submit networking patches you must indicate the tree
you are targetting in the Subject line, for example:

	Subject: [PATCH net-next 0/2] ...

Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
