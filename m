Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3852DA90
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1h/ooILtPMDBbzET15qKGlDk2gPdQtG8yLl/XIk9O0A=; b=kYU/Rer/2qWhRG
	ygSM1xXxHuXsicDJAKPdSO5fqiY0uSqtNY8iqJ8oRbGiaZL/ws+jacSLge5Pxxv9OzyNzaRW1j6C5
	3hwyzR7e6f30awq3cr14IDqwuawm134V8b0QO9zvCy0AqDNeiEWBMJtfBa4vOk3fjsMQhGOP/Btov
	mQrvLY/b+uo+noSWYl3o/KXXs8ACm936z512tPaw+j1kVa5xSjBi+3bA4MYYQTO79bd8eKRFxAE0j
	Gzcxh5+hMQSMeO3f0j1AZ5kVPkWv338auHM6FwJP5VqAwUYgAkCKo5iazDAuJsewZZpq720evLJE9
	eorDtzyACjW6PDvxDN8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvnW-0000Pc-I7; Wed, 29 May 2019 10:27:06 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvn8-0008WI-P1
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:26:45 +0000
Received: by mail-pg1-x541.google.com with SMTP id h17so1129455pgv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 03:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GljBVRDvAaH/DkyFnuPUvDqT8RdA5gdVzG7vblp3VSs=;
 b=mNMl2dhA55pEBfDmm0KYY9HDhLUN9zY4R63Yol5LQp+MwaFD7w2xzRvbqvz1bFmf+u
 DMMZb+kETeAeYx2gPM9SRZ7DPKmUaheDn/YR7VfsXKXG2lpbc40nBCMhX7A6Ohts1pn+
 kQiTIf76xeLlGk7d20NTCAZHzJA0ahlyXY/oc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GljBVRDvAaH/DkyFnuPUvDqT8RdA5gdVzG7vblp3VSs=;
 b=X/UW+WqvTQm+NtlWjgmNmYx6N/wytoKK2934B+dqDoQ+4vl5NtFxX8Rif8JGrv94wf
 m8zmHID33FDo6jqByaa44vzQrytwlkwXKgZhfXqwkLXlccT6734Z6gkyLsORL5eao3V1
 rjGxSDCifqPdAREXaahh+75eONRi5427UH3Eab/3fdh5wJUAKgAEAoh7T88qsHfh0r05
 uN/GaPHhW8YWTiBCSEiZVNpE89unLOFBIMz3AqyUW/phV7/EriZo9UMqKN8SNEa5a12L
 dz6Qe7trFGP6TeKxeJyB72bh3sCnwRHCGplkKaCQ4M1+HjHNt1MV+NsARcThiIlkuSil
 yHZg==
X-Gm-Message-State: APjAAAVZ+3rl7Fqbz4447uGhpRQUTxGzmGF9z/1ZXFN/qhTw5z1aJlbQ
 NtENvp6xKND6LbwsBudTOVTYn8Xz8DsaFQ==
X-Google-Smtp-Source: APXvYqz6GR4WNNXNVVY8FlZIz1QqWpoMlEteFKEd2dOX/waMt4VxWQVOVp9NyvwarqjmG8cnhKaspw==
X-Received: by 2002:aa7:9aa5:: with SMTP id x5mr57398728pfi.135.1559125601694; 
 Wed, 29 May 2019 03:26:41 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id e12sm18992183pfl.122.2019.05.29.03.26.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 29 May 2019 03:26:41 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/4] drm: mediatek: fix unbind functions
Date: Wed, 29 May 2019 18:25:52 +0800
Message-Id: <20190529102555.251579-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190529102555.251579-1-hsinyi@chromium.org>
References: <20190529102555.251579-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_032643_032627_B7488723 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

detatch panel in mtk_dsi_destroy_conn_enc(), since .bind will try to
attach it again.

Fixes: 2e54c14e310f ("drm/mediatek: Add DSI sub driver")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
change log v1->v2:
* mipi_dsi_host_unregister() should be fixed in another patch on the list.
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index b00eb2d2e086..1ae3be99e0ff 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -844,6 +844,8 @@ static void mtk_dsi_destroy_conn_enc(struct mtk_dsi *dsi)
 	/* Skip connector cleanup if creation was delegated to the bridge */
 	if (dsi->conn.dev)
 		drm_connector_cleanup(&dsi->conn);
+	if (dsi->panel)
+		drm_panel_detach(dsi->panel);
 }
 
 static void mtk_dsi_ddp_start(struct mtk_ddp_comp *comp)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
