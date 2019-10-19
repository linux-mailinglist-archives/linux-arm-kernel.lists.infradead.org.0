Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D346DDAA4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 21:19:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=STDJzW91HR5pOS5CWHrSk5Ljr9GWp8SHpd/EfOpqoL8=; b=KbUJc4zt5MMDKH
	06n/Vq76os2iKzgvr0GhOhfmaCzknrMO8KTolhNBGqTjZ84QsUTxMCkzWF8ZxNwwH6hLLMvASPslD
	PzgvWyvr3pTYK2T7IR4AHSYzFuxxhBoLc7oyd+kFt7nnLVkqXkblEdLtsVGvrZVsEGbhEg7myHjgF
	Zkx/caqM9Mznp07N4eqX/HeHWTsvqy9NQ7CJxPaLVRFPQtKJ8zDIvqGAlhtz5ZXQBAusm0PfNSLMc
	DtIG+kf22UOYkVSK7IOKIGe4Iz4JHoJ5Hom1B5v5pUYXrKxG4h9P4mOA4JNWNyayAd+7b+BNUzJVi
	z/re2/LpGKtKM+nKA1Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLuFd-0005MI-Dk; Sat, 19 Oct 2019 19:18:57 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLuFT-0005LR-T3
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 19:18:49 +0000
Received: from localhost (unknown [64.79.112.2])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 5B65314920917;
 Sat, 19 Oct 2019 12:18:43 -0700 (PDT)
Date: Sat, 19 Oct 2019 12:18:42 -0700 (PDT)
Message-Id: <20191019.121842.1309061571454342456.davem@davemloft.net>
To: mans@mansr.com
Subject: Re: [PATCH v2] net: ethernet: dwmac-sun8i: show message only when
 switching to promisc
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191018165658.9752-1-mans@mansr.com>
References: <20191018165658.9752-1-mans@mansr.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 19 Oct 2019 12:18:43 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_121847_937597_8AA62333 
X-CRM114-Status: UNSURE (   7.39  )
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, wens@csie.org, joabreu@synopsys.com,
 peppe.cavallaro@st.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mans Rullgard <mans@mansr.com>
Date: Fri, 18 Oct 2019 17:56:58 +0100

> Printing the info message every time more than the max number of mac
> addresses are requested generates unnecessary log spam.  Showing it only
> when the hw is not already in promiscous mode is equally informative
> without being annoying.
> 
> Signed-off-by: Mans Rullgard <mans@mansr.com>
> ---
> Changed in v2:
> - test only RXALL bit

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
