Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7598913495C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 18:29:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p1u3rSBKuWL7QlOcHmd35on7UeWmFl95uv0frF4ZDXM=; b=MljQs0kHi+StSy
	aL0Dr7hC0a73e2lWjNsNoEYMUDvR24CdLz/31F5sxT6UKGPePzYS63G8PMrxzWlKL90deYonbmQYT
	3zRLcX6Uq1nzEmTBYYWsYVF+qrXAckNHOIH8OgJXxhSPvmBZB8UPUVyXojsmLdX54HTSG7DaMILm9
	+FVitNIc8RChDCh1oOatKiRcmrSekqp34Lv8CIjUl6xMtWKumz/WB0ICZrp/BXV6cHYOoFNyw/E33
	i63zkcKyFRu6s4dAzBWuWKfE85tIUfqzAo4hnGg6BSOW5/vlIySRSsqhYFBFcQy2bREigh81kBEZk
	OOS0QNk2JqqKpjEu4V0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipF9T-0004aD-HD; Wed, 08 Jan 2020 17:29:51 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipF9K-0004TG-1e
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 17:29:43 +0000
Received: by mail-pg1-x543.google.com with SMTP id x8so1890829pgk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 09:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mMwd4GY7WpoUd+q3WHc05cOMnEtzmKmuiR4/lw/Ya3g=;
 b=T/HyNHaq9e8cbQVUreQfu5gRUOxAEtP7KBnGPK4VG1izDsBIXfErCDkAzoODEWAKfT
 KmVRs7if9s79Hw4/IRFF7llVxAHbrvpIH1e5fKl5V0cerMK08L5hixYimJYXzQig4pB4
 ihttQxAnVdGv3/7gXuOM7it2XnqHJCQwIkoIc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mMwd4GY7WpoUd+q3WHc05cOMnEtzmKmuiR4/lw/Ya3g=;
 b=Tc9rTaacSvM2xews/ahBq8YYzSvGyGvIxLF3GbQBkP64hSUkZcRZmfFo9jXGtig0PO
 WIqjh9Q4ztew0JVUzKeusP0fqkMyuwSqOalj+CBPz/rJqI7OrER1L0r9xORTJa6AV0Wz
 VeEVCdMMUnm4pbC/DhsX7cU82H2NrR6iQGHWDVlKeqLMwHDotIASdmtCXzvjhkLZoCGQ
 NNDu2pJAVamEQ4c7m/CTetav4fPme7tP6IbfCnTqKaaM+Zxcy0VkZaeFdb5mMrD2M3NO
 rUbkdkE8b/zjTVcFdg8zcpzQWEtDzOp7w3RV6bzfYdr26t+n6Lgg+mbYpg2RSIqg3UCh
 AHEQ==
X-Gm-Message-State: APjAAAVqW9SpAdtirhwsSL5flqeuHYVT02gsR68mEx4zF3B8GJIHNTGZ
 Tls7qH/Gz7+jeTCtb4jgMwPHIA==
X-Google-Smtp-Source: APXvYqw0OvKMBstXlwLxuisnD8Yf1k/xKZ1PL3f/l7d7MkDcdEYGfVApur48bGpdfK8DooEJJ6BlMw==
X-Received: by 2002:a62:7c58:: with SMTP id x85mr6263307pfc.76.1578504577924; 
 Wed, 08 Jan 2020 09:29:37 -0800 (PST)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id i4sm4464144pgc.51.2020.01.08.09.29.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jan 2020 09:29:37 -0800 (PST)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] ARM: dts: rockchip: Use ABI name for recovery mode pin on
 veyron fievel/tiger
Date: Wed,  8 Jan 2020 09:29:33 -0800
Message-Id: <20200108092908.1.I3afd3535b65460e79f3976e9ebfa392a0dd75e01@changeid>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_092942_088025_C52D0EBC 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The recovery mode pin is currently named 'REC_MODE_L', which is
how the signal is called in the schematics. The Chrome OS ABI
requires the pin to be named 'RECOVERY_SW_L', which is also how
it is called on all other veyron devices. Rename the pin to match
the ABI.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Another misnamed pin, I should have noticed when fixing the
name of the write protect pin ...

 arch/arm/boot/dts/rk3288-veyron-fievel.dts | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-fievel.dts b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
index 2d6f32b77821b8..9f4bb5d2e7d8dd 100644
--- a/arch/arm/boot/dts/rk3288-veyron-fievel.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
@@ -234,7 +234,11 @@
 			  "PHY_PMEB",
 
 			  "PHY_INT",
-			  "REC_MODE_L",
+			  /*
+			   * RECOVERY_SW_L is Chrome OS ABI.  Schematics call
+			   * it REC_MODE_L.
+			   */
+			  "RECOVERY_SW_L",
 			  "OTP_OUT",
 			  "",
 			  "USB_OTG_POWER_EN",
-- 
2.24.1.735.g03f4e72817-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
