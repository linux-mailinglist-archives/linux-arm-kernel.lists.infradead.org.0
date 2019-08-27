Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4D59E548
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 12:04:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qo/AW31yGAvzOCwmmcwoY725PgM6q7dy8wZanrUY7pc=; b=AzsCVTDQVYasOO
	c+Kq56Lio5Tr+tkMyObmTY7O3oR3O/Y0oJOUfIWHKMTCGNcEmIHy62z6vVomvlHmY8XKM15WRguSe
	5hU7NGKiQatHLEwhFCVSNYYXgvF2UDG6f/uafOB0eL8Wm+VJVVSQGZ7iAXWcEMN9W05J5Ed629uXK
	XrRNaqEB/QYWKwLHFw3+EJ7ptJRV1aN/QLfji/XVU3U8KkcyxomReYl6lDxqpO4Uj9GBmAvcogMgE
	hX6nlkgvmRbZFGd1vgfFOAm1QDDJe8+8nE7SqnXn5wET8ga4+EDqfsp9NfqEPwegS7gNMaMnhkjxz
	E1M0rQgL66Po0dchrLfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2YKu-0005CO-HQ; Tue, 27 Aug 2019 10:04:24 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2YJl-0004UI-HP
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 10:03:15 +0000
Received: by mail-wr1-x443.google.com with SMTP id s18so18183805wrn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 03:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nFvBQ+ASUXIFlVmkozv/yv2UYrSxjvTzp86D19iRVSk=;
 b=OQfE/BrI+i52OcYL2jZ5opgZ0p8C159XYYM9sMXYdxUyYIUr4nHp7lAp2Uq+YzYw9R
 b1vNxfP8QjKQa0gI0xuAPADk1vdLA4HHznp91WI/dU353VlSQ/CFNaoINzl7neegNX17
 V6503t8RaAyLtaN2Xhm9izG7Jo6eRliH6scgAp4FmvrA0RApgWDDy9a/aMC4QYXGDwL1
 nFK3MoD2M+sgJU8Baq+FZnuHPoDT6xDLpJawv6HXxby0g2Yj/EAGsOu2L4MU3Lx3Mcrk
 fbF0Arms9OxgmGNeYI6RSJuJ9alDV5PX/v0mOeqw6R6e0DoLTUFEd4s05vzysrR00ZEH
 JYnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nFvBQ+ASUXIFlVmkozv/yv2UYrSxjvTzp86D19iRVSk=;
 b=qlZVfGq05S5Fk4Mg1h93p8k6bgKlxxtN+ldrRom/IPBac7w3XZfWCR4VosWPNqSEEG
 68e9Pw4b3ICY+/OpkZ4NCUONwNuzXw34PW4X28xs68MS0IqQxpSRbfgwObKYp/Xrmw2P
 GeyvI0gyLijocYrl2UNaDWx6+86HpbyfGdGc+pr2/dqyZM7LTfvK1r2OPQ1r8MZPfVPT
 tG/DjJei1j14rGAENyujvIuJ5lOAvpeuSocCwqCJFPh+nR752JYsVh46H3tLVvwBLu9V
 koAz1c3uxAfBFPbIIATh8BvG3HaPa100fPl0Kf4PNyzNZ4WHyXEvYUDJ/SW3h009n7/Z
 yr3A==
X-Gm-Message-State: APjAAAULkZnGpT3MNyhplfKQ3NvtgeNJoXYpARyj4Q+wOz1M63A/BbWD
 iqwH4DCrIOlx3GrvPHQZuzQRQQ==
X-Google-Smtp-Source: APXvYqyXg1CwX3b4xu5v1NJTgayfPDThhDxBvEtvylLfIoV3nJiJJMzI9qbPJJaPyUyDDamtHKAzAA==
X-Received: by 2002:adf:9484:: with SMTP id 4mr27109881wrr.14.1566900192197;
 Tue, 27 Aug 2019 03:03:12 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o25sm1816289wmc.36.2019.08.27.03.03.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 03:03:11 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 2/3] arm64: dts: meson-sm1: specify suspend OPP
Date: Tue, 27 Aug 2019 12:03:06 +0200
Message-Id: <20190827100307.21661-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190827100307.21661-1-narmstrong@baylibre.com>
References: <20190827100307.21661-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_030313_641836_5D3625EC 
X-CRM114-Status: GOOD (  10.90  )
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tag the 1,2GHz OPP as suspend OPP to be set before going in suspend mode.

It has been reported that using various OPPs can lead to error or
resume with a different OPP from the ROM, thus use this safe OPP as
it is the default OPP used by the BL2 boot firmware.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
index e4830cbf7ed5..32e2de2614b1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
@@ -82,6 +82,7 @@
 		opp-1200000000 {
 			opp-hz = /bits/ 64 <1200000000>;
 			opp-microvolt = <780000>;
+			opp-suspend;
 		};
 
 		opp-1404000000 {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
