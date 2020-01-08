Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B6A13399F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 04:24:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XiIXk6DCmopDCfxrLCRO2OiOQ9KceOKTTDkEXsckenA=; b=Kif8d+Zq6dr6UgCUFIyeO4ydyP
	NPdiywddXEj7c+4Y/xhiP29B0ayzzFFV1QGD6JF+0kzXXM4Gud0z3dFL7+/b3n3TaMRokVmPY+Y1W
	n2L4En66CUAs0K7fFl2kFEKDMKOhuIDPSUBvdZ6AP3PvfFbdzDUiAR3RJ8z70J07QvIXnDFbacvfX
	I5QSFiJ28wc+OLZeN8zGOTf2JM4uVecwaptT7gsB8gEK7hRGyeJNNCAQs0s26npCQP2HurYr3t+eI
	BAcB7+vuDjkWs6sviyKfNosrJRpitK1LfcZG2pFftlps3ZrSupYH1zwi6fz5O4JwoUT0VfCWKdde6
	fIVsaVAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip1xU-0004sP-4T; Wed, 08 Jan 2020 03:24:36 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip1x2-0004eW-Cf
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 03:24:09 +0000
Received: by mail-pf1-x441.google.com with SMTP id w62so874392pfw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 19:24:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=Yr7ow8GTmJkAHzIYaMaQkuIE5TitlU69AapCYxHxDps=;
 b=PJxpo/SHdwwoGkXr0J2qM59FCUCLggOZnuzUinBypKNTya68JfKqKnqrxRSzt8wlHL
 LjoUY1wArm6F+WoLHFjglR+sprDXVhrb7Z+BCgtliCTsjxv6F6wUoE+bjHpNvOrExaFr
 5YVQVoe0Ix1q668tsWmMrJath+A5yK+IRiSri00cYc47i6edLxX9B4YmZjMzATkcco6p
 BAZ/wYrLibXK5+zAlGLuIlfjvvBCx6KQnsBkeOXCE4VilnyHd/QRSwGFwfmKhJ++hHV1
 XYkUsOpsWYO/0FUO20MoZeSN24Jiv4Kyn3ejlQXagD1MRAAr6yr9dHKg8Cg+93gz6xEk
 15DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=Yr7ow8GTmJkAHzIYaMaQkuIE5TitlU69AapCYxHxDps=;
 b=lLsvQWIRf4K/Xzjk5xJy8Wu4ldomF4ytKktaGJ3MjooIiNSBEweoYiIiap3Pgk8FSS
 APIWQiPbf4R9rpa5DcJ0UXj2H/Oznm+Y+FS9zDDbpexfSC7HlIqTTqSynAe4Uo/5KB4R
 7z2VJG6hNinFrd0Brl3Zwp5jpVov6d4FT+oCviYe7Vcld4EacPKZLOckHbMy2PrnS9Yx
 24Qa4auooZyU1Ng2f+6A6vgkYVPkabFRTFuhJbClCqiShgKHXdSb9CE9kH0y17WGYYON
 zJ6vQAO8OUs9+qUUM0ZJZDRjnvWAAYCICjAqzq34hCi+og+r8z5a+57AHX5BSSEXlv6R
 /hAQ==
X-Gm-Message-State: APjAAAWpEcPxt2pltcVFYqDIBT7uAU/9ziLjMlacnR3HKHfIFF3qmcIG
 rg0xxrJWOInPA1MfsRhOIG0=
X-Google-Smtp-Source: APXvYqyagAGVADxDem+49GDTXFZMHJU/p7gFf50NwAr+NIMt6ry+FxLZ9Wx3VhxyRZHpmypX9eTPkw==
X-Received: by 2002:a63:1d1a:: with SMTP id d26mr2920384pgd.98.1578453847905; 
 Tue, 07 Jan 2020 19:24:07 -0800 (PST)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id g7sm1077875pfq.33.2020.01.07.19.24.05
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 07 Jan 2020 19:24:07 -0800 (PST)
From: Baolin Wang <baolin.wang7@gmail.com>
To: ohad@wizery.com,
	bjorn.andersson@linaro.org,
	baohua@kernel.org
Subject: [PATCH RESEND 1/3] hwspinlock: sirf: Change to use
 devm_platform_ioremap_resource()
Date: Wed,  8 Jan 2020 11:23:44 +0800
Message-Id: <dfa043f317c609a6172468ac11598968dd751bce.1578453662.git.baolin.wang7@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1578453662.git.baolin.wang7@gmail.com>
References: <cover.1578453662.git.baolin.wang7@gmail.com>
In-Reply-To: <cover.1578453662.git.baolin.wang7@gmail.com>
References: <cover.1578453662.git.baolin.wang7@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_192408_433076_449F7B31 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (baolin.wang7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (baolin.wang7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: baolin.wang7@gmail.com, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the new helper that wraps the calls to platform_get_resource()
and devm_ioremap_resource() together, which can simpify the code.

Signed-off-by: Baolin Wang <baolin.wang7@gmail.com>
---
 drivers/hwspinlock/sirf_hwspinlock.c |    9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/hwspinlock/sirf_hwspinlock.c b/drivers/hwspinlock/sirf_hwspinlock.c
index 1f625cd..8cb5fd4 100644
--- a/drivers/hwspinlock/sirf_hwspinlock.c
+++ b/drivers/hwspinlock/sirf_hwspinlock.c
@@ -69,9 +69,9 @@ static int sirf_hwspinlock_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	/* retrieve io base */
-	hwspin->io_base = of_iomap(pdev->dev.of_node, 0);
-	if (!hwspin->io_base)
-		return -ENOMEM;
+	hwspin->io_base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(hwspin->io_base))
+		return PTR_ERR(hwspin->io_base);
 
 	for (idx = 0; idx < HW_SPINLOCK_NUMBER; idx++) {
 		hwlock = &hwspin->bank.lock[idx];
@@ -92,7 +92,6 @@ static int sirf_hwspinlock_probe(struct platform_device *pdev)
 
 reg_failed:
 	pm_runtime_disable(&pdev->dev);
-	iounmap(hwspin->io_base);
 
 	return ret;
 }
@@ -110,8 +109,6 @@ static int sirf_hwspinlock_remove(struct platform_device *pdev)
 
 	pm_runtime_disable(&pdev->dev);
 
-	iounmap(hwspin->io_base);
-
 	return 0;
 }
 
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
