Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C51E8E4B5E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:42:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/Io1TDculi07pDWANG8XU8ejupy4YkvFX+vjUyFZBE=; b=alxTfwpaxHXQxd
	6KeRVyaB1taRvmpQlhtVucrNjWkAuoB61X+gJ7d0SljAIk9Ah/HZvL26DcgW6azGHCfnsvylpsRPG
	iRnKk5O7B5p0qGSAiuQZMAv8FH4FB1OPoF+AjjQlaQdTHExSpw211wBeifVqcyYULDh2ZlmegiKca
	NpnSbjgR78vdo8/a6Ys393FAFjP33FuBqh6WxwgK4Ks+WLGcROxd4qlitpJYe+KV0FIpEBLvFUS5n
	1eWAUBg3jnZWcqj1RcnnxVZJdKb5wyXZwFUR/srpamnVT2VGVtyME/ooXRPkCwvoPo6sAkx0ZwcAo
	R0Ti9u3iHhjyjtIJ0CeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNyvC-0007C3-3S; Fri, 25 Oct 2019 12:42:26 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNytx-0006Di-FF
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:41:12 +0000
Received: by mail-lf1-x144.google.com with SMTP id v8so1609816lfa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 05:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7uK8xEnPEigQ7dFIza6M7Wg35/gDKz/RHXvPNwcggqY=;
 b=GU8kE9rmw7CxmGB90Y5Izc7LWqXMzqEnx4cZC7e5Ef+6pwtiG9RcGqXUnIzFpZ3t3U
 CU97Xc1WhzK+r82cnyFDuq5P1B/vMhbnBN/N6tdvSoWnVlIh44HGIJ8cZesgveR3SkSo
 M0pyyG+OPVFfGCQHHHNBUGHUCNNPbe9T16/FI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7uK8xEnPEigQ7dFIza6M7Wg35/gDKz/RHXvPNwcggqY=;
 b=o4ElSCp8bygnD65UNSV54ZtxYIuYeo8xtrDD7I9t6WRmgKTZRMKJrQrb86axh1gE4k
 Ex1J0CezTMw1VUz+ntw4o47Bbhe+4NH9oaw8+xc2vf5cYPrRJgJjISfMjhHqNzXP9KRe
 NbLv0iuX9MifYF5EBNRVFFfHIMlxJRAbbibMZ67Fm7t9wbqKYHoH8rO3RlwlUbUu6ZIk
 kTGAe08fazDRIrrxG878gto0AkB//m2fxNvJIrVimtcDm4xCgQXasqvuTezk78ldnaa/
 9j7BK/4pCEtpFbLcuWT3MYf0rvJNl2YeZPcrLqC7U3PC941t/IRkO22J5T3jpwdxEUe/
 ShXA==
X-Gm-Message-State: APjAAAVKjCM9Ig29pD9uMmqnvW/OVmJPEvRJW8b4pZt5ABSLiRew9hi1
 TqRgOwpY9wvL6OYAPjcrG4RgDw==
X-Google-Smtp-Source: APXvYqxqw6qAfANRoZ0GsCSZE1jfgTS6RZBtUbzWdgUXaR/01NaSFiZAQl3jp8GRzrDs35V36nIV4Q==
X-Received: by 2002:a19:8c1c:: with SMTP id o28mr2606108lfd.105.1572007263499; 
 Fri, 25 Oct 2019 05:41:03 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id 10sm821028lfy.57.2019.10.25.05.41.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 05:41:02 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v2 01/23] soc: fsl: qe: remove space-before-tab
Date: Fri, 25 Oct 2019 14:40:36 +0200
Message-Id: <20191025124058.22580-2-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025124058.22580-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_054109_543658_2284B702 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
