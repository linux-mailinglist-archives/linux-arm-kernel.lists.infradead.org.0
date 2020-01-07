Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C1A1323DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 11:39:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H6xezyJVytCdhxF2xeN+oHW9R57wIxqnTrW/VAeimjs=; b=uyeKC2PVNIEZmiKbV47iD3J7O9
	V81nAxVGvq7YTtIT8BZPdxVt6nYbjBAd3CUkUDWw3z0J0ZDBiGffEfwzCzvLVInHfMJk0rYGPXMt2
	WI/pClvmTBJk2mNEBWz7bE8MjSHtXAYBA9U7Mew430ayFvRBv24iIwQWlwPrAPqAxwZZMezxhdzbm
	v5VY9zUVK1gf0d1YBvZDFXC2TekhZO3hG0p9AECUXkoknBqDUHmZNqaGjLzC/bRvMPx/egRi/X+Xj
	g8B5M9HxPl9YLnzr+y1O+gw9exKBkyy8kMpUUDD/mv5iQTEh7Q/if8L4nrC4gqkULjFboB8+dSvli
	CzLB8irg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomH1-0006A0-AI; Tue, 07 Jan 2020 10:39:43 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomGS-0005w9-QJ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 10:39:13 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B40B540652;
 Tue,  7 Jan 2020 10:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578393548; bh=ftXfj3ol8b6sAtBoTU6/JkgMmMwOsKghd5YpNfzIzLo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=Pzmvwxh3z1B3uDvcaK+UqZFnGl21kLzs26WMg0vpzyv1QpHigUd5e0HdWVJa2HbQ4
 zNbL9/SO/m5FlGJOJiH7tnQy7xbJGFAqUwjqG6OLt7nDpO4jvMA6zUyc9GVWIZxhb5
 gYbKoFxinqlquP1eCXg9VaIMSNOLNbxUyyDlbJw82MPO2JRE9qm43ZDbX5RVOXPxzb
 USRxc3gyY/QCzC+cCRIN65lxX2FiD5idxApBb/zexC18vOnH1ktvu4mgOMFR8AWfOp
 99uBKnAvmJMLFVodYqnJKaRswNzefD6dj1I0veg1c3v18x0+MIlxHBbn6ensbw4Zjr
 Yh9dCXctXjd9w==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 6FE50A006A;
 Tue,  7 Jan 2020 10:39:06 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 3/3] Documentation: networking: Add stmmac to device
 drivers list
Date: Tue,  7 Jan 2020 11:37:20 +0100
Message-Id: <eb6c0af8f45a54ca2db1396801b44587fcf1fd32.1578392890.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1578392890.git.Jose.Abreu@synopsys.com>
References: <cover.1578392890.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1578392890.git.Jose.Abreu@synopsys.com>
References: <cover.1578392890.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_023910_937318_4EEB4F57 
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

Add the stmmac RST file to the index.

Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

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
 Documentation/networking/device_drivers/index.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/networking/device_drivers/index.rst b/Documentation/networking/device_drivers/index.rst
index c1f7f75e5fd9..4bc6ff29976a 100644
--- a/Documentation/networking/device_drivers/index.rst
+++ b/Documentation/networking/device_drivers/index.rst
@@ -25,6 +25,7 @@ Contents:
    mellanox/mlx5
    netronome/nfp
    pensando/ionic
+   stmicro/stmmac
 
 .. only::  subproject and html
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
