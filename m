Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0561E527
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 00:24:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8C/arBhZZ0NrCMO2t8Kqg5xO0m8RT4UyzUQlSJAhoE=; b=s3Mlfo2psYLV2A
	Oe5WiAK1sza4Qlzq9QQwnIoUn3g6UiJItZLuY1FovtsRA1y5/PUMjneLwOz4rwUtrzWbhYHzLffXU
	iIW+tz2cCf8ypYRPtWxwJA0tJyXWWrXr/LVvPnow7jNRh/GIhn0aN+sdM6ypZ64XE+ppd1HVxtZe0
	rLLkgpVn2jASPcHbYM4kH29B2T5Fer/4sNi0ZMbfAHrxSJNj3oHtY/iaVAOdC74sz9tqXd5kihrBv
	Td4cJ+xUQ24oJDVXSNJlv91+4oyyW3gRFL/1OUedp4UmM4xyG2QLRVKrxQY/xYrlJnux8AR2CmNZE
	XS3w33/OHMZkVlwJwUtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQfqX-0003Fu-P8; Tue, 14 May 2019 22:24:29 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQfqQ-0003BZ-2N; Tue, 14 May 2019 22:24:23 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id BED3B14BFF810;
 Tue, 14 May 2019 15:24:13 -0700 (PDT)
Date: Tue, 14 May 2019 15:24:13 -0700 (PDT)
Message-Id: <20190514.152413.759642243023046997.davem@davemloft.net>
To: biao.huang@mediatek.com
Subject: Re: [v3, PATCH 0/4] fix some bugs in stmmac
From: David Miller <davem@davemloft.net>
In-Reply-To: <1557805046-306-1-git-send-email-biao.huang@mediatek.com>
References: <1557805046-306-1-git-send-email-biao.huang@mediatek.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 14 May 2019 15:24:14 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_152422_113877_9B3FF0BC 
X-CRM114-Status: UNSURE (   4.80  )
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
Cc: alexandre.torgue@st.com, jianguo.zhang@mediatek.comi,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, boon.leong.ong@intel.com,
 yt.shen@mediatek.com, joabreu@synopsys.com, linux-mediatek@lists.infradead.org,
 mcoquelin.stm32@gmail.com, matthias.bgg@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This series doesn't apply to my 'net' tree, mainly because something like
patch #3 is already in my tree.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
