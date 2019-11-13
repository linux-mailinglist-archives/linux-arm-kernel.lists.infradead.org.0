Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB02BFB9F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 21:34:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rTH+7M81q4X7x09LGyrtN4tRaylAjR2Un8DbbFMnqYk=; b=g+rTBtBV6QzyMS
	vmYXG/ituBKSzGgIt8/bnvY/zBg80qwxHo3GxDoqHYbrf121EuExTbnK2JN8k/MAyfj3cqIgBlUez
	tYoxiWJSr3Ypdi7wWIMZdK29+f288lag7Ffqo3l65uueQDqxPot5YoGlVQx4qH2n4PWAhM6mOUayT
	eTaRiTBtXBL4mYY9YQco33hPszz4xaLsZ9KHjxMRAifUOvse3AzP6Pa4va+GHsujxyavhBQEE9LD9
	BdaqfSu7wPo+JXnlS25fbyQ3+32fUhnDC6jNOKQA3i+g4YmgGkFNxRLQ/8ZcPh3K8ydRNcdj96DTh
	7xO6QHGgg5921CrqHrew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUzKz-0006lE-Si; Wed, 13 Nov 2019 20:34:01 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUzKs-0006kZ-1L
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 20:33:55 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 62EF21264D596;
 Wed, 13 Nov 2019 12:33:52 -0800 (PST)
Date: Wed, 13 Nov 2019 12:33:51 -0800 (PST)
Message-Id: <20191113.123351.582951198063864661.davem@davemloft.net>
To: colin.king@canonical.com
Subject: Re: [PATCH][next] net: ethernet: stmmac: fix indentation issue
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191113162238.102771-1-colin.king@canonical.com>
References: <20191113162238.102771-1-colin.king@canonical.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 13 Nov 2019 12:33:52 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_123354_081468_5395B1A9 
X-CRM114-Status: UNSURE (   5.44  )
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 joabreu@synopsys.com, mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin King <colin.king@canonical.com>
Date: Wed, 13 Nov 2019 16:22:38 +0000

> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a return statement that is indented too deeply, remove
> the extraneous tab.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Applied, thanks Colin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
