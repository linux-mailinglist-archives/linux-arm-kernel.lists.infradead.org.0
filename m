Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01004283C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 18:34:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZBGBQV8hUCOewcCLxkyCt1erMoAMvazGBoSDYWwJM0=; b=l1JqRoOtPrhJIl
	B9MEyBthlFb8IG7RhHa+hF5uNlazIIjcv6ldcih44n7PnRbzWX6yM3CR2BQq9jG1vuRhnaWvtJz8s
	FGYGBdXhEGAEec56FfIsBE2zwiFz64IgplyLZvyySOECK9xAzYjtb/qLyu9owPotoVrP0N5qxtUfG
	w3R5x/agNcOGkUQ3FmSiDdPiFXfCTjcT0n5pjwvGh7b1O+61/jiX624sLNvPq+skmmPgjSzmxyKHL
	IwIJ2qtl5gBmZtg34lSHif73ewnjcBOV7iVa+NlmSvuzMPsB7DQcB1hte5jFa7ec7Kj8gfYQ23Gp9
	46365Oo/JYpTTraRAOWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTqfd-0002VC-HP; Thu, 23 May 2019 16:34:21 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTqfW-0002Tk-19
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 16:34:15 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7C5F71509CAE6;
 Thu, 23 May 2019 09:34:13 -0700 (PDT)
Date: Thu, 23 May 2019 09:34:12 -0700 (PDT)
Message-Id: <20190523.093412.1633409896386509148.davem@davemloft.net>
To: esben@geanix.com
Subject: Re: [PATCH 0/4] net: ll_temac: Fix and enable multicast support
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190523120222.3807-1-esben@geanix.com>
References: <20190523120222.3807-1-esben@geanix.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 23 May 2019 09:34:13 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_093414_070375_FD3D95ED 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: andrew@lunn.ch, netdev@vger.kernel.org, yuehaibing@huawei.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 dan.carpenter@oracle.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Esben Haabendal <esben@geanix.com>
Date: Thu, 23 May 2019 14:02:18 +0200

> This patch series makes the necessary fixes to ll_temac driver to make
> multicast work, and enables support for it.so that multicast support can
> 
> The main change is the change from mutex to spinlock of the lock used to
> synchronize access to the shared indirect register access.

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
