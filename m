Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71EDEAF7AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 10:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhMCIbNsmrkXg0w4oMl/w+W4eg+s0MH73+5ocTvnU/E=; b=GW6FmgaNf9jm7D
	3c6jxeJXOedJSr6VNk6xtG6c9ev65e52CChjbwnxkRu4qP+/OJOEeDAN1s5J3myBP/hlfpn7beuVe
	IRj3Af6Sjn78JvAx36ytTnnUNI2XbnkX52/iTnC5bbNltIfBw2wRgE3HhxvpVaZEIXNopBqExCvfx
	E+qzn2WoN9rEqNI30SvzwKlAzQWzRET3cxM7EV9Wr8cJdliIsfLy8DJ9voFwmhjdiZ9fc0Kce/Ypk
	NG2Lob58f7aWREkj8jwYk2uh3LJyNRMcTa4hPof7OzFmQ6SKAEML1u/UFmpnfFHnACdHyarBHXFP1
	fu2DM+14EOXK6POI1CmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7xtF-0003eM-Nv; Wed, 11 Sep 2019 08:22:14 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7xt2-0003dj-Un
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 08:22:02 +0000
Received: from localhost (unknown [148.69.85.38])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1393F15567355;
 Wed, 11 Sep 2019 01:21:56 -0700 (PDT)
Date: Wed, 11 Sep 2019 10:21:55 +0200 (CEST)
Message-Id: <20190911.102155.148817974369878410.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net-next 0/6] net: stmmac: Improvements for -next
From: David Miller <davem@davemloft.net>
In-Reply-To: <cover.1568126224.git.joabreu@synopsys.com>
References: <cover.1568126224.git.joabreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 11 Sep 2019 01:21:58 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_012200_990771_9C2CBB45 
X-CRM114-Status: UNSURE (   5.84  )
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
Date: Tue, 10 Sep 2019 16:41:21 +0200

> Misc patches for -next. It includes:
>  - Two fixes for features in -next only
>  - New features support for GMAC cores (which includes GMAC4 and GMAC5)

Series applied, but what exactly does "ARP offload" even do?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
