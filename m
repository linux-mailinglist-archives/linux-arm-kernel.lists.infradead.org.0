Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A6F133495
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 22:26:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBH/+v8yR2ND/dv2/sH/HAjHvMGbMQ5aErB/+9gLwRw=; b=bHM+tnjksJFFOL
	KC9QiwI3MgLX4YTKww2oQbYD/I3Es8QTwlzhOB4vgJmbf5pMpJPz3P4jHnFVwUrlMg5ivlRKfyz6B
	H14SUF4ZbUKNbpvZixKzkYzK6Yy1bCy1i9PlOe3aQjMcEhI2qMFggpIgjCivXKKih2gOwraOnIAG+
	L0Wqe1NLN1DMgnbtHHrO0pi7HJQq42dQQ5SxCKiwLWnpaqzxsN89wW3Xb2CHn6Kef1bfXTiCcTyM1
	z6cDLfc8P0buoqLKFYY17UPwu+lVAfw6p8OYKEdmVVSgLwjZTSYlSVGqn0w2vrwJjLmmr8TjI3Sgs
	ztVLMC1qby5klU2GvrVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iowN7-0006hE-49; Tue, 07 Jan 2020 21:26:41 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iowN0-0006gC-Mj
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 21:26:35 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id D21AF15A16D6A;
 Tue,  7 Jan 2020 13:26:33 -0800 (PST)
Date: Tue, 07 Jan 2020 13:26:33 -0800 (PST)
Message-Id: <20200107.132633.1454816315429651325.davem@davemloft.net>
To: jiping.ma2@windriver.com
Subject: Re: [PATCH net V5] stmmac: debugfs entry name is not be changed
 when udev rename device name.
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200107063400.41666-1-jiping.ma2@windriver.com>
References: <20200107063400.41666-1-jiping.ma2@windriver.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 07 Jan 2020 13:26:34 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_132634_738223_FEF4FFF8 
X-CRM114-Status: UNSURE (   4.81  )
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

From: Jiping Ma <jiping.ma2@windriver.com>
Date: Tue, 7 Jan 2020 14:34:00 +0800

> Add one notifier for udev changes net device name.
> Fixes: b6601323ef9e ("net: stmmac: debugfs entry name is not be changed when udev rename")
> 
> Signed-off-by: Jiping Ma <jiping.ma2@windriver.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
