Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C82E15A105
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 07:06:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9JvH2RE79pyXo2Lz9GqMBGA1YhMNgiVzP3XtivqCex4=; b=jsKPI4CCqfCuP8
	9xx0KHcrlo4ZvyHMryKFXa0urcby9d6wLbfQ58gtE6l6qVE4yI9GW2DG8h7EUkPJX5wURlFAvCX5S
	dsZ32dj0OfQg7oiykKmdwiCDzX+zd3myv3ISgkeFaYM0ySlPU9W5upVuhwt6NZ2GJ4lccYSwL8d6X
	t0AcbdQCRmE/Hqt2GnNwwSqEiAszW7x0HJonGG5bc7D4XLAgyV2WwyUB/PnNh9A06tD/scIS6PwPE
	hezVHTqdatWzpx2Eft2EcBvpN1ECgIEgYg/Hus9XPVyKXGXR/WXPoasvUwajMKpQBbBNgEn8keod4
	88uPMdeMe3gAlFmuFRgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1l9p-0007Zi-LC; Wed, 12 Feb 2020 06:05:57 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1l9g-0007Xx-O3
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 06:05:50 +0000
Received: by mail-pj1-x1043.google.com with SMTP id d5so404119pjz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 22:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Js4SWp4AxGnmgpS0xpb2r+20hjEB6ZJuleDc08nwvzc=;
 b=GidHGpfU+1Q586bqtdp7qWIQdqBWX0kfx/pBWtI1uAajniLiy2nPpkxJ7JjnAweVHg
 ilZrHgwOmIDgE611haEEILEBp4woWOhMLh2UhtBdIbORMMG6SuYfjXk2XjPtQTp5tyr1
 WkA/POXqdq+jTPxtC+KlqAU+qgfuXQsKGJ1cI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Js4SWp4AxGnmgpS0xpb2r+20hjEB6ZJuleDc08nwvzc=;
 b=k4YBPkLK71xIOp2EHRMLGdmDvmeuDB2pjjSy6PXGB5cfES577kBZ0TuvmLcEjaj9Cr
 oRCUOBbQuo1+3kRHB+yi++DNJZxn1RYQ0K9mGcFGEEmyeoHLTMkgRuvj6rHDdsBTeXac
 cjVff/QAQOFwkrwizcysQd4FA2dY73Y4ZKXbp698+3FuSoWNTinUhFvjpZohMvCDhPHz
 YOdWffYH8KcUcOyfjSfkc5kmH+ngv63X1jVL43G0/14zXnFFloFZggQ18AU8C0GyYvJJ
 O6UZXxtkBxC45iJkQmcfq5l6GNyEfZN5YIjQctofOEGYBzRmWvBeCltB2S0evp3kW+Et
 Ahfw==
X-Gm-Message-State: APjAAAWYy2wxTABIxjZXyQCqyflRB9adig4GF4kg/6H00OAl8o8G6Gab
 qjpgy9FkkpypkgQ27vLPMqTFocyoQKouQA==
X-Google-Smtp-Source: APXvYqxpyZsLuZkNUFq1aaY5ImmMD5AfRib3xtsrExdV4p76C8R6dTdGEPgJdoE+a7Q4WF+2gH+auA==
X-Received: by 2002:a17:902:9f88:: with SMTP id
 g8mr22080796plq.100.1581487546921; 
 Tue, 11 Feb 2020 22:05:46 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id d69sm6792163pfd.72.2020.02.11.22.05.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 22:05:46 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: mt8173: add arm,no-tick-in-suspend in timer
Date: Wed, 12 Feb 2020 14:05:37 +0800
Message-Id: <20200212060536.156890-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_220548_808958_4B8E84A5 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arch timer stops during system suspend. Add arm,no-tick-in-suspend
property in timer.

This is a follow up for d8ec7595a013
("clocksource/drivers/arm_arch_timer: Don't assume clock runs in
suspend")

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 8b4e806d5119..1a9ad90bd7a6 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -331,6 +331,7 @@ timer {
 			      (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
 			     <GIC_PPI 10
 			      (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
+		arm,no-tick-in-suspend;
 	};
 
 	soc {
-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
