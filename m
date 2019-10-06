Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A195CCD18F
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 13:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zBbxq53zLE9MheqkZ1+Q+nb1FuGhleDs03IH/w36Jz4=; b=dWq
	BfVj87Ta0C/OBQxkB+n2au8NwXHOU43jUHE2wwlxuTCsTtJ5vXQ8rcUysbOKXVW1eMY7+HrYlEj+P
	sx6LTIoXY6P8yC+AxjW95H5nt0O9IRnxEZzGdvhNjj3T1R2HzKrpz4T38uytz9675xkYYqW/YRsn6
	v9jubBHE/ubMI+07SRcKc7U19o/9iNEyaAekIkYTDhAG/+L2ONv2v+S7wV18ietOQi+S2Dr9F9H3p
	Thbe+5ohMZt8KMg9pifH93RkmOMFbFFdCdgbQDli1wLgFQDLnDLlHZPwH7aJTr0lxCFFYlI3NgPJy
	MKQntDz+bzSo7pjlzCoIDRBFUGom18Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH4Pe-00040P-Ts; Sun, 06 Oct 2019 11:09:18 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH4PV-0003zB-Es
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 11:09:11 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E8E11C04C1;
 Sun,  6 Oct 2019 11:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1570360147; bh=HsZL/b2XjmKMURLvNgIusI3oggJImdu/rO/oTDqojMA=;
 h=From:To:Cc:Subject:Date:From;
 b=kgXlkXsJ9Y/zbnyCy2qhXDHMGe1cWiyj1MR6m9Z88cewH+JMinOoCVF5teP4IBrnJ
 2W5TpM8QgD2gVJ6scmaGCA5gE2XPw3PDt6xAQL8BmzJ+HPrAfLxaAZmJIFw6THh+SI
 3cTrzCpY4FE/coRplublUhMBGF98ZJJF2yUynQwlA+yIFRbfbM+NLD2QsMpq+IpQaX
 Da5X8FYkqAMpaLGGt6ZLSeWq1znuE/TaqZ3Hx/1hRV0HCvYay+o7uXb8dNeVw/eCNH
 CRIdGW5vRzZwd8ThjWu2AbGco8QKyCXOjtXDxDohEGX5NyRxta/1tlelIahuJEoHCa
 um4Mq1bg8ZcYA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 90F4AA005C;
 Sun,  6 Oct 2019 11:09:03 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 0/3] net: stmmac: Fixes for -net
Date: Sun,  6 Oct 2019 13:08:54 +0200
Message-Id: <cover.1570359800.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_040909_539629_9E26189E 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Fixes for -net. More info in commit logs.

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

Jose Abreu (3):
  net: stmmac: selftests: Check if filtering is available before running
  net: stmmac: gmac4+: Not all Unicast addresses may be available
  net: stmmac: selftests: Fix L2 Hash Filter test

 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c      |  2 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c | 11 +++++++++--
 2 files changed, 10 insertions(+), 3 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
