Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD501C6E85
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:37:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bncl/e7Y8q2cSmMS8oFFNzMXndR7TK50av9XasMVyzs=; b=RNZbYlDxGFUO3e0Xz3PPkH/gPT
	EYQKd/CPfrArG3/aqyctM1RLaIWhMqnaB8ue/NCwQRPy/9UngFhvdCyVmGqyyUoFu+CcI/cO9VmTr
	ZjMWEgaDRijv4qc6xWoQMrFXlKlsowfGlkn5R+UJsb+VLuYVVIhfW7q1+IB560d1mNqSTA5teLC5E
	NrPmb0vG3CMO/9JfJMIElTabN/bcS55iV3iugdhE6UNCn00cBMLP7TtPTUjRaB8pZtG4E5Hukf0Yw
	r1kk/3PRGgy99jzvczMN9aRJCqUACt3RjQMqHj0ST8ahV3ORWsryp38L3EzqMYKQ5ott06RNzWP4F
	dYn+ShQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHQd-0006NX-5y; Wed, 06 May 2020 10:37:27 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHPt-0005qH-I8; Wed, 06 May 2020 10:36:43 +0000
Received: by mail-pj1-x1043.google.com with SMTP id a7so654091pju.2;
 Wed, 06 May 2020 03:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NyozxmGDg+giy1dPqoD+2PoBf4fR9y0vmi25F8uvJJI=;
 b=OrYPcwD+g+rTxvilBLPovopSPpzM7Pk64Ckwvykk4+zHjktmSoEJhDIJWlpkC+epqL
 bvJiNB85Zn0sLzn1SOlsydwYDgikcf1mWoo1QViOajVjEJiGX9kFkH0LpY1KiL0XV6i+
 /f4HzSoxDU/swAc9wkv3BElyVduAPe7ElvxxN523QRvKWtH1IbsY/ziopkQH88reRLlZ
 UA5B23Co4HdgGhiQMKHv33ooCP2twFLScH7T7yTc6c0dAqd73b6PkSS8WWYsHMfmSRnA
 P2n7CaaNs44/ArfpaO1iWOMEdaSPlZpz3rF3mZ0AJLglmyPc/muT1sxZnilKutEXhExT
 uFZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NyozxmGDg+giy1dPqoD+2PoBf4fR9y0vmi25F8uvJJI=;
 b=o4KS2sZKZAvpclnwZBxPj4izrUlvImWUfmgXCZBPX+u7dV1+5WQPOMCBRcRBW3alzx
 07vMMIcab+kAUEYAtFlFcRSzvGZOzR4LTKSnAW45wezj4mwHOp6iZI30ouaaoLRTMT9W
 wka5OsC5o8Smve1c9bFH4JkLqZAqhO43A6ePVIIj5aEFYi2/YimXG3NHu/pwW2wstF7k
 zGdh6EHYVEGm35+qEPaIU8rGCOaxSJfGPS2cQdZoaN6K6e6013yOjEiIiXAfzQ7QYBIw
 /Rk0a1APSGGAKIhgpy6mOw20mdbxalDbeZGpvNeTPx+Y4u+uL4QbCb936a/1rSm6Yx2P
 gZVw==
X-Gm-Message-State: AGi0PuaoYLecFQIfL2x+k6GkKa3j6x1GoIsIVVq77cNiywWAiJs+gvQC
 U2xc4ujKrGrdU/DAYCR4zXE=
X-Google-Smtp-Source: APiQypI+4Rnh5eau9+gOQ4Kh0IaW1n+l/2ytpEFcgHRoRBYd4Ylj5DjDU/1xAoTEhYu5zqg5nVcIhA==
X-Received: by 2002:a17:902:5a84:: with SMTP id
 r4mr7082721pli.314.1588761400877; 
 Wed, 06 May 2020 03:36:40 -0700 (PDT)
Received: from localhost.localdomain ([106.215.43.48])
 by smtp.gmail.com with ESMTPSA id i72sm1601582pfe.104.2020.05.06.03.36.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 May 2020 03:36:40 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 sboyd@kernel.org
Subject: [PATCH RFC 3/8] clk: actions: Add MMC clock-register reset bits
Date: Wed,  6 May 2020 16:06:05 +0530
Message-Id: <1588761371-9078-4-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
References: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_033641_631264_FB8587F3 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-actions@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds reset bits needed for MMC clock registers present
on Actions S700 SoC.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
 drivers/clk/actions/owl-s700.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/actions/owl-s700.c b/drivers/clk/actions/owl-s700.c
index a2f34d13fb54..cd60eca7727d 100644
--- a/drivers/clk/actions/owl-s700.c
+++ b/drivers/clk/actions/owl-s700.c
@@ -577,6 +577,9 @@ static const struct owl_reset_map s700_resets[] = {
 	[RESET_DSI]	= { CMU_DEVRST0, BIT(2) },
 	[RESET_CSI]	= { CMU_DEVRST0, BIT(13) },
 	[RESET_SI]	= { CMU_DEVRST0, BIT(14) },
+	[RESET_SD0]     = { CMU_DEVRST0, BIT(22) },
+	[RESET_SD1]     = { CMU_DEVRST0, BIT(23) },
+	[RESET_SD2]     = { CMU_DEVRST0, BIT(24) },
 	[RESET_I2C0]	= { CMU_DEVRST1, BIT(0) },
 	[RESET_I2C1]	= { CMU_DEVRST1, BIT(1) },
 	[RESET_I2C2]	= { CMU_DEVRST1, BIT(2) },
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
