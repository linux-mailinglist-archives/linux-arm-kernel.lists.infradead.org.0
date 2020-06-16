Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED93F1FB2BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:54:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Es2zR7XLWgCfwhKH+GPt+7TLawLtz+O+2CUJePaCWBg=; b=VjvWbL4VOGxRL/
	rTE696Q+B83YamK8KW/BbDcmIDjwqUHp+ksAj2I+zXz9dFk/yN1p8xys1y1u7PhHZBhdvzE+0KmX8
	FSsVr8vnKa1FPh69KOGZPSfP/7+WM6owD8Fznb6kHc9lIlcHS0jfJjpKy4YFjWN5hQZgYFEP+6ueM
	DlMHIifACDxL43+nDSel/czgjlRjauyAnBLzGjagWRPCVL3XzFajLe9d++GSnGFGnuONbg4in9+NV
	17xrPW2zwPrHuRt6xXhFwfRNrttsEZ6947JlUE6FIgzUtCDVXogyy4cpVupFD9diy8ByMK4C18dN3
	/GN7opp2jcvl0p3wAHUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlC2q-0001wm-5n; Tue, 16 Jun 2020 13:54:32 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1H-00018X-Td
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:52:57 +0000
Received: by mail-wm1-x32e.google.com with SMTP id b82so2977229wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DfKrEtIM9f4J1ILWbHdJL82Q0YpEBKSidb9IkXGOQXk=;
 b=vV9mIgIkoBBNPTMVWWBvzHPSrk6P5tzFLpJh3JSoSj5s0nSsKQKPIfm5/YQDmbv+14
 32C71tw4kDbEdDbgtShYqdX4p61t6eYAqpeDGYXDHUv60ZM3LzBiAMHi0Q6Yd0BsuH0F
 pj6jvZk6Fbkzr+bjBJrd1WJlEJWSUfczM2mKfy8h3uP43/qxAmLrRc4uc1qzvKe3BMrE
 LCiXDbCrXrD0fPMZ1092xY1/5I5uCTidwtdhpxjUItDQiCafPDYEs5gnyw15gAXNk7tU
 UhuvGpRF9VsIBhlEu/f54xmJhxtoUWjmQcm/jDmtF+PCQ40zurlnzeXA/rbQSOcJpijz
 jNtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DfKrEtIM9f4J1ILWbHdJL82Q0YpEBKSidb9IkXGOQXk=;
 b=iQ2TLV+8+nsr5QNE8JTy/I6RSh1fNoizZV3V94ZNdgwKo3KiWGBJLtK2sUQwpDs1Ur
 HF7SPuIqWhdBMZ+6WiT2JDsXQZa7Sxgu1T19eDn/pik80Va4Psh02dBdptqI9N0UcjPD
 kMz0zivDF5tCgLdcuoXgbWllU8F/3TvGjGoU96sEsApdapuZPIOqJQmj1IiQfW+rapFw
 96a43xpX5rEFRskb+MTgWA4F4VBrYodUN23wJ7hVyEkjsTcUfR3SrPLn6v5Fm1eqj4lI
 eXIqWficIDnfF4t/LNqboeTvqjDIVp5vQQnqacHDK7ylKJ9xahc9SZh0X7X3EY7rKB88
 GNoA==
X-Gm-Message-State: AOAM531V/weW/5E1Lf5KxGZlyCHwLuJ9/Msb7gjeyW4HrRbeIocS4qco
 91rXA3xayCHH9uy+KBpRhR8TordQ
X-Google-Smtp-Source: ABdhPJzimWy2ZwnnqLNniAegIrukiql+cBkrgt5pDjrKUCZoH3HwmJMKY76ZkRr9xCvh6yZhb66gkA==
X-Received: by 2002:a05:600c:22c9:: with SMTP id
 9mr3660108wmg.68.1592315574125; 
 Tue, 16 Jun 2020 06:52:54 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id g25sm4114995wmh.18.2020.06.16.06.52.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:52:52 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 04/73] ARM: tegra: Remove battery-name property
Date: Tue, 16 Jun 2020 15:51:29 +0200
Message-Id: <20200616135238.3001888-5-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065255_991222_C6F8F94C 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32e listed in]
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

This property is not documented and will cause a validation failure.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra114-dalmore.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/tegra114-dalmore.dts b/arch/arm/boot/dts/tegra114-dalmore.dts
index 1dfff574e371..584db54cd750 100644
--- a/arch/arm/boot/dts/tegra114-dalmore.dts
+++ b/arch/arm/boot/dts/tegra114-dalmore.dts
@@ -769,7 +769,6 @@ i2c@7000c000 {
 		battery: smart-battery@b {
 			compatible = "ti,bq20z45", "sbs,sbs-battery";
 			reg = <0xb>;
-			battery-name = "battery";
 			sbs,i2c-retry-count = <2>;
 			sbs,poll-retry-count = <100>;
 			power-supplies = <&charger>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
