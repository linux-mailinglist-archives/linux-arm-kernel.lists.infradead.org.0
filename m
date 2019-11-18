Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A4E100458
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:38:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BlK6c7xZ5q9g71ZAnYOuAk1sXqLlChLwPSD72NqVj6s=; b=dC3khxP5BrlxAr
	CmIZ95MHGFzUydDwF5JN6D0+sAevIvvayOtqarbkf1jJgLpiATfJffslpc1O6BY3W09x0RLduxecX
	ODM51KmKlsrhG+iOdOjVHhk/nlo2Gw+hKLCK4JsKYb6/EwVognlTQLfJ0buWKXjuYkkDCXPckX1yi
	fNzlLBFOf8H6EGUSPjPoe2xIG4mtdjhCElCHk3pX49rZ8YwJzmrpmHfoJLESJtKAMqF2NK2v9C5ho
	WVJMM3WhhnPs+DHOpnqtnqfH8rKi9CLQcsekeTT4HtXt7TG50GgWctyTs6XWn7PrXtmpSUAoVz+Cm
	JEFuJ3hE7bodN45SShPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfMA-00082Q-9o; Mon, 18 Nov 2019 11:38:10 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8y-0001g6-HJ
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:34 +0000
Received: by mail-wr1-x442.google.com with SMTP id l7so18975915wrp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SKjk4xtgUQ/kA6JZGPtMJVtONpNy6V4lFIeGBwHjI8g=;
 b=QtCF582MFVIFUAE0sBGhcnpWjLaKcMJuHBmrKQSENS+VvCOL11gQdMW8atajXJA2em
 kMb/rDoirxRW0vhZP33J+/jeZLSWRclHGRqPwHLuvpPjdAmwLCRTLHjmhdLBSc+TtOWY
 iLVuDZnvsXId6BXLCalrliqwxuijTqlROC53Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SKjk4xtgUQ/kA6JZGPtMJVtONpNy6V4lFIeGBwHjI8g=;
 b=Ef8+Bqz8IVCv6G0rFNC1/RM26sh5wRYHwBtFHvcfgP8fiyxWmnyOb+26wSiKXzmwiB
 3/g1f+BwiUWJXtY3LxXyYpSmbadioYdS2obp4SsdUomyDgdlNY/f3NihzMM31M0yxxba
 jyQDAzZRgYPKd8krUf+U+0jSGu12e7aUkOnltgEN21mzsp6deGW0gPOEqbHI1eoXuotR
 n4vQVSMObHWk8ZS+huJ5r7EKViGkYEon46eRWLnjFvy2AJp37uRBMgy4+LGUlW2L5yLD
 F9sj7Nb4qCawshFujYMdIaYeL2o/W657zeJmMDVpLVSFShdcIsIYS34PCJ7t1PNM4Jsd
 Q5+Q==
X-Gm-Message-State: APjAAAVMmwelDwE+yf0E57/M9tJX1HbknyTXT4oSO3vH/lgOR2uoXh3y
 CRfcXArk4G9JX9B+eixfvENhBg==
X-Google-Smtp-Source: APXvYqzfWvl1cOreV62JRtAha4euFED3eBmtooUgfkfMzTKXNFT+VQz7x317y2h7bdDCVKAQxJWUvQ==
X-Received: by 2002:a5d:4b86:: with SMTP id b6mr22999180wrt.143.1574076270973; 
 Mon, 18 Nov 2019 03:24:30 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.24.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:30 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 45/48] net/wan/fsl_ucc_hdlc: fix reading of __be16 registers
Date: Mon, 18 Nov 2019 12:23:21 +0100
Message-Id: <20191118112324.22725-46-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032432_734546_EC423F6B 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [5.186.115.54 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Timur Tabi <timur@kernel.org>, netdev@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When releasing the allocated muram resource, we rely on reading back
the offsets from the riptr/tiptr registers. But those registers are
__be16 (and we indeed write them using iowrite16be), so we can't just
read them back with a normal C dereference.

This is not currently a real problem, since for now the driver is
PPC32-only. But it will soon be allowed to be used on arm and arm64 as
well.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/net/wan/fsl_ucc_hdlc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wan/fsl_ucc_hdlc.c b/drivers/net/wan/fsl_ucc_hdlc.c
index 405b24a5a60d..8d13586bb774 100644
--- a/drivers/net/wan/fsl_ucc_hdlc.c
+++ b/drivers/net/wan/fsl_ucc_hdlc.c
@@ -732,8 +732,8 @@ static int uhdlc_open(struct net_device *dev)
 
 static void uhdlc_memclean(struct ucc_hdlc_private *priv)
 {
-	qe_muram_free(priv->ucc_pram->riptr);
-	qe_muram_free(priv->ucc_pram->tiptr);
+	qe_muram_free(ioread16be(&priv->ucc_pram->riptr));
+	qe_muram_free(ioread16be(&priv->ucc_pram->tiptr));
 
 	if (priv->rx_bd_base) {
 		dma_free_coherent(priv->dev,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
