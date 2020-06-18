Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD381FF273
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 14:52:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0dm/b+MJIDP7alaxI+p/0TBCv/HalcVomG3+lIr2Ro=; b=gFp+EdTSpCgOZY
	dvooJhIyxrnAcPqHK7767Xf234Ob9+5u2gvwNGi9kznnMj1Xamk1U1XkLnQfKBs7T2suSFz9Hw6tT
	JXh5J5fwHF30AhNdNNK1P5zTOMkHWxyzzBvW19ImpWO1k2cse5r4etjbZnU2fdDNX7etboW3q9gb7
	vv22G1ueUx00m6v5vxl55XtcVFJkj1ntVrZW/EubcwSZ3nXjq+vDCtQd2wTpIo5kDcYmuX4zbMHxI
	wFTdyWVTQyUKbnrF8ceo8RmeVJJT6z290RSBW64HHVZtwKftJ6tXok9uO5HrHpBJx0+6PIV3vzxiF
	ZkVH29CMFX6eS2nDJ8qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlu24-0001KW-EG; Thu, 18 Jun 2020 12:52:40 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlu1K-0000rK-1h
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 12:51:57 +0000
Received: by mail-wm1-x342.google.com with SMTP id y20so5529214wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 05:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+0u89dpmgvQy4plYwwslEmSBiru+bR25mmVExT9ZnYw=;
 b=TiuuX/SdtqRxO1POZ1JiW5Hy2GFaKV93vyNQMVQOy5teZ9AgCJLGPSSnXyOmCDBEUz
 bs6Q6tC8Q8QCv/hVDRI53LLBfuHJ/0nBs/NAsvTv4lmXuJhKByZy1gzQS8bGO4fwryaA
 lHQYWy7p59e61ydNP0aYDMdjz2DklMtM/+9QBq7DYEpM9dsABml7vbZG10g//W1+YA1A
 CxneXxP6sZGKnfhQIs+3Ua56kKThzmDJwIyivVu20LsjbQG6TnR3my9Jq+fI4SAKbUjW
 C5XM251MVSf5ukXeYVaYERqX/D4WohOdPlT2zv+ly2ORU4yqREvY0CWUcgF+yV6Q1wgM
 jEQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+0u89dpmgvQy4plYwwslEmSBiru+bR25mmVExT9ZnYw=;
 b=er4l62v9hOioBrPDpu1XNfQB7//MHyfbPJY0A6MMJ9diOeUREkL9bzpXKbdZDpVWSJ
 yI6rBuypcyDfsl+FfSgDwknc2DVztbjaSm3c6OFAjTIck9DNL6CsNQLLOa1T2gbZfDwr
 CVDWgzwyEIvg0NvxuCSOhE7MeIfy26qe3fpW8BJ7TEcUOHoLR1brvdkx9SxH45xqf5r0
 XrGAaFrWZ/MMsuOKuYV4o1p5LnCIqWXV6MIF+2DdA54U7S9wk1ES3ebyzWCJrl+HtkDg
 nKG1vSbPjUlxbd7gLnYzSSIs7XKVa2SlkliHSLuDICgUZrlpKxRrrskXhUW4seg+GhDa
 B1fw==
X-Gm-Message-State: AOAM5327eq8emf0jQeFLLPXcEyJwfgtilS201OM732uvFIdWhFmxxqPL
 sEcXrUUwRPWpEio+AnXDDCB5Pw==
X-Google-Smtp-Source: ABdhPJzZfibMUZiL+eVz9fIQNUlgeCf8L/u/t5OdsJBEcZqoBou07CPY4UPJL2CC9XruVrC+oYqBvg==
X-Received: by 2002:a1c:ddc1:: with SMTP id u184mr3705202wmg.115.1592484712360; 
 Thu, 18 Jun 2020 05:51:52 -0700 (PDT)
Received: from localhost.localdomain (i59F66838.versanet.de. [89.246.104.56])
 by smtp.gmail.com with ESMTPSA id
 v27sm3714151wrv.81.2020.06.18.05.51.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 05:51:51 -0700 (PDT)
From: Drew Fustini <drew@beagleboard.org>
To: Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, devicetree@vger.kernel.org,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Jason Kridner <jkridner@beagleboard.org>,
 Robert Nelson <robertcnelson@gmail.com>
Subject: [PATCH 3/3] pinctrl: single: parse #pinctrl-cells = 2
Date: Thu, 18 Jun 2020 14:50:57 +0200
Message-Id: <20200618125057.41252-4-drew@beagleboard.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618125057.41252-1-drew@beagleboard.org>
References: <20200618125057.41252-1-drew@beagleboard.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_055154_268245_6097AA48 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: 4.2 (++++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (4.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [89.246.104.56 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

If "pinctrl-single,pins" has 3 arguments (offset, conf, mux) then
pcs_parse_one_pinctrl_entry() does an OR operation on to get the
value to store in the register.

Signed-off-by: Drew Fustini <drew@beagleboard.org>
---
 drivers/pinctrl/pinctrl-single.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index 02f677eb1d53..e6d1cf25782c 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -1017,10 +1017,17 @@ static int pcs_parse_one_pinctrl_entry(struct pcs_device *pcs,
 			break;
 		}
 
-		/* Index plus one value cell */
 		offset = pinctrl_spec.args[0];
 		vals[found].reg = pcs->base + offset;
-		vals[found].val = pinctrl_spec.args[1];
+
+		switch (pinctrl_spec.args_count) {
+		case 2:
+			vals[found].val = pinctrl_spec.args[1];
+			break;
+		case 3:
+			vals[found].val = (pinctrl_spec.args[1] | pinctrl_spec.args[2]);
+			break;
+		}
 
 		dev_dbg(pcs->dev, "%pOFn index: 0x%x value: 0x%x\n",
 			pinctrl_spec.np, offset, pinctrl_spec.args[1]);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
