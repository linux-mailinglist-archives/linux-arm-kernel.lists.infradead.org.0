Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D734D1FF264
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 14:52:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/OKsl2ztGIUlWwyQfhXOU2mkcdo7eb4Yj/BO3u3cP3I=; b=dJ+XaeLQj5EKib
	1M+ox8ZGSF/NPO1sSrRrMcvYwlyJbSjIqpZQzTicZt4KcOM4OF0aYEWecLWXqphIa60PfJlnyvwi4
	nxMJLFnrvcl+S/4PGZknyBJefp/tvZ4OYKty4FdXxnwx3Jbae5qrkJhtRMoeq89K7yL3HkOca4geB
	ckye+vj/JVium1W9mVL+XzbnfTASYubb7eN0Xqw9PmLw0jIdciUBGyQYtg2iz2e+XHdVgW0sXgQZV
	yElgt6VQw4tL608oeLYhIZ9ZuCjmisQL2LM+r+ycgn0K3NpaYWptRy1DJ8MemNo0fgTfmYzXEHIZx
	cAasd9c4m0UQlwhZz4ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlu1R-0000lx-ES; Thu, 18 Jun 2020 12:52:01 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlu1A-0000jF-0v
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 12:51:45 +0000
Received: by mail-wm1-x344.google.com with SMTP id g10so5080242wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 05:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kre93dd6hT4pYBC6xQN9FkazTNYBQtZr78iwLPfwCF4=;
 b=TRVf5p71/Ag4UNdwc/kW3lZlfblIowK80W+zyKByyru7UHXDqLeD7vCHyYGEpt4SE8
 3feY5JsWedJKgdl+5OIez+/8F1tBVDJ/4VA824OzPcsTBPPvCrjYcFFz+5R42CWGMpFk
 mlGZ12sNiwhEH5GEti9o1QKOKAO3W7nFkr8QTy+Z1+eE7pHgMptcgUtDt7tXkhGRvw4n
 cx+fObyf5nAwwcDb3tVugVuQRdrGOCmLMqYP/S8rptL6ZYej0IPNQtAirgnNgm1sqRxL
 vxooeW/Khk5NA3xdrlKD4ZmJ/mz/QX4rgry57toQ8SIDlnksSH7oTPVxq5NIWkRvVkpJ
 4NpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kre93dd6hT4pYBC6xQN9FkazTNYBQtZr78iwLPfwCF4=;
 b=JbSpI8JOFWoeK/ocTfcG+15DJSDCdui7FieYD8VL7lDiM3P9zD2EKNw5IPlLB0YpRk
 OsRifig9UmsD579BylGZVCZRhdTVLMgcH1Qw2O9TP9bkQtgG/9FdjWD9eMJijld8YixV
 FRvimE3puCTHwlCIM5ZyfCOmBhHkuf0Rg8QgBlelhdYw7Ly1dSx8EMsiQn5GXv7eiReY
 h+tDHZST1wkEV5rBBpm4fsCUYozee3FrDa2VNEAIgDuoe1tQIhiqg/AppVzK68KbqrLu
 AGqSK1qVIYvVPfcpgcK8JkfpxMBTTjkXTop7BtK/mE16iLkrniI/buaKogamRa2IH48Q
 nvrg==
X-Gm-Message-State: AOAM531fLVqCDoj6+uAKF06PgyeRc9SxGFl1GGGColfkN8Gp+CPPG5s8
 TKv9FAvXvjZQdc8+emD+5Uy6wQ==
X-Google-Smtp-Source: ABdhPJx5wChPkJh3wqqQH8t9n3fY00xH6TQW/iPEoWFdYFr16TgedzvEFOTdfZ9BL2dZZbmQXlZ/4w==
X-Received: by 2002:a1c:44c3:: with SMTP id r186mr3831425wma.67.1592484702734; 
 Thu, 18 Jun 2020 05:51:42 -0700 (PDT)
Received: from localhost.localdomain (i59F66838.versanet.de. [89.246.104.56])
 by smtp.gmail.com with ESMTPSA id
 v27sm3714151wrv.81.2020.06.18.05.51.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 05:51:41 -0700 (PDT)
From: Drew Fustini <drew@beagleboard.org>
To: Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, devicetree@vger.kernel.org,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Jason Kridner <jkridner@beagleboard.org>,
 Robert Nelson <robertcnelson@gmail.com>
Subject: [PATCH 1/3] ARM: dts: change AM33XX_PADCONF macro separate conf and
 mux
Date: Thu, 18 Jun 2020 14:50:55 +0200
Message-Id: <20200618125057.41252-2-drew@beagleboard.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618125057.41252-1-drew@beagleboard.org>
References: <20200618125057.41252-1-drew@beagleboard.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_055144_067124_F7D2A858 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: 4.2 (++++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (4.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [89.246.104.56 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: Drew Fustini <drew@beagleboard.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

AM33XX_PADCONF macro is modified to keep pin conf and pin mux separate.

This requires #pinctrl-cells = 2 in am33xx-l4.dtsi

pinctrl-single.c but also be changed to support "pinctrl-single,pins"
with 3 arguments (offset, conf, mux)

Signed-off-by: Drew Fustini <drew@beagleboard.org>
---
 include/dt-bindings/pinctrl/omap.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/dt-bindings/pinctrl/omap.h b/include/dt-bindings/pinctrl/omap.h
index 625718042413..a0974923bb1b 100644
--- a/include/dt-bindings/pinctrl/omap.h
+++ b/include/dt-bindings/pinctrl/omap.h
@@ -65,7 +65,7 @@
 #define DM814X_IOPAD(pa, val)		OMAP_IOPAD_OFFSET((pa), 0x0800) (val)
 #define DM816X_IOPAD(pa, val)		OMAP_IOPAD_OFFSET((pa), 0x0800) (val)
 #define AM33XX_IOPAD(pa, val)		OMAP_IOPAD_OFFSET((pa), 0x0800) (val)
-#define AM33XX_PADCONF(pa, dir, mux)	OMAP_IOPAD_OFFSET((pa), 0x0800) ((dir) | (mux))
+#define AM33XX_PADCONF(pa, conf, mux)	(OMAP_IOPAD_OFFSET((pa), 0x0800) (conf) (mux))
 
 /*
  * Macros to allow using the offset from the padconf physical address
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
