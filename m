Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDFF23A7A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qqoXqBoK0t2HJcKJhhQSJwOcYjde3h6cvNLS34gkwCU=; b=M4A39dBzupJ9J8
	AYkrx/ByxoG6VPLyqMkMqNSHUtvh1VR+uZO4/8RCCBbaTcYfm++1Mlm8CyRqaTfg4BH57csEA497K
	VNP2tXzPdpJol/ew5nqz/kYYkTsoSObJrmedfnW1arUkSZd2eG4iTznTqbVDUDTJbIbcrVv+I+5hP
	BBVKq/E6JMAiNKznUwXWRs4t4hzSuH2SDiw3RET6xi7w75MMBAqAeOZ6VV9Qcml50TIXrkEXWsGk6
	w8ccXbMKA7ednURVBDU/dOneo2dpKqKUDgJesjH4B69tGzt2FDLy1JgNIIUVvrNNANX19GSqjuHhi
	rlOTlOjSeSFQjvhp8/dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjTC-0002Bb-7e; Mon, 20 May 2019 14:40:54 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjQu-0006fj-PR
 for linux-arm-kernel@bombadil.infradead.org; Mon, 20 May 2019 14:38:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W4dXOOf/ZwsiW1E42PXFWmoJeaO05v5ew8hdRVBHcrM=; b=d6umnieHQDtB4VELKfvhY0tvja
 DSsYexjomk1nnWdsxq2GgA7NtQ7CZgwoYpaciTcH4avKqLG0PNGGeRF/oae3RKPkufzDyOik7I4l8
 T0/seTnt/BAJwHIb8O0GIRepDkI13iy8xQaNPm/w2fnIF2xBvSPi5nGUpBGF3/XzOswQ9oXyE/bvS
 hB20YRsFFH5S5UOiBaXxSOEPJJ47mX82VrgK4bGfM8KbLq9w8NOYtR6J+h7eI9ztuoAMEFqyOPzkV
 2VjK9SDHcd6rhHRxyDkYuaWojWeXmOz3SPILdZQySao9HVET6H90Mn8Y0/2WBvQNgi++wBjkx/KZe
 0IwfcUgg==;
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjQp-00085y-7A
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:38:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id s17so14930325wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W4dXOOf/ZwsiW1E42PXFWmoJeaO05v5ew8hdRVBHcrM=;
 b=gNuDfq7Seiwsb/4awLd8eeGTPx1iFkm/88M8WNnmTdQ/pDN+0yba0HrktlM12aWf/j
 QyBLF/n9TePpd19j2T8Ph+SczdNZe3bn2/QpGFDFMzr6GBXOuaLat6EWkBG+PIZn0cUG
 OdllZO1gzCCVMeF9P3HDB2EgaxRlTjDST9sPjp0QC1rXQCpweQ4c4j1hv6u/cpcho9Pn
 h3uQCJNDdhD7QaUredWkBSbAkREC4kl+7rJLrm7KzDMoXS63BOGM4tbouCJx8+Zqend7
 XDpUbPcNdAgDOdTShO3nM7OvWIQa2ebu1V0NQoi1IfJDvC1XV4O3qq2gluDPFWl+pCoO
 kr/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W4dXOOf/ZwsiW1E42PXFWmoJeaO05v5ew8hdRVBHcrM=;
 b=bqzNG/UYHCMlfXpfCG5wNaca3IzsIh3Lugtq8S4YOS3sS4k93g+vjjsuVMxuD6TgtL
 arwgP4H75zVil3spRqMXuZbbzVQapSjQZCPYv+QOtBKzU+JTdGqLCLqLHMyDGrGkj2VB
 L8necjbMkh8OXLklBt7PWFZGUFv9m0IP8g1e09Ffiyyvpvq58ndpEICsaz1SHLkYU/ya
 G59ySqJdcrGVtVxzM9O7Vz7Hi6QYLP2AB71wQfaYjwnwH3cJFMCNALJryeT3mb8jdHty
 zoy8Yg3Cd9foUjCafz6+Ls+kcKarrWirZF3XHInSF+PeCzfVTISE+0ntzgvp8QKp/V1E
 dtYg==
X-Gm-Message-State: APjAAAXPSZ6cw4x81XzDACT4fhKQJMMvrsfdvICnXmjIqaf9L3ftQsO/
 m7anBBZFclr2AeNU8h/qa1miEg==
X-Google-Smtp-Source: APXvYqwHNVVduLD11lg0McpRS1gvBdd0l++uuorvdFMNVhf087yWX8LFiIBRLtA8BtN7QUYuFfw/eA==
X-Received: by 2002:a5d:4d46:: with SMTP id a6mr8791748wru.142.1558363101062; 
 Mon, 20 May 2019 07:38:21 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y4sm12505976wmj.20.2019.05.20.07.38.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:38:20 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 08/10] ARM: dts: meson8b: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:38:10 +0200
Message-Id: <20190520143812.2801-9-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520143812.2801-1-narmstrong@baylibre.com>
References: <20190520143812.2801-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_103827_270669_FE508E7B 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm/boot/dts/meson8b.dtsi | 42 +---------------------------------
 1 file changed, 1 insertion(+), 41 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
index 800cd65fc50a..c38b0828b7ec 100644
--- a/arch/arm/boot/dts/meson8b.dtsi
+++ b/arch/arm/boot/dts/meson8b.dtsi
@@ -1,47 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0 OR X11
 /*
  * Copyright 2015 Endless Mobile, Inc.
  * Author: Carlo Caione <carlo@endlessm.com>
- *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This library is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This library is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- *     You should have received a copy of the GNU General Public License
- *     along with this program. If not, see <http://www.gnu.org/licenses/>.
- *
- * Or, alternatively,
- *
- *  b) Permission is hereby granted, free of charge, to any person
- *     obtaining a copy of this software and associated documentation
- *     files (the "Software"), to deal in the Software without
- *     restriction, including without limitation the rights to use,
- *     copy, modify, merge, publish, distribute, sublicense, and/or
- *     sell copies of the Software, and to permit persons to whom the
- *     Software is furnished to do so, subject to the following
- *     conditions:
- *
- *     The above copyright notice and this permission notice shall be
- *     included in all copies or substantial portions of the Software.
- *
- *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
- *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
- *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
- *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
- *     OTHER DEALINGS IN THE SOFTWARE.
  */
 
 #include <dt-bindings/clock/meson8b-clkc.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
