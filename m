Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E14C131ABD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 22:52:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jtRnZ2Ss380tBdZ6nnV3MVd55I+rgRIGCrPeXg/tedk=; b=J8sU6EIEZkPR+o
	RYewf/NG+5oIkisjP1gUBZr+HpOul/6EKw+KVjg12bFJl1NNgHxlQ2GUAliIjRwgSGLDmqouM7XIX
	jNxsFtFGqvMiPVALDGsDWmTXg0mtuhTb/Ii3rcvOciM9uak4s6Ywin0N9TJJzJTWHPEdRKy1Z0ltj
	WyrEMiw+Wu6XO540IUJ8iSQtq0/Urwlvn6VKg/1Eg6y0aHsMN6kvRVKn+AhB3+UGlwNK+Jwz6QEWY
	75X/73YhEElU/qv1nWbW7AV3AILntf3BEcN/pCaQr+8xtvv9Ri6dTfZQ+ruXDE54yKaqvKE8QoZCY
	s/8AL/H59C0axnoFjvkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioaIe-0004tR-0H; Mon, 06 Jan 2020 21:52:36 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioaIQ-0004qV-Dp
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 21:52:28 +0000
Received: by mail-pf1-x443.google.com with SMTP id x184so27557266pfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 13:52:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WhqR1/1MlVUjoENfjGDIreOdfy6GfxPgEoAWtDhN0Q4=;
 b=gQK8DrKlDGQnDMNra0PlNsTOHREW1yC3sxVpzB0qZCb9UM+p091dInwOxPher9gV/n
 I2s8vDLkf6BIdgh67RftE5yaQ7X9Mcj9sFwRdkbu2b4fzWO/I4rY4FZNAnlTDPjNtVsy
 u7rqiyjs9BcaCVv7oGWGA8AeC2lBHg9f4lRr4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WhqR1/1MlVUjoENfjGDIreOdfy6GfxPgEoAWtDhN0Q4=;
 b=M9dMVNh1Ydx8Vnh/t8bAjAJtBHAWa8ekqdPCEZeTIK4D/rQSv2yDYfl+TOTmHRM+Ga
 M4DX193C4QSjTQR8xdINdzu05WUeqZH2m5T1a3wRtwSM4QaoBl8MKEWtS1TcXbv/HJjV
 QICNvANCbJc6EiBkaaHWqi/HsYJhvfi3LHDlZKS0Kta45t46qEJFQPUeTMcMNO2YdHlz
 LUj3LsZ/pUMcwpTKmzsIBpd2dgK2/q5v0XXy8tR0YpYN5hQJ0/YaULeJ77aRVudggS/I
 +RkcpSfP0t0rrVTOu9UhGHRTVNYaaCeaJnp4bTJJWWoo59meUutrtVxbgB7P56PoUV1v
 UdNw==
X-Gm-Message-State: APjAAAX9/ktgmNZoCH17RKk8+OGshMi6cPwTVIBIPav7d6JjWCBRlcfN
 Gfb+yFGT0NLD39xXMXNcCHwSrw==
X-Google-Smtp-Source: APXvYqxyWaoI/OIl6fTrlNo3OKnYhN6S0VeCnD1VQu7xJTxqyHXS7GKPxBP+33HmV2tCGrUvChFyxQ==
X-Received: by 2002:a63:5920:: with SMTP id
 n32mr111368952pgb.443.1578347541160; 
 Mon, 06 Jan 2020 13:52:21 -0800 (PST)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id b193sm71513996pfb.57.2020.01.06.13.52.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jan 2020 13:52:20 -0800 (PST)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] ARM: dts: rockchip: Use ABI name for write protect pin on
 veyron fievel/tiger
Date: Mon,  6 Jan 2020 13:52:13 -0800
Message-Id: <20200106135142.1.I3f99ac8399a564c88ff48ae6290cc691b47c16ae@changeid>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_135226_789835_558D6F45 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The flash write protect pin is currently named 'FW_WP_AP', which is
how the signal is called in the schematics. The Chrome OS ABI
requires the pin to be named 'AP_FLASH_WP_L', which is also how
it is called on all other veyron devices. Rename the pin to match
the ABI.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron-fievel.dts | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-fievel.dts b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
index 9a0f55085839d9..d66e720390121d 100644
--- a/arch/arm/boot/dts/rk3288-veyron-fievel.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
@@ -382,7 +382,11 @@ &gpio7 {
 			  "PWR_LED1",
 			  "TPM_INT_H",
 			  "SPK_ON",
-			  "FW_WP_AP",
+			  /*
+			   * AP_FLASH_WP_L is Chrome OS ABI.  Schematics call
+			   * it FW_WP_AP.
+			   */
+			  "AP_FLASH_WP_L",
 			  "",
 
 			  "CPU_NMI",
-- 
2.24.1.735.g03f4e72817-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
