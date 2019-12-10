Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC171190C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 20:35:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tmRDyY2AYzi0xqNmAXIR1k9i3GQCkeHjPguVP6HnGiE=; b=grg
	wWdh/HYlYPWcKR4ALmirnZjXzD/1ceQvkavRBAql4LwX3Ps8x8PTYXcshLjAZ0/RY1NlKh8dRYy+1
	Pvx9JOXU6rEaIDpXldZ3rKRx1rQfQmVu54DCg/ptMKAP+TJGKo98V5Fo3SjgeW9dyUpRnEDOyAnlg
	kQqBlfZKyPwDjO+XzqS/I/uKa2n1rYWlXMmkbaKy5H6i6HCR/cjWVPKZsO5kX74N9U4NO/SuPCLdL
	mgj4dlgTzpYpogpVjrR+tiib9Pyll3cpheScqnz8jpuYWi8uDTKd3kLEjPSLcuk0Skdv6Qdpj/CVX
	wBXSqnfVD9fm18FEX7b1AVDBy9N/yAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ielIG-0007Uw-B6; Tue, 10 Dec 2019 19:35:36 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielGr-00058o-6a
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 19:34:11 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 34008C0990;
 Tue, 10 Dec 2019 19:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576006448; bh=pTLBDat5GXwXcAV+v7xD9330ZsqiJnxHPQ17KK1C5l0=;
 h=From:To:Cc:Subject:Date:From;
 b=D9WcEMo5eCjfxge950LRW2FuRYFLNYEyqJFO/VCMlrrUVx33XgnslNDLOX3JjX+5D
 lOR2LeqZg8bmM3/xNY1kZ+tgO24EeInuaxMgP5w8opFAEpffKl8fuIbLv/lb6iypeS
 ysj8vIET/5+hpfrlet/ryFEWQHMG/DEYxOiCQ9TArAFJB8+RIEblJnXkhGS3g0NSpg
 WBK9B+xhb6nb51rEvMa16ll5yRFJyh4ul+bC43Q/KDLlqLkLCXIP7hNGLOHkSgllqY
 7Lt3HuA1Pul+kGOpkCrVYEsYeTS8vcvSUyLV0/Rtq29EWmhhSksLwF7GVTmojElcZo
 bAGu/m1vNIHwg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 080D5A005C;
 Tue, 10 Dec 2019 19:34:04 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 0/8] net: stmmac: Fixes for -net
Date: Tue, 10 Dec 2019 20:33:52 +0100
Message-Id: <cover.1576005975.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_113409_320451_5CBA25D5 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Fixes for stmmac.

1) Fixes the filtering selftests (again) for cases when the number of multicast
filters are not enough.

2) Fixes SPH feature for MTU > default.

3) Fixes the behavior of accepting invalid MTU values.

4) Fixes FCS stripping for multi-descriptor packets.

5) Fixes the change of RX buffer size in XGMAC.

6) Fixes RX buffer size alignment.

7) Fixes the 16KB buffer alignment.

8) Fixes the enabling of 16KB buffer size feature.

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

Jose Abreu (8):
  net: stmmac: selftests: Needs to check the number of Multicast regs
  net: stmmac: Determine earlier the size of RX buffer
  net: stmmac: Do not accept invalid MTU values
  net: stmmac: Only the last buffer has the FCS field
  net: stmmac: xgmac: Clear previous RX buffer size
  net: stmmac: RX buffer size must be 16 byte aligned
  net: stmmac: 16KB buffer must be 16 byte aligned
  net: stmmac: Enable 16KB buffer size

 drivers/net/ethernet/stmicro/stmmac/common.h       |  5 +--
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     |  2 +
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |  3 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  | 45 ++++++++++++++--------
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c |  4 ++
 5 files changed, 38 insertions(+), 21 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
