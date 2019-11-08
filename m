Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9FAF4CEC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:15:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BlK6c7xZ5q9g71ZAnYOuAk1sXqLlChLwPSD72NqVj6s=; b=LQdKeJ58vacsGO
	vZmMdSqEJ2ap2rhW/a7hOEAWnC9PWtXwTO5pAluaCpo0X4uAorMuklSypTvSJPmb1sFYkMuAu2b5m
	a1cbG7VmcqSB7Bm8x1tEUkuhb7CoETqg9EywxMTt1L1mn3m5AfLj4ZgxosWIDl46A49DgxDIRpJwC
	9aSQ9xiNUbDSM32I/xWnYxJXxIqXNOXvK4JtF/+ZFwSKw2CpSTM5S2CmiHKm6SpCiTvudbOWFaDGS
	JwYyr9KR90GFVEjdb9rGtxCis85h9fz20j0pjyuEWMO2E6wGrPAUpom8AzLdGfAqR3mF53YmtUPRs
	GWYk0el93nJeeRNdD6Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT470-0002oB-IY; Fri, 08 Nov 2019 13:15:38 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3uC-0004ty-B0
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:29 +0000
Received: by mail-lf1-x144.google.com with SMTP id j14so4395390lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:02:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SKjk4xtgUQ/kA6JZGPtMJVtONpNy6V4lFIeGBwHjI8g=;
 b=fbtFc25QQKF1HYy9EJWgNQgGlj4NvVM/SZQzlg+mehsa55gfaar01ZvOzQEFiHiJS8
 NIWL01E4b4KculB+YonomNkzR6/ye1LnowBIkbJ9/0ahn29mzO+PzUdzYz/FKdLUGozG
 3Bl1Mlzo2VusjD/D//znojGiimZguwgG2m4r0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SKjk4xtgUQ/kA6JZGPtMJVtONpNy6V4lFIeGBwHjI8g=;
 b=uTG6ezWwY8Qwjft8RZ8jwZp0KwnPiRLNzu4v5loRfCFNtGLZCOvT96DaeUFsI46vku
 WL6WRwQNzXOw2JStwcZujjDOndD9ARuqAhVxmOTKF6ZwfZ1U5Nc4EoAZXucTGcdaqrj9
 UGKAY/KANush9DGfJXru1T3d4/dcxIwXhVriARFtXHn0PbUJzERaFWwbJAxHZQUl71gT
 0w7MFYuyjq48IIh2vIhtxrN2jd1Wtuebvy8BqUmdDLygQBKNtBGq9dElNRK/jYnu6ejP
 4LMF5SKcjgkUhTJG+RzQChCifssIRB6z8qq1jWhS4EGcf8vaz2bJ13RfrRN+DRR8bigb
 3p5w==
X-Gm-Message-State: APjAAAVs1agLwvtb686H63ruIb4aK232aPIuMRAI2VgV01vjB0Fl4mRt
 ykEDgG47fCRSPap/FNWUXKrvU5qt7w9VzO1L
X-Google-Smtp-Source: APXvYqwH4Au0vtX7CvDcjAgRV7H9RHuuGAfZs53rG3gF/CjSF6Puxm/KMJghDcukVOdVzQRBjC2v/w==
X-Received: by 2002:a19:f107:: with SMTP id p7mr6505066lfh.91.1573218142811;
 Fri, 08 Nov 2019 05:02:22 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.02.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:02:22 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 44/47] net/wan/fsl_ucc_hdlc: fix reading of __be16 registers
Date: Fri,  8 Nov 2019 14:01:20 +0100
Message-Id: <20191108130123.6839-45-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050224_467313_7777BE05 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: netdev@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
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
