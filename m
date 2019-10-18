Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A55DC57D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:53:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DExp2QH6VvdqVBa6ctQETEHpWvIijNJauVOte7ePI+0=; b=Zp82Yi+m0eVKjp
	WcTzpxSaJiSv5YT+lqYl/gPjZ/wregYwuvo0SYMqeOpZQNDsYLuCbUPJuLikzSMxq4NF2Sw9osek0
	JhOB215ImUbI6FoghED/fuozulXu2jOZsxlVHFILjx3XQLjTHaWDBfYsFFpqk73WHu+lDAPC2MYzI
	xUFd/0W6fCrj2QiVZifnZf9hzkqhag5dH0DaOc1S2mlMArkyN6sqgN973F80vshBkHaVTdZIVfg7c
	hwJGBHOIrCr6mwWwspu/40bWFfn0jLGNgZRA5BikKtlFE0Df603G7/7PpdpcQSytwb4Mn0WNiX6Xb
	QVPl8dqkWP9Z9q+J8edg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRlP-00060L-6A; Fri, 18 Oct 2019 12:53:51 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRkQ-00055J-7z
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:52:51 +0000
Received: by mail-lf1-x142.google.com with SMTP id u3so4614898lfl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 05:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WqY3EZbKbSCMoeBriPS6VskekmvRpOlr9LtT3vYdVX4=;
 b=XF8lRfpSpXS43H8bXGLZxjGol569DjdpudtIDqLtYNaQX5nW/mNgEslchokWcYdbBT
 gZwtqZAGgisTwryr+nlyFucbhWiB56hccjVc9yC9gh4PhbNPAnAPL5uoWxrY+tN0edmW
 KqRirxHWM8yqGHgnHVp/yCKwpRJqIGeRL4JTU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WqY3EZbKbSCMoeBriPS6VskekmvRpOlr9LtT3vYdVX4=;
 b=CtPTGqgTW7xb4jQrjVsdxYYVbHMluQPJFZ/FypD5+Ud8nJbhe0cME0wRciTqyueIlx
 Ehk87aUerQqpkAcxIPzkJCwNhHDZtL4TRdvqLJe8Q8nwOQN45Zfo4VzvIDQ6eZeQmKje
 1+fYD9lycQ3gsbvSa5Z9POhOc02MJ79kPBPYxj07+sLWtBYk6FAh+QvzpBvKwl0LR90y
 mZtGAUjlFIAx/0o9+chqJWne4fnfij5L+hW7p3m7haFsSAAtNnbGfHz3wwKmdj14GiCa
 6HmdX114ALW/ixKLtl7tWFDX7XUxhnIWFq79G/klUDkFPnS15ZDH9pu3TNrSlr1947od
 onBw==
X-Gm-Message-State: APjAAAURVUzMWkwI6XfaEAzzbgN7JSDWKZydtagGaUesvIHpkJAsRn6/
 H51fT4V6WTnwQyttsk+Q3xxITQ==
X-Google-Smtp-Source: APXvYqzfr8d1XGwlHtnCPHMvgh/gDAKdPrDLe/e9yGmcnVUmiy2hG/ezT9PzT3PwhiN1YF3sXeWfXw==
X-Received: by 2002:ac2:51d9:: with SMTP id u25mr6183432lfm.19.1571403168378; 
 Fri, 18 Oct 2019 05:52:48 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id m17sm7454792lje.0.2019.10.18.05.52.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 05:52:46 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>,
	Li Yang <leoyang.li@nxp.com>
Subject: [PATCH 4/7] soc: fsl: qe: replace spin_event_timeout by
 readx_poll_timeout_atomic
Date: Fri, 18 Oct 2019 14:52:31 +0200
Message-Id: <20191018125234.21825-5-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_055250_290376_0AF29767 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linuxppc-dev@lists.ozlabs.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation for allowing QE to be built for architectures other
than ppc, use the generic readx_poll_timeout_atomic() helper from
iopoll.h rather than the ppc-only spin_event_timeout().

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 60bf047001be..d18b25a685ca 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -22,6 +22,7 @@
 #include <linux/module.h>
 #include <linux/delay.h>
 #include <linux/ioport.h>
+#include <linux/iopoll.h>
 #include <linux/crc32.h>
 #include <linux/mod_devicetable.h>
 #include <linux/of_platform.h>
@@ -108,7 +109,8 @@ int qe_issue_cmd(u32 cmd, u32 device, u8 mcn_protocol, u32 cmd_input)
 {
 	unsigned long flags;
 	u8 mcn_shift = 0, dev_shift = 0;
-	u32 ret;
+	u32 val;
+	int ret;
 
 	spin_lock_irqsave(&qe_lock, flags);
 	if (cmd == QE_RESET) {
@@ -135,13 +137,12 @@ int qe_issue_cmd(u32 cmd, u32 device, u8 mcn_protocol, u32 cmd_input)
 	}
 
 	/* wait for the QE_CR_FLG to clear */
-	ret = spin_event_timeout((ioread32be(&qe_immr->cp.cecr) & QE_CR_FLG) == 0,
-				 100, 0);
-	/* On timeout (e.g. failure), the expression will be false (ret == 0),
-	   otherwise it will be true (ret == 1). */
+	ret = readx_poll_timeout_atomic(ioread32be, &qe_immr->cp.cecr, val, (val & QE_CR_FLG) == 0,
+					0, 100);
+	/* On timeout, ret is -ETIMEDOUT, otherwise it will be 0. */
 	spin_unlock_irqrestore(&qe_lock, flags);
 
-	return ret == 1;
+	return ret == 0;
 }
 EXPORT_SYMBOL(qe_issue_cmd);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
