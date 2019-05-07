Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A2C16B4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 21:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwJdy48lT/OuMe48a99vYEHA5q1V5xQsm0EpemMV9T4=; b=cHMSRoDkNyqIcD
	+N04Ya9GkyJRc+IWlhmY/v863qyBe1A14daivuWVmYvL3QCdsXKVZb6Sez3dL2aemn4KMosmxydYE
	WdBZ1n5hE/+IlWU6mUtgAVuWGXJvR+9+9Iqs6zWYp6eYI/S7AHle0ttf/9ZXSSbi/s2A/y/saXJ+9
	IPXDglwMRA0pEe6JxHVm6rtr84E+rsCBLx5skFBQNSB32Fsjo/8na17dGpDqriD1hkwJwKWwTHUmY
	NA/LUgQ7dWpFcXiZANg1pEe53VEY0r5ZKAKYAWggKngaITrFl6MIx8qTZ1z/Usyq2rEmAkYYd2tn8
	ub3nl/9nnhc9v7TbTLKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO5iM-0001Ew-GC; Tue, 07 May 2019 19:25:22 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO5iG-0001Ef-J1
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 19:25:17 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1DBDC14B76673;
 Tue,  7 May 2019 12:25:16 -0700 (PDT)
Date: Tue, 07 May 2019 12:25:15 -0700 (PDT)
Message-Id: <20190507.122515.1580564811216048550.davem@davemloft.net>
To: esben@geanix.com
Subject: Re: [PATCH] net: ll_temac: Improve error message on error IRQ
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190507064258.2790-1-esben@geanix.com>
References: <20190507064258.2790-1-esben@geanix.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 07 May 2019 12:25:16 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_122516_627438_9FC3758C 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, yang.wei9@zte.com.cn,
 mcgrof@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Esben Haabendal <esben@geanix.com>
Date: Tue,  7 May 2019 08:42:57 +0200

> The channel status register value can be very helpful when debugging
> SDMA problems.
> 
> Signed-off-by: Esben Haabendal <esben@geanix.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
