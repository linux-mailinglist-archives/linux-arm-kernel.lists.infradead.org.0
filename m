Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF7D11A627
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 09:42:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wyZxIoEXwzPIQDvfA6s3PSDUBx5voO3EqhmtFolSJb4=; b=ScDRYc/TtGcvck
	suxrSOprFZ1qKZz+s0PLk4/3g7m2Pvm44adXxNWxC0PVxDIKrr7Bc3gNds4FXpeVdy4MaUtGL6Nol
	HkPDTV3xsyhN2KgY/4r57vZt0YT1oNXzXhKcOgFYHOaNzUqs5yVaCS0CofY9cMn/R+O0dAh7HmVNb
	gKAxPbkAYv4Xy67TVhGD3KEi3HGkCdXfVFoVQXBF1oyQXAlqPTplvf7GdLMLw444EsAemuYNYJT0L
	H4NqKdJdZc3xUZ44Ps4UNOsqfWgTNoPSHzI/6/CU5PBV/XjWFSDjvBz6Qx7SnHiNrQFIzBJtuxxfR
	FVayNDW6bgB2pNfltCbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iexZq-0005RS-8P; Wed, 11 Dec 2019 08:42:34 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iexZC-0004uL-8l; Wed, 11 Dec 2019 08:41:56 +0000
Received: by mail-pg1-x543.google.com with SMTP id b1so10407744pgq.10;
 Wed, 11 Dec 2019 00:41:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZX5iKFff+zirWsLntEazM/Rbpxnzs9FOJJrz4dQumzc=;
 b=MHUO4UkuzYpZA3AHVcHQwjQ3qiK8LGCGbQkoMcg3lJKv3tAaP6BMTBg2Ib/qK37dA+
 c5L/hXucjHUBEbtVwOTLq2DQQa2FHXO/lLHOBXi2jFqtXNji3CbRH5LR06+kRCcZKoPb
 GUgDODlN0gIhiXK6mD4bUE3SSJC0TO6NI3a0MtgQO7kizMf3g7EC9QXW6eoQSU5/GdYi
 hMvTTgzME/upt+wwKZFcGXQBixnooyz3ez9ipRTbX5T0OX43dsafvRPYbeKrg3GKvDHO
 hL/fLVDdRs1/KxdVK8O537Rzi0mWV21RQX9bTUJiHBNg9/dj1AGb73qQB6PPnUDTGxIC
 XJig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZX5iKFff+zirWsLntEazM/Rbpxnzs9FOJJrz4dQumzc=;
 b=jFpXGrEpksCUyUKkFiJjuqBwmySXr5hacbOpxmeFhu1HNLDDFDpcwJen7NZjCSsTxY
 Zfo2bvtbobVUtN8UBA4pnmTJxF/iCBYkfstVkNasQa6Xxgr+vU5Lq7Sx+XLmv/EZpqew
 LN5znfFO+QvUzfR8CVEc7RT79oRIjM/Le3s99Ftf4FDeTP8OoYTfUJm0EoJEfZMwRHam
 e9vYDEZQLWd4x7tn0RUIcjqN/vr0ay+SQympR4/kipqjYSZMcW9NcDHFwQuITHUXVKr7
 HZ9rvRy4I9NIM5t8MwobqBPL4BTEcC81jSOiLGhtE8r7Mba+u2yOHLHbO6iky/hmBwum
 Mptg==
X-Gm-Message-State: APjAAAWM5617uof5UBZVfsojcWtFM8Fjwmc5h8qwKIaboE+BcSrVJViJ
 K5aE2O3ZIVpjUGPiSIFAF9E=
X-Google-Smtp-Source: APXvYqzO1zopMC7CKJPCqQkkW+wGdyMfN7a2pPRNe/6FbBn7+WTgfsNCmI+0BrTqx7nTq9HCJuuNtQ==
X-Received: by 2002:a62:b402:: with SMTP id h2mr2447717pfn.55.1576053711611;
 Wed, 11 Dec 2019 00:41:51 -0800 (PST)
Received: from localhost.localdomain ([103.51.73.137])
 by smtp.gmail.com with ESMTPSA id e16sm1806233pgk.77.2019.12.11.00.41.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 00:41:51 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S . Miller" <davem@davemloft.net>
Subject: [PATCHv1 3/3] crypto: amlogic: Add new compatible string for amlogic
 GXBB SoC
Date: Wed, 11 Dec 2019 08:41:12 +0000
Message-Id: <20191211084112.971-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191211084112.971-1-linux.amoon@gmail.com>
References: <20191211084112.971-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_004154_351149_372E484C 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add new compatible string to support the cryto controller
for Amlogic GXBB SoC.

Cc: Corentin Labbe <clabbe@baylibre.com>
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/crypto/amlogic/amlogic-gxl-core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/crypto/amlogic/amlogic-gxl-core.c b/drivers/crypto/amlogic/amlogic-gxl-core.c
index fa05fce1c0de..9859ab023e23 100644
--- a/drivers/crypto/amlogic/amlogic-gxl-core.c
+++ b/drivers/crypto/amlogic/amlogic-gxl-core.c
@@ -311,6 +311,7 @@ static int meson_crypto_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id meson_crypto_of_match_table[] = {
+	{ .compatible = "amlogic,gxbb-crypto", },
 	{ .compatible = "amlogic,gxl-crypto", },
 	{}
 };
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
