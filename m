Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F13D01504AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 11:55:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HX2b5cwU63UdxBn51biy7vy4XmNDJRIYhdTJ07mZLQ=; b=rhXkIif6pqtlc7
	gRz/m9yqvYHa161f92xAGEm4X9fe7KGgNOG6zbOUJShUa+LJtLzwABgRXgzboRgdTF/C8+h34PPbb
	mTZzL5iZQNI0C8F4D92+4zgmsKNUCmRg/FHf8P8LGn5+04Ff4NHEf43jucGNt3961I3LSn9lrVnwX
	/AjKB2BU771JmpDBHokUa2HhBm6nf7gCWJ5B5M2RmSjjqtzimyYyuZaHaHUlHS6tml6QWV9znqb4R
	bROMGPdG1klg4C2mW6NsqfaSwTo1KktKhYMas1J7RX8BYiz56NVt0VOzp1Q8AnlpxGjWs0sfp4efo
	Ne2mwFI6WyRuo/6yrw2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyZNw-0007B9-Be; Mon, 03 Feb 2020 10:55:20 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyZNN-0005wF-OR
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 10:54:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id j4so7628443pgi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 02:54:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3xwqth0j0JRZwYTHk1uzdteKd9U7z+7i4HoTqeFc82U=;
 b=KcF50IO/E4F3bV6HRoxGXWkocwgYfL4QHDNpJmohTWE7Mt/7DBO48kGOO4x1nMzBhz
 98VjsZNOxigAaq8KC68jlonM1+3zNOLMUu+6sJV4YMF/TBmKuIufMmi0FtKp4LG5P+Er
 NnIDgXFEMqPXY3DorDvWeMroZ7FFro+6qfhMY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3xwqth0j0JRZwYTHk1uzdteKd9U7z+7i4HoTqeFc82U=;
 b=M0xXmwKNL1Ym5DlDggPhzMFg374jWIMUHneC63CA+3MrKL0K80VUVZxWPThtSK0xU3
 B3lghD1Gb5OzPz4a9v9Zspla1uUInFr3QIiL9iyoi+NKN+p5QdCkQ7FU10DGdvtH97n3
 dgtlLmjgonE3ya/QEaWXOkGYeRyQB2pom6u0cST6z8VDHUgvUse64mML8yxdCjMAU5xQ
 ubReQxJ3/+3pMtE03B/RE7mEMfnqtTR5SD4AWOTzEoveKhaX0qxMuJG5eSpzrisk0BqW
 5Waie50qns5/8QwxQN8xmKMPFzeH5V+jPIwDpkuwbJnT1ypTXB9gtQbclktSvTUsgPJv
 E5PQ==
X-Gm-Message-State: APjAAAXE2jsY1rcc+70yNKCPGAz4ZhvV9dua3v/pixArryBpz7ra66G3
 uknYxN3yZ3NnTrUQcDLAcUUa0M+ZRHiF0A==
X-Google-Smtp-Source: APXvYqxeDCmLp2xff3fH5hTl0Vp+K0sL/O47c03M7tcS/eAYUTtC+GbrGGzgODOg24pRPZgw8vEESQ==
X-Received: by 2002:a62:3304:: with SMTP id z4mr23056111pfz.79.1580727284802; 
 Mon, 03 Feb 2020 02:54:44 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id 11sm20923835pfz.25.2020.02.03.02.54.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 02:54:44 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 2/3] arm64: dts: mt8173: add uart aliases
Date: Mon,  3 Feb 2020 18:53:48 +0800
Message-Id: <20200203105345.118294-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
In-Reply-To: <20200203105345.118294-1-hsinyi@chromium.org>
References: <20200203105345.118294-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_025445_824048_3C9A91D7 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add serial as uart aliases in mt8173.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 8b4e806d5119..790cd64aa447 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -50,6 +50,10 @@ aliases {
 		mdp_wdma0 = &mdp_wdma0;
 		mdp_wrot0 = &mdp_wrot0;
 		mdp_wrot1 = &mdp_wrot1;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
 	};
 
 	cluster0_opp: opp_table0 {
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
