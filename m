Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63AB9100457
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:38:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RAEH4kZigNzxm8NuTA7+q4yuFXglxWX0gcttJa5Bs00=; b=bX0e866esxwOYo
	6DD64GvF+YOg4HM+UIQE2mB+S1L22bLqvmzvstVmM5t2DDqHaRQ4UfaTmCmJMAP7np65/lhjTk2Z8
	sbuLONiInn332O+cjJmlx4iyo2TrasFfjzz1ERv4G53WVQXKmSQzoUuU0mgB7LJRuemF2xZoVeWDu
	y2eZp3oEPQnoo5tqzfiPW1JeXEtBT80CgoARnUeFEZJwlCm7lSkrAisQO/7bbIsv/0lRt+rfHd9P3
	GlwbVl4SnNrDvuOTReXizCPRNbshkAs9aD7bdbl0QeNm9FMnyQkJyqMmpnOeCCsyScOfMDtDFzczP
	4WU6fgCMSVcx3vcao0QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfLu-0007nY-9Q; Mon, 18 Nov 2019 11:37:54 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8x-0001f1-6f
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:33 +0000
Received: by mail-wm1-x344.google.com with SMTP id t26so18362351wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IVdoGLW+H0ZKnJRayTBX6GqWyaD6YHKGaBDMMFO7/WI=;
 b=NH7FWgxoQiwr4LoAjxEWPXz7OgPdny/87RwuMrzkmPgKISYDOap46Q8/0cPFbhFB4G
 ZZpRjvTrHrfCSQC9zW37jijJDu4gzlSGe1F+XHMDmUQFD0duW7wQO7Fpiz6XOdu+/R3l
 F212mzs2E6Q3AxfovSV2tzrRwzYTfhflateDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IVdoGLW+H0ZKnJRayTBX6GqWyaD6YHKGaBDMMFO7/WI=;
 b=h5sZn7Tc0S/RoouG9PJhtCPvu7DM98bN/tZaqeP6k3vKDJwYX+kOPfcG5qEJmszwIQ
 1ri1rrwJepVrPoz5M4zO6jIxqIcZm2qjB+sS3pqT74JlA6n/EeHV4hADv7yEcjRvrqgR
 r2vbh2Wvkc9LtgA+qO2UKgk2f7DRhwUEmjWESQTuRNt/dRU+TIS5pRaGOw0heDu1Col4
 wHt5OcfD2SliIjQ1MIEl1ZFgnyohxtJ6M0vTYvGAKzxenArfzT2qsWP+dTkExgrpipQs
 DOzoKp/HmaHtZheG0OVNH3puQrlSjE7M05xKZdPogbQbhBwcgps1osC619A5OmmwUBMQ
 Cojg==
X-Gm-Message-State: APjAAAXQ4xDgLPjCjwY/EJATJWKY5MDcUSkd1m9+hROZdLJz1OjzaMTX
 ZFWDLIojPrs3E3XJ7wUEnCqa/w==
X-Google-Smtp-Source: APXvYqwwh12tB12JuthAp/C3MnVxgal/xwmAHyNat9wBHwHK00It/wImMmkOkU0iHk9+sdMLh98WhQ==
X-Received: by 2002:a1c:de88:: with SMTP id v130mr30219981wmg.89.1574076269555; 
 Mon, 18 Nov 2019 03:24:29 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.24.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:29 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 44/48] net/wan/fsl_ucc_hdlc: avoid use of IS_ERR_VALUE()
Date: Mon, 18 Nov 2019 12:23:20 +0100
Message-Id: <20191118112324.22725-45-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032431_336065_54FFBEB1 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

When building this on a 64-bit platform gcc rightly warns that the
error checking is broken (-ENOMEM stored in an u32 does not compare
greater than (unsigned long)-MAX_ERRNO). Instead, now that
qe_muram_alloc() returns s32, use that type to store the return value
and use standard kernel style "ret < 0".

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/net/wan/fsl_ucc_hdlc.c | 10 +++++-----
 drivers/net/wan/fsl_ucc_hdlc.h |  2 +-
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wan/fsl_ucc_hdlc.c b/drivers/net/wan/fsl_ucc_hdlc.c
index ce6af7d5380f..405b24a5a60d 100644
--- a/drivers/net/wan/fsl_ucc_hdlc.c
+++ b/drivers/net/wan/fsl_ucc_hdlc.c
@@ -84,8 +84,8 @@ static int uhdlc_init(struct ucc_hdlc_private *priv)
 	int ret, i;
 	void *bd_buffer;
 	dma_addr_t bd_dma_addr;
-	u32 riptr;
-	u32 tiptr;
+	s32 riptr;
+	s32 tiptr;
 	u32 gumr;
 
 	ut_info = priv->ut_info;
@@ -195,7 +195,7 @@ static int uhdlc_init(struct ucc_hdlc_private *priv)
 	priv->ucc_pram_offset = qe_muram_alloc(sizeof(struct ucc_hdlc_param),
 				ALIGNMENT_OF_UCC_HDLC_PRAM);
 
-	if (IS_ERR_VALUE(priv->ucc_pram_offset)) {
+	if (priv->ucc_pram_offset < 0) {
 		dev_err(priv->dev, "Can not allocate MURAM for hdlc parameter.\n");
 		ret = -ENOMEM;
 		goto free_tx_bd;
@@ -233,14 +233,14 @@ static int uhdlc_init(struct ucc_hdlc_private *priv)
 
 	/* Alloc riptr, tiptr */
 	riptr = qe_muram_alloc(32, 32);
-	if (IS_ERR_VALUE(riptr)) {
+	if (riptr < 0) {
 		dev_err(priv->dev, "Cannot allocate MURAM mem for Receive internal temp data pointer\n");
 		ret = -ENOMEM;
 		goto free_tx_skbuff;
 	}
 
 	tiptr = qe_muram_alloc(32, 32);
-	if (IS_ERR_VALUE(tiptr)) {
+	if (tiptr < 0) {
 		dev_err(priv->dev, "Cannot allocate MURAM mem for Transmit internal temp data pointer\n");
 		ret = -ENOMEM;
 		goto free_riptr;
diff --git a/drivers/net/wan/fsl_ucc_hdlc.h b/drivers/net/wan/fsl_ucc_hdlc.h
index 8b3507ae1781..71d5ad0a7b98 100644
--- a/drivers/net/wan/fsl_ucc_hdlc.h
+++ b/drivers/net/wan/fsl_ucc_hdlc.h
@@ -98,7 +98,7 @@ struct ucc_hdlc_private {
 
 	unsigned short tx_ring_size;
 	unsigned short rx_ring_size;
-	u32 ucc_pram_offset;
+	s32 ucc_pram_offset;
 
 	unsigned short encoding;
 	unsigned short parity;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
