Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C4023955
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xiEw1QyyZ0HKMGsa2uDn/4/GAoJHEjpKvmYtIiwSXRU=; b=aNR5cfv0RjVsrp
	9W7tS0RPHvak4uQoctSa3Ixi6S5pILbJrl/tWwgsL5jBoyTpmOVswi7Te9JByPWs8BMhtzR8Yo4Hw
	2yR22Grt2JvGHAQE17yOQ2lDxi5omxmxy+voQmV7cPp6Zt6UvwsI6CJzNPlGrhWxD6HXS6YyyZXGP
	68fTmMKXcbwLuHaJjIVf/qhVzhoLf8NgbJRibz6z7SoO1Mrf1cAr/3BRcxDq3NW3IjGoEoq60OT9J
	pp3ic+izhR9Ti2iOEcI2MqsCvGGiBwX86UllIRscAP9/CzXsjdnhwmw42U/LN1Vk4a5mjYOxlco8g
	q1zp2TiELa7eWw1QTKCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSiu1-00034N-2F; Mon, 20 May 2019 14:04:33 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSitt-00033f-7z
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:04:26 +0000
Received: by mail-wm1-x344.google.com with SMTP id y3so13467975wmm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wZpcedj0usuNnQQe4hSwoGa27U3KI1NBMOLWj/UNRC0=;
 b=KW11kZMRVXs4raFGQTEwJgJ0jnGGEBCREFbR1yhqhZobC8ZIER22VyXV2kmejPd8cu
 P4Mi7yK+EkWwcaUch7S62P1OdrjOz5cxZMxywZBlIVq/fZyKHWrX/6ytzeIC429eEFVb
 QfPa5n1hcfVyvTvxuy47siQ6HD+Hj96d0myIwOEThjRO7j58/CKzLddK4EY/0X1gOMBp
 HD8SjLLNXc+pukPSTwp0vrUx3IAfwh2lJGt2p47Ic0CG1TvG8eAOogRkzugWhpkfYqwo
 KgO2RKJtbYWmysT4ooHtBwoAYP1XxXmKs0g/5w1hf4Sg6s+Fl0Hd+10BXodeidFWVFIR
 Pspw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wZpcedj0usuNnQQe4hSwoGa27U3KI1NBMOLWj/UNRC0=;
 b=ORhSDAGJ9jHP5pq9dsiDUdKfCuVngiGW+FjzGw1v3SsJAdj1mQcS7Ms7jxgiQ8tUiv
 gr2lVLUHG71js9JvgaphlokHRde5qSZJ8cj7oG8fJReFaeyZoZplft9+vnM1ifDWelfK
 X+kZyBMYQif4NhdsOnQiNw0FcBEbraESbH/RHcYlX3NfdOu3HpHlVNm/iqBji9ACMYLI
 tkpUP4qLLdHMPSCHD1mZ5meJoA19yjc9Zd9iWhTUZAxbL6YCrt8nUEoZA8OXFnqWrL5r
 E11u9cMTxAS4bbYXBz0lp5SfByRs2s0ILho+N/+zrmuc8mr8IMzcL52lHmtqa465pA7m
 vlTg==
X-Gm-Message-State: APjAAAXuEJsiW2RB5uzzU0Cc2/oAGab2AP48ut54gWaK0+sngYmr7b4U
 FQg20LvrF2V6RPTlJaigF5mLQA==
X-Google-Smtp-Source: APXvYqxKM4u75H/WX5/D4Xu3uAIucU2k0DuLBgRqDfQN8DywNO7NTSwNq3BbTLlSpamGImB/4UMr4Q==
X-Received: by 2002:a1c:e708:: with SMTP id e8mr30285399wmh.11.1558361063451; 
 Mon, 20 May 2019 07:04:23 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id q11sm1207286wmc.15.2019.05.20.07.04.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:04:22 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: thierry.reding@gmail.com
Subject: [PATCH] pwm: pwm-meson: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:04:21 +0200
Message-Id: <20190520140421.30074-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_070425_284588_B4C15B56 
X-CRM114-Status: GOOD (  17.44  )
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
Cc: linux-pwm@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/pwm/pwm-meson.c | 52 +----------------------------------------
 1 file changed, 1 insertion(+), 51 deletions(-)

diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
index fb5a369b1a8d..5fef7e925282 100644
--- a/drivers/pwm/pwm-meson.c
+++ b/drivers/pwm/pwm-meson.c
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
 
 #include <linux/clk.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
