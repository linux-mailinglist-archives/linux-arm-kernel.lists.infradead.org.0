Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B91FFEB5C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 10:41:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lu6JgvvQkmHqgLXj9QjjTE6IneHS2ytngJ3pXKPAm6w=; b=IPLADJVi9AZ0TR
	n0HHupO49qt8ok/SMBTq5QRXUCWX48VZOD2EKgLtiuls8gjHqU9MdlBWxtspragN8J65qGlPCe5aJ
	0P74ewYntzMjPIXCK4AzdbUEjYVbzMbxli794Bjkho9DyNCaxJBRyMGpZRxE6nUNxRZ16UEyirlol
	4XMRUMpb7lx3m2p7Kg+sP/zKJ1CvBoKbeCkP3Eox+/LncMlatZf9sVIdsoH0A+4iA8O/V86XOccTL
	o3fFXYWbxL7pVxFB6+i+Pp1/hOON2L2qX5SI5eHuijQO+gk+AoN5MdgnPW0sxRX89W7Pugk8tDfsU
	gMscVVuCaF1IRsbXhhCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVuZx-00009E-Ho; Sat, 16 Nov 2019 09:41:17 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVuZp-00008f-QW
 for linux-arm-kernel@lists.infradead.org; Sat, 16 Nov 2019 09:41:11 +0000
Received: by mail-pl1-x641.google.com with SMTP id h13so6458714plr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 16 Nov 2019 01:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=qiKpDqxor3KUPMlSYGxk73RwYW/8ZTPLFV2q2AOqPwA=;
 b=W0ha5aHVkIGBLHwz/gdctkLmI4Oql1roTIHHOzCoD2VoPA6H+wa/xnBl+cs8UD5BOM
 TqAAMleVYFKgE2Fh9xJGTXJI+98T1GYERAcv8VsFeRYFOv9E3ABzxWRepgCXeTf0qvHG
 TpGjaFD0g0tdxsfZaFCTEbp6AdWP/Sl4yKGW4Qzun0mjABtnyHTIS4jeWCNU4zs1qKfN
 oO3rDQh9uMU9bDV92eZUvEnJZsEfyb+l0D8nfKPdWsliLYKJOodSv+T3soY8EXSfn8LX
 kwkoWAoO9zMkkLsIaqzq1+quFn+N8iuofy4HbNUqvGUavZmmx4JzID4nyCsj8j9A7pOa
 Dafg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=qiKpDqxor3KUPMlSYGxk73RwYW/8ZTPLFV2q2AOqPwA=;
 b=JkQ6Sn9onJsxbPnUYWIwlUIQzOzf6XrA0g1MZ/s9Z77UChKkethRb7XkCYEbDkRINY
 gBby0ok7PH2vhbbbMXJkPaUKeyUOf8CgGDrWYJljRQSGdeksw70ekCfosp8tEVk9n5i0
 wAz6cVVrA02Pndpa7PdLSqRde9pVi2d41xdKUR/CSB4FTlksaDOuo1iDOy/MG3JCgy4w
 RdqLmnCnYzzqUpn7Q2+8h9ozAzfOE5nxFOJgGoCBCuVieSEi+9EPv7r3qcT0IfxP8zNS
 rsmfPG6U5picv0+yJdJL+WA1s3ugc6jZoR5wZMM39VpUvY3NnxbjkHlKqpQXb+k6kGT2
 HbqQ==
X-Gm-Message-State: APjAAAVqV7oQkR/5Duoz5DOp/Qkd10QoDGWpkFL0IIv+6PfGCofKtrWL
 QTW1d5jmfIGQX+LrRoJ9LDM=
X-Google-Smtp-Source: APXvYqyW6+jLj/VO7pVPjaOQjAqUjgSvy7AbiRgLXW2biey8wHyiwFbIYDRR3iLvuMHbxUJ9v7EUHQ==
X-Received: by 2002:a17:902:547:: with SMTP id
 65mr19631123plf.239.1573897267640; 
 Sat, 16 Nov 2019 01:41:07 -0800 (PST)
Received: from nishad ([106.51.232.103])
 by smtp.gmail.com with ESMTPSA id q70sm16531609pjq.26.2019.11.16.01.41.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 16 Nov 2019 01:41:07 -0800 (PST)
Date: Sat, 16 Nov 2019 15:10:59 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>, "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joe Perches <joe@perches.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH] net: stmmac: Use the correct style for SPDX License Identifier
Message-ID: <20191116094055.GA4863@nishad>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_014109_947615_487AF4D5 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishadkamdar[at]gmail.com)
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
Cc: netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch corrects the SPDX License Identifier style in
header files related to STMicroelectronics based Multi-Gigabit
Ethernet driver. For C header files Documentation/process/license-rules.rst
mandates C-like comments (opposed to C source files where
C++ style should be used).

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46.

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac5.h   | 2 +-
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h | 2 +-
 drivers/net/ethernet/stmicro/stmmac/hwif.h     | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac5.h b/drivers/net/ethernet/stmicro/stmmac/dwmac5.h
index 775db776b3cc..23fecf68f781 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac5.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac5.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
 // Copyright (c) 2017 Synopsys, Inc. and/or its affiliates.
 // stmmac Support for 5.xx Ethernet QoS cores
 
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index 99037386080a..9d08a934fe4f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
 /*
  * Copyright (c) 2018 Synopsys, Inc. and/or its affiliates.
  * stmmac XGMAC definitions.
diff --git a/drivers/net/ethernet/stmicro/stmmac/hwif.h b/drivers/net/ethernet/stmicro/stmmac/hwif.h
index 509daeefdb79..aa5b917398fe 100644
--- a/drivers/net/ethernet/stmicro/stmmac/hwif.h
+++ b/drivers/net/ethernet/stmicro/stmmac/hwif.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
 // Copyright (c) 2018 Synopsys, Inc. and/or its affiliates.
 // stmmac HW Interface Callbacks
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
