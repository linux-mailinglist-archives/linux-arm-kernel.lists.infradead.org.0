Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E431FB365
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:04:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ja1ipjBWeqit0AoAzJy82pDgbUy7JUC2DV3KwXLQKTw=; b=jGUcr0+G4SRnRy
	TmU6H8KjC/RIOUL5QpgzjN17VKh7OIZezNzAJ1Lr5CVHvnaU2/y/IPQR+iqwyN4GD+noPq1H4xEaM
	d7ugymcbKlBqWTLEOV4mZGuD3b7Sm9s6bYJq8LzX5qlGyiK0mXAev/GJB9BfBYGWxwDuDeFXp8ETd
	9VKTq9AAB5mHW8Do2SxxSK3EjpsHVfB3l0h8G06Je/9V67fMcqVx8EkCv5V4YuMXdR+Z9GR3hmZC2
	EglPaN3QpgV/bpVUdnrao558bOo8GQa/U/eorbQ5rKx5zBwNugiYtosBugd5M2aRGARla6dBC/VLj
	jNL6Km+b5iVvZQ4UIdlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCCc-00059e-Tt; Tue, 16 Jun 2020 14:04:38 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC2K-0001tY-1O
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:02 +0000
Received: by mail-wm1-x343.google.com with SMTP id y20so3174076wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CgHFXQGZCBEeJb+voRiLKHYUP+aolWvzm4Cf5SWvL0s=;
 b=WPl1istJDy6REda+MLJhcwq9sIrmI+2C7/zhWoTkvFxPVBO3D4w22LYcdMDihJ8UGa
 GVLD6TTwc9MTjhmvj4jxmqtnG0/istl+j0WTZMLQ1vSdfZN9oSfKWBf+dc93kArSZbCa
 7VIQye4Q+5k+gji319QsIt+NQy9Ur83anQkUK4EQu5cIeZacrwPTnAE9nyMXUS4gtAug
 uB9Ryx8FndCP4daSd/46hZEw/Q1uViKpOTFuk2mZzAvcqjuzjtURz00VT8vaiQUKCVou
 JZa+pr3bVASW0L+KGmyOTz9u+P0NVI/Gh40GfeektaX9HyUv46P+ASGTDeL2qCHh/hHg
 j3oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CgHFXQGZCBEeJb+voRiLKHYUP+aolWvzm4Cf5SWvL0s=;
 b=uDljRJ5p1c0lcLV5oWgiXcPlXSTrfaoYI8kpsO61iI1hktaA0PKcFzjbRy0GEdhHdP
 9f6POmGM+g2LVSRi2WI4teAiri9vx60U9LdoapHOj8g3Hpf7F3iqm7pXcrEytefWSHV3
 olCObrwY2kO/uftcw7PNrHuXFExoHQeiJxdQ2k8c1CTnrrJQMMjEs3QRP2QHtwy6G9kW
 eUcQU1l2puQCswEb4KrMRfu+HWBGcRj02/BjXmSnBloYOjavcXZzJmnDy7gIWxhg9xwu
 KkFsmyN9Y4VFabeqlpo2TIJUWHBS3VJ111Ob1ZPnlfjq9+94fwXsT7jX1+VPK8eQG6vy
 PEVg==
X-Gm-Message-State: AOAM5329SEE87xZPPxY+U6PLhbGTvvRKs89p0JwrhUWNfVoenJi6iRaa
 GKGcMBFSxg6YTgNWa1AJCr9oiZbi
X-Google-Smtp-Source: ABdhPJwA9Vln20BWen/PoW0PG0VaFlSCUK2CNP+GyGm8bz6amWfj+xqV/Tv4EQVld7V/6csj5gt8EA==
X-Received: by 2002:a1c:7c0e:: with SMTP id x14mr3226376wmc.1.1592315638658;
 Tue, 16 Jun 2020 06:53:58 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id z12sm32056041wrg.9.2020.06.16.06.53.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:57 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 28/73] ARM: tegra: Use standard names for LED nodes
Date: Tue, 16 Jun 2020 15:51:53 +0200
Message-Id: <20200616135238.3001888-29-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065400_084212_C650189D 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

LED nodes should be named led-* to match the bindings.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra20-paz00.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/tegra20-paz00.dts b/arch/arm/boot/dts/tegra20-paz00.dts
index f6aa783b0f02..ada2bed8b1b5 100644
--- a/arch/arm/boot/dts/tegra20-paz00.dts
+++ b/arch/arm/boot/dts/tegra20-paz00.dts
@@ -589,7 +589,7 @@ wakeup {
 	gpio-leds {
 		compatible = "gpio-leds";
 
-		wifi {
+		led-0 {
 			label = "wifi-led";
 			gpios = <&gpio TEGRA_GPIO(D, 0) GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "rfkill0";
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
