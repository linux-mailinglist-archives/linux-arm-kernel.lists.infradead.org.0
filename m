Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB839700E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 05:12:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YpH/WNjBmJJoOLtUU+Ft7cRtNwzT4MsPHm8o2++xh70=; b=uGUByuIwkWrySPG0VxNt/5jO5N
	bfzXUJDfstN3ALB/GYTBUc0e60kHn++9GpSZvNnkD60NMi22742ySS0wRbfPlsUOFSgCPDKxH9LIZ
	dU/H+YZEuSn1W9CTeMGbtaOT+3R3p89sWDYJovfC3t/7vHqh5FIiZIwCKOzWcEMpTvF4rTuqYObLk
	ITTXpM4wGhu9WR/MrDj8XwuQFapbn6BUtI4Ry3Px8kQUGCLLbbEcxLUJBYJ+ENL5FRdAIAUpArinQ
	KfnF8lrv1r20P9n5QigbRJ3LhTefXeTj3kgMAjAzJUVHFNPtgLpdBnrQDf6VqeWhxvFSVS/uGpsbg
	qQE2RANw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0H2j-0000ej-DS; Wed, 21 Aug 2019 03:12:13 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0H2J-0000Kk-Fe; Wed, 21 Aug 2019 03:11:48 +0000
Received: by mail-pl1-x641.google.com with SMTP id gn20so521279plb.2;
 Tue, 20 Aug 2019 20:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tfmgm4LIxxx9FZ0lj1a+BI18xaGv0RsnyVSEcXhiXYo=;
 b=pDy9bJxnBGKM1sKpIALE7tC8FeAmFQuMtZ1Bu4n2nDyhrPran3Ta7FiFeQQlQExPcj
 KHDchay8h9+7yByAof4eZ5E6HyepC035XGKBUhzGOsVtn6UCQXE8bugxFBJM2Jz6dj0u
 HeBCd/xxoFIYUbenH5WCe2vxFMlxAkpAFAd1Jl5ouinHaQTwsuCA4iNylUacmTinj0lf
 VVqxVwpF7L17EJSgJiPydsfetUrf88v3qNwFIO5y1wlCN7QJvemJ0e+WhIZencU8L2/O
 EZcidgGpdgytWToe7bwLRzaTRD6UKWzXWUJ8EDJqaBcbZVheT9wRiR2I3fgXOg7IYqCm
 FQ6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references;
 bh=tfmgm4LIxxx9FZ0lj1a+BI18xaGv0RsnyVSEcXhiXYo=;
 b=ecEo7wKzCCpqh+eO6ltfSYFWsi5N5z2Ki1qsFZmPXwbAFn6ljZcs+2uhkD9zqu5Uue
 nRMxLU1/7BHapN2SVaPo175aUsZqHmIqe4Wsl+RKMDjMNPSscJlAQFyx2wEukv/OpJ2r
 M4+vQZXO7CFg6Lq22mUXQ+9jHcJaf1oTRAQdA9qSFrziUx/9AscLnsb2Nt6sjuMwcfGk
 Oe3GfbIv/Ul5YA4SdScoUW/w/JWcDhQHbqZBTfudV2kwAAciI050hwHwhCblyKQITj7U
 84jW1KnOQWd8Id0f6x1cMFKByNi+kntshBCuRimcbsz+HaZn4H4xR7CUqAVtkC4pDHaF
 Ck4A==
X-Gm-Message-State: APjAAAW0Kc/XYF8b87gdSqljOVgLGmeal25sRnqBQ2cXzJIBDgZKd94J
 AEgJX9OIjVt8VkB2Mpjas8XQL/AT
X-Google-Smtp-Source: APXvYqywbluDozgwfegRgr7JEenjh7blVGNMTCIZBGNYicQyVNkH/LJvp5txNVm0x2yEXo8FlfHXtQ==
X-Received: by 2002:a17:902:29e6:: with SMTP id
 h93mr10098249plb.39.1566357107026; 
 Tue, 20 Aug 2019 20:11:47 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
 by smtp.gmail.com with ESMTPSA id j15sm21540009pfe.3.2019.08.20.20.11.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 20:11:46 -0700 (PDT)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v2 2/2] dt-bindings: arm: rockchip: remove reference to fennec
 board
Date: Wed, 21 Aug 2019 11:11:24 +0800
Message-Id: <20190821031124.17806-2-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821031124.17806-1-kever.yang@rock-chips.com>
References: <20190821031124.17806-1-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_201147_527709_CF2D3FF4 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kever.yang[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, linux-kernel@vger.kernel.org,
 Akash Gajjar <Akash_Gajjar@mentor.com>, Kever Yang <kever.yang@rock-chips.com>,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The rk3288 fennec board has been removed, remove the binding document at
the same time.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v2: None

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 34865042f4e4..cc2f1c2d0cd0 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -424,11 +424,6 @@ properties:
               - rockchip,rk3288-evb-rk808
           - const: rockchip,rk3288
 
-      - description: Rockchip RK3288 Fennec
-        items:
-          - const: rockchip,rk3288-fennec
-          - const: rockchip,rk3288
-
       - description: Rockchip RK3328 Evaluation board
         items:
           - const: rockchip,rk3328-evb
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
