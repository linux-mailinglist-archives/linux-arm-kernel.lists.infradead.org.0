Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 175941FB01A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 14:18:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8oH3HoxHohVLJivctFtIiSzYOyYM176dGSCcG491tY4=; b=oMHnlYBmgmQmRd
	ITwyS/OqsenFP770pCRlzN+d7ehNwltaer19s1tN5Eax3AtfzCsQX5l1sKBdSKaCn4xBSqMKU3a9P
	+Lkb6WESgY6MbqrWmta7/+i3wAk/zpQrc6KpHBnbvdg8mnZ4bvRJ85XzlA9RRECw2y7Mpm0AdLIaZ
	U9xjk72cxSzi2GJ0vyfim/F5MgaQnroBHA0grWbl/tJd4wSdU4HuoVmPXrPfRNf2JDgxxikU2u0aI
	o8kch/jma+lWY81FPkv2zqcwEGeVVrS20Yay4mMVyXDhlHeLibDwDvET3NS2WzP9ynKNwo9O7MtoY
	+i75cEVrYYi3NiILrDLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlAXW-0000gw-Vs; Tue, 16 Jun 2020 12:18:07 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlAWh-0000C8-SR
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 12:17:17 +0000
Received: by mail-pl1-x631.google.com with SMTP id j4so5063086plk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 05:17:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LJO92mvN8G5Ck3uoTs8tbtHokwelI/PjMZ8RoMwKBik=;
 b=qYuLDE6cUJWd5a4DmxyscuvyFglYOxees6+5yxZbHCeW4dVK/TAHc5qEfavEUmqtku
 4jynq09mMyw7LfQBSZ2XkmvVR0xQfwjDSx/aPlX3EdAOGqTBfN+Rd7VzMBFpksIDfWrd
 jSI6ZMBqHU3nd1Kvqh3mtN33mVSeNv9oMvyIo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LJO92mvN8G5Ck3uoTs8tbtHokwelI/PjMZ8RoMwKBik=;
 b=Q5Ce2iHar3SBj0p5TPcvwQR0eKlgy+OClXXWCJ7Mu6RAj+sMOv2m8SoFR7hPMy9t9v
 YLvfIAVH8RF9SHl8RhxCl3h2j48+Xu7DKuWg5lhMxyoNOJf/Zpy6Z/crUVz0BkCS/qdZ
 /U4TJ1E+U7KDjCjCjQKaVRMrCX+Q/l2yHRauzhW0ubYECK60kOqoXTuVv+R9gmO+3V3W
 AzUAOe+gTuP/0+C3+drKmMvctLJRXOeES3MGki2aB3G6ulixB9ZDjSHg65Agi8ifS8wN
 LTTW4J+2Z6dRR7JdaWvqQ/41Dybjx8J2rNsHjPpyzJaLPp0QUi4d8KnloiQrghS/kiJG
 LA8w==
X-Gm-Message-State: AOAM532ugI0/ca3pcIqt9pGaee5TpN/RR8qVa+h61ToooW+yKVc8E7P0
 0VaeMOPzsATcvgebgJazFb350cOtJqM=
X-Google-Smtp-Source: ABdhPJxh4mja4k9jxSfXKuDqMXATuL0/kxNng8htaYKY7QzDnrSNVuiHfGFh8qWBfZavfBpJSAz/kA==
X-Received: by 2002:a17:902:9b92:: with SMTP id
 y18mr1756775plp.228.1592309834497; 
 Tue, 16 Jun 2020 05:17:14 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id f23sm2360703pja.8.2020.06.16.05.17.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 05:17:13 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 02/12] dt-bindings: vendor-prefixes: Add sstar vendor prefix
Date: Tue, 16 Jun 2020 21:15:15 +0900
Message-Id: <20200616121525.1409790-3-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200616121525.1409790-1-daniel@0x0f.com>
References: <20200612130032.3905240-2-daniel@0x0f.com>
 <20200616121525.1409790-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_051715_941666_2BAE5DCC 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:631 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Daniel Palmer <daniel@0x0f.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add prefix for Xiamen Xingchen Technology Co., Ltd

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index b09b6c9911c3..ba5bd3b0ed9a 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -986,6 +986,8 @@ patternProperties:
     description: Spreadtrum Communications Inc.
   "^sst,.*":
     description: Silicon Storage Technology, Inc.
+  "^sstar,.*":
+    description: Xiamen Xingchen(SigmaStar) Technology Co., Ltd. (formerly part of MStar Semiconductor, Inc.)
   "^st,.*":
     description: STMicroelectronics
   "^starry,.*":
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
