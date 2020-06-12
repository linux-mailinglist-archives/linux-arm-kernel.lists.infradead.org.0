Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1F01F7904
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0T3M+E5+bnpwBTzmX9Pgq3jVBnkR7YfgpOINgj/DB4c=; b=fsSGFYo1NppMdDWaK3xIXXD/CX
	z7ul+yzR2+6VPCm9y7+K2JgYq7mLSY0aOa1YJTUwc4SNh+ia0zSqKDv9NZItu9Fyg4Q3Z3RyhYK3r
	MTwmuE0xN0WUXKy6FvTmu0P8MI7iB/2D2hwKtEQZq2EpErO+a6UUoWFAsECrlFP4TjwhlKxCy6HNW
	g9veggAj5CAjNpJoiWV3m9mDsXQm30i7xaepmTV71FHtGCyLbSUFKglBzRB1fwqHa03KmysCGEDui
	/NHNPgLK45DxH8dm2sFkRGEY9ZmQEplcNwCSCzzlDfo+/F4HddA5TppHuGqrVocn22PB78BTrIAtz
	rNSfptlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjk9N-0002wW-8R; Fri, 12 Jun 2020 13:55:17 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjk8V-0002Xa-2P
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:54:24 +0000
Received: by mail-lf1-x144.google.com with SMTP id a26so1069256lfj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 06:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=i8QHZ+71uR5r8C2iVrz+FnYiMnJAkGWgVhEcbxpdOK0=;
 b=XLWy5sO0x6NyMihD9u77RPeoTa4IN3p4476KrhEB3C21R7zGrViSArupp8vODWeY08
 MZAA3SwN3S2SA6wiLKAnZTnaJ+tnvDIHdd39DowB98xoNi9Z2TOoma4aoiU4O4Mc8mgG
 SL95B7uIT4Lv994CBMH+AHawfTt3QilccsXJTsPxr1d2BgD2APHJ2Ea0FappE9lUlgbx
 oP4EKJSze9ktQAMIfGqxnt/MEijNdd0DgnDnaSSi00JB79vNii1CxJVUdcAFn2d9MAPg
 goz06Sx8j18T6Dbu7MOOnB1zls/Ow3l8Ceedxl5NwZEHsZo1HCQnTsc1Q0BgLt3746aB
 swMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=i8QHZ+71uR5r8C2iVrz+FnYiMnJAkGWgVhEcbxpdOK0=;
 b=BljqSdAPT8Of3yHVyXZifZMrqy32VtgGHCpibbnx6C6DA+iSMtU1kV4x3z3Na808RM
 LzdcPBuL6g2bDHpAr91qcgHF4ljS7vFdbA026GMFskUxgny4sRMp4H01NmPZDqU3kS4D
 pQCdmeanc7zYbUyiujXhejlYnzBaKHkT5EgF4NFdjrAdeR/RNQRvZ+cKMXrgcEXaUxTD
 bCFW6mrFFuyFKgVO9kR1BuafCMzQU5JCYo7LJQ6GErljIAZGkiHiuee5aWC9eCpBycB+
 S/r2mQR7n/+GaC8HgBsbgNw1asUEA6jiBKC4PozimwKb8JVWBw1GQyuZ06Yq7Y1tjLWS
 /ANA==
X-Gm-Message-State: AOAM530OXvguPfeyRhMyK9a0LQNy+gYni6uJ8T4/wTYOwTHcm/QtpkA3
 a5pkAbcgi0ONlR4wkfSm1mCVEg==
X-Google-Smtp-Source: ABdhPJwO0Af920iLi+MZmruEfnVsbizcM52UCA3GXDnT0F2vvjwJGqBUDC4wL8C8SVGin7D00Fgkvw==
X-Received: by 2002:a19:cbd7:: with SMTP id b206mr6991562lfg.163.1591970061110; 
 Fri, 12 Jun 2020 06:54:21 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id a1sm2414415lfi.36.2020.06.12.06.54.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 06:54:20 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v5 02/10] media: i2c: imx290: fix the order of the args in
 SET_RUNTIME_PM_OPS()
Date: Fri, 12 Jun 2020 16:53:47 +0300
Message-Id: <20200612135355.30286-3-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200612135355.30286-1-andrey.konovalov@linaro.org>
References: <20200612135355.30286-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_065423_122141_7FA7F896 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 Andrey Konovalov <andrey.konovalov@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The macro is defined as SET_RUNTIME_PM_OPS(suspend_fn, resume_fn, idle_fn),
so imx290_power_off must be the 1st arg, and imx290_power_on the 2nd.

Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/media/i2c/imx290.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index 2d8c38ffe2f0..d0322f9a8856 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -648,7 +648,7 @@ static int imx290_power_off(struct device *dev)
 }
 
 static const struct dev_pm_ops imx290_pm_ops = {
-	SET_RUNTIME_PM_OPS(imx290_power_on, imx290_power_off, NULL)
+	SET_RUNTIME_PM_OPS(imx290_power_off, imx290_power_on, NULL)
 };
 
 static const struct v4l2_subdev_video_ops imx290_video_ops = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
