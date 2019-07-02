Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 639FE5C753
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 04:30:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPKr7iexANnOsiWxCWfqquo/zDrm/f/WCr66+17aJ+E=; b=BWhkG5ZLMrO16E
	NC1nVDALk1bTCgB7BdhEBYVLL31+BnJvPWra4Y+862aW+y8Iag1VQ+OgWOgzL8d4FTjqvOYdxuGgX
	phC0cLa3jtY7tEFvzhSIx3/KuoNrGpuiKVrfGV51QkGD7dIrn9FonOAsOZGSWSRZZeV5ak1m6CAsb
	LXaOqy1XxfuEHu7nPjwui4k8bpyKhVIiMbCMh+BkNdR+tnv4zv0kCLXVYu5KEIESNknIDYrVaDY9W
	0vpmCfMrulp2gabzLiudvaIIrkV2t7jFmRlzWGDUKGxLaYACis7Vw8RXzDj1m5wcRZ7ncyPJxFTAJ
	1735atqCh+tODesSxQ6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi8YX-0004aR-RX; Tue, 02 Jul 2019 02:30:06 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi8YI-0004Zh-47
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 02:29:51 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id D1A4B14DEC5E9;
 Mon,  1 Jul 2019 19:29:46 -0700 (PDT)
Date: Mon, 01 Jul 2019 19:29:46 -0700 (PDT)
Message-Id: <20190701.192946.619458933774688152.davem@davemloft.net>
To: hariprasad.kelam@gmail.com
Subject: Re: [PATCH] net: ethernet: broadcom: bcm63xx_enet: Remove unneeded
 memset
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190630142949.GA7422@hari-Inspiron-1545>
References: <20190630142949.GA7422@hari-Inspiron-1545>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 01 Jul 2019 19:29:47 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_192950_167420_6913A098 
X-CRM114-Status: UNSURE (   5.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, gregkh@linuxfoundation.org,
 yuehaibing@huawei.com, linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Date: Sun, 30 Jun 2019 19:59:49 +0530

> Remove unneeded memset as alloc_etherdev is using kvzalloc which uses
> __GFP_ZERO flag
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>

Applied to net-next, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
