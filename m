Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1487810CB52
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:07:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mPtfxUCy2T/aEkrL0HabnmiT8IrTKjWRudGQpeCY+AU=; b=GQAM8HCtjNpGcd
	uZuF8qEv2Y4lhMs9RsZkSqrNCABUoD9EQWqooctqQoUNAPDOk7NRe98JWpIr9PcFi2hWEauMAtMl7
	1muwmCJaxiTWLaRvkdtycQLYH9hRHxSP5aC7miwGKq/2NVYPk4y0S2rI2QybXBzEbLk6tFh8pRk/W
	nhX1scB6j1jWaYDK9st4QhegkhkQAL7mKtKVpszq1Tu1yI9AJ2B49pthzufEdOpF5UwuNAkkS4UYj
	vAaf6ZmOQ9AtKp2NEGZovxORmfhzKtq4xwVpf99/kI1a9kQb0FxrVtepHpI1YyPrmMDhqfS3LdeYD
	3T3bMC9ImW46O0TDOtZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLOK-0001dl-9a; Thu, 28 Nov 2019 15:07:36 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLF6-00017d-VB
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:58:14 +0000
Received: by mail-lf1-x144.google.com with SMTP id a17so20229189lfi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:58:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=byxQuHw6IVmwv5QbVm5twa+er8x0Qu7qmmS64lJfOnw=;
 b=PondpcWeSDGdnmJ3H3VheUMZ5EamRr1/9yXbPe7FnTxs0EB3gX3rAmq3N+xxQXg1zC
 8n9IySGiwvx4CXJ87vaurWMM04a78FAMf2Sv1PDfAzRwEzyV7rH4OyqjmmxRqM28QIEv
 FB3fNi1x+H8+Cb63fYmgSdnsF52YRLDjjuMIo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=byxQuHw6IVmwv5QbVm5twa+er8x0Qu7qmmS64lJfOnw=;
 b=n9QoqxV8v9kq4ThgkoYUk6uvKdfYEOWKV3FKJ7/aW2AJvHA2MYgKr7HMF8y0Z5qkHJ
 NyEJOo6ghbUzXe2uorNtFLbtCkcRHFWIaGZ1HOcHBADEUSOf9PBzET//+0pNyYTezN+P
 HUS2N0HMZn4W0e8mK/M28EtDyMwUxGFeoIFKWfaJQ8J7B0oWRauH7VyDnjwYqXr4zygH
 1I55+W7FXuTWATeAVO81RXDEAuc8WTZDQWqG+Z363+koF2VkIGg6qsp0dDxtrsXmUML4
 jhS0cFUFg2PoSS5AzyQUGaUhXsDgUIkTsYvXgBRShMoMRd48NsmnhlIi+arz6Lj+xYml
 2rlQ==
X-Gm-Message-State: APjAAAWV1oqkexm22VtEjVWKkW2dAAHL3uYAiRatBma+sq3fjGSHPpEo
 kOBJ5F3XbSO7M/kOK0YYeUuI/Q==
X-Google-Smtp-Source: APXvYqyFtd33g1Hp4cvK1H6BPWnHJDxlirit0nsDRKrmBSAkYuEyCJVhYftiyBHH6/qxlZfMH1fiXA==
X-Received: by 2002:a19:e011:: with SMTP id x17mr8564756lfg.59.1574953083383; 
 Thu, 28 Nov 2019 06:58:03 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.58.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:58:03 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 45/49] net/wan/fsl_ucc_hdlc: fix reading of __be16 registers
Date: Thu, 28 Nov 2019 15:55:50 +0100
Message-Id: <20191128145554.1297-46-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065805_137745_5902A1AF 
X-CRM114-Status: GOOD (  11.22  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Reviewed-by: Timur Tabi <timur@kernel.org>
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
