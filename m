Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1119C1370E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:14:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BKmBViEe4jD2kbICIzt1mTKWOcTCdtNQ1HavR2rYRPc=; b=DqG
	EzCL6XHdvon3ozqh2OIbzFx9pbZsxY7deQWNqPXAKVAxn+BUsthATFbOiE1gXitFJwsfWxf6DDSGY
	cyXMWSc+HE9GhxVwg7wnI0j8voi0kDihLG3qHjEb3cL7ot/QN/m678QZ3wpqYWPiGyiCKlyoAU/bS
	AhPlbvmMGxDZ1lIwZXF9Ck8QrFuHPII9oBh8CXc91cZAXZ5Kb6Wo+ys+UP74U7D+BwWs0w1zwgj4A
	tlrv/4n7SmoB0SttWQijh5yC0odnwWcjxfTZsGhEbWpe60DiNz9VaQyDBeQ77edcctcpxyTbQjeNn
	FKd7AN4O/FrcL3xZNvEzIWFPthU/NLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvzS-0001gd-2g; Fri, 10 Jan 2020 15:14:22 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvyo-0001GE-KN
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:13:45 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1797940609;
 Fri, 10 Jan 2020 15:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578669220; bh=YgRf2R2fEVbn4euNlEYstjVo6ED5nUtykY8bZiZZdok=;
 h=From:To:Cc:Subject:Date:From;
 b=cd1rfX6lviWpcYP4veI4RZBrG9EcMTAu7P5MwiZyolf322H4t/gHdEd58WSLkhS00
 M1gFVi/KQjKTNaT44jWkl+fYqYrYaGkJczYqiGhpZ7Gvbp9qKar2dmBD9XuwMphmJU
 aQFMReMV2YJgoP848ZMF8rosGTwKqlwNzDtCPIrLA8O3DvHwMJqF8v7WGjEh6gyhRD
 6NOKVJnW1txFWhjvUnpC6QY+1lQBtYhZLgHqWmB8JRi2jpwjjJDyLQFjFU7gciJIBH
 3qtE5cu+fc4op6QAI+ysf8Qm/ecc6lFamZazn2xTymG5qdh7e3DeRewUlfkGy01wL4
 K9ZsRZWaqcFwg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 20B43A0061;
 Fri, 10 Jan 2020 15:13:36 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 0/2] net: stmmac: Frame Preemption fixes
Date: Fri, 10 Jan 2020 16:13:33 +0100
Message-Id: <cover.1578669088.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_071342_671100_AAC1AFFD 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Two single fixes for the -next tree for recently introduced Frame Preemption
feature.

1) and 2) fixes the disabling of Frame Preemption that was not being correctly
handled because of a missing return.

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
  net: stmmac: xgmac: Fix missing return
  net: stmmac: gmac5+: Fix missing return

 drivers/net/ethernet/stmicro/stmmac/dwmac5.c        | 1 +
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c | 1 +
 2 files changed, 2 insertions(+)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
