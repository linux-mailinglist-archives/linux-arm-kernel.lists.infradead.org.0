Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DAD7BB8E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 10:25:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grVEZ58tZxEKEXgW+IqqZ0tOBUkuX1fRCCEKPBQI/rU=; b=IOTLyZF2tdKEqA
	ToZkZwPENbhTHUiectc2pSb0WdnBhTY7oF3fxmOOU/n/nkej+5NueIbPIa2HBWH4GTE+teq30d+yK
	eDGhDeSk/O1wN9obhGMZNp48vr1JCAtPc/CNek6D600wvmbcHVO2a32SottoCbzJN5bVjip6Jm+iY
	435MivA4mjuqUEgyrKG8mYZ/00DSLG/U9uSqS5Y7oQhNbqAa6/yg8BiMZ202o+aQpZuDNGZB1AB09
	52J2wjhbTILFuqhvxFi1aPzAIyUXvxiE9Tixy3qha7HpSopOl+CjnYhAf8IiGEGMO6rcsEdvfrwqG
	PHS/htH7kJYLyQXVWWAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsjvo-0006w3-Jq; Wed, 31 Jul 2019 08:25:56 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsjuF-0004lk-Cx
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 08:24:23 +0000
Received: by mail-wr1-x443.google.com with SMTP id n4so68708758wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 01:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FvbjEUb/Th+01Zl6XcdJ8odyub7JsODLUUEoKLKzNZs=;
 b=KfFL/BC5xXufP3lnLyJas5UbmqihmA7JUqE/ABeqHp+2fHzgoTfjS9RR52KjZgfybD
 OWqofiqs+lXpz8e0FIe9QWueOTgbduVw5Tu7tP8cuMt7q1VkNTncx+hrHp0bk3rLNevY
 bdMNp54T7/xGH6YVjA9tk69Nak4tnRzf5LN3TZWpM+rQ+ggpa2/uhsg5ZiXOS8voq1am
 YRaf94BMdbjKllwNF37cCZCid8eMt8jn7R/szwHsN6HzXtGZj4raMFsnW8K2fMyfKg9l
 1gdwmtDgDU6DaWK7EH3XLMPjP3X/ORYHNdbq0XnyeTsQkRB6EbRn6NRBUYcB929zc6XB
 N2cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FvbjEUb/Th+01Zl6XcdJ8odyub7JsODLUUEoKLKzNZs=;
 b=lFKEZR2Jrk6lQcEvky/iccTz33kO0ntCRjg+MrF5AjH9FW+QXE7t1AComjOy1DKK7O
 e1UABBz/9E7YH59orUKwZgy6gGzjLbheUH9hQPUkRUmjq/IVuFrN+NgqBbfvvbqGQ90f
 0Ff3bRAZ4WVO1QbMpLbFXzU447KyGDy79l53qt14HCZZg8A5tmn68Nd/IxAuF16uPey+
 vniYKbHxvXjM4BblbfWUOuv7wsPLPcsWS/tRAiodZK2sPU8pFW6Q3+knlQ6kKFZR7kve
 6mFl8RHYdC1qkhasLtWBIeZlaJV14AZQ/tWSyeRlKqTap6NMQtnoPhJnQnKFVHd5TwId
 jyVA==
X-Gm-Message-State: APjAAAXCuX9I3yhSFPLP3PftZePL9CJH6V6OkYPNotSSibgpVJ3YzgQa
 Ar3KnSTjgZrXhARQmVJiW1JkRg==
X-Google-Smtp-Source: APXvYqx8lMDuI8fETzlBpD+Nb0OwlBL7r+bY0XigWErXCCrG7/5RRdFHxOGqoR3XxYQElGTaiYN9dA==
X-Received: by 2002:adf:f646:: with SMTP id x6mr140810646wrp.18.1564561457832; 
 Wed, 31 Jul 2019 01:24:17 -0700 (PDT)
Received: from localhost.localdomain ([185.49.42.196])
 by smtp.gmail.com with ESMTPSA id o3sm54597664wrs.59.2019.07.31.01.24.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 01:24:17 -0700 (PDT)
From: Carlo Caione <ccaione@baylibre.com>
To: srinivas.kandagatla@linaro.org, khilman@baylibre.com,
 narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
 jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 3/4] arm64: dts: meson: Link nvmem and secure-monitor nodes
Date: Wed, 31 Jul 2019 09:23:38 +0100
Message-Id: <20190731082339.20163-4-ccaione@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731082339.20163-1-ccaione@baylibre.com>
References: <20190731082339.20163-1-ccaione@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_012420_675539_EA876EDA 
X-CRM114-Status: GOOD (  10.72  )
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
Cc: Carlo Caione <ccaione@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The former is going to use the latter to retrieve the efuses data.

Signed-off-by: Carlo Caione <ccaione@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi  | 1 +
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 1 +
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi   | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index 6219337033a0..b8244efb85fa 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -117,6 +117,7 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 		read-only;
+		secure-monitor = <&sm>;
 	};
 
 	psci {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index f8d43e3dcf20..2b07752e034f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -100,6 +100,7 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 		read-only;
+		secure-monitor = <&sm>;
 	};
 
 	psci {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 74d03fc706be..d244d9783718 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -161,6 +161,7 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 		read-only;
+		secure-monitor = <&sm>;
 
 		sn: sn@14 {
 			reg = <0x14 0x10>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
