Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FA19E93D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:25:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=86MjPGhb+b3mcgBqm4QDTPHFj3elHDY3VYZfyDUGFQQ=; b=FoV
	KR9/AztWAbNL82ZIcVz+qI6zqiClVxbUrjCTKLAOfMIHJzGCb16G7tfsVuS20QlP/aHJPgu3vk38m
	9K9qgNloBKY5JRbhxbUaARXpqi+dIKO8fQIraVxuGu3dzZ6f265pfUz6yRTKy1RWnQMHOVoJV/0dK
	jSR2dOA7aZr7G+kON+MDyk6iF810C0pK46CXRRVqovEx8le/aUH4ljZletGe62lkpmQU3C5K0BY8i
	zc2U2XN51bAFUQlF0NT1eJXTlLv9iSmXdxIFicNC3v4IMdVz8VFh9/SdZ1M7bB789rhhfIvU+5ZYe
	ZULi0+rw24QGLO4/B34f13KmUrVu5Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bT9-0000m7-PF; Tue, 27 Aug 2019 13:25:09 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bRE-0007gy-Hr
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:23:11 +0000
Received: by mail-wm1-x341.google.com with SMTP id p74so3075380wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 06:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=TbeTaGGWYk6FIBTAg4Q/ZaK7rk4CVve/t9kmNBDtugE=;
 b=wq02lPcezSrbkTymEC7WovVRByb559YaQN7GHqXzcdfQgrfNed1VHwZ3WUcQ/99dXh
 JcS3ZK5swJ7YDJ6b2MKh5iSzcByO41XpiCN5UZbe3MMe/3ZNxmdM8GfrNYI5JvvBNThr
 E0R4pRM1za8jBVlzncubC3EWQcybUZWWnrPfWirNc7hfzz9jVT4b3jsDzTI6l42gnGBX
 skrE3ypIZnePEmp8gZCTUVXYp2bIZmit5hBhMOp7hljcllsBxr+SIHswBZ1K7PeaIjEU
 67Bvw3bSLCDasCRed6dskrjNXiIlx2jPGg9IQ4rc4y3y1+iNWXSJd8LsSP+kYhtZfckw
 Zb8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TbeTaGGWYk6FIBTAg4Q/ZaK7rk4CVve/t9kmNBDtugE=;
 b=QCbl1B+Km3YL1tk+zdYG/W0YYXbUcwuzC8iPlJ9JLo5nUJUsXP2eTh5KXipWrBN3Hl
 MhfODBCnUETciNZvPk0H9n10iwdda8bPMukBTWEgVyjlV9LX+Pzv23te3Ue4Op8FQ11n
 29eSrs26K+AxHOBSTnzJ1Yj+5epcn1DNQmG3QyCXqRgVJ7UfX1ImBrKh24dI439sv7+K
 ygNcnk77ADba6RFprmmbijqTUOb/3X+oUK88keJ7Qw0mYO5Lu6fTEmQ6ZpmRccTPfFiF
 WmMOow+IwC6In0r42s4+FnzSolAi9L72LcFch1O9EszzWCEJbUhemRu0dUhMexM5B6L9
 +B/Q==
X-Gm-Message-State: APjAAAUf9HNmSmJmJ98Q6RNKXGuNvchXjX9ddMx9UqdAglMAQ6CliHWn
 l/dKM+Fq0VWjk4FyuUVmnixhhA==
X-Google-Smtp-Source: APXvYqzC+0C4X5drnwFV1SZJ1aMV88RFfx4cY+/vp9O6WxCp+QNUmnpY+qWDNNLZRPftbGBE1Qvmig==
X-Received: by 2002:a1c:a008:: with SMTP id j8mr28626762wme.57.1566912186112; 
 Tue, 27 Aug 2019 06:23:06 -0700 (PDT)
Received: from localhost.localdomain ([2.27.35.174])
 by smtp.gmail.com with ESMTPSA id l62sm4678345wml.13.2019.08.27.06.23.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 06:23:05 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: arnd@arndb.de
Subject: [PATCH 1/1] mfd: rk808: Make PM function declaration static
Date: Tue, 27 Aug 2019 14:22:56 +0100
Message-Id: <20190827132256.26807-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_062308_615197_4E9F663C 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Avoids:
  ../drivers/mfd/rk808.c:771:1: warning: symbol 'rk8xx_pm_ops' \
    was not declared. Should it be static?

Fixes: 5752bc4373b2 ("mfd: rk808: Mark pm functions __maybe_unused")
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/mfd/rk808.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 9a9e6315ba46..050478cabc95 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -768,7 +768,7 @@ static int __maybe_unused rk8xx_resume(struct device *dev)
 
 	return ret;
 }
-SIMPLE_DEV_PM_OPS(rk8xx_pm_ops, rk8xx_suspend, rk8xx_resume);
+static SIMPLE_DEV_PM_OPS(rk8xx_pm_ops, rk8xx_suspend, rk8xx_resume);
 
 static struct i2c_driver rk808_i2c_driver = {
 	.driver = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
