Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A02B72AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 07:30:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6EheBL1+eWtSAv8ZIDq7WGiMmExRF2ksOQjMh2N8bxA=; b=Iu4yV1pH7/yCow
	Wy1okCmE7yrcEI+V6MK7BwU/AVnMg+WEqptJVvzcS8divG4aHa6wP9riQQwCMkjmC6F70yOj/Q8bm
	2oYybQQhbIRhRKEe8AZFd0vP38tYQX+OFNZbRcckjm/hOw9v8fjxMiEGVVYiM+mHonWbrODusf3n0
	bUMONP1eaJQWPVjWFYVF/b67gyY5G0XglSkZ+L0Fy1QE1Y8BErNMI0MUmzUjXkF/b76xgd5iOsqYE
	E5JAygRUSdEuxldMQTZrXnoc0M18WYKwpzU3XpzA7uW5t2AF9iRkfM2/09SdcEezF6tjAhyfRQ7Ux
	UXLWhEgK+4nJ5QTEWi7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAp10-0005tP-JT; Thu, 19 Sep 2019 05:30:02 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAozw-00056f-Gc
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 05:28:58 +0000
Received: by mail-pl1-x643.google.com with SMTP id d22so1050634pll.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 22:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HFlAwaqhm8dlhIw/iDdHiwYstLYBPJtkXdnpZsgY5Eo=;
 b=RRpsPIuiBJnuKBdUY6V0x4+hBkYZMrgBDYGWMfKllUbD982ZH9yAwmJU5e8dPh+Uo3
 po9p2/lHZvJZjkCmrAoFuvCK/1Z8l6yT4w1I5aU55mAdNZEmZ0SFxubbu6dx/X/R23Kq
 WROHdjAFrQuwa3ZShhcbJUburskKc0V/JS6q4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HFlAwaqhm8dlhIw/iDdHiwYstLYBPJtkXdnpZsgY5Eo=;
 b=oUQbuQD2Vj1u7rwVaZKMcNJU3oy9cybrpNUFh4nIdeiw0Uz6brKP0qSAepoN0AOgh0
 cGRT7feyvXonOTV6iQfSyG166qG3ZWlvZgQzm6zJeneXROkk0TAEH0nxfM1uZlpsXKmf
 M+1qnBu2fuzcBjW5IXYg8vwCubIqu/wLNd/Z/K2/uWxRFILlNkWAOCn8t5dc8zBsXV4I
 hREM5fsVQQqImJ6/U5qHECQt+CU+t1NcsbrRyzuMGwQFYGPhXesDUais31Q3wg8IgCGs
 8VrGrcgrY+5aS1/XAzKtFJxzwf/+0wSxRkxA3SwBuF4TztsS3cqAWPKb+9EY6rqy9eue
 oW5g==
X-Gm-Message-State: APjAAAXJihJpwp2VQvSZktnMmnIQZRAD2zXLcCqOo6KNKpvCJaVCH1Me
 ZmO+sqWELYWzUvX84dsFtzZ0ug==
X-Google-Smtp-Source: APXvYqxbOgq1HDVr1LGevm/V0Fyf1WFz9mP7w7bIeVUZhpKQfytlplyhSQTNZCS1BhH/JexW+9Zemw==
X-Received: by 2002:a17:902:9896:: with SMTP id
 s22mr7836198plp.207.1568870935949; 
 Wed, 18 Sep 2019 22:28:55 -0700 (PDT)
Received: from localhost.localdomain ([49.206.200.127])
 by smtp.gmail.com with ESMTPSA id z20sm5051930pjn.12.2019.09.18.22.28.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 22:28:55 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
 Akash Gajjar <akash@openedev.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 3/6] arm64: dts: rockchip: Use libretech model,
 compatible for ROC-PC
Date: Thu, 19 Sep 2019 10:58:19 +0530
Message-Id: <20190919052822.10403-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190919052822.10403-1-jagan@amarulasolutions.com>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_222856_771167_A505F2D0 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Da Xue <da@lessconfused.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Though the ROC-PC is manufactured by firefly, it is co-designed
by libretch like other Libretech computer boards from allwinner,
amlogic does.

So, it is always meaningful to keep maintain those vendors who
are part of design participation so-that the linux mainline
code will expose outside world who are the makers of such
hardware prototypes.

So,
- append the compatible to "libretech,roc-rk3399-pc" and
- update the model to "Libre Computer Board ROC-RK3399-PC"
  like other libretech computer boards does.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
index c53f3d571620..e09bcbdd92f5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
@@ -9,8 +9,8 @@
 #include "rk3399-opp.dtsi"
 
 / {
-	model = "Firefly ROC-RK3399-PC Board";
-	compatible = "firefly,roc-rk3399-pc", "rockchip,rk3399";
+	model = "Libre Computer Board ROC-RK3399-PC";
+	compatible = "libretech,roc-rk3399-pc", "firefly,roc-rk3399-pc", "rockchip,rk3399";
 
 	chosen {
 		stdout-path = "serial2:1500000n8";
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
