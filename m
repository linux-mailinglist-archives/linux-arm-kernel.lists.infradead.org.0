Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B03B11238FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 22:58:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EwdovKcUn6pMWxYwSmFfuMXMxKkBOgbaqPqw0XqWB0c=; b=DNfCTO907gI7AY
	tl0jyBdQC5y4/jhxNx4gCKRePlrUGm34kWBjKS7PQKoocMd6xoWo2ug9DnAMcqGC5B/aczfFdUZBR
	ZWqRCQPKMtcZYdQOgXsaxkcNufybflPfhmy4Y7WK5UpKZLD/FaIY0zk077oSLRmQs2APKPZoHmtcs
	3lxc1F+BhRWtrbsFXkDzaTUfy5dR+gS15kQDiZPl2NdVM44HIUttnVGlAOPCV2A4vI1zH3K1U/AGJ
	XQd6lKAMr2ouvanc+wv/ne1RhGIiDjLB9tXMjl2Fwaic9zyq4myYMOIL9J3XsMV5x1hcSvpZ6hSyW
	dpDBi3fUgSdzsQAbl16Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihKr2-0002Gd-AN; Tue, 17 Dec 2019 21:58:08 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihKqQ-00021s-8u
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 21:57:31 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id C3082146D0405;
 Tue, 17 Dec 2019 13:57:29 -0800 (PST)
Date: Tue, 17 Dec 2019 13:57:29 -0800 (PST)
Message-Id: <20191217.135729.173497629676380262.davem@davemloft.net>
To: radhey.shyam.pandey@xilinx.com
Subject: Re: [PATCH net-next 1/3] net: emaclite: Fix coding style
From: David Miller <davem@davemloft.net>
In-Reply-To: <1576498090-1277-2-git-send-email-radhey.shyam.pandey@xilinx.com>
References: <1576498090-1277-1-git-send-email-radhey.shyam.pandey@xilinx.com>
 <1576498090-1277-2-git-send-email-radhey.shyam.pandey@xilinx.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 17 Dec 2019 13:57:30 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_135730_360441_34A833F7 
X-CRM114-Status: UNSURE (   6.16  )
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
Cc: git@xilinx.com, netdev@vger.kernel.org, michal.simek@xilinx.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Date: Mon, 16 Dec 2019 17:38:08 +0530

> -	spinlock_t reset_lock;
> +	spinlock_t reset_lock; /* lock used for synchronization */

If you're just going to put the comment there to shut up the warnings,
I'm not applying your patches.

You have to write a thoughtful comment which explains what this lock
actually protects.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
