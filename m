Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA72C1B6EC0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 09:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TZoj11wXjR22RRK4JAYCaKh94H4DYnAvxl5Cm1ewxFs=; b=X2OF1NZqxc+UjD
	FSQB1t9WVcnyncYwper4QJiGQsG/eWQGui3X8cy05i4lPiz/s+3N6gAXQ1T1ipJ5tM/7lWx1XD1ij
	JnFgqbAtme0GfCasDyESQHUszEh9rTS8Wd8aac8EL+UNCKEqDOImH4EK2du0B3L16uBTTLHqgxcsR
	VZDoUK8aJDANW080Bbu/QzXxhb7RfBfuyBo9JmEqLBU5awmm4SOd8ZLASfbn+pQAk74cWWIFeCEHV
	QwA7Vu4rFqzPfa9ocgxpq7YAAU4IecMFbhLLTLhN4EO8aWQnFLhUhY8sqNH3KWgr4QDegThqfm2AR
	AkgSJ/G8G6qlxBriY5Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRsZa-0008Oa-KO; Fri, 24 Apr 2020 07:16:30 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRsZK-0008MR-F1; Fri, 24 Apr 2020 07:16:15 +0000
X-UUID: 5b4e72c253c541f6bfc593902e797f2c-20200423
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=e4Gfsp6Fj3yVSLCW8Oewrus2aSGsU6oP2lyI8Cpz4WE=; 
 b=EoqGL+kuEKofpeohP0cMFPeCWmj64VZWeq3EdEBxm0EVGV8kpuYR7IiPz7S55b9t1Y0yNOWozKwkcTOhgCGXT33F1ipIYPxc0+Nsdq67lJ02BBepx780aTmToI/cRP+CUX+8HY1qX6FtNEZeIitGAW1fYV8vUGL+CaueswgsiDA=;
X-UUID: 5b4e72c253c541f6bfc593902e797f2c-20200423
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1643478204; Thu, 23 Apr 2020 23:15:56 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 24 Apr 2020 00:16:04 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 24 Apr 2020 15:16:05 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 24 Apr 2020 15:16:03 +0800
From: Michael Kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>, <linux-pm@vger.kernel.org>,
 <srv_heupstream@mediatek.com>
Subject: [PATCH] thermal: power_allocate: add upper and lower limits
Date: Fri, 24 Apr 2020 15:16:01 +0800
Message-ID: <20200424071601.2636-1-michael.kao@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_001614_512963_6FA013DE 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Michael Kao <michael.kao@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The upper and lower limits of thermal throttle state in the
device tree do not apply to the power_allocate governor.
Add the upper and lower limits to the power_allocate governor.

Signed-off-by: Michael Kao <michael.kao@mediatek.com>
---
 drivers/thermal/thermal_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/thermal/thermal_core.c b/drivers/thermal/thermal_core.c
index 9a321dc548c8..f6feed2265bd 100644
--- a/drivers/thermal/thermal_core.c
+++ b/drivers/thermal/thermal_core.c
@@ -598,7 +598,7 @@ int power_actor_set_power(struct thermal_cooling_device *cdev,
 	if (ret)
 		return ret;
 
-	instance->target = state;
+	instance->target = clamp_val(state, instance->lower, instance->upper);
 	mutex_lock(&cdev->lock);
 	cdev->updated = false;
 	mutex_unlock(&cdev->lock);
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
