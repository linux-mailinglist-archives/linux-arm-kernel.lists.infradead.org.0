Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAE1198884
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 01:46:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y0rzL+e1++8K2yh4jHt0hnUjiIVCqWOlpoyp2R/2cLs=; b=rxxD5yuRESDe8V
	PEweTjvj14aiDWnwjylyX7P35EpWefA4ZytK45HZkPQkG54qWFyrAoNKrUwZfq/M/pDcmaX8csava
	qAZ6Ghq/lSz31TBshvCQvjtMQ+to2Fb4YZXXy/f6br1SJoB3jUkWvGGZZmjpk8XAY37xwCJWKAxX/
	kDvrtgYylPKGqqhIAlZ62MCFEpFOYAF40wmW+EbnT/S/gGVXTLrUcxmNw+iSnLu7cJ2UpFIrdj4u9
	WJ4d6E1KuAqWa9mBoVzUgI+/e5egDQsaK7/5pAH6fP23tVIiufEgleWrDVlgxc+1fZ+g9dz3fa/Yb
	wkg51lvBG6lNAC1NbRLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ46o-0004iA-N4; Mon, 30 Mar 2020 23:46:22 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ46J-0004Qe-Aw; Mon, 30 Mar 2020 23:45:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id h15so23731049wrx.9;
 Mon, 30 Mar 2020 16:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DxK6o0d762Zl57HAnhWXL/U279uSuVK4xM7r8LkbtfU=;
 b=iRUVjpwzhUgZWdAu9OhKc2QrrebME/a6PvPbBtwpO/QXWfNUP1cSPkUM8V1DPCppIt
 Z0CsUnSr4EEZfJad+Btd6XHnDBMRP0GI8ZTpVMapuFzv5XRwEEIU8okXXnQAIoQdKHTN
 duUcuETE1GDEw9Nn502Kkhi6wH0qt1RwFhCwRHDtTc2gzJjwnJmkea/Da0961UmhzFgA
 y5f4Cf0DpkYBQ38YboNqsrC+1nAJHojyvjbzoPmKhCsSj+NICy/l0vSgyNMCc4jI/k1b
 UR59ucu7S1ftnBnyzj5iz64c7qaPFhta83VUfxkG3KsUDL1Qyot2jVqBY8ubtcm7/kwD
 yAKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DxK6o0d762Zl57HAnhWXL/U279uSuVK4xM7r8LkbtfU=;
 b=H3sNwU3NOAlvZcw7KljALVl62rKhUep6i70qA2escTiBJjnHZhZph6DZo0/lDSy+qQ
 XHGI9tg+K7NhS18vaJoWfAXSUhTd9flHkAe1JS0MNuPNiOf3KzrDEuxl+uCY4FxpEreL
 VLig5LCJVvs0uuwfGI59zn6k3um95Z9WRC55l9BPMXs6FFTwUyU4BVGR4hQwFaFOEoCA
 HrqtApdtFZgTHdh8G0Qt0x7iUcTo6RhAGDnN2FrJ2nWXznZIuwWC2CG+103Q/Ba7HPrC
 mI4LF7XPRAHb1rOegO+Ix7FHxSyv5gV/T6XGkC4Nve1GDYi4veeCjp2h1EDakVUCcZ45
 qmrw==
X-Gm-Message-State: ANhLgQ1fSfuP54p/OUiyqw7woZPX/pscQodAyF2Ci+lgLpUGGOHdSDSf
 ef8d3ByltUG/g3DBKAwIlQhs8SCf
X-Google-Smtp-Source: ADFU+vviGdVjMK+SeAP3YtjOZuI2rOV6Ly+eqgrfC2ttV2VBMynT39e3PrONu63IHkoumJXpawRGWA==
X-Received: by 2002:a5d:4d07:: with SMTP id z7mr17767249wrt.92.1585611948819; 
 Mon, 30 Mar 2020 16:45:48 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F13710ED00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3710:ed00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id v186sm1392953wme.24.2020.03.30.16.45.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 16:45:48 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, jbrunet@baylibre.com,
 narmstrong@baylibre.com
Subject: [PATCH 1/2] clk: meson8b: export the HDMI system clock
Date: Tue, 31 Mar 2020 01:45:34 +0200
Message-Id: <20200330234535.3327513-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200330234535.3327513-1-martin.blumenstingl@googlemail.com>
References: <20200330234535.3327513-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_164551_372899_B580C682 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Export the HDMI system clock (used by the HDMI transmitter) so it can be
used in the dt-bindings.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/clk/meson/meson8b.h              | 1 -
 include/dt-bindings/clock/meson8b-clkc.h | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/meson/meson8b.h b/drivers/clk/meson/meson8b.h
index c889fbeec30f..94ce3ef0c1d5 100644
--- a/drivers/clk/meson/meson8b.h
+++ b/drivers/clk/meson/meson8b.h
@@ -146,7 +146,6 @@
 #define CLKID_CTS_VDAC0		171
 #define CLKID_HDMI_SYS_SEL	172
 #define CLKID_HDMI_SYS_DIV	173
-#define CLKID_HDMI_SYS		174
 #define CLKID_MALI_0_SEL	175
 #define CLKID_MALI_0_DIV	176
 #define CLKID_MALI_0		177
diff --git a/include/dt-bindings/clock/meson8b-clkc.h b/include/dt-bindings/clock/meson8b-clkc.h
index 68862aaf977e..4c5965ae1df4 100644
--- a/include/dt-bindings/clock/meson8b-clkc.h
+++ b/include/dt-bindings/clock/meson8b-clkc.h
@@ -107,6 +107,7 @@
 #define CLKID_PERIPH		126
 #define CLKID_AXI		128
 #define CLKID_L2_DRAM		130
+#define CLKID_HDMI_SYS		174
 #define CLKID_VPU		190
 #define CLKID_VDEC_1		196
 #define CLKID_VDEC_HCODEC	199
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
