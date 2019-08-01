Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CFA7D6BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 09:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Utwg77qGzyuMWDWseshnMyLl3/ElGYrUVxXaYpdlieo=; b=fRd2IaxpQKA5II
	rsM5QNGgH8ejnGyvoEvJj9iOx05+oqF48e+YGqFnWt90XNnSuXrithVS4hcI7O1XnObWi2k6OfJP9
	B6WYXTeGXIS7J8aYb/8RZQapqKK3BtlMXMNndw9I51Viq13Ow3cv8nPepOKGXvb7OTUQH6QY2uhTM
	RINbII1dK7gf/BBBolPWO74CHkGUJqHlvGXY+WVTacGixk2K06uIF/DAz/driCPzlexNmo1UsIqUR
	Nd2zLbH0jSsdHIf76qj4+HikH17Cs2H13Krp+cKGWpx88gONPq67tMWW8nJR/188UZliKZYLKoUla
	wfGJkgCVMGJuEgar6fMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht5w6-0002vD-OZ; Thu, 01 Aug 2019 07:55:42 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht5vT-00010Z-13
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 07:55:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id v19so62265874wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 00:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e2WiU/DsLe1wMNodqzZLwpA1aNczN5SEyIJEg5xWVGI=;
 b=kk4EI62G9gnoZqd97Z0u+DSm5SF9LFtmVoaZYg15h2QPorIngSPSqD+Npc3qeC0Da1
 eGOmkbCRmOYxun5Mj9FlyliH0lzbmVCCGsIDdYSKYou3lebc/3Wlk2+N93/+3mR0ogRa
 iBwn/rcDy2MKfCbEVAJe7cwGPs587ieLtDMax2zYs+DatDFsbBhBqoGnnfPhmAwxHlzm
 5dpGUoGnX77XJcDZRZPblQaQ/1kqCf9281rApakQNjJlDwfNUmzkLrb2XZHonlbgbdp/
 NQpl0PAbjp0BqZfMq5lB/PHJH0xG3FpBP/K5jG1CeiEvHzZWtzY/1FzczcmbmekYKDUG
 cDoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e2WiU/DsLe1wMNodqzZLwpA1aNczN5SEyIJEg5xWVGI=;
 b=j4XQ8xUASVahC0yIZwfkbnREtcY8sANsnWUyNOcqSc54uL/aWiYskOw6xrHuXXJ8z9
 vIvJ6xPYYG2S3TPCOfXgmkhmVDK0YBUFVvWOmi4YAdt+kMQQTG++ZaWTVXhwlaFGTnJ+
 mhCjNo2MZzOnBsJRjKnVd0+wUb+kmFzzKeUOJj69ZJJO0pfZfYr54Nd8+emScSG/50X3
 uhozIgmJBvyl9SMH7tD1ksypLJ8zcGQkVTGb30sJxduGQarRR+xwv33fn4mUP//bxb64
 nJtEymhegC6U521EBcNn9FJ6tpQuGFHQUkLMsHHtFqLocpTyLWHzdWqvNdXImL5IpaMf
 xSyQ==
X-Gm-Message-State: APjAAAWmvR8Rfrdvj5faibHrSGKHeyScKYBVczpSLgJ2dlqsZfibfJyH
 zQgYJMn2NRkAaIZy0W/7pxYBhg==
X-Google-Smtp-Source: APXvYqyIkpvceBqFHAuhL6SK/XlbkFXZgpPhOoIlOhD+7y54rr6VzOLrLtQGkX0yCQiCqFHg5dmNFg==
X-Received: by 2002:a1c:7a02:: with SMTP id v2mr114218798wmc.159.1564646101566; 
 Thu, 01 Aug 2019 00:55:01 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y12sm64199221wrm.79.2019.08.01.00.55.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 00:55:01 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: p.zabel@pengutronix.de
Subject: [PATCH 2/3] dt-bindings: reset: amlogic,
 meson-gxbb-reset: update with SPDX Licence identifier
Date: Thu,  1 Aug 2019 09:54:53 +0200
Message-Id: <20190801075454.23547-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190801075454.23547-1-narmstrong@baylibre.com>
References: <20190801075454.23547-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_005503_085329_DFBBE421 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../reset/amlogic,meson-gxbb-reset.h          | 51 +------------------
 1 file changed, 1 insertion(+), 50 deletions(-)

diff --git a/include/dt-bindings/reset/amlogic,meson-gxbb-reset.h b/include/dt-bindings/reset/amlogic,meson-gxbb-reset.h
index 524d6077ac1b..ea5058618863 100644
--- a/include/dt-bindings/reset/amlogic,meson-gxbb-reset.h
+++ b/include/dt-bindings/reset/amlogic,meson-gxbb-reset.h
@@ -1,56 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause */
 /*
- * This file is provided under a dual BSD/GPLv2 license.  When using or
- * redistributing this file, you may do so under either license.
- *
- * GPL LICENSE SUMMARY
- *
  * Copyright (c) 2016 BayLibre, SAS.
  * Author: Neil Armstrong <narmstrong@baylibre.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of version 2 of the GNU General Public License as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
- * The full GNU General Public License is included in this distribution
- * in the file called COPYING.
- *
- * BSD LICENSE
- *
- * Copyright (c) 2016 BayLibre, SAS.
- * Author: Neil Armstrong <narmstrong@baylibre.com>
- *
- * Redistribution and use in source and binary forms, with or without
- * modification, are permitted provided that the following conditions
- * are met:
- *
- *   * Redistributions of source code must retain the above copyright
- *     notice, this list of conditions and the following disclaimer.
- *   * Redistributions in binary form must reproduce the above copyright
- *     notice, this list of conditions and the following disclaimer in
- *     the documentation and/or other materials provided with the
- *     distribution.
- *   * Neither the name of Intel Corporation nor the names of its
- *     contributors may be used to endorse or promote products derived
- *     from this software without specific prior written permission.
- *
- * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
- * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
- * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
- * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
- * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
- * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
- * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
- * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
- * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
- * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
- * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 #ifndef _DT_BINDINGS_AMLOGIC_MESON_GXBB_RESET_H
 #define _DT_BINDINGS_AMLOGIC_MESON_GXBB_RESET_H
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
