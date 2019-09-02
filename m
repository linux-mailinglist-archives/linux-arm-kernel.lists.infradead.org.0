Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6946BA5740
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LKjyVOm6WKvwBlGJRUS1kyE2DmnRE/Uo6+53U1xQkbI=; b=JZXxG70H7GPnZO3yz+j9/ob1Zv
	PnXuMG6VCgsbWJOwZjGcDsgN2DFhw0WXy3ZfQAX0IC8oj+Jpe3FMCAT3FXEch7flrIGuRAh0jOoyo
	oSL9r8wuMRGok2AMMn0qBxjfWbua/LndX7QlfeQNLyMYI0UbeyWfljed/EtqzFeVp2rWtpvQh+B57
	t0LE+WqHObru5EOOFrKg+b8sEzjMUNHyZZ5aitDS7PQJrxvUcAyD0BMMMonMEQKejbKiAqzcl0OWV
	j74XzbnzYR4YlYTu545J8/D1OA/6Zp1CaI0VbGBPx2L5KbPWSdqRmxhuo6PgdYAwm+9beRCGjzpRB
	EzTrFAng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4m3p-00066c-Pb; Mon, 02 Sep 2019 13:07:57 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4m3O-0005sD-1V
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 13:07:31 +0000
Received: by mail-wr1-x444.google.com with SMTP id j16so13952301wrr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 06:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=oRkNL7aLFyTbx8I/d8Bu/GE/++nW3B66VLEejNfzkvo=;
 b=r62Z3kjZmQedYMTll1fdxqWZMwZv1GALAvlzXnCBETrmHS+pXLGc+k4qf0Su/rWlMx
 gWys/cN7Ypl6sKIHSDskZrlSwdbtnISpol+mzt0HZks4S/oPM9cEfyQQ4y6brZYaXWPF
 /l0QRj84HrdD2Mt6Uhp4Yc5BPPatpsmPFrp7GYmyncAKtSLLJwgvKeZsFoD5V5ab0gEE
 uVDhCcxk+LhHI15zZCV3CwalNRYLM79zGo1/Yd+HjxbAOM3D4SKa9nLTrVzKgT2CPVd+
 LDTahqjVtMEH6EKP9F0ZGkSWn/gv7n9jqR7CQqIkW5IUQYIfnlViR/QrK3h3g7QmnIXh
 KZpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=oRkNL7aLFyTbx8I/d8Bu/GE/++nW3B66VLEejNfzkvo=;
 b=dp4uyWR8LyyrR3MEVgZBxiliiMxjJqdSnLuz2fuF+JUFPSyiRDf3bM5yNUl0Oi1uox
 ahwm12E+K8mQgsBQbo205t6mWwlsRNgmT63Igq0SNgpoMdvxbD2oD9Kl29MbqftlDxlR
 TJ+ndxNplakWHJYJ03KdjK7VcRqd5AlRZm9qiaPlHqHMCGEpyk+1CvqAYuyji4y8WqQ5
 bhWYOgJmoJBATTwyudYE0ktWKWE1I+MbqG0b+6gw9vJ5LuJYYrMxPnlqDGdV4bOIhunG
 7g/XpDpGzH6AdkeIVRPs1mXDxFXLhRs03r51MSvGpL3Nqg9JfMpKuEpFdES6ZA6LMe1V
 BQsw==
X-Gm-Message-State: APjAAAXWtCDPPrP/bo7QkiSTTHUUnLB7LM5z36hqMe3b4i9cFGCaCXze
 0cq0k8Slnu6XTJSYaOHkfD9fwA==
X-Google-Smtp-Source: APXvYqyzVvfss8xBNM77gxp2OLahPkr+EQ4YjkJdcv91qcL7/dic5KUXyaBXlezCdhVn1g/OGYetdg==
X-Received: by 2002:a5d:480e:: with SMTP id l14mr35538688wrq.96.1567429648225; 
 Mon, 02 Sep 2019 06:07:28 -0700 (PDT)
Received: from localhost.localdomain ([95.147.198.93])
 by smtp.gmail.com with ESMTPSA id d28sm12352030wrb.95.2019.09.02.06.07.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:07:27 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: catalin.marinas@arm.com, will@kernel.org, bjorn.andersson@linaro.org,
 olof@lixom.net, arnd@arndb.de
Subject: [PATCH 2/3] arm64: defconfig: Enable the EFI Framebuffer
Date: Mon,  2 Sep 2019 14:07:23 +0100
Message-Id: <20190902130724.12030-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190902130724.12030-1-lee.jones@linaro.org>
References: <20190902130724.12030-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_060730_082012_289707D7 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tested on the Lenovo Yoga C630 where this patch enables the
framebuffer (screen/monitor).  Without it the device appears
not to boot.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0fe943ac53b5..af7ca722b519 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -540,6 +540,7 @@ CONFIG_DRM_LIMA=m
 CONFIG_DRM_PANFROST=m
 CONFIG_FB=y
 CONFIG_FB_MODE_HELPERS=y
+CONFIG_FB_EFI=y
 CONFIG_BACKLIGHT_GENERIC=m
 CONFIG_BACKLIGHT_PWM=m
 CONFIG_BACKLIGHT_LP855X=m
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
