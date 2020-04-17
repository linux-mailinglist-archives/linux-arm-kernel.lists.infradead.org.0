Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BC71AE344
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 19:11:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TXj5vrSDwgjLznRG8VlF8NU0ZXPdYf5WBWIjMFDs0Io=; b=WMSt0lb3QEVEfs
	eDafHT09sizOd52IhWcnt60ENMhanib+G6ZOGxOMhJC5maFOjrtcLxSDjYHnVl1IKAFYX+jQkR6RP
	wvPqQeI1F0bc2o6SkVfgb3dlHY0N5J6rNB2hdDgW72M3ixkqlAXZNH7lUnEt4YAJ0jYCyi5Bzs3V0
	+nk0WBWmdENckm+jSGz7x4qqeuAJnanSEW7DU2NvgURxwSiXfBBH3maK9nDT0xIoigDtCqOC/STlZ
	n7zSj5bT3ukdneO1QgA1aNmMh/VHWW91JVO7LiWOumB5ARA+UxFE10Xcj4Sepkj3Vym2eiffGxIa5
	ESmg0GH57ebmjL/K8xjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPUWZ-0001ke-Vh; Fri, 17 Apr 2020 17:11:32 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPUWS-0001j1-V4
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 17:11:26 +0000
Received: by mail-wm1-x343.google.com with SMTP id g12so3786427wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 10:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Zdfa1xOmdel4jBPWZeqHqUOsoKXZ4glfFICzCZosfuA=;
 b=ia2Xc2B6HPiwKuijA0cUwEutT5CzATIY4b92exQI+/IV3xQrNRCveD3dFjOVD3tFIk
 zO+JWP2ohdDhICvmi3MFx8mTKMdrUYpZDSusv17g9H4iMzhxq/MoUo5AwdFOc6uHTGg6
 nl9yGNq18XxfGY68vhEZ94AonZzhyoc/6cbzBupLsy5T7KUPkn6fpx3mmrVbdmRBXq6S
 AR6YHflknf5stPWp6AyDkFXfkBmXxYQhdGdW4UOhBgGLm2EvwAtCmlZnOf5drh/h68xe
 o5coBzL388CfiHEQuVO5sXtOK9V/8zDOW/deRDHSTbSU6ssRttxJK2t5KGvl+p8R5w2C
 ndww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Zdfa1xOmdel4jBPWZeqHqUOsoKXZ4glfFICzCZosfuA=;
 b=Q6NTxzeO7PoqGEldATB/xDoXdyUuPlKeXIekM8fPswWife6gRqt1xjVBY7DA03bvNa
 K7jmnI/W/H/oPz93onbfDctI5YIWPrSZddbzRcyYQCbJ0ufDZYc7oZkbB5vqEtiy+5aT
 43q2c54SBMDBYXLsKlOtYUhrxX7W+GbtfQ7kk47u0SApH2i4erhyacn6bgtQEn6uIdFJ
 C1C5+WnXn6Y9sY/Nsuj3RlRqJsD5xEyBv+XbT9ps5dInBfCO6z1TbUAUlF2QOukmSK+l
 nbDaau2yR4jgYTAfO4foZEHFVREzdAwCm3d4cxmXwOLxHtkEQcitwfFdpjsyouFjksBp
 EEyQ==
X-Gm-Message-State: AGi0PuY3DJ6mpOozFvK5TPrhj3FJJyp9QsrEIvpB1Q2GqVg81WTdnN0J
 O0udVvcfw/Aqy4wQ+WiPEfE=
X-Google-Smtp-Source: APiQypL8AX2/jEQn8JgErVjQS0ITupKFNQxZfb2am1F+WlTTJfyXr5AhZ7RCXRfTDRFz63emStIyiw==
X-Received: by 2002:a05:600c:4096:: with SMTP id
 k22mr4041195wmh.99.1587143479718; 
 Fri, 17 Apr 2020 10:11:19 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id h26sm8361095wmb.19.2020.04.17.10.11.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 10:11:18 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 1/2] soc/tegra: pmc: Enable PMIC wake event on Tegra186
Date: Fri, 17 Apr 2020 19:11:16 +0200
Message-Id: <20200417171117.2556374-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_101125_024448_71501DFD 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The PMIC wake event can be used to bring the system out of suspend based
on certain events happening on the PMIC (such as an RTC alarm).

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/soc/tegra/pmc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
index 1c533a969f54..72cfda7305d5 100644
--- a/drivers/soc/tegra/pmc.c
+++ b/drivers/soc/tegra/pmc.c
@@ -3193,6 +3193,7 @@ static void tegra186_pmc_setup_irq_polarity(struct tegra_pmc *pmc,
 }
 
 static const struct tegra_wake_event tegra186_wake_events[] = {
+	TEGRA_WAKE_IRQ("pmu", 24, 209),
 	TEGRA_WAKE_GPIO("power", 29, 1, TEGRA186_AON_GPIO(FF, 0)),
 	TEGRA_WAKE_IRQ("rtc", 73, 10),
 };
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
