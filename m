Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23380EC321
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:47:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0Idv9AKbU0ONJHL2y90sydROHWRXb8qZY0mTeVuN7s=; b=FZvqFblMG7vjfW
	TW64hPgXermck8Fj8koYSQhNJw1pv4BV4UOdZOq7rbgwYko2ec1BBcez1Jz5ASHGQDSQ/BkDUrMAm
	Cf/hAd8SAeaaAoiI3tjc9cqmtjRDtKkGbwJ8OaX+q+bxeVVk+sgCmVPYu3jUPeqd+U9TjecHHgjov
	CRxr9OPxTEwyrAYPh/E/eNAkgLlSJaRKPInbFQ8DI/sMwuTcyAEFTby38OG9bT4p99xoA8Jr4bPsw
	h1Ic1IrU0lOEwp1Tpio3ay6bfRAoqbmwZdTNfiCLTwu+XTVS5OqhrMluwOZxS/YxQR48exrRh21EI
	bMJhr7awiJzP1Ns1NWgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWKg-0004es-P0; Fri, 01 Nov 2019 12:47:14 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWGE-00087m-3c
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:42:40 +0000
Received: by mail-lf1-x142.google.com with SMTP id f5so7150207lfp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gmfKhQtUBCxwlUAlf/yXjWEx2pu0ns3cTlzrvt6tvNM=;
 b=UXSfxpHZDEqdEcznJJ01lBccn98ayqUFZZcnn4HjFFyx1fU3hgTEoyvXq4O6pG5ZZI
 U/w9LlPIsW1A1dAZRSyiuJJNlvZVau9/FsrlVowbQwFYlqiXCr9YcgR5M/iiQkXVMY1R
 LsP90oGXg+SPrPmXk/6D+n3hP+iz0NL7CdujM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gmfKhQtUBCxwlUAlf/yXjWEx2pu0ns3cTlzrvt6tvNM=;
 b=A7NzmjKtVb7XauW3wlMLoLKRwbXbkEM00Kw5NBhl/IXKF0q0QKW3eJ8Xu0MjReuQya
 Ku3VrRJrQVFi8UgmtUAS9bg28eaJrAzNe/2qs4vstRVhjt1WdZnW5b2UWPwL0B26Bekm
 dkrS9JpzJbgE2CBbU4euWck/OaMuUKkT0wbJ9sAVYiXu5GCwYcShtJFWurZctE6hAcFH
 yM34sUBrr4JcXMoj01RJdnJaOeZinPjjylM0GVtXewAlz2ohmic+6dhzuVelWlAfl0bD
 7sLlRc3RQrTwO/HQ0hOdCvBqvOthN0JHRvLFNBH0xfrHi/lK73bLUEU4MB4qzbk1eTuN
 LX8A==
X-Gm-Message-State: APjAAAWPxGxfWuHzu22RRGr+wd1kaU1A59c2ff2u0PHpKtBPrvvE75PV
 bIUjVvwx7cyjJY7hI0zHSScYGQ==
X-Google-Smtp-Source: APXvYqzczthO3WgiTrJP30sDUF5olr6LOJxJupECp85CLX8rCXzFYzODyCv6KeCqqwbY17Ez6ShIsQ==
X-Received: by 2002:a05:6512:40e:: with SMTP id
 u14mr7239281lfk.73.1572612155926; 
 Fri, 01 Nov 2019 05:42:35 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id o26sm2458540lfi.57.2019.11.01.05.42.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:42:35 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v3 16/36] soc: fsl: qe: rename qe_ic_cascade_low_mpic ->
 qe_ic_cascade_low
Date: Fri,  1 Nov 2019 13:41:50 +0100
Message-Id: <20191101124210.14510-17-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191101124210.14510-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_054238_477802_C64A9E27 
X-CRM114-Status: GOOD (  11.47  )
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

The qe_ic_cascade_{low,high}_mpic functions are now used as handlers
both when the interrupt parent is mpic as well as ipic, so remove the
_mpic suffix.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 94ccbeeb1ad1..de2ca2e3a648 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -314,7 +314,7 @@ unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic)
 	return irq_linear_revmap(qe_ic->irqhost, irq);
 }
 
-static void qe_ic_cascade_low_mpic(struct irq_desc *desc)
+static void qe_ic_cascade_low(struct irq_desc *desc)
 {
 	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
 	unsigned int cascade_irq = qe_ic_get_low_irq(qe_ic);
@@ -327,7 +327,7 @@ static void qe_ic_cascade_low_mpic(struct irq_desc *desc)
 		chip->irq_eoi(&desc->irq_data);
 }
 
-static void qe_ic_cascade_high_mpic(struct irq_desc *desc)
+static void qe_ic_cascade_high(struct irq_desc *desc)
 {
 	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
 	unsigned int cascade_irq = qe_ic_get_high_irq(qe_ic);
@@ -392,8 +392,8 @@ static void __init qe_ic_init(struct device_node *node, unsigned int flags)
 		return;
 	}
 	if (qe_ic->virq_high != qe_ic->virq_low) {
-		low_handler = qe_ic_cascade_low_mpic;
-		high_handler = qe_ic_cascade_high_mpic;
+		low_handler = qe_ic_cascade_low;
+		high_handler = qe_ic_cascade_high;
 	} else {
 		low_handler = qe_ic_cascade_muxed_mpic;
 		high_handler = NULL;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
