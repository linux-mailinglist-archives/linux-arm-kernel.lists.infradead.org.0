Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 978E91828BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 07:05:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgr0mjDtk4ZXrnkCgYJNsOkPI8iVzjUoZNxMfJwBX0E=; b=PrUFPejTXNtGSo
	YGtAcB7s4bSJlP3jOuFfQNx4OjHRqTRRzRS1sqiYsZtBW9dHijDLC/yBJo+mLrUzos6ynvaYNIavo
	YFrhR8gs+1eUosWvj4tAQphXSewdCTJ/5rCGq/wR6o2dO/x7sgMcYDnfx5EYYC85epLa8nBZZOvwG
	vD0+g0HxP6AZFCGkIv7HW90U4JCFLfreoh2ZS/X8ZgIp9w11F1kx/ufXkBjoE8/wf2rUaRWm4bQrz
	WkRHfhBTdRIAWe4sit83ByCYBCSz5G0fL8am7zh0xkdwJs3eLj53iOflM6Y3uc2cnE3dvKQ0oqXUK
	esgrwvwmOsC++b6d/L/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCGyD-00049k-IU; Thu, 12 Mar 2020 06:05:25 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCGy5-000483-GF
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 06:05:18 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2E28214CD0E6D;
 Wed, 11 Mar 2020 23:05:16 -0700 (PDT)
Date: Wed, 11 Mar 2020 23:05:15 -0700 (PDT)
Message-Id: <20200311.230515.1148233734946906259.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net-next] net: stmmac: selftests: Fix L3/L4 Filtering test
From: David Miller <davem@davemloft.net>
In-Reply-To: <4e5d8d273498a1c1c6b8f983e5dd7590c6dfd26a.1583760590.git.Jose.Abreu@synopsys.com>
References: <4e5d8d273498a1c1c6b8f983e5dd7590c6dfd26a.1583760590.git.Jose.Abreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 11 Mar 2020 23:05:16 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_230517_540960_0F164735 
X-CRM114-Status: UNSURE (   6.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Joao.Pinto@synopsys.com, alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Mon,  9 Mar 2020 14:30:22 +0100

> Since commit 319a1d19471e, stmmac only support basic HW stats type for
> action. Set this field in the L3/L4 Filtering test so that it correctly
> setups the filter instead of returning EOPNOTSUPP.
> 
> Fixes: 319a1d19471e ("flow_offload: check for basic action hw stats type")
> Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
