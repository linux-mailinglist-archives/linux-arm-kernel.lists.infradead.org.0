Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE7810CBCC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:35:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hRx73Y4Ec4mJmz03vSZ5O+inpgn3ss9rja/nwK+Ql88=; b=YMJrgjr4wyyl1A
	jJbDJ2saeBea8C1yMLIN+g7fypLrXlTDCF8WeZz1LhNziIIw0Js/ravTjn/cBNfLLv+tAtRae6VMK
	yrmzHJkGwFydbPSenokqD11yriQGFa7ae2v4lU/n6Rm3uAyOPeTHP+3q5YVY+fQWxVrlFvZLGQh+S
	V/ZWRqFbmq4GLNHrUbQnHOby88gHwprRQ+pwVwTNdiziIKfSHRSfiYuc2ggpG6R+9+uqkxyBJftVj
	zaCsV8LaukP0+wJed/dFFp7XGhiD4TIwSuZR5FFGsTQod7Juq6r5nV/cgJSqHm3U89erXFJsoPDmV
	XcrpG04R+YPGve7dm44g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLpQ-0008Uy-Oz; Thu, 28 Nov 2019 15:35:36 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLnE-0006hW-LN
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 Nov 2019 15:33:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FmgfMIRsfesacuqaAWdy4m11iy4kXtcqJGU2jE1ib94=; b=hC4qgBsT7g8Ywxwfua3j3poR/d
 yYXL+c6ThmgkBu1Nz4zZM74oJ4Zz2gDBYzFpHSOlJBTNMzKOcoeCdc0G/iYfKaoFO8+LNLJ34sOCN
 d+7n5d2lsbvnm+COoyyIwiBLou41Xf+l5XM6RRux1dxgVx0NZYHIAm9711hDfw5t6dy73epDaKRiR
 QUH5YEVRiB01Fe9WVFothdEh7zArqQurFItkG2HCk96dQS/I0mq1J3pEW3+Sqbk7FsktBgKJADjo6
 gc5i22KV2NWB5BfyIh6nIcqiMgHbaNKUhjSizyhml636BMKFecbgwoHRfZphUHvDE9e10lYoYnOK1
 g4HcB2Fw==;
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEM-0002sL-7O
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:57:19 +0000
Received: by mail-lj1-x241.google.com with SMTP id j6so19824570lja.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FmgfMIRsfesacuqaAWdy4m11iy4kXtcqJGU2jE1ib94=;
 b=DWaJoZNKmVKJfjUISyttmUEuNUv/FC4di6OurSxwDjNRPf9fCoQE/A/qz2Dy66aw71
 PMyfrMM8lWNdbHve3iKOns1KyW7JmJCa85Djs2qtRkWpz9X+k2Ozb14LpmYyBYaKsLE9
 HPUmmm8ft3lQXqQmtEWC2OKlYzqlvX2OAcQXM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FmgfMIRsfesacuqaAWdy4m11iy4kXtcqJGU2jE1ib94=;
 b=p5rYyfko5onH2St1b+XFQD9LTAEA6KkUohJoRiQjN3vLmwMBgrtSrvOVqfROmLpsKQ
 VDRqeq45oTcd7AuWBOlxHYMNTyoAApErlYLNqRpQiVLV41TESyOwRyZmW+Mk8SAoY16Y
 qHZbmzzT8X84DXfanhgh1FYCLEaTIFuThjX1huV7gxvl+R5LfQMskf6Nz+ffejhmSzUn
 uEbYtbBSrWa1YZHFOGlkexzW0k1gWWo54jULQs59nK4fY4yDZ6VO7R0WDQFaOlNnoxt3
 ImiNZL3ix77uZSUPSx90s/NaYye/RjwT6WT8sh0AlwGplpqSFHUr5sfLpLEL3ATMaanj
 xF4Q==
X-Gm-Message-State: APjAAAVo43p4GxUE//cZRZVGJSb4AG3Bp/XMc1vkMIaJrs2hPI7womQT
 R/HbJSLle1AYvxuxco5zAdSyPHs3jqZu6W+k
X-Google-Smtp-Source: APXvYqz+PF41ZfV2qdB0Q0B87NeIFa3uor094RTZMNig8ikkYiK55r+ga2Tn+9ewAJX6oroKuIa4Rw==
X-Received: by 2002:a2e:91d5:: with SMTP id u21mr35420576ljg.32.1574953036398; 
 Thu, 28 Nov 2019 06:57:16 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:15 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 09/49] soc: fsl: qe: drop assign-only high_active in
 qe_ic_init
Date: Thu, 28 Nov 2019 15:55:14 +0100
Message-Id: <20191128145554.1297-10-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

high_active is only assigned to but never used. Remove it.

Reviewed-by: Timur Tabi <timur@kernel.org>
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
