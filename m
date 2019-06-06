Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC2436892
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 02:03:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nog/BDhkhw1mSR9wHJfk/tQCGW66ahJtyaOjtT4Zom8=; b=ZXDba3oXn64cUf
	57qRYev/CleQk604BlXES9BcOpWNbcR14RypMpce+BK5N7HGEtnPi9tvAUf6yCYy57BHFXsHmS3ev
	pk0WA7IGerWMqkXSsN1Zji0Rs0mM9bQS+6t1ki5JutZiP+gkYmbz1u/ZcIwVMx5BgGpDO0K98J5VW
	p8gUM3BRmRKoLWjkw5pddm+15hVjXGbfRFD5+Y7ARJ9sASnYYHsvbALnyXjJcufez/npt0qbnjCV7
	fzzj6XD1nDgn8s8UIvRa+miPn58y53Ty/W1dCXGg7bOfgLPyWTY93840JbogF5BsXBhiLEvX36VWQ
	qWNf1IGobX/AizV54vtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYfsZ-0001ri-QY; Thu, 06 Jun 2019 00:03:39 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYfsT-0001rH-5X; Thu, 06 Jun 2019 00:03:35 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id EE580136E16AB;
 Wed,  5 Jun 2019 17:03:28 -0700 (PDT)
Date: Wed, 05 Jun 2019 17:03:28 -0700 (PDT)
Message-Id: <20190605.170328.2300021130625279075.davem@davemloft.net>
To: biao.huang@mediatek.com
Subject: Re: [v2, PATCH 0/4] complete dwmac-mediatek driver and fix flow
 control issue
From: David Miller <davem@davemloft.net>
In-Reply-To: <1559527086-7227-1-git-send-email-biao.huang@mediatek.com>
References: <1559527086-7227-1-git-send-email-biao.huang@mediatek.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 05 Jun 2019 17:03:29 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_170333_212017_97DBFE15 
X-CRM114-Status: UNSURE (   8.00  )
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
Cc: andrew@lunn.ch, jianguo.zhang@mediatek.com, alexandre.torgue@st.com,
 boon.leong.ong@intel.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 yt.shen@mediatek.com, joabreu@synopsys.com, linux-mediatek@lists.infradead.org,
 mcoquelin.stm32@gmail.com, matthias.bgg@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Biao Huang <biao.huang@mediatek.com>
Date: Mon, 3 Jun 2019 09:58:02 +0800

> Changes in v2:                                                                  
>         patch#1: there is no extra action in mediatek_dwmac_remove, remove it            
>                                                                                 
> v1:                                                                             
> This series mainly complete dwmac-mediatek driver:                              
>         1. add power on/off operations for dwmac-mediatek.                      
>         2. disable rx watchdog to reduce rx path reponding time.                
>         3. change the default value of tx-frames from 25 to 1, so               
>            ptp4l will test pass by default.                                     
>                                                                                 
> and also fix the issue that flow control won't be disabled any more             
> once being enabled.                                                             

Series applied to net-next.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
