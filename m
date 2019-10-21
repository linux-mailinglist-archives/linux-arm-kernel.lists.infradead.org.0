Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3947DEF91
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:30:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shLEM+dgM+oIYmmFu19c0lFgkBVq4xR3Mgzol9ZZVKQ=; b=R72w05G/WmRDPL
	OoAVDVXXNpD8lw+p+lyuhRDyAyOW8sxk9rZuAV/SSHMYjQO4xxAwKE6P0z02pHH8CWBB46/96Xf5+
	CWD2djTcuLw3ZAtG2+tHyHgpKLovaMhYBrzEQMQokL5Jyr6NMY5gQooDBpI5xrTfU2iJBpr1mW/YU
	wKgy2TyTNYDWRVjPlXZkXDvdrI2pE8sw03KxEctHJnBalL5k/RVfyESE+sH8CrwLaW5cM7a4H9Yra
	7pa3j/LaNtmCzK+nNbaIqgAVGMoeLLN69ZatVoo1kymYMfM5PTuiSLAu1ZGyl4hj5zgUsG9C6yPOh
	yPFVXtDRejzQUvL+7hjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYhk-0000vQ-34; Mon, 21 Oct 2019 14:30:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYgJ-00072a-U7
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:29:13 +0000
Received: by mail-wm1-x343.google.com with SMTP id p7so13597129wmp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 07:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o2g5MppcRcxrnsPQBvomKNHr4TeFrtJvAa8pk/mHOiE=;
 b=1ZyCG1okRY4dyPz4T0huoXg+PIbmxW0rg+faaMGWsRd0sSzZKzDh58t2YXt4bPk73g
 JKqfpSJmBJosg7OF3PcUW1Z1Jkqrm2hZvqWkGnQSKUD0Kk05iO/vVLluPyEOsAOF0HYv
 CBoFTTtqRB7ZjeWQ2mxxgUwEEIPICBAJrJHsU8DGtS3ghQnRsiYLmCuQeINF8iP+6J2x
 6vmvv7bmVVvDeJ0Cu167jEcFsha2vBAa2bE5sor+h25iEReQoD/AjkjOzvocnvUVmCiW
 qxT7w9wvcy9RKErNZIP8c8ZibvN5cBbPYTC1gMTApcJrlNlcIX6No/ekpIgxNH7Yxxt/
 tqiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o2g5MppcRcxrnsPQBvomKNHr4TeFrtJvAa8pk/mHOiE=;
 b=IoE3EKw6HUVUmBzCaU0fcTerdnhjol4IAuPQNwFNB0OkVtXY/xKSEceSr4kw4bTG+b
 qN1AI1ZncRL5ywfgRYY32v0/0hT3o9w+5KBOiz6XN4Ha/8COYqf3GluPcA36C4cV1Mor
 Bs1+Gl52MigFFTZ/ChAV7W0GSoBA2aP/ByAZePUPMdafax81fbNHoeN+Dvp870q/51JJ
 EojJASaZ8SckS4WJfiWkvoKN/EZ/tG+qgPSogbeTIWDDgnhKbenfkQg3sSTYrTVpoTJU
 +PZv4dKEqqXrFgw8rLqAdW5IIdojawiSqryjuxLtN6jvEW+lwwK3whFhPQED+XCfr2mK
 n0+Q==
X-Gm-Message-State: APjAAAUvCUqmmysyN/CSD86lXYPCFdeztOaYr2pvDy+I3WUVwaBkeS/4
 WXffo9TegAKDHA1Ya/5zskKhUQ==
X-Google-Smtp-Source: APXvYqxeUGEAtkX1OR8rn7MFQuU+/p8DKQ2ipjOJurJYS3W7VQjwRXnYOLNiAr44/VtEEL+1x+f5rg==
X-Received: by 2002:a7b:ce88:: with SMTP id q8mr18314690wmj.160.1571668150520; 
 Mon, 21 Oct 2019 07:29:10 -0700 (PDT)
Received: from localhost.localdomain
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id d11sm17304463wrf.80.2019.10.21.07.29.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 07:29:10 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 4/5] arm64: dts: meson-gx: cec node should be disabled by
 default
Date: Mon, 21 Oct 2019 16:29:03 +0200
Message-Id: <20191021142904.12401-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191021142904.12401-1-narmstrong@baylibre.com>
References: <20191021142904.12401-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_072911_991569_0E59E983 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-gxl-s905x-hwacom-amazetv.dt.yaml: cec@100: 'hdmi-phandle' is a required property
meson-gxm-rbox-pro.dt.yaml: cec@100: 'hdmi-phandle' is a required property

because CEC is not enabled on these boards.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 6733050d735f..042132bf5b76 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -391,6 +391,7 @@
 				compatible = "amlogic,meson-gx-ao-cec";
 				reg = <0x0 0x00100 0x0 0x14>;
 				interrupts = <GIC_SPI 199 IRQ_TYPE_EDGE_RISING>;
+				status = "disabled";
 			};
 
 			sec_AO: ao-secure@140 {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
