Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFD91F6DC5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 21:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=idfyTCRieS/QWN3EDtPYStMjjnKTUexwFGypU8ghh1M=; b=PAgNKSmS0P2u+T
	FfEMukoCFrgs98ufMYWyd0fZ3oXLUz+mS2XWO3HZjL3c/ZtdC34KBhZVIEWmv413InWM1OVSJHgdc
	to4jA8+GjqCQEU1v6VceeQX/CNIc+o6lBZrTdfH5ApcBx1TcuUS/2thBIsxOHWaZmwVLCgDl8Jfw9
	85JvxpVlEfB8ldUPVsNwH9P3ES4vKB1kUEYndZKDFF8dOfnXP5Ke68a5GSCwkXfwhzaExFQ7eoxpe
	H28V02UrgzZWD4zRD0yW8iCVq4QPA9esSlIN22wFXxVm/iGJ+rVe6xdGzDsFbzj8bcpbZTYp8ikR3
	TwJa8vkJo/KoSJNEQdBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjSbC-0002yA-VZ; Thu, 11 Jun 2020 19:10:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjSam-0002rB-Jr
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 19:10:26 +0000
Received: by mail-wr1-x441.google.com with SMTP id p5so7281465wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 12:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q5/60NnfrGkD5RjdlG6VPL2HpQFqn6ElILYYQOhG/ik=;
 b=OI+c3pe8tCATJidOZYVj/M5eMyGCjEW9o7DXpeuxoO+LfLOVHBk0iO64NHk88wGv80
 vJSEDPENCVw4XPRiuvn12LgZsdWcQPBzFhQYmRqdEMF7bHpnVoC0RYONexOBolU15VRZ
 BGuF35kpnxQ5s98wed/sTuvzBm8LGghhjZKKZza8zSU7EcgvY8zeCFy3vv1zoigYlXr7
 qr6DI9I6s47/gaG8RCtffKb67FdIvoAMZJ4OuPLw8oTE5Wqjz8LGGxESYiRxzc9Rp7LE
 JJFKDmE6/gcurTECCWMDtfQ7xbYAvwvQFP+FOzVuzRsF/6KD+wsu1+EJWQGxp+JNLjNj
 HiPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q5/60NnfrGkD5RjdlG6VPL2HpQFqn6ElILYYQOhG/ik=;
 b=fIKmMZ1ADW0kr0Wn+ccfTlL3nfCq9Uaqqx6vctEEW5WAxL8yJDVmI9lmIKFYl6E4qr
 NZWIkYc2nzqvwSqkNT/1bR/MvvgBAkMVfG36tumW6KiKzC0bAIcCT9tjhVRBIBPblLfB
 c+h/dInkSVT0AOXq0q3iJaCHmBnbQgFdKQg+iqPZeC3GGIArYgA6jgGYjPCNoStI0d00
 r7/hEkr6R7A7hrd4unTYPl/bgIePx42uvdTxF0SJ6TChbJ+vlxfcNs2cSptwvraOucG3
 LGYXZZH6y0gFoRt5GzrwhqX8yIyxCBjwt+uy2lxKmCFBmI72kM+qYWdhfW+NrIJz098N
 kwBQ==
X-Gm-Message-State: AOAM531xvo0TBw+Fa/gT59qn52qV3bPXJnK3mcO5eudMoPaYCut3R5bO
 bdT+MurX/hd0cdgApfafeYsfBQ==
X-Google-Smtp-Source: ABdhPJxPdpRqs3Z3R9eSmhsxRtSWyqZRQv0jObAHKwrdvlGfgetkDOMRDUOY18wnspGYODTw1wFMOw==
X-Received: by 2002:adf:e381:: with SMTP id e1mr10471095wrm.320.1591902623017; 
 Thu, 11 Jun 2020 12:10:23 -0700 (PDT)
Received: from localhost.localdomain ([2.27.167.101])
 by smtp.gmail.com with ESMTPSA id 128sm5658097wme.39.2020.06.11.12.10.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 12:10:22 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: andy.shevchenko@gmail.com, michael@walle.cc, robh+dt@kernel.org,
 broonie@kernel.org, devicetree@vger.kernel.org, linus.walleij@linaro.org,
 linux@roeck-us.net, andriy.shevchenko@linux.intel.com,
 robin.murphy@arm.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 3/3] mfd: core: Add OF_MFD_CELL_REG() helper
Date: Thu, 11 Jun 2020 20:10:02 +0100
Message-Id: <20200611191002.2256570-3-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200611191002.2256570-1-lee.jones@linaro.org>
References: <20200611191002.2256570-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_121024_668931_12A0E0BC 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Extend current list of helpers to provide support for parent drivers
wishing to match specific child devices to particular OF nodes.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 include/linux/mfd/core.h | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
index ae1c6f90388ba..7ce1de99cd8b8 100644
--- a/include/linux/mfd/core.h
+++ b/include/linux/mfd/core.h
@@ -14,7 +14,7 @@
 
 #define MFD_RES_SIZE(arr) (sizeof(arr) / sizeof(struct resource))
 
-#define MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, _match)\
+#define MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, _of_reg, _use_of_reg,_match) \
 	{								\
 		.name = (_name),					\
 		.resources = (_res),					\
@@ -22,24 +22,29 @@
 		.platform_data = (_pdata),				\
 		.pdata_size = (_pdsize),				\
 		.of_compatible = (_compat),				\
+		.of_reg = (_of_reg),					\
+		.use_of_reg = (_use_of_reg),				\
 		.acpi_match = (_match),					\
 		.id = (_id),						\
 	}
 
+#define OF_MFD_CELL_REG(_name, _res, _pdata, _pdsize,_id, _compat, _of_reg) \
+	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, _of_reg, true, NULL)
+
 #define OF_MFD_CELL(_name, _res, _pdata, _pdsize,_id, _compat) \
-	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, NULL)
+	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, 0, false, NULL)
 
 #define ACPI_MFD_CELL(_name, _res, _pdata, _pdsize, _id, _match) \
-	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, _match)
+	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, 0, false, _match)
 
 #define MFD_CELL_BASIC(_name, _res, _pdata, _pdsize, _id) \
-	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, NULL)
+	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, 0, false, NULL)
 
 #define MFD_CELL_RES(_name, _res) \
-	MFD_CELL_ALL(_name, _res, NULL, 0, 0, NULL, NULL)
+	MFD_CELL_ALL(_name, _res, NULL, 0, 0, NULL, 0, false, NULL)
 
 #define MFD_CELL_NAME(_name) \
-	MFD_CELL_ALL(_name, NULL, NULL, 0, 0, NULL, NULL)
+	MFD_CELL_ALL(_name, NULL, NULL, 0, 0, NULL, 0, false, NULL)
 
 struct irq_domain;
 struct property_entry;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
