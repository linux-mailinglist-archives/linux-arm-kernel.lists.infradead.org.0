Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A11CF97694
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 12:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+ZPgaTpgoLoAEHG/g3fVyJOFsxnUovXCN8by5kOibm8=; b=EP89k+zlmY4D/i
	5xP4cK4bI8hvrR8QS21Sx7ekG5uYz5cGtBV0uBqFECxgQSs+of+3cqr8xWQgcd3MrSn/ktY1s4ysV
	gfvuZdiOqKi9BApnsiVTMHKvjCk0K6OJK9MzGH3MWjy2g1Bop04xxU0izBIEKmJtxR5pPt7G9oWSZ
	RKdMkt8V4U/RoL613EFdlMHH7HKi9v0AVVlPe5XTw74+FFCF4/DqyIA5OB7UZJOkEfdyCJgjzkl8n
	pE0T8cUA6lOb3rUdSivt8jDgLxq2gDdXPlebIryXYbGYjSuh7QEfZK3L/UOzpeI2VpRjDBGfctya6
	SByDdqNZv9SPwrpAo6dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0NQb-0004VK-Sg; Wed, 21 Aug 2019 10:01:18 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0NQM-0004Ud-Ar
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 10:01:04 +0000
Received: by mail-lf1-x143.google.com with SMTP id h28so1347333lfj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 03:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HUqpuade/TBzNssDqmVXtyNbPUXQZyPslIJ98kNwIkM=;
 b=KwlbqzcvanPeS8wGt8wcOog9vOwzAnL7M25ktPMSHMW/ngJVQkkIpfHb185asSVfpb
 FmWluLfcvwij0OB8hZTrBlQhqaM31ITNSe+4BpuxtbNc7jUgnS7Tgg/Dr0rkdsea1mx9
 bjEKW7jrm/m5YbdRgyJlMWQwHrAbsyyVF0QHInA0F+RPFgk6acunk7ZdFLomHLZWAYKs
 lBQlsMIgWvgwAKo2GrscbRg9QiRTqKmDJpVwK6pIQN/zCFhVU39Tu14aOpDk2LB1YuV0
 /5xELe0rChoQAW5s4+NVvL2Uh+Hiii5kMBEZoWpQZcMsgYBwPui6EMvcvpEFtySaGEfT
 4EVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HUqpuade/TBzNssDqmVXtyNbPUXQZyPslIJ98kNwIkM=;
 b=kCHBkPxX4fO0iwXbLznXE7oHb6yM1iyONDm+UIsdy8Ot6bnKC+q9ynHMyLsDvKDtMC
 6w6Ky3gCkdKmVUjy0RhdiayYFfE/L0rxXM7RGKofjgovS0UuJ/iupKImcIjZS8KgIzKb
 MqX0Kg5QfDrXwQb6mxJnss+hmDiwCTsqzgz4mZNOe34hsEtStMUcGRnOo+9ptOyCTFMD
 uw0aBkTGF85/wo1GZ5JdxIT6oHnO0CAr9LFJTWk3aRI3mqwXaprZH8JTDYJqHxSoVu8Z
 wyvw87fQ6KUfh1lEqp/Y9QINrTOkLNtdLdTeL5Li7GNdFavYwjBhTlSH0WINhPfoX5Gv
 8p3Q==
X-Gm-Message-State: APjAAAWyzFvK1LvB3Oif76s1/UDSktFEqbCRhJBFBMn9K9IC9NlBIZ4w
 mFRtnqTbM6IUflyZ+Mjik+PbmKfh9Qg=
X-Google-Smtp-Source: APXvYqywA4eSord2Ybb55unwz4P4T7443bfaJTl+kznf3EpZI9GhHNk1Ky3+S5CF4Yr4lqfe9ctybA==
X-Received: by 2002:ac2:5c1d:: with SMTP id r29mr4189588lfp.72.1566381656508; 
 Wed, 21 Aug 2019 03:00:56 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id y66sm3225895lje.61.2019.08.21.03.00.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 03:00:55 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: ux500: Drop TV-out muxgroup on HREFs
Date: Wed, 21 Aug 2019 12:00:53 +0200
Message-Id: <20190821100053.10031-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_030102_380319_AB96393E 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The reference designs are not using TV-out so let's
drop that mux group from this file.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/ste-href-family-pinctrl.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/ste-href-family-pinctrl.dtsi b/arch/arm/boot/dts/ste-href-family-pinctrl.dtsi
index 86621196abda..2c382d274ff6 100644
--- a/arch/arm/boot/dts/ste-href-family-pinctrl.dtsi
+++ b/arch/arm/boot/dts/ste-href-family-pinctrl.dtsi
@@ -607,7 +607,6 @@
 						groups =
 						"lcdvsi0_a_1", /* VSI0 for LCD */
 						"lcd_d0_d7_a_1", /* Data lines */
-						"lcd_d8_d11_a_1", /* TV-out */
 						"lcdvsi1_a_1"; /* VSI1 for HDMI */
 					};
 					default_mux2 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
