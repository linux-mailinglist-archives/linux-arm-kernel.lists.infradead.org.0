Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5961FB34F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:02:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uTV/amGN5Wq5C1zDfXjhZaHsu3cIsK9aPcDtSuaG4Hw=; b=hpNhKuSeaUspRO
	L7hYqVnxaMSDkAE2w0Xhb/k6sfPsj3l/Z9zq6g6v6kDmcKkoLUy0sci2+IxexyN4jyZ2Kr0YJSMbc
	FClvoBlvHkYdjnu48K4EWnSyjQjXJkeCxDaTGFCymbpAk0iocBu3P1n3o8OABMDi75fWq8lMcjInu
	M9VP5BL6nV873+MY/rhxugnxbKuwYA3SrFQ2CZJHubTjWYWqLc7x8xZeYd4yBkEcEfcuxAFtPEcUf
	fFHmELENUVZUZJafIX7so1Lx3o1q6NIVVIZoKNGaiC3q55A621mI1cPll0Vn/28WnILWN/KrBjgBF
	//aK0IibiBzNWzmgqtcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCAk-0003f2-PX; Tue, 16 Jun 2020 14:02:42 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1y-0001eO-7E
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id l26so2967835wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yARV6SdW9Fdnel5OryZ3Ntg8sa7z8FvpxnGgYK03I6Q=;
 b=AGlDwMAuMttD93ZFrny7xaafBGk7hcL8tTNIcMQgSh8uA03JtKERONtDRyKr0AeuxW
 kBGDGSMMp+DQzwKHrCDk3hc04BnS8ZNMDgN07q6yhB6pUpah2zVivskpv9NqkEVywtEK
 wg5gSF9WcjnOwpRGFo5b0QIYFg8+rYz7C3yuw73DZFqTwryGhZNDElyTukTWWaJVKArp
 wHoSxg6B8KBI/HQj43XsSKhyxLXqFipwdnrtCIHv2BDBSYyj2CoodJLAwchKHzKF6xPx
 +/TKsnU6Y9XXKev7srolYC3/5hfbWh1S0ylx5R673wqqvo2TnghjY61Vylj9/J4vOm9S
 1S7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yARV6SdW9Fdnel5OryZ3Ntg8sa7z8FvpxnGgYK03I6Q=;
 b=aPIo//Q+l4oeY5IoKkphMJyDJJW3EWvJyO47AlMBtmEiMX6jGuTHrEG1Jq1QkeyG6x
 ZS8AJMm/nbLoiIGkr/CeH393XnvKhq1czucG8SC0rVieL4HTkY6luqCOUhCxfITGO6N6
 UxvGDjUYg1Y9yWf7zgWnMSAVfU6klEDBOMr1u4hqd6fcM0AUfd7zmyvh/d43W1A/t/px
 iETw9RLMqFQTb9npr++Xv3PWdPY3WcO3Qx29dqymPVPrKZD3Q1nvGnb/QchwMjJC5/eF
 QIdbnyDh2UjeiWl+3ZAux51QtIdFEPF8/Bab+kb7/1Bc7DL3Ih0zCADAO0cXnH71M96v
 A2hw==
X-Gm-Message-State: AOAM532EEC+5+H/ZU7e/YCWPeBS7OrSVrFAYOjHz5LQ+nvIUUP8zkF8W
 3lt6C7YxO7KCw9kyueoBVnNurZAo
X-Google-Smtp-Source: ABdhPJxX7fKw9SsyOsD/tQmPgKjfCQrvFnNEvc8F1ERpNkP2tRdih686XFt6qhBQ1mJ6JYZbbqjhtg==
X-Received: by 2002:a7b:cb4c:: with SMTP id v12mr3299951wmj.43.1592315616766; 
 Tue, 16 Jun 2020 06:53:36 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id l204sm4290844wmf.19.2020.06.16.06.53.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:35 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 22/73] ARM: tegra: Add #reset-cells to Tegra124 memory
 controller
Date: Tue, 16 Jun 2020 15:51:47 +0200
Message-Id: <20200616135238.3001888-23-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065338_352232_54F4DBE7 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

The memory controller exposes a set of memory client resets and needs to
specify the #reset-cells property in order to advertise the number of
cells needed to describe each of the resets.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra124.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/tegra124.dtsi b/arch/arm/boot/dts/tegra124.dtsi
index 6d34742b56b9..98cd7962a559 100644
--- a/arch/arm/boot/dts/tegra124.dtsi
+++ b/arch/arm/boot/dts/tegra124.dtsi
@@ -622,6 +622,7 @@ mc: memory-controller@70019000 {
 		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
 
 		#iommu-cells = <1>;
+		#reset-cells = <1>;
 	};
 
 	emc: external-memory-controller@7001b000 {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
