Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCB5201C72
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 22:33:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vPr4oaJgAbh66E2PQGmXCa/RBdHeVWdjnyaUOg8yLSk=; b=feuvlXm2MUFCYS
	qVBI78/cXUZwCkNEdnJ5sgFyMT//UpDvXTkNbwcTwtJct0n2WJPbVs0rcwYRR2v8U0n6DiTAFIIpb
	kXhZimZuzkICY00hhiWqmtAOGz3vSf1GpcZfT6L/ecMR4a9LpiIkyLflhAPxb8D7HBeuyBnUVC2+P
	cSRHmsEpM9bs6WDMvPh7WgluH/kxa07mOX/ZqoD0tzWrIXiYZJXV/bWTiXpWTdp3ERhUyidmiT8Xy
	8vZzTEcRVYG9isyLsrBiIPvqUgVh3Lwiy/RVew+Guy3VfeIVigFxh03vbptLGuUjBDH+uRs3Xhqph
	TnlM89ysjJ80FRoQ8xcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmNhS-0000pe-5k; Fri, 19 Jun 2020 20:33:22 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmNhJ-0000p0-Eq
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 20:33:15 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 53DC4120ED481;
 Fri, 19 Jun 2020 13:33:04 -0700 (PDT)
Date: Fri, 19 Jun 2020 13:33:03 -0700 (PDT)
Message-Id: <20200619.133303.1386509775642095897.davem@davemloft.net>
To: gustavoars@kernel.org
Subject: Re: [PATCH][next] net: stmmac: selftests: Use struct_size() in
 kzalloc()
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200619174154.GA21660@embeddedor>
References: <20200619174154.GA21660@embeddedor>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 19 Jun 2020 13:33:04 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_133313_496603_E556B6D7 
X-CRM114-Status: UNSURE (   6.96  )
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
Cc: alexandre.torgue@st.com, gustavo@embeddedor.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 kuba@kernel.org, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Date: Fri, 19 Jun 2020 12:41:54 -0500

> Make use of the struct_size() helper instead of an open-coded version
> in order to avoid any potential type mistakes.
> 
> This code was detected with the help of Coccinelle and, audited and
> fixed manually.
> 
> Addresses-KSPP-ID: https://github.com/KSPP/linux/issues/83
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>

This doesn't apply to net-next.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
