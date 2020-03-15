Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DC5185DC1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 16:03:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H0T1ZfVTdYbf+iGKR2c4nQWv69ppz3I7RkSPglQGDo4=; b=LG/Cpx1lq3d0ef
	cDtcUjfjW5nxTc9gIbkKjpSfCKKG/IjvVmkf//0HokwbZ8ymamqEB4Kj+4fVfLk3oyPF7zifzbDVa
	i6FN1nTM1BXS9e4ibj/IBdSktwDn+b4WREJ9HWrvZXrnl855KXdY+btJvRHThHX6UoLiJzjX8ZCJ/
	a2JznSSJjc3vLVRrnvE5p3cgSsE7hU8Xcx+C8wvDWCdFnKUPGDQKsopTf1UPCwiDWuzv6/5cRPJGt
	qrCnog3ArCfmByDOZhZA9AVtMkdZAqEIBqq1TSGeyM9LDu/6PPdWJfBexr5mfOrdLgNlJOzxV6wt8
	Cay4dzROVV+o/WlcR2oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDUnf-0007KZ-8V; Sun, 15 Mar 2020 15:03:35 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDUnK-0007DI-CL
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 15:03:15 +0000
Received: by mail-pl1-x643.google.com with SMTP id t14so6672582plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 08:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B8euPoU5e8gVJfEN+dqKJ4mb2aBkkDDZAefTe4BflGU=;
 b=HIbodmEHPL7BJVP1+vBLIeAl86VaRnzD3LjgYEmhF1Bcp2astEcQHLtvnTLtefzapZ
 2NxKakGRUfYUqoYAQQAhgGXFyTjR93j2o5pTgbDpeLcRTylKqnmDLLnw55UyOxZg1GiR
 XUcEUuLQgx3bjHv0eVcvpWwi5dMiOrICctc8TFUZGqOW3wL090KZYiL0RX6ZpKJynl9X
 ujTN56qMdeMBICyH5pvEUO9zEjenwL/tHusIgOT0UryA067Loiqe/wtbWLB2HV8cMyAv
 jUTsAk0SC0s2Lo3ybUGs5DioF2Pdwy4cSOHuivUo1MxF1vE5meI4fPv7COvvdkj3ypFs
 eF8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B8euPoU5e8gVJfEN+dqKJ4mb2aBkkDDZAefTe4BflGU=;
 b=fKR2Pf4oN0jhv821g2esoEVOqIZQMfrKPBXLoeUKGZLWVC+uo7PVH+mqmPAVkXeZdP
 SIwl024QhCwdSFvtKaUDcARUkUivP5RMRClho+X/rfrTXcw93fzYvTNfP7bBWpM4IZqR
 Z2eOOvdgwXJEWSqar5y6Ya1gGs/VZZ6O/VISe7AHO08cwc7emmQoPLFEjZwIj9l7yF+b
 3+Jhyq6sfkqsxpoF72tZbQrPRoeR1MlZNT9LBCkW8pTNsEbX+rdoQGpRdbOX/oHs2BeJ
 9uC7vLYege8y9j1M5cfLb3DfOYVxNTpJUbbJAkmXIbiAZK+W1qlqFH8w0qzOMjIqzC8x
 M+Ng==
X-Gm-Message-State: ANhLgQ2psxWWIes3KyYcV6C8xoI+nNfwAsVZvzzPx6feqjFNnlC9bV5Y
 umHJ0eJArPh/SdvHmfPif20=
X-Google-Smtp-Source: ADFU+vuc3s3gOmDyjgqaA2Fbl1WL6S/lDyGeRqS4gyUQ6ZQijL0Hcz/WxwK/a63/DvsP0K83onsM9w==
X-Received: by 2002:a17:90b:4d0b:: with SMTP id
 mw11mr19745646pjb.45.1584284591722; 
 Sun, 15 Mar 2020 08:03:11 -0700 (PDT)
Received: from localhost (216.24.188.11.16clouds.com. [216.24.188.11])
 by smtp.gmail.com with ESMTPSA id l11sm17271115pjy.44.2020.03.15.08.03.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Mar 2020 08:03:11 -0700 (PDT)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 davem@davemloft.net, mcoquelin.stm32@gmail.com, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH net-next v2 1/2] net: stmmac: use readl_poll_timeout()
 function in init_systime()
Date: Sun, 15 Mar 2020 23:03:00 +0800
Message-Id: <20200315150301.32129-2-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200315150301.32129-1-zhengdejin5@gmail.com>
References: <20200315150301.32129-1-zhengdejin5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_080314_427241_6559FC2F 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [216.24.188.11 listed in zen.spamhaus.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhengdejin5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhengdejin5[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
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
v1 -> v2:
	- no changed.

 .../net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c  | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c
index 020159622559..2a24e2a7db3b 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c
@@ -10,6 +10,7 @@
 *******************************************************************************/
 
 #include <linux/io.h>
+#include <linux/iopoll.h>
 #include <linux/delay.h>
 #include "common.h"
 #include "stmmac_ptp.h"
@@ -53,8 +54,8 @@ static void config_sub_second_increment(void __iomem *ioaddr,
 
 static int init_systime(void __iomem *ioaddr, u32 sec, u32 nsec)
 {
-	int limit;
 	u32 value;
+	int err;
 
 	writel(sec, ioaddr + PTP_STSUR);
 	writel(nsec, ioaddr + PTP_STNSUR);
@@ -64,13 +65,10 @@ static int init_systime(void __iomem *ioaddr, u32 sec, u32 nsec)
 	writel(value, ioaddr + PTP_TCR);
 
 	/* wait for present system time initialize to complete */
-	limit = 10;
-	while (limit--) {
-		if (!(readl(ioaddr + PTP_TCR) & PTP_TCR_TSINIT))
-			break;
-		mdelay(10);
-	}
-	if (limit < 0)
+	err = readl_poll_timeout(ioaddr + PTP_TCR, value,
+				 !(value & PTP_TCR_TSINIT),
+				 10000, 100000);
+	if (err)
 		return -EBUSY;
 
 	return 0;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
