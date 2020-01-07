Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D341323D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 11:39:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/xr1rFajedwKWI3OwaFcglDkj5mwzCDADVAM4zoVICg=; b=fFz
	g+FQhMZN8zT35m8lDfsUmVVtJfIiwmqK8cHoGKEJhFk14nEvrSdfy2qKOTUCHWdZVAoaHme6zqu0M
	W4xZzLnCGe4DG7A4OovLAkeiAos9/aMMtvJaGgPRglqotO+om5aEZko4Pw9kbLlX3RdnnnTf+MVSZ
	8MqNuLzduys582eONeNQ314qhze++IPHKuwMeRgEwJIGUwCPMftj1kQK0vrtYsb2yTiAA/r05Bn25
	V5ry6uvACFgHoQ2b80xyPbz6/zGgQW48MFGbkuffQcIyBrGKUJhyecnaLDcJPxWLwMPvUI8q+eyYF
	3t0dpFHXAmM+Xw/SWAckuaFv6e4WUpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomGk-0005xu-G4; Tue, 07 Jan 2020 10:39:26 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomGS-0005wB-QL
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 10:39:12 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id C605340654;
 Tue,  7 Jan 2020 10:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578393548; bh=A+ywmO99yzrq2CMIo8Wi3yih5b1nyenwQVJiw0NnKdI=;
 h=From:To:Cc:Subject:Date:From;
 b=VTZpdd+yfmuEzd2EtgkFSoef26hNiUXD5Hn7RxAeBdvKLvkj2TDOk1q6kiFNLn50v
 k80aJHAVq7JLCx8HbrOqIu/NhU0xsHGrXC1fre/YysZ5RWHeyvPhnj/q2FBUAdFuGs
 5aWdajqRvOE1R3YYw8ExZZ3aZmQQbp9AN4R0/ZaLsAF0ug6AZIdFxowEg0y+35eFzt
 TXXcd9yVI29B2BlWklOU+XCfYuHNqs7+Wv5oXEa7MFQ7oxnvud06fzf7ySviEWhnzD
 J5q0oNWi5U9sCruaxLuhDXkE5Ke11ZC5nvXZRmjNAvpz5ek7YIEGW2c1QzhlavRjrM
 minxQRGhqcOcA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id A6B26A005C;
 Tue,  7 Jan 2020 10:39:05 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 0/3] Documentation: stmmac documentation improvements
Date: Tue,  7 Jan 2020 11:37:17 +0100
Message-Id: <cover.1578392890.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_023910_921852_CB4B93D2 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Alexandre Torgue <alexandre.torgue@st.com>, Jonathan Corbet <corbet@lwn.net>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Not sure if this should go for net-next or Documentation tree. ]

Converts stmmac documentation to RST format.

1) Adds missing entry of stmmac documentation to MAINTAINERS.

2) Converts stmmac documentation to RST format and adds some new info.

3) Adds the new RST file to the list of files.

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-doc@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---

Jose Abreu (3):
  MAINTAINERS: Add stmmac Ethernet driver documentation entry
  Documentation: networking: Convert stmmac documentation to RST format
  Documentation: networking: Add stmmac to device drivers list

 Documentation/networking/device_drivers/index.rst  |   1 +
 .../networking/device_drivers/stmicro/stmmac.rst   | 697 +++++++++++++++++++++
 .../networking/device_drivers/stmicro/stmmac.txt   | 401 ------------
 MAINTAINERS                                        |   1 +
 4 files changed, 699 insertions(+), 401 deletions(-)
 create mode 100644 Documentation/networking/device_drivers/stmicro/stmmac.rst
 delete mode 100644 Documentation/networking/device_drivers/stmicro/stmmac.txt

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
