Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E770E5A991
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 10:22:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3/mrBXhbWvklpSSjKyTUNGJq5NHiuD3YHwC1njZ8/Ik=; b=ozO
	DmPGSUACf1PI5xneDJeLvqdF4gNCZP7VIZhAezmN1yQbxvHE58paVoEKkKuKU7BWpXp+xzhxOB8uZ
	YG8syWJD6cug+VwS3bs61HyVk8z6ysrOtnCLusuTGegYNSqNMAi56jUTYd5hrnZ5oUj0NNssxwiJS
	E3/JpAvwLbp/89XLCSroavMd0rLr1KdA+pSwYKvgRkNROFdt1hl1mt0Qfxha7WgT795w0ZUoWsa2v
	yIh1moDQhlHD5U9wZS8/N3Pd7BRhn6RYyzxEAeXXjETKRQiaFEkIxsvH9smfD+ZV+1Vy3oOZ6Wtis
	X0m7hx/GqIfNSMtctDZsJaZqLIOjRPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh8cd-0001Vx-07; Sat, 29 Jun 2019 08:22:11 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh8cD-0001Uy-5F
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 08:21:47 +0000
Received: by mail-pf1-x441.google.com with SMTP id t16so4114198pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Jun 2019 01:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=HB5G4BCyKAU7NWh04NXHQUYQWJo7mRMg3f1DS79X9is=;
 b=U+sD4Tg2i5EmnQ+E96oYuHmFfjRIZFhu+ImSjldFv+pp7bnarxQt4kZTlckg4DVX+M
 5BwiyO9vyxW50aW05AoE/XIReZ9UkFMhsaXqrral2F+wzcVqDlYG9Mvy5WHbXw3EVJDh
 O+MEOuUIm8CeKDhIpzNb9pUSquazzH3bdV8LKIxTfBVuq8knnPvwv2H4AHzKPX2lgP4s
 trkpZ1ybjg/Y1kuSq/ywv3KuZTsKx+BT4RNyIxMJxKYktCp2UZVQyYwlHdkJpOF55bVO
 qgTm4y/L71e3PxcXX0+KKUtPt/aEITyjaj+U13dkDaAkNQB52CqYfAurITZQgPSEwS/+
 iYYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HB5G4BCyKAU7NWh04NXHQUYQWJo7mRMg3f1DS79X9is=;
 b=qFF3/LhlhtbdIAmaR8xhXh4mWonU5GZVBjd1SgzdqH+nQRxgCE0PkFHcEPWGGXoLAe
 oFghVpSXrhufyO8I7C7HoALU5ngCfKJHb5QTV7QtmKJFluBzzavUw8O8m3v9v8dd8ynE
 McC09Ra8BOPTIzEBooYuuaJNJoi8DF80DvTXh9Q6q30Fu+b5PqQn1+urjLrPmaSxQz9H
 foBTg11wLWqkcoVeAEALikMFN032dZ2UWG41MuCD+BKezZYK3BnxCFmmzYlgoBzRIbPt
 +3JhvP5hVtF0PypWJ4aplB/Boi3vyQuV9JvA/FCwIIyRIEsZpXJkkARVY0eGPgkxZjy5
 r9Tg==
X-Gm-Message-State: APjAAAW/R1AacqU4lzJvqGLZMIDtZBlQo6sdODxVDHzZK9cGJ6j/lEVT
 Lb7A463EQXaF+thsAA46M3M=
X-Google-Smtp-Source: APXvYqxe+pfvA2fNml3PD0CjRgo9z23VagyA/eh1M1nZFUM5QLw9+cWEf3nEyzTfGxa1nZKlTrc+TA==
X-Received: by 2002:a17:90a:228b:: with SMTP id
 s11mr17710124pjc.23.1561796503508; 
 Sat, 29 Jun 2019 01:21:43 -0700 (PDT)
Received: from localhost.localdomain ([219.91.196.157])
 by smtp.googlemail.com with ESMTPSA id 27sm3834610pgt.6.2019.06.29.01.21.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 29 Jun 2019 01:21:42 -0700 (PDT)
From: Raag Jadav <raagjadav@gmail.com>
To: dmaengine@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH] dmaengine: at_xdmac: check for non-empty xfers_list before
 invoking callback
Date: Sat, 29 Jun 2019 13:50:48 +0530
Message-Id: <1561796448-3321-1-git-send-email-raagjadav@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_012145_429753_3FF495CB 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (raagjadav[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Raag Jadav <raagjadav@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tx descriptor retrieved from an empty xfers_list may not have valid
pointers to the callback functions.
Avoid calling dmaengine_desc_get_callback_invoke if xfers_list is empty.

Signed-off-by: Raag Jadav <raagjadav@gmail.com>
---
 drivers/dma/at_xdmac.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/at_xdmac.c b/drivers/dma/at_xdmac.c
index 627ef3e..b58ac72 100644
--- a/drivers/dma/at_xdmac.c
+++ b/drivers/dma/at_xdmac.c
@@ -1568,11 +1568,14 @@ static void at_xdmac_handle_cyclic(struct at_xdmac_chan *atchan)
 	struct at_xdmac_desc		*desc;
 	struct dma_async_tx_descriptor	*txd;
 
-	desc = list_first_entry(&atchan->xfers_list, struct at_xdmac_desc, xfer_node);
-	txd = &desc->tx_dma_desc;
+	if (!list_empty(&atchan->xfers_list)) {
+		desc = list_first_entry(&atchan->xfers_list,
+					struct at_xdmac_desc, xfer_node);
+		txd = &desc->tx_dma_desc;
 
-	if (txd->flags & DMA_PREP_INTERRUPT)
-		dmaengine_desc_get_callback_invoke(txd, NULL);
+		if (txd->flags & DMA_PREP_INTERRUPT)
+			dmaengine_desc_get_callback_invoke(txd, NULL);
+	}
 }
 
 static void at_xdmac_handle_error(struct at_xdmac_chan *atchan)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
