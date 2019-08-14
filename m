Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD398D63C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 16:33:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQi+Fg3rhoHEF9zPqyUO3pAWmOI+sVu4m3e+vbYDyis=; b=p7K1LiR+ykcPaj
	lRCG1FZqnXLnCCs463AJnpfgk7XV1WptlFXBXHJu+txfQXD+2b80NJUWuITgk+8em4TOofhsHMTOF
	VHUCLXQtTtVq92gPYNaqAakvII+qajy3akFNao6LMiSsw5xZS2E4Jp1DOY2Kt69ic3hEQV5Fvymm4
	yyDgP5D9Xm6PL5hNjFcUmLS8Z1EjFR9hQCZ58uBIM5X3F8KCuB56Cg7/+BQPg4FWREsOZh58DeQCc
	XGsTmqoOHft78mbJjeAwfDDq+DEh6FKVV5MviHuQWh3mXY7I/MfWvTIOEIlTPOvEMEg02ve9ThC3/
	8QZ5JTNRI9T6ryIV+m9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxuLF-0007hu-A9; Wed, 14 Aug 2019 14:33:33 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxuHR-0002lG-BX
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 14:29:39 +0000
Received: by mail-wm1-x344.google.com with SMTP id m125so4655572wmm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 07:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cjZFeXutoTQ9/qwc4S4Gcm70WvgFxAPchw/gNgg9Wa0=;
 b=NgiLNEQtWUqX8P0Ei3iD8b+27RBLhfEvXaGa5FbFEKc8Bv5yrBx19Hhi8CxjN6q0Xy
 p0GFoQiVrVzNKOYiSNdP/YrNCYo8faWlX/7+qB6ipIC316sqZX+3E5tSEWls1PjjHbEo
 MOm/tL0LaspddVNdp0JWBIwuJp/aYgydIuRb024JoEm6xYNON8zIhaP/O6AjeXe5W5mH
 wXoXCkVcAlK/QpG26EUfCdQTlzKCNSHSZ46l8A8Vq553cSLbNMjU8GjL3DXxrJmNWBIQ
 7NVFnG1NIjtTDdOqlmM21h4P5i805AIMNsyvPqi75lnUIMaJXb+GFE26bJLzamvBZdV8
 ovbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cjZFeXutoTQ9/qwc4S4Gcm70WvgFxAPchw/gNgg9Wa0=;
 b=ImFQiXOPWigg3GrE8WKtWTwhYZKIm1geu1p70h3p2oliCAqGd+zVtY6TuTFn/gx0Km
 ng4nl9PWX4pCGml8IVvVR8DHXUds9ro4KTfqXiB8OVPNxs2rFTkoH3SuxCHEZWWACBcD
 x21b8/tmLsui2cVspi74FSOqJ+2hSbSTUDGvcJSjnue5Aqdwe6ZjAUAGbs2mHtLBT3Ri
 hNPX92n0k46HfsdhjWfeqRKWlNcsDyxbGcMwiNBwTJFxoKMJeL0GomVykcauuEuVGSl5
 A92YKdwbWHzJhWbBFNhVyShJqL6urokqSVzzSbGeVrx7TiDmngrFoLuWUtseo7AibuzA
 sCFg==
X-Gm-Message-State: APjAAAURVJuHFxAhXUvJUha4aB+2RmynzntBnNYkDW3sWQDG+kB9N/ga
 D2GQkk5dAUKVHDxAGaQbK/iaaYByUdDrhA==
X-Google-Smtp-Source: APXvYqwnY1gffUMlCVMUCn3kHuB6YdQrHQx7tWm9YoFB/Jk+tK27whKhtRCrnI7ghOzZMtc9UWOcYw==
X-Received: by 2002:a1c:494:: with SMTP id 142mr8635972wme.12.1565792975630;
 Wed, 14 Aug 2019 07:29:35 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o7sm4202908wmc.36.2019.08.14.07.29.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 07:29:34 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 12/14] arm64: dts: meson-gxbb-nanopi-k2: add missing model
Date: Wed, 14 Aug 2019 16:29:16 +0200
Message-Id: <20190814142918.11636-13-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814142918.11636-1-narmstrong@baylibre.com>
References: <20190814142918.11636-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_072937_484325_EBF69135 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-gxbb-nanopi-k2.dt.yaml: /: 'model' is a required property

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
index c34c1c90ccb6..1a36d2bd2d21 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
@@ -10,6 +10,7 @@
 
 / {
 	compatible = "friendlyarm,nanopi-k2", "amlogic,meson-gxbb";
+	model = "Nanopi K2";
 
 	aliases {
 		serial0 = &uart_AO;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
