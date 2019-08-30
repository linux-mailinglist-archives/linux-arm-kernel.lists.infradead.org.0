Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34998A352E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 12:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=st5TSaXXJBVBTeUbDG6i/ubM5V1XVbdIYG7INyy3E0Q=; b=kluvLLrQqQkivY
	vQjXg5GXqF6FkUqYwpIJwq6FNWdreFDO1vZIb7Er/mWudgrd7YPpMxafF62FGsuC0ee/1ysxwFTmF
	E5gtZOtxZhG3lINy99ur1UWnkq+fWuYveMQzw6RrzmhOeeSEvWoEtXVBfUKzE+h86nJOiJm+8DmzC
	DLyNod6+JhmS0nflPvsGaWo9JsQysD3ATrbqkZ3qfe0gNYjDwsEAQywkIYE7wtnF5cSCg/Wh0Amlj
	EadRGgypaNMlBDxfBnCH2D7AogFUL3wRzTcKdCDpFGaFgOk5FiNLkxqPrLuqZCjc5ES3Z+PeUHB6B
	NZLvTk74XcLJHeaL5uIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3eQ6-0003Se-Fv; Fri, 30 Aug 2019 10:46:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3ePK-0002fN-HY
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 10:45:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CCC931597;
 Fri, 30 Aug 2019 03:45:29 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BD0DA3F718;
 Fri, 30 Aug 2019 03:45:28 -0700 (PDT)
From: Guillaume Gardet <guillaume.gardet@arm.com>
To: linux-samsung-soc@vger.kernel.org
Subject: [PATCH V3 4/5] arm: dts: exynos: arndale: Enable GPU/Mali T604 node
Date: Fri, 30 Aug 2019 12:45:01 +0200
Message-Id: <20190830104502.7128-5-guillaume.gardet@arm.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190830104502.7128-1-guillaume.gardet@arm.com>
References: <20190725083433.6505-1-guillaume.gardet@arm.com>
 <20190830104502.7128-1-guillaume.gardet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_034530_621279_46A9684E 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Guillaume Gardet <guillaume.gardet@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tested with kmscube and some glmark2* tests on arndale board.

Signed-off-by: Guillaume Gardet <guillaume.gardet@arm.com>

Cc: Kukjin Kim <kgene@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org
---
V3 changes:
  * new file

 arch/arm/boot/dts/exynos5250-arndale.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5250-arndale.dts b/arch/arm/boot/dts/exynos5250-arndale.dts
index dc6fa6fe83f1..cf5a758f1927 100644
--- a/arch/arm/boot/dts/exynos5250-arndale.dts
+++ b/arch/arm/boot/dts/exynos5250-arndale.dts
@@ -543,6 +543,11 @@
 	status = "okay";
 };
 
+&mali {
+	mali-supply = <&buck4_reg>;
+	status = "okay";
+};
+
 &mixer {
 	status = "okay";
 };
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
