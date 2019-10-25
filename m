Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3466EE4B76
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:46:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=48gXdqVaBG0fc4oY3EemAqQphKEYawUW8+R6y6hhQc8=; b=l6dXb5z1Y9iry7
	ncXB2+xAXHvPxXG5nMZj6velbBxIKvbPRji79BZd4QvlVbL0Wrop5mbWA4qO8yCQwlHLrX9jkfOHz
	1FfJ5NB8unrSkOZKOy0aczKfTh1po5Ul/onXzCOWWLCvZlayXGKRxonHLRlhhpKzYDoNMz9K/verz
	qeIVNSlN0P9lSUPBsA2+7PU8tjKiJToDqTYnwAy2tMTi26UwN3vCYvJyXXKHwQU9B3hHIIXzpG4OJ
	oFUPGZVVNe+j69VRrsTm6ijt6ja1ipfV5MPaRgQXzFbaXOLR+i7fW367VlbQjUMlNGJE+P2IdDnMP
	ELV84PaSXkXHu1BbAXxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNyyn-0002Hw-5W; Fri, 25 Oct 2019 12:46:09 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyu7-0006Lr-B8
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:41:20 +0000
Received: by mail-lj1-x243.google.com with SMTP id y3so2549812ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 05:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y+kwl//SoVDAzocBexIsEmz66pzal0ckH4IWTjSFzkk=;
 b=Ak1M7QhBuyHZjE5WQ2jax0Lc1hG2C4sfAdA8o2GByl3nHQYZA8BrncbEkAdONHCS0K
 0pcVPUkKXKtO3vplL4HUoK+2O6ZIg1afec+LTJTSScE/uQt0Rb4aRuEoqjepyYkHyNgq
 kc+/m0Zlgg5E+KctsTCNhX6th/s6KvIRKvPRY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y+kwl//SoVDAzocBexIsEmz66pzal0ckH4IWTjSFzkk=;
 b=sRjNJKsSx5ZKlE0YwFuxhS0BTaNVWb3iLW/V7FOEiPYv6ZPFzNIwwq27TFDw8m3fT6
 NQVPuxDr+ZHJvrmto5W+RcTf32bz0xdKO/0p4A528EWNe6m57dt0HWyf3LuQ2tjETf1i
 ck4kyLlvIeFKtoWrfnmhaqoxGVJCMa1ePCoxGHIhbKp2rZOH9NsaU+uBKgJSGIXmVsEb
 Z90X5Z2wSE1i+xSU1+6mg7kRmY7xCAxZMQb8DjKSN4aP20pxZrEhdg1XjKMSl/I1XmmZ
 CAZl6fA4pzFh+vA04caHqT55WKkV69V1slmFMlSrVLUFr7N7joScPbMOXboh3G1TZI1Q
 KJ9g==
X-Gm-Message-State: APjAAAUy+yHhFBWIVHUnQXoBy8rqqCBE2jvTbmG7XUf4ch2egLhwDyyT
 d6q7GIMgiI48rMgVJkluud6TCg==
X-Google-Smtp-Source: APXvYqzli6SMC1Z8hQATuoEoXx1WkPPyEoLopU+HdkiAKE9p++1V643MYdrGXfcfqZbuCSF3Q8KXBw==
X-Received: by 2002:a2e:a0c9:: with SMTP id f9mr2381853ljm.77.1572007277982;
 Fri, 25 Oct 2019 05:41:17 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id 10sm821028lfy.57.2019.10.25.05.41.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 05:41:17 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v2 12/23] soc: fsl: qe: drop assign-only high_active in
 qe_ic_init
Date: Fri, 25 Oct 2019 14:40:47 +0200
Message-Id: <20191025124058.22580-13-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025124058.22580-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_054119_414067_407D66D7 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

high_active is only assigned to but never used. Remove it.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index f3659c312e13..61a40e40f3ae 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -450,7 +450,7 @@ void __init qe_ic_init(struct device_node *node, unsigned int flags,
 {
 	struct qe_ic *qe_ic;
 	struct resource res;
-	u32 temp = 0, ret, high_active = 0;
+	u32 temp = 0, ret;
 
 	ret = of_address_to_resource(node, 0, &res);
 	if (ret)
@@ -496,10 +496,8 @@ void __init qe_ic_init(struct device_node *node, unsigned int flags,
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
