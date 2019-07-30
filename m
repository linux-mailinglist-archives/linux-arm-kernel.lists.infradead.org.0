Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEF17AFD5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 19:27:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qKDx9gxYGf25HiuNHYu7lkFft/KsdPrv0FYx1Jhdf4k=; b=tfjWy88yhWwAGU
	ybuq2v2Iure+yVqeyzuXX60fwTaBAQRWADP5x/25D9XbmvFekWD4/pphjM9bKQtW+XP+VWD1Ky4DJ
	6fX6TBNb8GXQjGf/MDm6XHttNqtd5pzO2SBIpE8ztf5JhLTmnKofGBdFPEdQ5r/n4LvPvk/vtaP9A
	QYmlh/v9nsgLPhoPYWrEP2kscp0XUKH8PjGk6RzLq4VxkPHjH3pDEv4yTGQONRLP49tJmeRoWhzqB
	1O7BW4CHW595hnwr3e/6lmJnnQg+Lu1hFwVUzL0m+eLQfmIhicj0iaGiLtmA6NBf+GTdCERkT//+E
	IqPe1lh5aGfCEpKTUerA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVtn-00046X-J4; Tue, 30 Jul 2019 17:26:55 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVtX-0003zH-V3
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 17:26:41 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 40E811265965D;
 Tue, 30 Jul 2019 10:26:39 -0700 (PDT)
Date: Tue, 30 Jul 2019 10:26:38 -0700 (PDT)
Message-Id: <20190730.102638.2201830580799063447.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net] net: stmmac: Sync RX Buffer upon allocation
From: David Miller <davem@davemloft.net>
In-Reply-To: <3601e3ae4357d48b3294f42781d0f19095d1b00e.1564479382.git.joabreu@synopsys.com>
References: <3601e3ae4357d48b3294f42781d0f19095d1b00e.1564479382.git.joabreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 30 Jul 2019 10:26:39 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_102640_038163_84025E4A 
X-CRM114-Status: UNSURE (   8.65  )
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
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Tue, 30 Jul 2019 15:57:16 +0200

> With recent changes that introduced support for Page Pool in stmmac, Jon
> reported that NFS boot was no longer working on an ARM64 based platform
> that had the IP behind an IOMMU.
> 
> As Page Pool API does not guarantee DMA syncing because of the use of
> DMA_ATTR_SKIP_CPU_SYNC flag, we have to explicit sync the whole buffer upon
> re-allocation because we are always re-using same pages.
> 
> In fact, ARM64 code invalidates the DMA area upon two situations [1]:
> 	- sync_single_for_cpu(): Invalidates if direction != DMA_TO_DEVICE
> 	- sync_single_for_device(): Invalidates if direction == DMA_FROM_DEVICE
> 
> So, as we must invalidate both the current RX buffer and the newly allocated
> buffer we propose this fix.
> 
> [1] arch/arm64/mm/cache.S
> 
> Reported-by: Jon Hunter <jonathanh@nvidia.com>
> Tested-by: Jon Hunter <jonathanh@nvidia.com>
> Fixes: 2af6106ae949 ("net: stmmac: Introducing support for Page Pool")
> Signed-off-by: Jose Abreu <joabreu@synopsys.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
