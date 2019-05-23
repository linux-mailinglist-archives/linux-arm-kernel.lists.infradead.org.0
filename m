Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 474692734D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 02:30:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2o5WvaQeNaOMVMyAJvZWAtikGI2rn2wX88vtv4XU6g=; b=JjwxXDrjohaSN/
	ahg3v7xcaqNT2EhRVISPTi4hOpLVDNOwmrKlL/LYiM3gn+ouVbHNnKZMaSzM3wceGpBQxDydgiSDY
	+gPzD5jPpJqZfg4jKOsJO53adff9zm0SUBwlWx97yGHQDNunZePUho+rM9FUQEMBNXe8GSAqzYgjJ
	TVOJQz5GW7msKHxv7KMyOs7oWTDn1DShhg1KNjEYuvAzhTnb2kjRU2PVz08b3gpD8bgzNp/KHSj+0
	ERapR8TfFfAxaTzDsk5A6ru+yKjBvYPQU0v+zTmwG1+9V+xMHp4+v+sFfzlPWYcYYVQcn4ief32pi
	nJsoGCK8fFPF6rdOITsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTbcT-0007g5-SZ; Thu, 23 May 2019 00:30:05 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTbcK-0007eg-P7
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 00:29:58 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 8D44E15042888;
 Wed, 22 May 2019 17:29:49 -0700 (PDT)
Date: Wed, 22 May 2019 17:29:48 -0700 (PDT)
Message-Id: <20190522.172948.1674625854915710265.davem@davemloft.net>
To: Jisheng.Zhang@synaptics.com
Subject: Re: [PATCH] net: stmmac: fix reset gpio free missing
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190522175558.59b21673@xhacker.debian>
References: <20190522175558.59b21673@xhacker.debian>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 22 May 2019 17:29:49 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_172956_826651_C1B285CF 
X-CRM114-Status: UNSURE (   9.80  )
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, peppe.cavallaro@st.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Date: Wed, 22 May 2019 10:05:09 +0000

> Commit 984203ceff27 ("net: stmmac: mdio: remove reset gpio free")
> removed the reset gpio free, when the driver is unbinded or rmmod,
> we miss the gpio free.
> 
> This patch uses managed API to request the reset gpio, so that the
> gpio could be freed properly.
> 
> Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> Fixes: 984203ceff27 ("net: stmmac: mdio: remove reset gpio free")

Please put the Fixes: tag first in the list of tags in the future.

Applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
