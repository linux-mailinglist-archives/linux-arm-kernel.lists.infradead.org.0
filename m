Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCD61252A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 21:06:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t/BLzlZsO6CKd+hn3Zm7AWGeYP41FAeKnLDfc6Y16yA=; b=LR//ECWQ4S+GAf
	X12m/C58P2bWjq/9UxhswrA6fwwsMpBpvgm5pOHyp4IFBXyqNuQupmteJa/ooRaXFhT1+npUugze4
	WVs0xwAqUwPD6y6sYYBqMCRhX+oMBJURoiS46Gp9hGWQbmuEjkwqo3sCnpvzjKCljB0V8r2n4HyaZ
	sA9u4INqHdCo+EwBJRpOnFqsOwn49Fvjfj3CegMUdRLFkEcUsPZBOnqPA9NCovqcVwk5LsmTBigxc
	Tt9LP2FLFQnVZy/JwnnaHjB57dSHfIOqcCo5TtIqzFsSInIUL7LuhHYMlzp81VupHlRCSef+Gh8xR
	/mT8P5EwRPqtZGeeQV1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihfaO-0006fF-P9; Wed, 18 Dec 2019 20:06:20 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihfaG-0006eX-I4
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 20:06:13 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id AE094153CA138;
 Wed, 18 Dec 2019 12:06:08 -0800 (PST)
Date: Wed, 18 Dec 2019 12:06:08 -0800 (PST)
Message-Id: <20191218.120608.957923763169948073.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net v3 0/9] net: stmmac: Fixes for -net
From: David Miller <davem@davemloft.net>
In-Reply-To: <cover.1576664155.git.Jose.Abreu@synopsys.com>
References: <cover.1576664155.git.Jose.Abreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 18 Dec 2019 12:06:09 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_120612_596502_7B463101 
X-CRM114-Status: UNSURE (   5.20  )
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
Cc: Joao.Pinto@synopsys.com, jakub.kicinski@netronome.com,
 alexandre.torgue@st.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Wed, 18 Dec 2019 11:17:34 +0100

> Fixes for stmmac.

Series applied.

But realistically I doubt you'll ever find a configuration where
SMP_CACHE_BYTES is less than 16 (seriously, it is so non-sensible to
build a cpu like that).  So you could have done something like:

#if SMP_CACHE_BYTES < 16
#error SMP_CACHE_BYTES too small
#endif

and then add the funky double alignment code if that ever triggered.

But again it never will.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
