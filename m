Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A84723AA1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:42:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K5eviOYNtNhFRLq/z2/aMxoaQn78yiEmTnepNWeoAYg=; b=QpsYn1ei4N4FxF
	dKmXoRbFjLQ1a9sDstUUYIW2p0MVTHjHM0/xHqTvaoUNIcCAgpUITSbUYn2OBJNQrFC0MDpzZ7M0p
	yu5dia1fIyosPJcuFu3aWrKLzNv1vmsn8CHwBZ56XEQsOG4xQsKvYdLn95stoSmV1S8/6dkwSq6hm
	CRXyseGfbX0fgQaJME7FW0IF5SDMjNOAz8ErvEmbXOF+4jkT7oKWbxvF+z50ayT6AKunjd3uM1c/j
	jJ2llL/AFLAVQ/iJDcpB+MhH/LQCT3douzOleFFZFJ8U1+wMbNablKkH3IByW/X+hM7i7lt1IjhUH
	rgEf8DRZx6WHFo/n3sgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjUr-00048A-5v; Mon, 20 May 2019 14:42:37 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjTi-0002qf-2x
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:41:34 +0000
Received: by mail-wr1-x443.google.com with SMTP id w8so14930940wrl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eyDz/kU6Wjim2biRU2q8CqgWCCB8KF6iAcPXPEhI4iE=;
 b=GL1kPF/zUzZXKB5Un27WiEJQ0HNwcqqnlgkMiO94zM4OnjMJI1m+TNzvxK4Yn+Gx/8
 5O8+gBuLemwUJVEipgg/GahnWgcjh0WLtWb0wr61aGUmUtQopw70+M3+d5YBam07vBvP
 ooVf8RaJCsspmSiwvNglwLoisdmIU4WgXxqjHO3jt/BzyV0M4bBrMlx7gLFStGfEPh8k
 FP6DpQyiBbQf80owDtMzoOOv0DRnv/0FMnhZUSG8Dn9+Dwucxn9Xotr9GoZ9AzOJ/Fte
 a7SJQMwvLQPrdlFVrmy02dW86PGusTvFGXn0n8frBI/zylHHeuBpPZG9eloWHuoydEm6
 8KPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eyDz/kU6Wjim2biRU2q8CqgWCCB8KF6iAcPXPEhI4iE=;
 b=WiKv9R7GaSWDQfIVmA9JWgvvf6wY6Vzad/R+SK0+6Vm14hHE3bwFX1SrnwhnuuljN3
 PhVAXc6MDJranIPfISMStQJcCKtjdOeMUqPI6XJ9aSqmfIikp9Avzirik9EpTw4IJ/YD
 UBQvYVjwLp0qpiyyUhxfEw2xJ6FVWd3Np+qtvWx231rv3A9KhpomJpMbo686RXcrU7ga
 vnfo+RSs1zs63y3i0GzXSDzChMPcerzH8n/T3B6Fwqsho1V9CJOds7A9Kq0G0WVH/dvu
 K6C2AFj1D2ONAkfkP2vo/QdMgfZeOAL299dfn0xesLukMe+AYcNays+CtEtDS7c/tUuP
 ypPA==
X-Gm-Message-State: APjAAAV90gdw3MiCId6Tn9RsZKknmP/foKjVpP38d6XPQQkyTVha2FXj
 Oc7LhMJ+kUOwZ2GwKSKkSnOdNw==
X-Google-Smtp-Source: APXvYqwNFE1d2hRxTr4yNHyu/Qt22C88efwwzfb2tPMpnZSFiu3ODusoG5pkwtkQFTWj5bADDe/gBw==
X-Received: by 2002:adf:ec8c:: with SMTP id z12mr36194064wrn.209.1558363284655; 
 Mon, 20 May 2019 07:41:24 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id w3sm6743679wrv.25.2019.05.20.07.41.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:41:23 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: linus.walleij@linaro.org
Subject: [PATCH 5/5] dt-bindings: gpio: meson8b-gpio: update with SPDX Licence
 identifier
Date: Mon, 20 May 2019 16:41:08 +0200
Message-Id: <20190520144108.3787-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520144108.3787-1-narmstrong@baylibre.com>
References: <20190520144108.3787-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_074126_154054_08668B17 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-gpio@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 include/dt-bindings/gpio/meson8b-gpio.h | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/include/dt-bindings/gpio/meson8b-gpio.h b/include/dt-bindings/gpio/meson8b-gpio.h
index bf0d76fa0e7b..e75d09b6087b 100644
--- a/include/dt-bindings/gpio/meson8b-gpio.h
+++ b/include/dt-bindings/gpio/meson8b-gpio.h
@@ -1,15 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * GPIO definitions for Amlogic Meson8b SoCs
  *
  * Copyright (C) 2015 Endless Mobile, Inc.
  * Author: Carlo Caione <carlo@endlessm.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * version 2 as published by the Free Software Foundation.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #ifndef _DT_BINDINGS_MESON8B_GPIO_H
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
