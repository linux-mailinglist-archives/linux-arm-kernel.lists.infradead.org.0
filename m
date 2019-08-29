Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F017A1B67
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 15:28:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BtjhOi5JtXW+LnK7GMgjkBCEjpEIFKBfxfEZFEX0D4k=; b=uvrNugzJJ4gy/0
	Os2YCyc7QES60nBWVLJJJxkuckygqG3eqJywe0lj5ofiXucon7oONsnGoSUUyzqCuoT8YlBf5wbVd
	zAQ2PVr811alyogAhX2xY+dnC8Sd0QoCM51H6epotne1TtfvRekCDgmMxSzWaGwGG6sry6j7424lN
	LMbvuMMaOhZI0W9OfFj+zWdAVdUOFtZEuNZnzqUTZ+c7OGQItBpvH9HNTEP1Ud6ebaaGXpdNBCUYq
	Dh0rxGRVZI5pRUXQvIi26uUlt7s/FpB7KV7LeT1OO4JrjlMnxVPdxvXdxYwH7nOtE/G9SJm/0edGf
	0n8T4xAZVE9YnmPFt8kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3KT2-0000fl-8p; Thu, 29 Aug 2019 13:28:00 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3KSd-0000dw-Sd
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 13:27:37 +0000
Received: by mail-wr1-x443.google.com with SMTP id u16so3476115wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 06:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ObZxzVUzRVJkzuGbqaSj0zLHjJYTKVhbZ4DRyEiw5iM=;
 b=V+GRa2DvQOlLn0X+4NST+cS1WZ4h3PtMrz76coZnLJl7sJ0s9T6gbOS9+Tbs3b9Ntk
 8ghDZm6ofJrbfDX+jkkWoqRsCsFjNWULiUOthNoB9SIWFeGduuPxoSqp90V8+hUWxKBu
 FdrwiKzfHq8mwi+ONQPyptIpRWkIAo6ji0DiGNoFxexuWDtCL9+0oD+X8fZTr0UQK8nR
 Ca7zaolB5j1QD7H8bNSZHjQfRVf6dgdYugvY8uL0YQWBtLLXpY8BwcwSgnfo1PKAn2Jo
 4t08AAgTQS17cFRVCDs1hgrJfq4OkNhcJG2zCPKUAFIvu3kJh4bw4mAxb+SbL8M0vHgG
 VMIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ObZxzVUzRVJkzuGbqaSj0zLHjJYTKVhbZ4DRyEiw5iM=;
 b=fdJdQHahiUzDPUjlmwkumymsM7L9XKuNHNhMW5d2sKkAbgH2jHQJP5VZN69DVyEsKI
 9iIsxzM/WEipLxnxHslkUJ5hDSXlJqchISh1OrvFragJ69gaEHZYeb+YvQcmntFTCWHZ
 xfw9k2JrNY+Daf8ZpsqCTKfCUgmg2xGuB/qTXmB98sbV34hDFE52gA3Gx8uooLvkdJRC
 hg8HeRJtyO69mkDmDetrXF63keT4uA0y+dVzEOZ7qaryMq4a+roNufuNGsYGc4XsgTww
 CgaVcJ5Unrl0CiF47St1niriclVNPDaNRb4EHzhJ2/RgZTxzRlmP+znrTs2cymxAVBQg
 3JYw==
X-Gm-Message-State: APjAAAWheCQFTEpGbDnJxNkjpK1rAkePC5OPzJeBifvA7aab6QxPICDV
 kOw6qV1xd4GL30W8IKuFsrpkAg==
X-Google-Smtp-Source: APXvYqyOHXWpdSBnIHcSQVNTV28gpUMVgF6m5ArVN54Ou1BYOV7RZWWE14x6SLW7DnHo3o6yeQTnYA==
X-Received: by 2002:a5d:658d:: with SMTP id q13mr4108312wru.78.1567085250674; 
 Thu, 29 Aug 2019 06:27:30 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id c62sm2420823wme.20.2019.08.29.06.27.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 06:27:30 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH] arm64: dts: meson-sm1-sei610: add stdout-path property back
Date: Thu, 29 Aug 2019 15:27:28 +0200
Message-Id: <20190829132728.20042-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_062735_952776_EFF05F1A 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

The commit d4609acce187 ("arm64: dts: meson-sm1-sei610: enable DVFS")
incorrectly removed the chosen node and the stdout-path property.

Add these back.

Fixes: d4609acce187 ("arm64: dts: meson-sm1-sei610: enable DVFS")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
index e1cac880b02c..3435aaa4e8db 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
@@ -19,6 +19,10 @@
 		ethernet0 = &ethmac;
 	};
 
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
 	emmc_pwrseq: emmc-pwrseq {
 		compatible = "mmc-pwrseq-emmc";
 		reset-gpios = <&gpio BOOT_12 GPIO_ACTIVE_LOW>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
