Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D716CF4C6D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:03:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4EakvTh+Bg9OYkpzw0hQTLrpqpY+oyc+6A5cCcR5d5M=; b=hBsPTuhTOsxXbO
	/F9ugDdfoplVZPElMzBzcIBlZ6rDVmHHkDaP2HenKQyQbkaA4VOGHcmYJ4da2AMPs9JXHvkDXnhAP
	veKmmiLntqM1uWguo5XqtHHbMuKTGW2usk3kAFOnuTeiT5rRd/jcfp5khNKgcFcJ9Ps3nL+gY94yw
	c/RAjADAOmLWyHcP2HXSOP8f6phbktkXFe49mlTdtYjEWEZO9S4cCG1s/jRp2A4Gp44hyimWbqf/8
	DevBCaGCfX5IsQ0O9GXQhJ8PmME9NLqdHG6tqPA/OOjccBi9aLWp0VYGIc0EGXOoaPjYQFnaGymjz
	mdRUBwn+QFJhwtyXztyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT3vP-0005jD-GN; Fri, 08 Nov 2019 13:03:39 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3tQ-0004GJ-Tr
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:01:39 +0000
Received: by mail-lj1-x244.google.com with SMTP id l20so6125381lje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:01:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KLof2Ot2O0jJsk//b5zfFITAj/UOtVeGro1UsWAolSk=;
 b=jCP7ncOrlS9V+R3cn5ptO3MSbytb9V/nOEyYaHDdTAuICV+rBxthP4W2CHez0HZDiS
 Yx5Ju4fDxbp0NxnFiHEjo5QTOyvtFvHRctjxQAvjU2l7kKTy29JWehdL20U6Iybx6HD2
 osrcSPnJAZYtH6b9nc/143h02+9RvjyefOv2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KLof2Ot2O0jJsk//b5zfFITAj/UOtVeGro1UsWAolSk=;
 b=AUUPtQhBBBpIH1YKJfKea3iKcJTnAOSfOmojBbTveVt52FcEtBW5ZPIRycEw7MF4Ai
 do78bcoibMXM4aYC1vS9Zn/FdgXXNDj2xHXPTOZ66I7cPmMddoVbN0WcrGuxH2TVBj47
 mcXK5kHf41UIbUWPC0+RWOi5EOYvYI84rJufrz8Ith/Xsfk7M6dJEKWQ5wejYGNFr3Od
 0Ew5UCWp2zw5JA4E6EuFVbKM9G1dRCZSG0V0otyyKHuyeDDvbiWw10oyvJCXCry9vuPH
 p9T/3yAmCaT3EepULzdkHYVDJs3J8Kbo2BwckQnrmK+mkgFT2yv2VgJrW8cUBD8Kw82j
 RiIw==
X-Gm-Message-State: APjAAAXKOqSo4M8ee1bRDS/V78lbZm/sjukYD9W0IRVPiTjbys+Q8GDe
 E2T7696E1QZQzJoDtHwoVL30UQ==
X-Google-Smtp-Source: APXvYqwznZFGp1Fw3DbicIfyzdwRL4WKmsCqwntFcEZldqkryvHNh+dxThjls+WNtclCmbq6A/BMZw==
X-Received: by 2002:a2e:9610:: with SMTP id v16mr6626644ljh.219.1573218095535; 
 Fri, 08 Nov 2019 05:01:35 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.01.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:01:35 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 06/47] soc: fsl: qe: replace spin_event_timeout by
 readx_poll_timeout_atomic
Date: Fri,  8 Nov 2019 14:00:42 +0100
Message-Id: <20191108130123.6839-7-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050136_995278_4E20249B 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
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
index 456bd7416876..85737e6f5b62 100644
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
-	ret = spin_event_timeout((qe_ioread32be(&qe_immr->cp.cecr) & QE_CR_FLG) == 0,
-				 100, 0);
-	/* On timeout (e.g. failure), the expression will be false (ret == 0),
-	   otherwise it will be true (ret == 1). */
+	ret = readx_poll_timeout_atomic(qe_ioread32be, &qe_immr->cp.cecr, val,
+					(val & QE_CR_FLG) == 0, 0, 100);
+	/* On timeout, ret is -ETIMEDOUT, otherwise it will be 0. */
 	spin_unlock_irqrestore(&qe_lock, flags);
 
-	return ret == 1;
+	return ret == 0;
 }
 EXPORT_SYMBOL(qe_issue_cmd);
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
