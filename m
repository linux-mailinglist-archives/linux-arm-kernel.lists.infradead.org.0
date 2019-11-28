Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5983810CBD1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:36:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HlAgfu7IxcA8G90IbQC4AKFRYur1Uemba3n1KXQyz4=; b=Gfi6aZxmITQy3h
	tGAKjA+NWJWU7euESUSP91TQHSOfK3nbP3eL8MZE6Nx+xrJiXvSwPCZ6+66hSlD6a2hX3I1jFgT5D
	GfBOwvlrl6AKB793CuGMXT65jEa+ObNBB/BKC+a5sLxk9/sY9AYQ/8nq8rFEVSMy6zuDMb0uph6+c
	YFMGV8biZFtawzxMmBUofAcjMyJ8U1SHo+vb2QuH5NtKsr/VWiyPrBlx8sI0qiJ3BLnORnVFWtyRO
	25/Jm+XQUujtcD/Nvo2YspZhZO6lRbn+pEPETlV23Tkx9bdMe0qD8E5ssqDhAnjIxKMsbT/oZAP1o
	+FWj42FAxEEcn3F5J5QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLqF-000262-7y; Thu, 28 Nov 2019 15:36:27 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLnH-0006hW-S1
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 Nov 2019 15:33:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AiGMJuBYK7a9OjqplEnlhTed0vj3Z2tvo3Sm0/6smWk=; b=RnxnZAtoawxFnMUkLb3khsbv2m
 Mv8BJXKrdQlFs4zXJg3prE+yqJGNz7+xsJZQ9rKchLm5D4yVkY9uMnOufAs2KlSS9U2kzWVNCjEQm
 6aO7v425kzoTt1uEqaMGMaUUUEd044puOnAocSVhPXmMNPkPHDt18L+5v8AQbw1+xAGkcsuQRWRgv
 HUVDUABHWcrpbGWYjW4YLk9k12IDMCNd4HJvh+855qAt65Zb400i/rwx0pREkg9xuB+2/uv1Vddsd
 PgVwouhW51R39H6qEuP5kwMcoy5yY1POHs2jPmIvrZK18lXqtKe6xNICL0+dOnnzZQzptS+R9sMmG
 cvsxeROw==;
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEK-0002rs-58
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:57:17 +0000
Received: by mail-lj1-x241.google.com with SMTP id t5so28868227ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AiGMJuBYK7a9OjqplEnlhTed0vj3Z2tvo3Sm0/6smWk=;
 b=LWSeFBBM1EDIZG6BRK7BzXkMhomfAGPxWZw5tbDhgh3j0xwb1HqC6ORUdqAUR5hYkz
 tbFM6GCvupYGGSa1wW3LvEjbWfoc5kdkGYD4XmkX+Hmxi8jZ2xrI5mbIBgUADs+agsCg
 Sgeh5ezUo/C4MaGgCfg+Rdd5Xt0dYaqfP4JhY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AiGMJuBYK7a9OjqplEnlhTed0vj3Z2tvo3Sm0/6smWk=;
 b=AtJs4UfJrIE45kMrEiNqHjDZ3V0RM7A10Y5AKY8I8pvgv0VoXTXWGuLN7GF8jla9lK
 984rOR6MwvmfZqkapMWk1tepPxL+KSCKNOxhCRCp52gF2GVWVmpo1bjDUOKinx77DSTb
 z5ys+h9Y1IbSs+Dt0nUsdWFFEzfVEAqc3pLJ9nZD7urOLMfjghgxPxwd9Mc+nrx3kcoo
 QNNjxB0hdg7lRuCvLLGDZ7GqAoGGWMq5ApM0fsN4oMIOqk6YZbS9psUWkyPNgW9NtFrI
 /1u2fqmdlGZTWuFdmINVzspvzRfmSvblNxjJYhSnQtiKkt7Dy8ZAetWkAYjIvt77ZZj9
 Cmnw==
X-Gm-Message-State: APjAAAVd/Knaz+FUaidIhC69gG7r2WFQXffOBPVwcLjSmaLkQqP2doYg
 Xq7SdAU+mJnvuNkyAp5da0nWyA==
X-Google-Smtp-Source: APXvYqx9GR/tD/ww+OOOfAVWnvsvJ//206lu0T8p7Qzhyj4S2WuGGXqlvt2C1ggQ9Sclp3pDaGgXSg==
X-Received: by 2002:a2e:8855:: with SMTP id z21mr36008857ljj.212.1574953028055; 
 Thu, 28 Nov 2019 06:57:08 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:07 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 03/49] soc: fsl: qe: rename qe_(clr/set/clrset)bit* helpers
Date: Thu, 28 Nov 2019 15:55:08 +0100
Message-Id: <20191128145554.1297-4-linux@rasmusvillemoes.dk>
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
Cc: Timur Tabi <timur@kernel.org>, netdev@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make it clear that these operate on big-endian registers (i.e. use the
iowrite*be primitives) before we introduce more uses of them and allow
the QE drivers to be built for platforms other than ppc32.

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/net/wan/fsl_ucc_hdlc.c |  4 ++--
 drivers/soc/fsl/qe/ucc.c       | 10 +++++-----
 include/soc/fsl/qe/qe.h        | 18 +++++++++---------
 3 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/net/wan/fsl_ucc_hdlc.c b/drivers/net/wan/fsl_ucc_hdlc.c
index ca0f3be2b6bf..ce6af7d5380f 100644
--- a/drivers/net/wan/fsl_ucc_hdlc.c
+++ b/drivers/net/wan/fsl_ucc_hdlc.c
@@ -623,8 +623,8 @@ static int ucc_hdlc_poll(struct napi_struct *napi, int budget)
 
 	if (howmany < budget) {
 		napi_complete_done(napi, howmany);
-		qe_setbits32(priv->uccf->p_uccm,
-			     (UCCE_HDLC_RX_EVENTS | UCCE_HDLC_TX_EVENTS) << 16);
+		qe_setbits_be32(priv->uccf->p_uccm,
+				(UCCE_HDLC_RX_EVENTS | UCCE_HDLC_TX_EVENTS) << 16);
 	}
 
 	return howmany;
diff --git a/drivers/soc/fsl/qe/ucc.c b/drivers/soc/fsl/qe/ucc.c
index 024d239ac1e1..ae9f2cf560cb 100644
--- a/drivers/soc/fsl/qe/ucc.c
+++ b/drivers/soc/fsl/qe/ucc.c
@@ -540,8 +540,8 @@ int ucc_set_tdm_rxtx_clk(u32 tdm_num, enum qe_clock clock,
 	cmxs1cr = (tdm_num < 4) ? &qe_mux_reg->cmxsi1cr_l :
 				  &qe_mux_reg->cmxsi1cr_h;
 
-	qe_clrsetbits32(cmxs1cr, QE_CMXUCR_TX_CLK_SRC_MASK << shift,
-			clock_bits << shift);
+	qe_clrsetbits_be32(cmxs1cr, QE_CMXUCR_TX_CLK_SRC_MASK << shift,
+			   clock_bits << shift);
 
 	return 0;
 }
@@ -650,9 +650,9 @@ int ucc_set_tdm_rxtx_sync(u32 tdm_num, enum qe_clock clock,
 
 	shift = ucc_get_tdm_sync_shift(mode, tdm_num);
 
-	qe_clrsetbits32(&qe_mux_reg->cmxsi1syr,
-			QE_CMXUCR_TX_CLK_SRC_MASK << shift,
-			source << shift);
+	qe_clrsetbits_be32(&qe_mux_reg->cmxsi1syr,
+			   QE_CMXUCR_TX_CLK_SRC_MASK << shift,
+			   source << shift);
 
 	return 0;
 }
diff --git a/include/soc/fsl/qe/qe.h b/include/soc/fsl/qe/qe.h
index c1036d16ed03..a1aa4eb28f0c 100644
--- a/include/soc/fsl/qe/qe.h
+++ b/include/soc/fsl/qe/qe.h
@@ -241,20 +241,20 @@ static inline int qe_alive_during_sleep(void)
 #define qe_muram_offset cpm_muram_offset
 #define qe_muram_dma cpm_muram_dma
 
-#define qe_setbits32(_addr, _v) iowrite32be(ioread32be(_addr) |  (_v), (_addr))
-#define qe_clrbits32(_addr, _v) iowrite32be(ioread32be(_addr) & ~(_v), (_addr))
+#define qe_setbits_be32(_addr, _v) iowrite32be(ioread32be(_addr) |  (_v), (_addr))
+#define qe_clrbits_be32(_addr, _v) iowrite32be(ioread32be(_addr) & ~(_v), (_addr))
 
-#define qe_setbits16(_addr, _v) iowrite16be(ioread16be(_addr) |  (_v), (_addr))
-#define qe_clrbits16(_addr, _v) iowrite16be(ioread16be(_addr) & ~(_v), (_addr))
+#define qe_setbits_be16(_addr, _v) iowrite16be(ioread16be(_addr) |  (_v), (_addr))
+#define qe_clrbits_be16(_addr, _v) iowrite16be(ioread16be(_addr) & ~(_v), (_addr))
 
-#define qe_setbits8(_addr, _v) iowrite8(ioread8(_addr) |  (_v), (_addr))
-#define qe_clrbits8(_addr, _v) iowrite8(ioread8(_addr) & ~(_v), (_addr))
+#define qe_setbits_8(_addr, _v) iowrite8(ioread8(_addr) |  (_v), (_addr))
+#define qe_clrbits_8(_addr, _v) iowrite8(ioread8(_addr) & ~(_v), (_addr))
 
-#define qe_clrsetbits32(addr, clear, set) \
+#define qe_clrsetbits_be32(addr, clear, set) \
 	iowrite32be((ioread32be(addr) & ~(clear)) | (set), (addr))
-#define qe_clrsetbits16(addr, clear, set) \
+#define qe_clrsetbits_be16(addr, clear, set) \
 	iowrite16be((ioread16be(addr) & ~(clear)) | (set), (addr))
-#define qe_clrsetbits8(addr, clear, set) \
+#define qe_clrsetbits_8(addr, clear, set) \
 	iowrite8((ioread8(addr) & ~(clear)) | (set), (addr))
 
 /* Structure that defines QE firmware binary files.
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
