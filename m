Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2450D1147FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 21:11:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jzzkZs3SYAUQdwQ5Whs/l2+VJ9REMmCNg8ium+WkcAo=; b=fS0vjnsWaerxYy
	VU3GylvrnWfngTpQXaVBBKIkWG4RVjPVWeLlTcm7wpuqVoO6xsHoFwX9CEJ9aR3y+Z0VgPuqWFvDz
	xW+/neZOH59Cz0Ik5+bIzx9hac213+xhH03clgGmePTiDBxwLS1aIUy4OHxWcSfP/iEOwjgjPHW/E
	N5FyZsD6Am515UUJb7ZzAqctvCWQqpr2N3GOr5Cy8EfJAqcFZl7gf9EJnEuPCiP3uYtTyXLEAFH2F
	SbkMTUv0GJy2y04cPwpVV4EPfgVJ6SXtFWCgZoqjgsBcqpzYIYOaOPSN9CQLPQh9xvQFGR3uRCaqs
	0fyZC0jBFn7fTmlZuYRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icxT6-0004vN-Si; Thu, 05 Dec 2019 20:11:20 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icxT0-0004uU-53
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 20:11:16 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 0020015039427;
 Thu,  5 Dec 2019 12:11:09 -0800 (PST)
Date: Thu, 05 Dec 2019 12:11:09 -0800 (PST)
Message-Id: <20191205.121109.1735662506707982549.davem@davemloft.net>
To: ykaukab@suse.de
Subject: Re: [PATCH net v2] net: thunderx: start phy before starting
 autonegotiation
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191205094116.4904-1-ykaukab@suse.de>
References: <20191205094116.4904-1-ykaukab@suse.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 05 Dec 2019 12:11:10 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_121114_196034_B8E00D82 
X-CRM114-Status: UNSURE (   6.78  )
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
Cc: andrew@lunn.ch, rric@kernel.org, sergei.shtylyov@cogentembedded.com,
 netdev@vger.kernel.org, tharvey@gateworks.com, linux-kernel@vger.kernel.org,
 sgoutham@cavium.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mian Yousaf Kaukab <ykaukab@suse.de>
Date: Thu,  5 Dec 2019 10:41:16 +0100

> Since commit 2b3e88ea6528 ("net: phy: improve phy state checking")
> phy_start_aneg() expects phy state to be >= PHY_UP. Call phy_start()
> before calling phy_start_aneg() during probe so that autonegotiation
> is initiated.
> 
> As phy_start() takes care of calling phy_start_aneg(), drop the explicit
> call to phy_start_aneg().
> 
> Network fails without this patch on Octeon TX.
> 
> Fixes: 2b3e88ea6528 ("net: phy: improve phy state checking")
> Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>

Applied and queued up for -stable, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
