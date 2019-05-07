Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B721582C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 05:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lSuFMJmiQRmKxL0PwoAeNDaY9lvnleC3ZEfI0o8Bxr8=; b=uldQa+2TSlDbN+4CtUHY3WLNv8
	n5/W1c6yYgIyIZxfq3cKOvKEEP9DIqYmsEyjkwPlIy1H6iiS6Kpw3V4jnjSElwgTBzunpCrCrgzoe
	2z3HmQwqCT77W9pm9wmkza2K0w8ZEUDWwAGx3Ae1HAM1jjOBDyN9l1TGRjbHxiEMQBqRCqYfqd0aD
	lyOtV9c61gTU1h4AHwuJy9XCzWkeKgnbI6tpCxPzlTmKlsnBVjZjtCUW687Gekx6PorWSRhQP8Su3
	cbR6DTEnwCU5DZSGyVb237hjWapU3yXMhoewmpzqCEL0a+rsb+rTaHq8Q2xWwKIdv+hoDRC10IPpJ
	wOcytyzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNr5a-00056k-BP; Tue, 07 May 2019 03:48:22 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNr5I-0004vx-Na
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:48:06 +0000
Received: by mail-yw1-xc44.google.com with SMTP id b74so12003823ywe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 20:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JB9xVz/YrzLotpPYdOCcxQdkK5eUJ7/QonN2mI374Lo=;
 b=i+U42DYJv6odEmie7vkakFA1c4o8RpnnHx702RbdNsJQGgsV94H/qCLRKNiUOaGtfF
 yHHOxm8h1nCVTBy5ie3Sc+ES0/K8vpMsF0cFvHfTe90od/2CV6qM385fQlVBeFguh2Ro
 n3wX1SkUWqthhCOfKBo5XBmYPKY0LkJ7Fk5MnARvJxq07LCwQvjsLlktsJyrKZN0zyY9
 ybMDmU+gF0Ct8vwx2TjAMmF/S+Rt02ozHRCyQLYkwEkKMomhS/CI4uWE/JlyWjVrx4Me
 hezL0LhUiOFyNIVf+9fpsmk4oKlh+AcgVC6s99A2yAnJsnxdSM750ZrDYLKVpgh1XQKN
 wv1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JB9xVz/YrzLotpPYdOCcxQdkK5eUJ7/QonN2mI374Lo=;
 b=BxCbO1pL5Vb7aoG/AlF/8J7ZMZan4fxqw6pyR8Ep2igQoK2oq9M1LEqESRk4fAnmh9
 lDMEV8ov42E6ay14KPOx1BIdaO2g2Jr9lWfLsJOyru755hHbZIR09j8yBwmMmkOtRxBH
 enVURnkRkb1D4QfulvJQAglhi/X8QQ+A3Oenswb1oJFeQji4J8eYmXAQbk41u9K+s741
 fqTMVQ95gNWTkE/qqjeGTTzGLxaajOG3+zCAyRxrbo+2q7pBOeGfFUyXMSxmXXhODQ2R
 l27ji8ferGxcR5cdwta5JfvERf9xD0+lOoz1NEnBi6fPMA88fUPYfQdwUc8x17SYm09+
 Z39w==
X-Gm-Message-State: APjAAAXg3TWx1TJ1Xe/89QetaVnBFu4DYI1n1TLQNquwisVvkYcA/9DS
 JOHcScDXE3Ru7l2aHM+mCU/Okw==
X-Google-Smtp-Source: APXvYqyXL8fCHRJVcIBmd0HLHV2SPgvN+hRq6OIjqtt7Y+6mHINLdyRuyprhIIYGRdjTGN6PYVgJgw==
X-Received: by 2002:a0d:fec2:: with SMTP id
 o185mr19154336ywf.116.1557200883653; 
 Mon, 06 May 2019 20:48:03 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id a205sm2120383ywc.105.2019.05.06.20.47.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 20:48:02 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 01/17] ARM: dts: hip04: Update coresight bindings for
 replicator
Date: Tue,  7 May 2019 11:47:18 +0800
Message-Id: <20190507034734.20622-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507034734.20622-1-leo.yan@linaro.org>
References: <20190507034734.20622-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_204804_772624_156C3AEC 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Haojian Zhuang <haojian.zhuang@linaro.org>,
 Zhangfei Gao <zhangfei.gao@linaro.org>, Guodong Xu <guodong.xu@linaro.org>,
 Wei Xu <xuwei5@hisilicon.com>, Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch to the new CoreSight static replicator bindings.

Cc: Wei Xu <xuwei5@hisilicon.com>
Cc: Guodong Xu <guodong.xu@linaro.org>
Cc: Zhangfei Gao <zhangfei.gao@linaro.org>
Cc: Haojian Zhuang <haojian.zhuang@linaro.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm/boot/dts/hip04.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/hip04.dtsi b/arch/arm/boot/dts/hip04.dtsi
index 0f917b272ff3..ae0431c39999 100644
--- a/arch/arm/boot/dts/hip04.dtsi
+++ b/arch/arm/boot/dts/hip04.dtsi
@@ -350,7 +350,7 @@
 		/* non-configurable replicators don't show up on the
 		 * AMBA bus.  As such no need to add "arm,primecell".
 		 */
-		compatible = "arm,coresight-replicator";
+		compatible = "arm,coresight-static-replicator";
 
 		out-ports {
 			#address-cells = <1>;
@@ -385,7 +385,7 @@
 		/* non-configurable replicators don't show up on the
 		 * AMBA bus.  As such no need to add "arm,primecell".
 		 */
-		compatible = "arm,coresight-replicator";
+		compatible = "arm,coresight-static-replicator";
 
 		out-ports {
 			#address-cells = <1>;
@@ -420,7 +420,7 @@
 		/* non-configurable replicators don't show up on the
 		 * AMBA bus.  As such no need to add "arm,primecell".
 		 */
-		compatible = "arm,coresight-replicator";
+		compatible = "arm,coresight-static-replicator";
 
 		out-ports {
 			#address-cells = <1>;
@@ -454,7 +454,7 @@
 		/* non-configurable replicators don't show up on the
 		 * AMBA bus.  As such no need to add "arm,primecell".
 		 */
-		compatible = "arm,coresight-replicator";
+		compatible = "arm,coresight-static-replicator";
 
 		out-ports {
 			#address-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
