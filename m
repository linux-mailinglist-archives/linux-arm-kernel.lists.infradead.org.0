Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1899660803
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:38:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vcCQ4YQItL2W0HrBz0OqtQTMl6nTqH3cHw7MI7mdJN0=; b=B2L4bAUsI7+PsHHssvoV2UUogn
	4fb2UQoT0iZK5oL2y7CG8rLhI3eBLr8qO0HYJCPUUeF3SlEXkMp470iD6EYf+wQObX/2MInqaticB
	HSHfmPWbabEg7cALIBAwtXx3d2vX4M9uPyFe3yx9EilVE35AYJDkoStdRJCQwaCgzRhDxr5gBZx7o
	MIMc92Rw4ZT47nlAUGvHjujQI+VjMQ0xV8b+WzdIrNjtDyqck+CL0L/t3QiXYMvuf1zL8+giN5Qs/
	lBXSFMv8X4IVeTL5VysRa9FNwsyA+0pTZ1Yir5YunKZa9Ta6J7bhzL+qSKeJqpd6UN2DhVGrjLfB6
	+IduNjYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPMP-00007u-3k; Fri, 05 Jul 2019 14:38:49 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPK7-0006Dm-EI
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:36:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3P6E9q98v36hl37kzCzg3YuvBJWw9JlpkNVAvdrhAIQ=; b=l/FDpFjT3FzR6uoylsZAN6HzF
 HDm5U0pfuA0epi698xnBt6G8RPoMKcqvUneuLfMHdjPJzGi6S6zx/PoJ0Wbo1pFH4eYkswLXSrKIT
 mWahwyY4k2N9ikHh5xobxI+zLwJi+lP951SvnX0s6q0QwticZ4WOjAslhVO7uC8pT9dArvcWYr+5n
 A9rj2oiAp0MHokiZbrWy+kVWeGRGEewN9fxs9fSPdM0cxSHBeuu4XeRfXtuk+Bx/iVDNBBIP9UxbK
 BsDoJMDONvQOFW6BjUBtyyqeu1JiDY/pC1/dS9MhZl5cr7yRo4oIEBkvkxX196DbwYW6sR0YlA53r
 4K6lFaX1Q==;
Received: from inva021.nxp.com ([92.121.34.21])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjGPr-0007NC-HB
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 05:05:49 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B19042002AA;
 Fri,  5 Jul 2019 07:05:37 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 340CF20018A;
 Fri,  5 Jul 2019 07:05:25 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id CBCAC402C0;
 Fri,  5 Jul 2019 13:05:11 +0800 (SGT)
From: Anson.Huang@nxp.com
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 mturquette@baylibre.com, sboyd@kernel.org, l.stach@pengutronix.de,
 abel.vesa@nxp.com, andrew.smirnov@gmail.com, angus@akkea.ca,
 ccaione@baylibre.com, agx@sigxcpu.org, leonard.crestez@nxp.com,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Subject: [PATCH 3/6] dt-bindings: thermal: qoriq: Add optional clocks property
Date: Fri,  5 Jul 2019 12:56:09 +0800
Message-Id: <20190705045612.27665-3-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190705045612.27665-1-Anson.Huang@nxp.com>
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_060547_614778_105559AF 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

Some platforms have clock control for TMU, add optional
clocks property to the binding doc.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 Documentation/devicetree/bindings/thermal/qoriq-thermal.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/qoriq-thermal.txt b/Documentation/devicetree/bindings/thermal/qoriq-thermal.txt
index 04cbb90..28f2cba 100644
--- a/Documentation/devicetree/bindings/thermal/qoriq-thermal.txt
+++ b/Documentation/devicetree/bindings/thermal/qoriq-thermal.txt
@@ -23,6 +23,7 @@ Required properties:
 Optional property:
 - little-endian : If present, the TMU registers are little endian. If absent,
 	the default is big endian.
+- clocks : the clock for clocking the TMU silicon.
 
 Example:
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
