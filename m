Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5D4BDD8B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 13:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wRlxYo6glwUm8mdjs4aKsKJ+iEkS6QDsYs//9OGHSjw=; b=ZC2/1720whJ2VU
	KjFtI10b8h7RnhWM6TK4iiPTsVauPA9e130sDK2Ag5VAcCa+tIPANOuJFQsAhlsTn+hgh6lOLtqmD
	eIWJirbwFXphVrJIm9+gd0Mhzj834fp2I1s+kRJahz/1t1ko658RrzSxH8G7jIOycq+1roqVwa77d
	1DNj65rdoI4F1woHF2oQvzbvw5bvBlXH2VpIqWJOcxhBEWQN/ZbRYcLsWtL+L9WolAKXgQCscw4A1
	wasNAcvWeTq6lQH5e9G42B/UR3U3HNGj6VHDU315mlyEafuBfc/kbRm8MVLTK3ahypHmRDPmeqiYe
	2BkTs6gl6cOD9/8WhlIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD5x0-0004u6-02; Wed, 25 Sep 2019 11:59:18 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD5wV-0004tR-6E
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 11:58:48 +0000
Received: from localhost (unknown [65.39.69.237])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7CF65154ECABF;
 Wed, 25 Sep 2019 04:58:42 -0700 (PDT)
Date: Wed, 25 Sep 2019 13:58:41 +0200 (CEST)
Message-Id: <20190925.135841.865526139564943830.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net v2] net: stmmac: selftests: Flow Control test can
 also run with ASYM Pause
From: David Miller <davem@davemloft.net>
In-Reply-To: <efc49b6ea500115ff1442ddebe9dc7d956eb19e9.1569224900.git.Jose.Abreu@synopsys.com>
References: <efc49b6ea500115ff1442ddebe9dc7d956eb19e9.1569224900.git.Jose.Abreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 25 Sep 2019 04:58:44 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_045847_233436_9359EC9E 
X-CRM114-Status: UNSURE (   6.03  )
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
Cc: Joao.Pinto@synopsys.com, alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Mon, 23 Sep 2019 09:49:08 +0200

> The Flow Control selftest is also available with ASYM Pause. Lets add
> this check to the test and fix eventual false positive failures.
> 
> Fixes: 091810dbded9 ("net: stmmac: Introduce selftests support")
> Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
