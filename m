Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C31D663BCF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 21:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h6w1Uc+mEqdLOEDK5XTauT+rCm/UkWyH6J9mZlIgCog=; b=AxQW/PoEfUadyA
	M0n/srxzqlZg929863RzDUAf0oKZzbU42SlO9kG+DdlEKdS5VboTmyeFiQwODgMya1FY3p8sNdR0o
	TinxTjNvbQwRAXsouedHlA1WgZW6ajERPU8a3/rw5WaUCN3s/OmQQNCT3cbeO4oWIcwT+PJNh/6jK
	ZjUyCOi1398dglHcQBll67IQYMAn97H6hqoM17q0xkooYrlFPQGgMiZqFyJUwPD+GHxzB/i1ExXby
	nMX7P6G4olNXZAlElzieYgVSwMotLWTQFRNH4fc5ayMKcVCUn4fJZR+MegeWuWA+WkRJvFUsAXSh8
	OS9TbZg0L6SHzgz1/OrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkvfX-0006Y2-6w; Tue, 09 Jul 2019 19:20:51 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkvfH-0006XR-Sj
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 19:20:37 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 3E07D1403896D;
 Tue,  9 Jul 2019 12:20:28 -0700 (PDT)
Date: Tue, 09 Jul 2019 12:20:27 -0700 (PDT)
Message-Id: <20190709.122027.77005575861873161.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net-next v4 0/3] net: stmmac: Some improvements and a fix
From: David Miller <davem@davemloft.net>
In-Reply-To: <cover.1562659012.git.joabreu@synopsys.com>
References: <cover.1562659012.git.joabreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 09 Jul 2019 12:20:28 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_122035_925062_312FF062 
X-CRM114-Status: UNSURE (   4.84  )
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
Cc: Joao.Pinto@synopsys.com, alexandre.torgue@st.com, maxime.ripard@bootlin.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, wens@csie.org,
 mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Tue,  9 Jul 2019 10:02:57 +0200

> Some performace improvements (01/03 and 03/03) and a fix (02/03),
> all for -next.

Series applied, thanks Jose.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
