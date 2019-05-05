Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCFD141A6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 19:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5fvzEBxR+Lujh31Xka8DXU56KjBs54XJ2OuqO81NRY0=; b=tCjNjfndGKh91w
	DPbXU2cCguaGGmuWCWXlWoGjsWkZIhBbWLJcqgL18NbyOe50Icqp/b+Yi7yrtCJwu83N4YHlKmzpF
	+TOUyH7jv+pizqJdwRc0uXtc/f+JykEg9kku6NUcvyVVE3rrk8nIHXkObnlKsEX/+jCkgueM/WU9M
	LjCKhBQGLPnHgao+S6J37GZ5iatV4rfvtc5ootS7+S1aQmIowgFxVW2Sc+CQfywl2MSXVPkFtoYtk
	VpaDOlR3VW+wtJKuSaFhFIy0o6AmvzyZ7HkLMGsgLzcaXTutNjDuxoTuAQs+Sc7Nu2mp1z1CxfXev
	LmHqCzSLFlx+Kw1pFhSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNLGW-0003Ja-3d; Sun, 05 May 2019 17:49:32 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNLGP-0003J9-En
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 17:49:26 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id DE4D014DA7712;
 Sun,  5 May 2019 10:49:24 -0700 (PDT)
Date: Sun, 05 May 2019 10:49:24 -0700 (PDT)
Message-Id: <20190505.104924.2097252957620145443.davem@davemloft.net>
To: yuehaibing@huawei.com
Subject: Re: [PATCH net-next] net: ll_temac: Make some functions static
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190504101030.37896-1-yuehaibing@huawei.com>
References: <20190504101030.37896-1-yuehaibing@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 05 May 2019 10:49:25 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_104925_498423_670DEAEE 
X-CRM114-Status: UNSURE (   5.02  )
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
Cc: andrew@lunn.ch, netdev@vger.kernel.org, esben@geanix.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: YueHaibing <yuehaibing@huawei.com>
Date: Sat, 4 May 2019 18:10:30 +0800

> Fix sparse warnings:
> 
> drivers/net/ethernet/xilinx/ll_temac_main.c:66:5: warning: symbol '_temac_ior_be' was not declared. Should it be static?
> drivers/net/ethernet/xilinx/ll_temac_main.c:71:6: warning: symbol '_temac_iow_be' was not declared. Should it be static?
> drivers/net/ethernet/xilinx/ll_temac_main.c:76:5: warning: symbol '_temac_ior_le' was not declared. Should it be static?
> drivers/net/ethernet/xilinx/ll_temac_main.c:81:6: warning: symbol '_temac_iow_le' was not declared. Should it be static?
> drivers/net/ethernet/xilinx/ll_temac_main.c:648:6: warning: symbol 'ptr_to_txbd' was not declared. Should it be static?
> drivers/net/ethernet/xilinx/ll_temac_main.c:654:6: warning: symbol 'ptr_from_txbd' was not declared. Should it be static?
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
