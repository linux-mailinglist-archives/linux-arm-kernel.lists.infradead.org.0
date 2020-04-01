Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 148FC19B567
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 20:25:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bL0VwkPK/0xmpmyoq0G3m6XwsJb9LFbYZUg9/hhAyjw=; b=ZX/IIkuZUA7sw3
	BCBtFsZHKk0pWYytI7agluyYzH1baC+gYIvUyTMt5zAE3Quiz6Xpj/UNYtZyJj96aZ4KeIhZhG3mZ
	kw1X/i78tCcu41+tIttKTYft47qoSZCx8ESzuYfTdCZxygh3tp7OMjKlQWe+ZS+W1LfdWHe8kbAsi
	6wGsK5cCulyeMw4NGJEe1yfcf1URWk8/GLz0iJBKQqV1chk5ILRIp3+qZO5nlpZNaRSLlJBrFa5E2
	FkUmS2CyalKq5PSQsRfdn/UFPiUo85Jpd/MHKwXNuT9kUbLkTnN3Rz5gVqfm7D7gggptHdx/UB0zc
	Boxog9+lQJ7wK6p4YpnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJi3h-00035v-Rh; Wed, 01 Apr 2020 18:25:49 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJi3b-00035K-NA
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 18:25:44 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 20FEE120F5284;
 Wed,  1 Apr 2020 11:25:43 -0700 (PDT)
Date: Wed, 01 Apr 2020 11:25:42 -0700 (PDT)
Message-Id: <20200401.112542.1191455491464437178.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net-next] net: stmmac: Fix VLAN filtering when HW does
 not support it
From: David Miller <davem@davemloft.net>
In-Reply-To: <42e493820f707c5a5d3375676ef6b6a96988f846.1585762111.git.Jose.Abreu@synopsys.com>
References: <42e493820f707c5a5d3375676ef6b6a96988f846.1585762111.git.Jose.Abreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 01 Apr 2020 11:25:43 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_112543_753736_DAFBCAE7 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Joao.Pinto@synopsys.com, alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Wed,  1 Apr 2020 19:29:03 +0200

> If we don't have any filters available we can't rely upon the return
> code of stmmac_add_hw_vlan_rx_fltr() / stmmac_del_hw_vlan_rx_fltr(). Add
> a check for this.
> 
> Fixes: ed64639bc1e0 ("net: stmmac: Add support for VLAN Rx filtering")
> Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
