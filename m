Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6760FAB91B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 15:17:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dsOicBP1OI7CFQBLdBdVUQNEI1m9heyBoSYD0enu7Jc=; b=lmI1rNon9grV+u
	rzkTMk0SqpLAoYx/kefgJg5uiwiQAo82QAxQ7t8e8BMyStE8wN5XaatfMJ2z/9YQWyOWygWLu3yTf
	+jGjTd+zaFMJDBoDmN8OYZ4yWzV3L3IQrqkr1LBULYU0vek1x/2tExYrVTx8M540mRZj2ouydysfP
	yCDXDsHx+JSJTcwg0RLvpcZ3iRLtRokivS3YMRa9rFBuZlyeOgL/QxucpyZxQqreXTcDS9YEA1HV2
	gfB0KsfVQjTe1K6z1CdbjsessDepFM/c6yEtAThxvsMMR7DyKGbCc9cxUGLiW9Jr1ko6TbERVzThR
	fPuJ/vCkyDDiOsOlRpbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6E7d-0002mn-U9; Fri, 06 Sep 2019 13:17:53 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6E7X-0002m2-B2
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 13:17:48 +0000
Received: from localhost (unknown [88.214.184.128])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B3597152F6952;
 Fri,  6 Sep 2019 06:17:41 -0700 (PDT)
Date: Fri, 06 Sep 2019 15:17:39 +0200 (CEST)
Message-Id: <20190906.151739.1653688874182107118.davem@davemloft.net>
To: radhey.shyam.pandey@xilinx.com
Subject: Re: [PATCH net-next] MAINTAINERS: add myself as maintainer for
 xilinx axiethernet driver
From: David Miller <davem@davemloft.net>
In-Reply-To: <1567688168-20607-1-git-send-email-radhey.shyam.pandey@xilinx.com>
References: <1567688168-20607-1-git-send-email-radhey.shyam.pandey@xilinx.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 06 Sep 2019 06:17:43 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_061747_383032_E43D2E9D 
X-CRM114-Status: UNSURE (   8.02  )
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
Cc: anirudha.sarangi@xilinx.com, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, michal.simek@xilinx.com, gregkh@linuxfoundation.org,
 mchehab+samsung@kernel.org, john.linn@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Date: Thu,  5 Sep 2019 18:26:08 +0530

> I am maintaining xilinx axiethernet driver in xilinx tree and would like
> to maintain it in the mainline kernel as well. Hence adding myself as a
> maintainer. Also Anirudha and John has moved to new roles, so based on
> request removing them from the maintainer list.
> 
> Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
> Acked-by: John Linn <john.linn@xilinx.com>
> Acked-by: Michal Simek <michal.simek@xilinx.com>
> ---
> I am resending this patch as earlier version didn't go through mailing
> list due to some config restriction on the external email addresses.
> Also adding Michal's acked-by tag.

Applied to 'net'.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
