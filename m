Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B92D2B6A8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAYEjRvVE4p4vGov2pJ4ZCs73Jktj6IQEqVGas7Eex4=; b=dO6wfZFNNbYgTp
	Maz5dr5tFe4ajpv6s67HkYe6DTCrH8kBPn4Nk91lXcWvzgmbXzGTby8Z8vb4mXOD/IAK5u30QSalW
	C/Pa1tCNR1aTZhFUocAR8zriKtq8tZMMk5ZtK5bp98F1Ce3SDwoCHUOzjyNcEeH8rOLazR3rbb4Y2
	zG1rK93FR0Oz214fVUTTaw+UAZa+ntjjVg8Psz+FtIg5AOgV/7eFcI+oFJDKJcUPnw9cULpc+6Y50
	jzF/83rlntjsGcd2/cXouCnn8fK+S8s2LkWyTfagNH0U2Ini0g7AQSatF1e25AHUtGizCpdrPrgJp
	9c+lVw+u7ghU79JOt/iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFs8-0005ZF-Ji; Mon, 27 May 2019 13:41:04 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFqH-0002Od-S3
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:39:17 +0000
Received: by mail-wm1-x344.google.com with SMTP id w9so9778694wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eOChpaEsOQLFv07SwDRnVxGpJlOXkRDlPY4sW9iIPa4=;
 b=GwZ+2pxMpQAjtt4cyGo2vJZxYSkmzjAIdxdbIgWq6MaN7THXApB04YGh6YYdtM8lpT
 nz6KJ1vSKqTmpDTANKwaDCleIek7Inve3a6rWWK4pRgDBIKd5kzSjkTvsRv6CWC1FcbU
 C51QePs+QvBrGKedh+bfmJJcIz/TlCD+G3/nBgRFEwT+cm+Fkbd9Kfr+x5MiuCTlsL1v
 I5na993FUbms1newegA2uqph28MPNOIlJ5gBgS7CgwJ2UPAwb7Ox+tV2sF+nf9GkglaK
 0HsFwfNxx67/eljpGuW4uqoMTqZNhUxcXXEj454QBji8dW0/zhqdt8fmWv/gpUdn9+P+
 OiGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eOChpaEsOQLFv07SwDRnVxGpJlOXkRDlPY4sW9iIPa4=;
 b=D8uoMKKajUvKm40QO6TUznPj5L0jshtaP7FWyo7M2dOpOmHXT92IyN8KGnLcuIXW8l
 I8dHgAYqpfFydFzfMTGzCgmfJvtxnwtVshBW+3tUS+QfvNNpmhxEDCVNgMYxBEDKf67I
 SqNNE6fHgvAQih+x5+WCDC00IC8WfS16HlpLa8L00ohA7atyDe68DnBgkjkk9oaxR9XS
 sjAMCfEvdxJyita5UuyuUfGwl1n3lfIXT+FN+o99oPnnkXO4R5AJRu341XNxeXWf3H6j
 NJP/jOsRkOpy76J9m1Sch3V02wVd6g+kFko/09Nhq4SnoZ28ADX5+jRJRreeSDNt3v2p
 uqSg==
X-Gm-Message-State: APjAAAUbp+w4jokBqXK8bRMzitspHrjWL767YnvF8zQwp7huqeCEbnId
 v6bYLdfHGW+8IQW7MO6bJfzfwkdCvnqERg==
X-Google-Smtp-Source: APXvYqwi7sfSCd/vbnNO821w/TDC+t8BUGE4AWiH/oHHU4qt6i264xDT0IXdeP1lZo+hczzh2if5iA==
X-Received: by 2002:a1c:ed16:: with SMTP id l22mr10304860wmh.96.1558964348240; 
 Mon, 27 May 2019 06:39:08 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a124sm7838335wmh.3.2019.05.27.06.39.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:39:07 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 07/10] ARM: dts: meson8b-odroidc1: update with SPDX Licence
 identifier
Date: Mon, 27 May 2019 15:38:54 +0200
Message-Id: <20190527133857.30108-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527133857.30108-1-narmstrong@baylibre.com>
References: <20190527133857.30108-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_063909_991640_6754F8FA 
X-CRM114-Status: GOOD (  19.45  )
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While the text specifies "of the GPL or the X11 license" the actual
license text matches the MIT license as specified at [0]

[0] https://spdx.org/licenses/MIT.html

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm/boot/dts/meson8b-odroidc1.dts | 42 +-------------------------
 1 file changed, 1 insertion(+), 41 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b-odroidc1.dts b/arch/arm/boot/dts/meson8b-odroidc1.dts
index f3ad9397f670..018695b2b83a 100644
--- a/arch/arm/boot/dts/meson8b-odroidc1.dts
+++ b/arch/arm/boot/dts/meson8b-odroidc1.dts
@@ -1,47 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
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
 
 /dts-v1/;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
