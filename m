Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C41C186195
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 03:33:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1FAGo3W7asDVw7Vsll5/4QLLEnl1qBUgiBE9izgvlww=; b=Q2CLFUMF0CEYFn
	SpzJ9flSKPUX3dHM1et975clPGvB8usk4jUuYX9DmtspRiEjhba/C5q2470J73/AuM9njMxXzmIQ3
	ANqQf21UVrt60jZpBz8XWavs7dygL+kfcq+JaPfi9HIJJRWbiqDFdnOx0GyQaOZ5VDiU35oYAqLrr
	T+Sc0MQAI1obhWz1DTuDPgEkGlzKjDsWiB2/C+MFB+UtrW7h8m4uSJWitcutfHVhW2WMWm4s8iW8i
	sxaYG0n3jrqEMyGT/Dasw0Z7vpXDxlh6JgVMoXdpcklJEITFv+f9qLXCh0kOAlZ8Wq9pRxxZeaZKE
	AOKWHtcmSxcE/ycpg/4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDfZH-0001qu-IO; Mon, 16 Mar 2020 02:33:27 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDfYu-0001fF-OG
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 02:33:06 +0000
Received: by mail-pf1-x444.google.com with SMTP id 2so9052630pfg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 19:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xb6eGJlkZ3RraRHjQRFPyKktg2A5qqYgiyd1407X5EA=;
 b=Pohao3v5ffnYH82Bpcrje8LKI2euQ7YrSlftyPJ4Jc8Ec8NGvKWcpvmRoeKHikOb3r
 837gsq8lUXizljokzz8H5PbW+/TMjuq5HHwLgIX9GMuTOAdR/bSTcNds2bavWHp3xtpn
 Z6Alq41OV466QZ0ADWh0RCa9Nmw+00oHWfTiktPK/HxXYCe87p8hGVoInDwkiqoRul9q
 ztYtexo7kVkl10voUg3TbX6aUdZXncEGICG/ETcp2Uo4UAOP1MCM9xTymmbVdwvj07ns
 x/d7VCj7LY8DKxVUDClu2udaKd7lVnY+dTSNUKrxFswTxdPFU61qjwu5kf1FiwKL1gKH
 vOaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xb6eGJlkZ3RraRHjQRFPyKktg2A5qqYgiyd1407X5EA=;
 b=QKvtQyBEoJcfkuNhhwEdbVcvugosZ6YMCTWszex8Mzb6RqLfUGyN9xN728ZuFODL3e
 3kas6MwTN5I2iP/Cvpdipc9tnvJPxwMcyFLW+fnQTLYaQYOO3w2l9kQczrPgkMxx9V/L
 VZxdCXPNBYwVmma1L4qFwXWwiM0M+FQHoliUnRSx+lZsS4MIJsviw5la7qL/93drHeca
 bYdOimGALwWPQBFNpGTWXpBXRRjsIA0tCXHEBfg39wWp/OPkXsXDKiVWpdllIS6ruFvZ
 MwgBdcw/X0g/kIwzRv6cG2hFerGQqskwNZyeEvdi0BeV8LA50YhlMaZjHbtJFrMNAFwS
 JBjA==
X-Gm-Message-State: ANhLgQ0ziNJjNQgnMsHeOhcB3CqF7Fs/L1tyFl297+sfEIv/G/gRvlbp
 XkywiV4ybHeCpeUSedz1brE=
X-Google-Smtp-Source: ADFU+vsxw9h2MVwPsE6eZQTxRHk3CCZ6ymGRtR278/lnLeTe6Ya8bd+1lmtqV6ceAlKNVHLfVDeY6w==
X-Received: by 2002:aa7:9307:: with SMTP id 7mr22826246pfj.273.1584325983934; 
 Sun, 15 Mar 2020 19:33:03 -0700 (PDT)
Received: from localhost (216.24.188.11.16clouds.com. [216.24.188.11])
 by smtp.gmail.com with ESMTPSA id f19sm54950752pgf.33.2020.03.15.19.33.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Mar 2020 19:33:03 -0700 (PDT)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 davem@davemloft.net, mcoquelin.stm32@gmail.com, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, andrew@lunn.ch
Subject: [PATCH net-next v3 1/2] net: stmmac: use readl_poll_timeout()
 function in init_systime()
Date: Mon, 16 Mar 2020 10:32:53 +0800
Message-Id: <20200316023254.13201-2-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200316023254.13201-1-zhengdejin5@gmail.com>
References: <20200316023254.13201-1-zhengdejin5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_193304_827419_DF1BA7C1 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [216.24.188.11 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhengdejin5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhengdejin5[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dejin Zheng <zhengdejin5@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The init_systime() function use an open coded of readl_poll_timeout().
Replace the open coded handling with the proper function.

Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
---
v2 -> v3:
	- return whatever error code by readl_poll_timeout() returned.
v1 -> v2:
	- no changed.

 .../net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c
index 020159622559..fcf080243a0f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c
@@ -10,6 +10,7 @@
 *******************************************************************************/
 
 #include <linux/io.h>
+#include <linux/iopoll.h>
 #include <linux/delay.h>
 #include "common.h"
 #include "stmmac_ptp.h"
@@ -53,7 +54,6 @@ static void config_sub_second_increment(void __iomem *ioaddr,
 
 static int init_systime(void __iomem *ioaddr, u32 sec, u32 nsec)
 {
-	int limit;
 	u32 value;
 
 	writel(sec, ioaddr + PTP_STSUR);
@@ -64,16 +64,9 @@ static int init_systime(void __iomem *ioaddr, u32 sec, u32 nsec)
 	writel(value, ioaddr + PTP_TCR);
 
 	/* wait for present system time initialize to complete */
-	limit = 10;
-	while (limit--) {
-		if (!(readl(ioaddr + PTP_TCR) & PTP_TCR_TSINIT))
-			break;
-		mdelay(10);
-	}
-	if (limit < 0)
-		return -EBUSY;
-
-	return 0;
+	return readl_poll_timeout(ioaddr + PTP_TCR, value,
+				 !(value & PTP_TCR_TSINIT),
+				 10000, 100000);
 }
 
 static int config_addend(void __iomem *ioaddr, u32 addend)
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
