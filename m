Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8808F4C48
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:02:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/Io1TDculi07pDWANG8XU8ejupy4YkvFX+vjUyFZBE=; b=ubM6lYXqc7+Lad
	ekGiurXrkaKVdLpi6in2NoD2iRC8rh3F+l01WpiNZTnYTfIeyIcUmnTprI2pdtM0aWeTev7PGAHR5
	Rl77/90VfOpZQvLjo+5XmuFF8AawKJpwsaBJSZhb5G2pCyOT8f2gSwDv3Ry3LMoFFy/5cDGYl/Gps
	AT3XLd+Sy2glcJDC3JF/tGoY9koVAwXO/8SSMG6GJwzB+qdbZC+6EeBmtTqMTbok53Xr5/r1BqqCX
	eHRlAFqE2u3LxdVPNuotcDt4fFVrBjkI2S9NqU3kMuamDZKQh2poIMoz61Uu94iInYI+KF2vRC7kU
	8Klkf2DG3M9kj9H1XGyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT3th-0004Gg-Q6; Fri, 08 Nov 2019 13:01:53 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3tN-0004EB-Dn
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:01:34 +0000
Received: by mail-lj1-x244.google.com with SMTP id y23so6099743ljh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:01:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7uK8xEnPEigQ7dFIza6M7Wg35/gDKz/RHXvPNwcggqY=;
 b=TILqTlkBAuI6LOruaKTEZxzFTZzeG4DApGwSCJnlKakYgy7KP0WRPjM1EGJV2b3OJD
 T8LUksBB2SOF1ipjFU8+h3T3RVUq3rPmEAI4MLhbWoap/mLn0Zb2aMx+Wo4G8VaJCWHr
 zhOuihFDFHqD+4SnIA6zEd5vQn63cVeNEZE8M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7uK8xEnPEigQ7dFIza6M7Wg35/gDKz/RHXvPNwcggqY=;
 b=FeEsztsLNSHWMrEcpNVDK+6cDkEQGRAIiYzRtj/426E8ngHGTpuQH745zT4bZaumID
 ewo0zdOjDYQVVav68XPQT/IhcDScpbdZqg/P3GPYA9yuxBLnBCmbr7tGrmvSFEGyvglL
 5lBZC9+451CE9zUYkKRh5LAu/+iKprQPfzmu5ohKljT61xzmHenCJczj0/cEx1S6xDHt
 6Gssu+sXy9/mknhyyGRApxbq5erMSOuzp/KxBwV++jcS85pau6EsmfT/W4EPZTsfPN/8
 ainm8uGjoK6sT4GbpACAfqlWFVKTddLpTT7NvUyzWEV+56wk7t1ymhBO5JVkyGyHB2A+
 7stA==
X-Gm-Message-State: APjAAAVhFtK4pLdn8FG2NVMtboVR5JJniYn3cULFKvcYjaSQ7r7B7YFz
 TWUaQRHAg5pyuZsfVgpCShdPgg==
X-Google-Smtp-Source: APXvYqx/4gr4npNtwela02AaJ5wBwQ4mC75A3/zTLGhWUSCRRkJJXBY71RvLrCS3I1ZkuT+Gn/IwPA==
X-Received: by 2002:a2e:9a53:: with SMTP id k19mr5918980ljj.246.1573218089195; 
 Fri, 08 Nov 2019 05:01:29 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.01.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:01:28 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 01/47] soc: fsl: qe: remove space-before-tab
Date: Fri,  8 Nov 2019 14:00:37 +0100
Message-Id: <20191108130123.6839-2-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050133_481345_D958F663 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 417df7e19281..2a0e6e642776 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -378,8 +378,8 @@ static int qe_sdma_init(void)
 	}
 
 	out_be32(&sdma->sdebcr, (u32) sdma_buf_offset & QE_SDEBCR_BA_MASK);
- 	out_be32(&sdma->sdmr, (QE_SDMR_GLB_1_MSK |
- 					(0x1 << QE_SDMR_CEN_SHIFT)));
+	out_be32(&sdma->sdmr, (QE_SDMR_GLB_1_MSK |
+		 (0x1 << QE_SDMR_CEN_SHIFT)));
 
 	return 0;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
