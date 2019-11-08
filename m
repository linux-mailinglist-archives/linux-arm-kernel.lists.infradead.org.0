Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6FCF4C95
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:04:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9NkNeziYrluWehZMx84K9oIhlTEPw3Ovg/2s49ALpE=; b=RBEK2L6dx6YYX4
	4KN5kGusoi20VevMGXlLxQg+kyo3k4Je1/rhidYX5A/EfFdWk2N7pQVukmHvSJmKaS1jhwxLNoIAr
	39Z6Pdi8OB7sjMa5zj6TUmTuzBUfirfwprNcK4+g+mq+9dYCaSIAAdoKjtgMVuCOCfBgec1O8DB7A
	hXswbpYRUHBqrp+kh81nbw83Q0ndgKq4dmrUx6QLh/YgYvBNsmfv5p+objAEf1s3CJmJDf31nc2N3
	/5o4nuKncBxteLhFbo7IjbZHplCouhxRBr3N7E2+o/LGD6kBTXiaKEXSwzPEni6nJ0HS8a2LkWdty
	iyiEkGSXD/R61X7Id2mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT3wY-0006lp-SC; Fri, 08 Nov 2019 13:04:50 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3tX-0004Jb-7L
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:01:45 +0000
Received: by mail-lj1-x242.google.com with SMTP id g3so6102961ljl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:01:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=td9IeMtAnKP3TNZfmfJvazvskLsY9wm2/Illqt7TzBU=;
 b=DMLQ9nUi/AbgTBbJ3HQVt3S0hzf3vXc00jBHDaFBntgkl2BTiXVwIDJ/98hlURH5xi
 Fs8QirI31MeGV4shgHaQ0WBywX4sGE+Pkg+PmRddhK4zvBzkMBVVR5DB3sKZ1o1xZ8k4
 YkMCzlDg87IAVaAjLDSvANrSeF4AmSQ+EJgXM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=td9IeMtAnKP3TNZfmfJvazvskLsY9wm2/Illqt7TzBU=;
 b=HgP3f555ANfhHu+aANKcE+UJUWAzRKDDhPyobKSsX+OnJoid1CDnLLgHXKyq+kBNne
 nnStB/3JbaDaZ5tPMcNA/Vvea+6VvT8Un5nTGYZIppthSJxFn27gdsaFPUoqdRbyV+qg
 7l27AP871cKZrdYDsfQvw+uMq7OJq/4qBa6fBCxngDUAjT7CcmtoJrrV02JSfWGpc3PM
 Mb8Y6xi323Xc/WCSL2SFi8r54dTT8ICGppJAH8Y+I7gvIh0tBUGEINDsjpF6mzFU+QYj
 XiA46NNQai5z9jwN1rSXWM+QzF2Eu0wEBRTrj2EcwZkq75fD6knxIhJ3n3A3BUAjIag8
 8I3A==
X-Gm-Message-State: APjAAAUlgYsQa/trrBDkDKJYX7H1jZH0J6O85REHPsr2ItkX4GpvnMxs
 JNj123z6QO4WvYSmlMDsYR7IoA==
X-Google-Smtp-Source: APXvYqyxlnBPq1NoCHx0PDNAwhYb5u9L3MYUqw3oNmiwy+4LPvN4tGWz6tWvL/Vb3qkNfPZOcqdSpw==
X-Received: by 2002:a2e:9659:: with SMTP id z25mr6859818ljh.132.1573218099542; 
 Fri, 08 Nov 2019 05:01:39 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.01.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:01:38 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 09/47] soc: fsl: qe: drop assign-only high_active in
 qe_ic_init
Date: Fri,  8 Nov 2019 14:00:45 +0100
Message-Id: <20191108130123.6839-10-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050143_280815_AC074F22 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
