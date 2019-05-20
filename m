Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F382390A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 15:59:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=154hQxFSmyptv+DUGBeDyZuQVoSihLEdrz0/FnqVqoc=; b=OYGudJ9uuL9elj
	/VPCvopY8HZ/SkDZ5viFotEMmmpqHz4saZucYc075+NHDelbI2zE7amQxB9MtfW9uJ1n9u5uBKdsy
	jEHK8JFQoRHwbssXfEnJkhSe93Czzt51PyMWwtmwx1HpYd88eKi8XmnQvVACbwIeOVr8XyY6gnxG1
	39mbU5dF7NZvvhtt28t702MvBlNFRcsy+LM2m9+hju3h9KpGuZKIx1wsxbU48Laf9duj6dc3TeqCl
	xINGxE+iN4etJU1548YlW7JlnRS9m4zIM708OnGaXC5z3t6ySOJazCinttLJGO4XbkiOUR1Vk1b6U
	+bMactLwSz3RZbC9ZM4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSipK-0007ce-Jg; Mon, 20 May 2019 13:59:42 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSipB-0007bh-6E
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 13:59:36 +0000
Received: by mail-wm1-x344.google.com with SMTP id t5so11811145wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 06:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=q5ikjbPSCHRQAZ8XpjIGvp4CtMI7esI83aWB/BOoRdA=;
 b=awR0zC0C6HFr9b+KPaXLWOpAnbu221RHYXarKhSh5QVhQCIUpOl/GvA2qPQ5L33p2P
 o5CRGqdQnMiBe5rWjcK/rDcppaRl5MlkbFNYiZ6KaYYEsLNFUxxzHUrQXFOae4LcVx2M
 PC01GUr1oAb9WU8U3d9XUUo5ShpD0g7H+HmcFkd8o72S1FIAVGAeRTOKO8CyzVcS+u4c
 55qW8yPjKPP3YV2pR6eypGCux9OJbg0jybdRC5N7JUAZ3L687pG4GyQdXV/0dRVORR+Y
 MP2ecLHwImCRUSqrQ3w7N7wtSi0GEe2K8d8Ibf5v3LczhihtxlM8neeFRX4hFgPDY22c
 o53A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=q5ikjbPSCHRQAZ8XpjIGvp4CtMI7esI83aWB/BOoRdA=;
 b=QI5QZxFme4EpSyHzWqbdaTQVUO/dajpkFxGAw0M5BHTuo1idJZqCES+q728YW3nQoW
 tCbKfx47eGE1/SDA7A5ceuG/sjJuTDS5SRX4ZzpQ3rSJu1F1dfB2mvUpre+rF4nvPR4b
 Ct6JO+dSM+hDJVHvojE1meHvbZraT8cSOCz33stfMiYjIBAVu9LHR+V/fAnGsiXZ+tlO
 9vjFEoDXsphKVGj2TexTgKc1uik4ciLjrldyqb6uGVCjDdy3B8MneQK3+rNeQTLi5lct
 sofGSC16SntB8SI0xKMHimAbay8ZQjXGGUpQ2dRvl8816AEcOobldqZtjiFxKvnKdDdB
 iQqw==
X-Gm-Message-State: APjAAAWkJgSmFW4T42Z5vO7cXgXnIRt5Eprj0sahu2PbWyToLqnF7+PO
 oCTtRjhhM7qcK1Y32UsXIF1dFw==
X-Google-Smtp-Source: APXvYqwrDN1EXgltWlHOS1575AFZtbDm/X11UixJxY9eQPsiyR3/VBNmZ9AXkQgbylxOmR70AcvHyA==
X-Received: by 2002:a1c:cf4f:: with SMTP id f76mr9385856wmg.18.1558360769988; 
 Mon, 20 May 2019 06:59:29 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id s124sm20858819wmf.42.2019.05.20.06.59.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 06:59:29 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mpm@selenic.com,
	herbert@gondor.apana.org.au
Subject: [PATCH] char: hw_random: meson-rng: update with SPDX Licence
 identifier
Date: Mon, 20 May 2019 15:59:19 +0200
Message-Id: <20190520135919.28946-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_065933_281787_BB95E275 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/char/hw_random/meson-rng.c | 52 +-----------------------------
 1 file changed, 1 insertion(+), 51 deletions(-)

diff --git a/drivers/char/hw_random/meson-rng.c b/drivers/char/hw_random/meson-rng.c
index 2e23be802a62..76e693da5dde 100644
--- a/drivers/char/hw_random/meson-rng.c
+++ b/drivers/char/hw_random/meson-rng.c
@@ -1,58 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
 /*
- * This file is provided under a dual BSD/GPLv2 license.  When using or
- * redistributing this file, you may do so under either license.
- *
- * GPL LICENSE SUMMARY
- *
  * Copyright (c) 2016 BayLibre, SAS.
  * Author: Neil Armstrong <narmstrong@baylibre.com>
  * Copyright (C) 2014 Amlogic, Inc.
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
- * Copyright (C) 2014 Amlogic, Inc.
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
 #include <linux/err.h>
 #include <linux/module.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
