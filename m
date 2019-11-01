Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3BBEC314
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:45:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9NkNeziYrluWehZMx84K9oIhlTEPw3Ovg/2s49ALpE=; b=I1PwcJMDM+6cOY
	0vCADaqkn0LpRPPlNdopIx6IsvCyu+dgnIG16Zacthve3ZVPyNNJuliV7PwJHJK3WPm4O5uu3IKWJ
	bvGahJGWIs/s86P2Rur4AYWOYRvJpcz+VFTadIIQF1araN85/vqx3N7eMpsTIJS+Mw9+ICGEb6+u7
	cccbvQ+y1q32DJYbG0Y7XUNA1AwYAbxB1OUVeO+w8fCZocSaxs1gEZwm9XTg2hZ+50pJK+DCar1+A
	bJzQjT9jb6CHTr9/YG9MrU1QObjnk7i8LCCHkXgLdJ2Nja//PYR8dIiYSx8EVkznR9fG+WdPnYMVD
	M8KjzUvCMYUFOunAJEPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWIy-0003D2-F2; Fri, 01 Nov 2019 12:45:28 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWG4-0007v3-3i
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:42:29 +0000
Received: by mail-lf1-x142.google.com with SMTP id a6so3735253lfo.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=td9IeMtAnKP3TNZfmfJvazvskLsY9wm2/Illqt7TzBU=;
 b=g0t9IWVbZwlbGUfe42OCviDf0Xj5nVyevQuGZEnMgLfjpAKphqtdzJEhNTgeJq19Rs
 0QW0lur2U4C7+Hqd9TQsEODQMXwvLaOL7OhWWq8OKpNrwLsasSUx0ZC0CwR+VUcfXMhS
 UHtbeWLwVKEc0aDg0l5XldrFFe/FaIduB+JGM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=td9IeMtAnKP3TNZfmfJvazvskLsY9wm2/Illqt7TzBU=;
 b=IBRec8jRWLe5AHVp+NiZJYFW6+aN1fHpNOVzIauUor7hIv+1zL4e6lkyBDGfaf5Vqj
 108Ab6KGlS85JxWYOaFJVgup2LWfprLYyVN/SicCWfY8Xbgxk7Uh7OiOSjfcI0PkuRBw
 tQqnbWNpwEECHGNHWrI1XKQJl7e3a4Hk+Ugj3mNUKBWZ1cM3nTA+DMVx95e8xnU821ZH
 RCK11eCLeG8tQS4wtRBx5EOD1E7VOqCt3VMd+fUeKTjc+yHQTPtAS/z+JfKCl6UjDga0
 mhmgoV82fmNpiVTKWwTzgYwEd8CfddheeF6YhA5XN4w4SiaRfBqGBJmpUjJmQw4pEbmQ
 +xlw==
X-Gm-Message-State: APjAAAVwuEvnjAHem2B3FdlpxcGxZ2xJCW3OBKET8orlobY2rGpy1gl6
 Afuuta/Sgkm1iS0Vaz3m9/V2NA==
X-Google-Smtp-Source: APXvYqxY2laHtfFgtTJ6vvKR4Xn06GwjZhA2wuPw7Ipw9dAvLGzODcePDlA6j5DNpYqbyvnIVabf3g==
X-Received: by 2002:ac2:5967:: with SMTP id h7mr6973677lfp.119.1572612146522; 
 Fri, 01 Nov 2019 05:42:26 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id o26sm2458540lfi.57.2019.11.01.05.42.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:42:26 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v3 09/36] soc: fsl: qe: drop assign-only high_active in
 qe_ic_init
Date: Fri,  1 Nov 2019 13:41:43 +0100
Message-Id: <20191101124210.14510-10-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191101124210.14510-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_054228_155415_EAB72F7F 
X-CRM114-Status: GOOD (  10.72  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

high_active is only assigned to but never used. Remove it.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 8c874372416b..4b03060d8079 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -320,7 +320,7 @@ void __init qe_ic_init(struct device_node *node, unsigned int flags,
 {
 	struct qe_ic *qe_ic;
 	struct resource res;
-	u32 temp = 0, ret, high_active = 0;
+	u32 temp = 0, ret;
 
 	ret = of_address_to_resource(node, 0, &res);
 	if (ret)
@@ -366,10 +366,8 @@ void __init qe_ic_init(struct device_node *node, unsigned int flags,
 		temp |= CICR_GRTB;
 
 	/* choose destination signal for highest priority interrupt */
-	if (flags & QE_IC_HIGH_SIGNAL) {
+	if (flags & QE_IC_HIGH_SIGNAL)
 		temp |= (SIGNAL_HIGH << CICR_HPIT_SHIFT);
-		high_active = 1;
-	}
 
 	qe_ic_write(qe_ic->regs, QEIC_CICR, temp);
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
