Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 774101FA0E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 22:02:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VjA2yQ3/quPTBqo48w/hLND3XnjpG7fuId6IuKWsh6Y=; b=l/hRWsOlMkJSO/
	PpXJvc/zhKfzyEmwzUoCZ3CWjX5p3ZwHzMchcN0Acsx5t02WPgNrxTocKfdK5g1BlDaLSE1E/u1aQ
	P7U4mRpOcIt9U30TNKs1psYhM6JfSxNGaKckZL4yr4YWYhr6OFeste/L9Vmfza8+/Wg2ibh9oRZr9
	/eoL10+evCyd6jzMbF9d1m2F9CsRQmdI1Sh046Tk+HEhq7mbJon29oBIpHc8kHMPCKyvAqcvf4oeb
	S94gOw6JY9EP9MY6RwfvTTrO9XY13lvTuEZTn7muDKwAu7jC9/MeNjYqFqhsJfjOxdyT5eehdOoTd
	o8O0a+vQbiRc8eyOff5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkvJM-0004Di-RQ; Mon, 15 Jun 2020 20:02:28 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkvJF-0004CL-O4
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 20:02:22 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 48A53120ED49A;
 Mon, 15 Jun 2020 13:02:16 -0700 (PDT)
Date: Mon, 15 Jun 2020 13:02:15 -0700 (PDT)
Message-Id: <20200615.130215.401888060274877652.davem@davemloft.net>
To: colin.king@canonical.com
Subject: Re: [PATCH] net: axienet: fix spelling mistake in comment
 "Exteneded" -> "extended"
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200615082911.7252-1-colin.king@canonical.com>
References: <20200615082911.7252-1-colin.king@canonical.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 15 Jun 2020 13:02:16 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_130221_783362_10C295C6 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: netdev@vger.kernel.org, radhey.shyam.pandey@xilinx.com,
 kernel-janitors@vger.kernel.org, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, kuba@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin King <colin.king@canonical.com>
Date: Mon, 15 Jun 2020 09:29:11 +0100

> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a spelling mistake in a comment. Fix it.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
