Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 280E375841
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 21:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Iiq3/o0v2677hVGb8CvACywZMdWhoagHmFK+3CCbrjs=; b=I8wBC+tzRg2ie7EWZCY6qgIy7n
	vqSgJDrMPHPmm43eLfDTQgQYhZHph9307TRqCCg9qfKmLMTUi/Fl1bCR75BfsLskwqdDD9BW/YDdm
	pQdaL2evj2ZGvLxZYjkHEKMHlad9gPnZ5XdYkc1YezqV7RZKELPLzeEPggAIHjsNz9oCfc/Sp9SNE
	bu+wRkFAJn5dyO60fkvVV+BO+0PlKn46OL/+wg5y4qs5/aPdCetsljgbWa6CcxHgmasL9YMgF61nh
	Xz/esdhLyjH6MkHUe3W1ezWpuZbMzCZa6IVp4gjY8L8VSxf5ExmMjT0mbYMAU5nsR7XWPpz7uUa2N
	VsZs2Ryw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjeq-00026z-Ng; Thu, 25 Jul 2019 19:44:08 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjdu-0001SF-PL
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 19:43:12 +0000
Received: by mail-wr1-x443.google.com with SMTP id z1so51961429wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 12:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rCLV7+XgVoqa77OFHC2tYmqnV175cwJKyP8wP05iwpI=;
 b=RlLIlegsq38ldfiYl5JNdHC+1z0E685X1TVdFQdFCMU1V/XLKm7JrAD2RvkbUS+6jX
 BILivk9wLP0APZgO5lmITzu4fkNC5o32dWuFHM+rifJdCmOEAitkh8jjjFybowbmh8M9
 /BkfyiGnbr+MBkZK60Cm/t5fcuMHxnea/yNrmTo5itWn9JD9WK6PBWKaJASAaw0LJ/JG
 soehhQzDJiTgZgrtbwxxGvSfkqmG2US8YOUdv8bTBv94MlMDY+ttdRrFyyyODXI6Jc3i
 XOXSQ0HRjUOZHf0HzFZXtf6pBDT5YS5QzvWqcGQBXqj2aFF69BTfnskgOd21uJc18QP/
 kPaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rCLV7+XgVoqa77OFHC2tYmqnV175cwJKyP8wP05iwpI=;
 b=bwGY10yx8CEEad5TMdvZvNi55MZcb4cQK8zG8DDuWtywx/eMzv4Q100yJD0yd42yqI
 CYq2x2JLgmiGOkrxyW94EcYvJZu7igCzOlg/DdI3GA6WShIALnce3QOAJwchAfcsJz+r
 mJ0f0xhMvb1exOLgtSKqpJBk+YyJEI4mQoC9EKeO0zvtBCPcmyE10GQx26YCC/6zLmW1
 d3U3MmWFCUOSxJ6M4kwqGNZl2JWNlLeacn24FOYwzfonhgjpaUGH81ptq3Fq5i7F8/OV
 PimvD0mw0l/GQ4MhJ8GlLqSacMJ403MSUGoRs9QIoywEo2rx9zOQaFvaAA8o/o6muxAg
 fpVw==
X-Gm-Message-State: APjAAAXfd7wQe8mjsZwooU14WsDqpwtaGiDDrqGpWTe6tO6v3sxriNZ4
 MlOmjqSzZsVld3x/8qZ5MM2M6TQW25U=
X-Google-Smtp-Source: APXvYqyWLBlCaPGOONr/8VuVeNPBnAgDE597l7zfFJNDEyXa14Jyu2F+mFFV14v0+EMTQFwN3Z2iUA==
X-Received: by 2002:a5d:5452:: with SMTP id w18mr56554103wrv.327.1564083789686; 
 Thu, 25 Jul 2019 12:43:09 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id
 y16sm103410662wrg.85.2019.07.25.12.43.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 25 Jul 2019 12:43:09 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, khilman@baylibre.com,
 mark.rutland@arm.com, robh+dt@kernel.org
Subject: [PATCH 3/4] MAINTAINERS: Add myself as maintainer of amlogic crypto
Date: Thu, 25 Jul 2019 19:42:55 +0000
Message-Id: <1564083776-20540-4-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564083776-20540-1-git-send-email-clabbe@baylibre.com>
References: <1564083776-20540-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_124310_827960_4821320E 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: devicetree@vger.kernel.org, baylibre-upstreaming@groups.io,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I will maintain the amlogic crypto driver.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 93d6cae3274d..48e7fd110688 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1450,6 +1450,13 @@ F:	drivers/mmc/host/meson*
 F:	drivers/soc/amlogic/
 N:	meson
 
+ARM/Amlogic Meson SoC Crypto Drivers
+M:	Corentin Labbe <clabbe@baylibre.com>
+L:	linux-crypto@vger.kernel.org
+S:	Maintained
+F:	drivers/crypto/amlogic/
+F:	Documentation/devicetree/bindings/crypto/amlogic*
+
 ARM/Amlogic Meson SoC Sound Drivers
 M:	Jerome Brunet <jbrunet@baylibre.com>
 L:	alsa-devel@alsa-project.org (moderated for non-subscribers)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
