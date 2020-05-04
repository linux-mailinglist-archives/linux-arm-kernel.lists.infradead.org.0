Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F00E71C4694
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 21:02:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/hFXXME0L9hhdQfoFpPLWBrpp8qyv7l2Jy/l875N3s=; b=Z9w9ZutsYQEKoq
	l/bu+UNpWNiWIRMbVnDjC3mwz8QJivgUMiHPLl51pS85J+oEPdjoe1ofl/80kXRjwM24n4mYBM1ZK
	re7Jr+JDoxv/Uq06w42StStS/+d6pPcbUVWVhvPpATlZFQqs8JS2iaW390FdvahzlXgnSu5CbfMFY
	Nq6Jq35uE4f2tEIBQ1vk1DLRoCZNzPjtoL5gghhYxOICE2V++qULT5tMwy1Z7X7oROCLpOWQOirqI
	66xn0KkK2RIkaplxIAZjGxoi+BEL8cuvrdPq6QI4u9kSrFzfcyB7R7d9CL0jc0U/nCBiL+go7cVoD
	F0eorrbbd+sA1ATzeI+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVgML-0008LU-NI; Mon, 04 May 2020 19:02:33 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVgME-0008Kx-Rr
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 19:02:27 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 592D311F5F61A;
 Mon,  4 May 2020 12:02:25 -0700 (PDT)
Date: Mon, 04 May 2020 12:02:24 -0700 (PDT)
Message-Id: <20200504.120224.600801033778032707.davem@davemloft.net>
To: grygorii.strashko@ti.com
Subject: Re: [PATCH net-next 0/7] net: ethernet: ti: k3: introduce common
 platform time sync driver - cpts
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200501205011.14899-1-grygorii.strashko@ti.com>
References: <20200501205011.14899-1-grygorii.strashko@ti.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 04 May 2020 12:02:25 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_120226_900222_C246446E 
X-CRM114-Status: UNSURE (   5.64  )
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
Cc: nm@ti.com, devicetree@vger.kernel.org, lokeshvutla@ti.com,
 netdev@vger.kernel.org, richardcochran@gmail.com, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, t-kristo@ti.com,
 m-karicheri2@ti.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Grygorii Strashko <grygorii.strashko@ti.com>
Date: Fri, 1 May 2020 23:50:04 +0300

> This series introduced support for significantly upgraded TI A65x/J721E Common
> platform time sync (CPTS) modules which are part of AM65xx Time Synchronization
> Architecture [1].
 ...

Series applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
