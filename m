Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 083EF13170B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 18:46:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bveqfA6rAHidWAsBmULcH/PDnRAvslDPlyorLrtZzeU=; b=HIt
	/8B1N99hwqrMrUVpJ5G9xd/nsLcLC1t0a9jKkZfjmVCoJDOo3106q0el38EsKPE8mhc5UpsTR2eJ6
	s/rUdk5hz0Se83CzceghZSvhCs+sL/BUzuDGEzK3yzZmDvnJuYZuV2jh9XvbLVhL8ZI6b4FEqN8Tu
	h+iHThf3zH2Gx3b1G+WHb3vWTWW2qZMpOvckXJ+kpzZYZ0rcqBVPlQfutGMsMvHOarGqqG6PsjS+/
	DgMRrq45sf7dS78UAp2Ld0URJoWBG7Bo1ssutAF/bws84OK2gxdrFZEshN1OtWZcpm+N1xIxYERv0
	VjD6lvziomkZ3JC3/+VK/976q9+u74g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioWSt-0005Nt-SE; Mon, 06 Jan 2020 17:46:55 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWSi-0005Ml-0i
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 17:46:45 +0000
Received: by mail-pg1-x544.google.com with SMTP id q127so27199104pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 09:46:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=YdPHerSYFOJLKYefQHipXAmsHXvXtkbfyGcWcsin/Eo=;
 b=t0vgrTSVmmj/57ZBr/Sm79BsA7lylrWcfhlGn3rqkCJQCiNewUgV8qMRVWd8rd+egl
 y4YVUkO7FONNsn1TClHXBiMGXvlSzd8EjZHCxDyfZ8/ypJCvTGSy8kp4u/luDiWgNpte
 /xuomSpMzKHv0y+ZJvGamupdnU4OhCIJqHfkhjDpnrsSs1rV4bksqvmVVGeldtCqIFk/
 819/hKDzWB8e247vq3PjjUkLt61zIYtkRKmSMFad+FWT6x6C6Jcsl1fq+RH6GheqS9+k
 1403NTO1gKuKwNcYpL902uwwL6oQ+rariS58bn2hsAqJ3rxjl1Eqtojz7ewaRqFZIAVH
 LL/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YdPHerSYFOJLKYefQHipXAmsHXvXtkbfyGcWcsin/Eo=;
 b=AQEdkJ4+8qURfEGP6FnU3+CgICCteCGTE7tuo8NpAaoQn07w1jRdG1q4ZIymAugVql
 Hdfm84ZYI2RCgITtUAoNdNYDjM3bUeJlsVTDaZzNFw0TTjMNJ07gsJCxGsSPlr9HL078
 Ub43fJh6ec04OPSZKUxLvgY/Pwi/8b8t+Kta9SKVZK0L3rmvl21Hlt8sXezG0BzCHA4e
 tlFqbtiRjrWxG4r2EHRLfvxmw0NxGZxGrPDhBbL1SOLjlADFUKllpDh3WitjRDgKoTjo
 xCO2RhKNH0ui1jK4KLGtOuiooZw6jTbQAy+lC5n3nw0XMxOAQprYDi4CZb+DxS7ZZP57
 sBTQ==
X-Gm-Message-State: APjAAAW3Fv6TjvGJTgSjksvGIK777JI6xJcKIfdqcUWthbf4K787gR4d
 +CDfS38YQTfgLwjRhV0MqC4=
X-Google-Smtp-Source: APXvYqwNzPNo38qKaDE4TWjCFQ11EAzeBDsfFL07gxRaNNMnBA7f1Wmk2ubLY9y2gRba8Y9FzmQz5w==
X-Received: by 2002:aa7:874a:: with SMTP id g10mr91607578pfo.205.1578332803309; 
 Mon, 06 Jan 2020 09:46:43 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id z4sm25051105pjn.29.2020.01.06.09.46.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 Jan 2020 09:46:42 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, mripard@kernel.org,
 wens@csie.org, anarsoul@gmail.com, rui.zhang@intel.com,
 daniel.lezcano@linaro.org, amit.kucheria@verdurent.com, megous@megous.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Subject: [PATCH v2 1/2] thermal: sun8i: fix r40 ths number
Date: Mon,  6 Jan 2020 17:46:38 +0000
Message-Id: <20200106174639.20862-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_094644_342650_54084C24 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the spec, r40 has 2 thermal sensors.
Sensor0 located in the CPU, another in the GPU.

Fixes: 730a45ccd9322 ("thermal/drivers/sun8i: Add thermal driver for H6/H5/H3/A64/A83T/R40")
Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
Tested-by: Corentin Labbe <clabbe.montjoie@gmail.com>
Tested-on: sun8i-r40-bananapi-m2-ultra
---
 drivers/thermal/sun8i_thermal.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index 23a5f4aa4be4..c5661d7c3e20 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -565,7 +565,7 @@ static const struct ths_thermal_chip sun8i_h3_ths = {
 };
 
 static const struct ths_thermal_chip sun8i_r40_ths = {
-	.sensor_num = 3,
+	.sensor_num = 2,
 	.offset = 251086,
 	.scale = 1130,
 	.has_mod_clk = true,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
