Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CADA15520F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 06:27:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=60bQkLCurfuhon7BtM5BsnTT5v44u7NrN7mBsSV32jY=; b=BH6064tsYcfK+h
	Lhe3aXxj7XzW/i5gvG61PS0g4HwwJ5gF2REvTj1k8aheo6Yd68Po4KIDcAhTpJAe9T3HJ4bQmDkWU
	P5Iz3UE7/D1VKtDkCTDcnUkmc1ewXQuOLSyH+q6OT9PeKxvMch7M+782gleeG1GG9aRpg0RPznWDh
	HFMK1PNcTlReLSTeveYbW5iYjt0yAmD5DYocAnQYF68Utp0ppKkxaZ0GJMO/hO1NJPtlT+RZTBjUn
	6LUhUOQMEGm3ieMxFTDOijXC/9iN/Km7/1VQTpjHusZ9xTTS0+lB5gUv7dzPUSrHm2w+wZQq1Tkd2
	hUyCCsi5OF6+K+Gfcpgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izwBD-0007nO-DR; Fri, 07 Feb 2020 05:27:51 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izwAO-00076t-RT
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 05:27:02 +0000
Received: by mail-pj1-x1044.google.com with SMTP id j17so431038pjz.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 21:27:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6xpmN6rVRpQ9+/BKl26/gWkRoJrUlmctwTSJRjJCc9M=;
 b=EfIrgn8KJTdEPRV6t2D01u2C1tbZ2N5L+zz7+zq66y1iSVivuP8DBp9QrRPb2KxMeQ
 /ektvloYsjEAqIXPfLcxnAAUqVeqhAJibeu5lQbfMyCx5VI1xcyHGPq//k6mqcmQ0gfS
 CPinmVfCOSlqIHxC/KFn8Uqs9YBoRyqsFwy9g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6xpmN6rVRpQ9+/BKl26/gWkRoJrUlmctwTSJRjJCc9M=;
 b=I6oiEfjL1nZl0JMTlUpnAtz4Vj9UeKp42/yiSpmHBxWLFTuzioX7Jd4qaAioY/HNU7
 gdsCqu82xdjA8/8XtyJZQrwBYwiaG2rwVUeK5FNyM05fzg3AsMLBqd06KqBL8imci0dd
 kiqD/CCwPC93dd+bkGBSMmo7cX2kZS0hjuvRivL4pZ5w9DysoLorUCub39o0/pEOEVmc
 cjKc1BOgRROhopWT8xGntsvuDp8jDOlfVh2NrLehETG7ovYsZm/qzeRO7bc4swhjfOHL
 SGR0zTAgN/RT+mMTR+VcY9umm2fPkxdBibvrbQ/XUfIfKhB0KCDUco01NAds3MvauBuK
 LdJQ==
X-Gm-Message-State: APjAAAVPK8yYlcCCFdC2weJmNWfkl9usCTDrOJLf52N+cT8rIUImwa4b
 rwaYoVsJs2UKIOPMS0IsXPx8QA==
X-Google-Smtp-Source: APXvYqzX299A08Kcu0qlzSD8JRvc5zkotFDW+fzSDBqKgJ0Ds/rXQnBQim49TnwlSOj3Rct3QjyFZg==
X-Received: by 2002:a17:902:b682:: with SMTP id
 c2mr8017343pls.127.1581053219763; 
 Thu, 06 Feb 2020 21:26:59 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id i66sm1174485pfg.85.2020.02.06.21.26.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 21:26:59 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 3/7] drm/panfrost: Improve error reporting in
 panfrost_gpu_power_on
Date: Fri,  7 Feb 2020 13:26:23 +0800
Message-Id: <20200207052627.130118-4-drinkcat@chromium.org>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
In-Reply-To: <20200207052627.130118-1-drinkcat@chromium.org>
References: <20200207052627.130118-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_212701_061401_8076AD2A 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, dri-devel@lists.freedesktop.org,
 Steven Price <steven.price@arm.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It is useful to know which component cannot be powered on.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
Reviewed-by: Steven Price <steven.price@arm.com>
Reviewed-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
---

Was useful when trying to probe Bifrost GPU, to understand what
issue we are facing.

v4:
 - No change
v3:
 - Rebased on https://patchwork.kernel.org/patch/11325689/

 drivers/gpu/drm/panfrost/panfrost_gpu.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_gpu.c b/drivers/gpu/drm/panfrost/panfrost_gpu.c
index 460fc190de6e815..856f2fd1fa8ed27 100644
--- a/drivers/gpu/drm/panfrost/panfrost_gpu.c
+++ b/drivers/gpu/drm/panfrost/panfrost_gpu.c
@@ -308,17 +308,20 @@ void panfrost_gpu_power_on(struct panfrost_device *pfdev)
 	gpu_write(pfdev, L2_PWRON_LO, pfdev->features.l2_present);
 	ret = readl_relaxed_poll_timeout(pfdev->iomem + L2_READY_LO,
 		val, val == pfdev->features.l2_present, 100, 1000);
+	if (ret)
+		dev_err(pfdev->dev, "error powering up gpu L2");
 
 	gpu_write(pfdev, SHADER_PWRON_LO, pfdev->features.shader_present);
-	ret |= readl_relaxed_poll_timeout(pfdev->iomem + SHADER_READY_LO,
+	ret = readl_relaxed_poll_timeout(pfdev->iomem + SHADER_READY_LO,
 		val, val == pfdev->features.shader_present, 100, 1000);
+	if (ret)
+		dev_err(pfdev->dev, "error powering up gpu shader");
 
 	gpu_write(pfdev, TILER_PWRON_LO, pfdev->features.tiler_present);
-	ret |= readl_relaxed_poll_timeout(pfdev->iomem + TILER_READY_LO,
+	ret = readl_relaxed_poll_timeout(pfdev->iomem + TILER_READY_LO,
 		val, val == pfdev->features.tiler_present, 100, 1000);
-
 	if (ret)
-		dev_err(pfdev->dev, "error powering up gpu");
+		dev_err(pfdev->dev, "error powering up gpu tiler");
 }
 
 void panfrost_gpu_power_off(struct panfrost_device *pfdev)
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
