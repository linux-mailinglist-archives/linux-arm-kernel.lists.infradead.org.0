Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2ECF6FB7D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 10:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BKlv3vXo+Ezd4oVnIIXPAY3zTnXii+u+zhj+7cR0Z4g=; b=iNW
	pTtwdps+s9x2gWO5R+BNs56a75tkixZ//W/TmSnScVnUbWOfN6J021vzznILqrW1PoH/M4A79csET
	0K5F3YD6OKdTTX/5xfsoLRdi0h2cBLt7rR756XTktYch/9gDmEYcO19/cJAC2DrEDUA9/m1GPPA6J
	8h5APDEDU4sLUvX8GRND6QRV8EA7/28y/o3oAChhNyiL1/gQFl2Tkt62/SZxayi2BdR1HeUiLsQCn
	37p5XgXxdfOFluT2hxGkJHujdIuELHKCi5trk+DuzupEP27lOftWdS2Wxyr3UQUBxg+qaYnS4/Vvs
	4htC9VI7avqkw0lEBaRmI/YFM42eQZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpTro-0007Ev-T8; Mon, 22 Jul 2019 08:40:20 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpTrO-0007Df-9P
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 08:39:55 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id EA265C1227;
 Mon, 22 Jul 2019 08:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563784792; bh=gAQ84Z8uQYEqLwe3t0dAiOmw/qC87vcNk5Wf+7zF7eY=;
 h=From:To:Cc:Subject:Date:From;
 b=Tw0NjjLDtWP8eBnJ6Xt4QyVdruzgB9/y/J+RuQynTViyqlcHCEiVQDEA0qu2HSXEv
 YacB3+0odjiXogl/oj8vkMpzHN0Xb17sALqOGPbxvQT0NzMugg5Fq2pFUkgi0E+1C9
 ZUz3L4pKY8S7S/OuTysc5hdUycHpUFRg/T4DhZ+52yfym8VeZkes4+4sFikIrnNiya
 bee1H9EZhI8BiNJK2rnUAE+hoOwo9EhJHsxANi6lp9rJLsRJEOMjwhWzvh2BVu0aGR
 jwUq7yfvUijBi+RnXZfY6hMJ1r/LXxCeoLwsw7sUY+eVGGNY5WCZ+m843HTrUcIr2o
 0m3X94RXrr7yA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 9FD1AA0057;
 Mon, 22 Jul 2019 08:39:44 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 0/2] net: stmmac: Two fixes
Date: Mon, 22 Jul 2019 10:39:29 +0200
Message-Id: <cover.1563784666.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_013954_337421_893B6777 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Two fixes targeting -net.

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---

Jose Abreu (2):
  net: stmmac: RX Descriptors need to be clean before setting buffers
  net: stmmac: Use kcalloc() instead of kmalloc_array()

 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
