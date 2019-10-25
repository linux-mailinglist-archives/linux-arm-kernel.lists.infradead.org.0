Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADBBE4B62
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/PKXKtvxveFUr6kzAN1mMy+ksBT2UYecARw6Up1ae+4=; b=gnSbxP+u3Pf5zD
	PeTNZufzbsvbf0brDR9wGU/Hx5ZVfwSkFPq1qXGDGjJTpg+vOrDve9gX3tayG+PTNDB7vY6sKCO96
	o4P8T8YvmkKNd7qq/Udl4obq54lvoct5qkkBKmNPcn1vhuX8C61Vh0OH/N9Sqy0f525GaFmj/+ShH
	+6vI3sbN9Dz0TENfjx35yFrnrDRFUyzKggtrA+FD4Cnfcf3OElpp+7DHgwKmSDLElfZDsvlxTGvbn
	743BrIEKa5ykv+ituXf2bHqSKH1afzyGP8t/1SkkZEAtCMkMIJRE4STw8VvmIvyxKCw/Wou82z88d
	TBqM9RBcZnNyJxi59RHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNyvU-0007U7-OV; Fri, 25 Oct 2019 12:42:44 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNytx-0006Dr-Fu
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:41:12 +0000
Received: by mail-lf1-x141.google.com with SMTP id q28so1628669lfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 05:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KpsQXq8uXz3AjuC8zFugbFdIMVLEeL/wAcaNezuzQIg=;
 b=Lujjlyr+AfXRRl+wGvn8Qvihn/KN8LWCqi4kolwlKQZ7qjqldAl04AGkDa5+2tsD/r
 yj6GGSKX09NBG8L94vYyMd0K4TnZcW1MStdU1wA1BSIa87qLvQlGrwuQZ4FYy9GlPjE4
 1nHwzz11Ni13Hg5j85JaC31Bke/wlaf4zEK5s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KpsQXq8uXz3AjuC8zFugbFdIMVLEeL/wAcaNezuzQIg=;
 b=UdBkH3DiNDzbrTM7OWEpkLeKoyrb1yWgzyqwy/5fmsw09DBtg7D1dYTKjA16ApsVGv
 hQlg9X0qsM7F/lXrA78sxU7tMHheLzGtFFdjd618zO/o/SDR/QCGV+DlafXLI+5UOa+3
 837SKwxRVpsW+y3c/YLG7n2MAjNFG6xxO9CYiuoXDaKcRWRATmmwKI2CYYFagDCqsMUn
 25NG8r9/rVLDhPbYFoscKbS9HWtPYiSuE3Zz40oZXsoLgtGCG4ZCWHuxHFWUez5+KHhT
 F21eaC9Z58Wh6r0qaqnQJqGbOR/XdZxOHobemncfeG3M+eWFJLVB4RC7ZUxk6/Ig3Xqq
 S2gw==
X-Gm-Message-State: APjAAAWb8v9mblrjOEKV5hqmtmD+J5FMfHl/7hrXCQsSPdPeSKRIAc5d
 3X5vCGuTTSMUPdSVupFO6X+YMJN5qHye2w==
X-Google-Smtp-Source: APXvYqzQ4jZPtompIQ6wN1YvHfqQ3rKdaVk4lJJ+494PK+/61L3WRbLUt2K3EJ0JdAgAc1tvXnRrhg==
X-Received: by 2002:a19:5e53:: with SMTP id z19mr2490404lfi.111.1572007267800; 
 Fri, 25 Oct 2019 05:41:07 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id 10sm821028lfy.57.2019.10.25.05.41.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 05:41:06 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v2 04/23] soc: fsl: qe: replace spin_event_timeout by
 readx_poll_timeout_atomic
Date: Fri, 25 Oct 2019 14:40:39 +0200
Message-Id: <20191025124058.22580-5-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025124058.22580-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_054109_533596_B77EFCF9 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Valentin Longchamp <valentin.longchamp@keymile.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
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
index 60bf047001be..bcdec37b25ca 100644
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
+	ret = readx_poll_timeout_atomic(ioread32be, &qe_immr->cp.cecr, val,
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
