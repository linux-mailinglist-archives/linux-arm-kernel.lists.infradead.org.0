Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C95BE2CE35
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 20:06:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTdvfK2E+XYDJxDbr+G5NZjkgOPNyiFn2ys4YRuyqzU=; b=ufIvAbBcutfQYf
	nI9wpIZ+lzeqWHLzOcxTc3OwbgCNly2CXWIfQeAnJcdS1EsKp9v2WRHHmK7eAECEPnGBHgZg9obsQ
	l3L5vkzYiDjw023G32umYU2dlnQUiJ9ZGqcygBQ6NWQL6IMVNg/hGw7vNKAMZv5ZkUWVBUMXI60rA
	3dEnuqNGukrF5CbZcgxddpnDd+WS7L8LQIpPwDCckMey2y3IlJLNNO+KxSrVZLE7mioJ9NFYQmD8x
	BA6HcSchkffbKsPnnkkBsRtrT7UGd9hiXHfAFSbawlhoKz7i1PZEtxa7sunzsJznwDaovHv0S4cGh
	BpbYC9TdkKlfzba0OHGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVgUN-000232-AP; Tue, 28 May 2019 18:06:19 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVgUC-00020Q-Py
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 18:06:12 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 3F92A12D6C857;
 Tue, 28 May 2019 11:05:59 -0700 (PDT)
Date: Tue, 28 May 2019 11:05:58 -0700 (PDT)
Message-Id: <20190528.110558.1330628926671013610.davem@davemloft.net>
To: Jisheng.Zhang@synaptics.com
Subject: Re: [PATCH] net: mvneta: Fix err code path of probe
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190527185513.04aca133@xhacker.debian>
References: <20190527185513.04aca133@xhacker.debian>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 28 May 2019 11:05:59 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_110608_837917_9AD7E57F 
X-CRM114-Status: UNSURE (   7.49  )
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
Cc: linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Date: Mon, 27 May 2019 11:04:17 +0000

> Fix below issues in err code path of probe:
> 1. we don't need to unregister_netdev() because the netdev isn't
> registered.
> 2. when register_netdev() fails, we also need to destroy bm pool for
> HWBM case.
> 
> Fixes: dc35a10f68d3 ("net: mvneta: bm: add support for hardware buffer management")
> Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>

Applied and queued up for -stable.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
