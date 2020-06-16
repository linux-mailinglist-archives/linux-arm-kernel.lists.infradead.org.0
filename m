Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F531FB406
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sayUrTEWOTfRWNHNrZt1nFTcCJkqxI1f5cY5KaJLsz4=; b=t2Cpk0nQMom1NH
	fV8Us3Q1H7F1ML1jbgShhbLsPU7/XQgWri5Fvp0AICJALLyMf3ElitXNj/3KZltI0cemgx3WXDx5G
	n+KSbGCN4W31b9RqSljVmWe+LK+VuhQEJsaESBskOShN3kijexrdTT9HtwKmzq45s7K/GAWLqZPgv
	zbGRMZzVK/s9MObwTS6bCqcVAMDHn5KbTMO0qrL9RrIXCc+YSxLwD1eCN08/I9HkJbYXIQFOZubHd
	s7swMYlrxl9qyUTtlAjTTz9f2c98+J5/pd+Ywko+QWBBQ4yRcLI+czQABAnVpErLYhHWQgQaGso2r
	eLolMje/1Cl9ijVYNdsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCQ8-0006aW-Tf; Tue, 16 Jun 2020 14:18:36 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3r-0005EC-NI
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:55:43 +0000
Received: by mail-wm1-x344.google.com with SMTP id l26so2974213wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b/ud2iNCzzfUQWkTRBupAyrbtSyjxPAlpvmlQzKE/M8=;
 b=KaTK7VRcLSeBOA7sASfQ27MMNh4YKF8HqkEh2vTw6jfVOCtQnukZVveEbDu5+hvMEJ
 hhHk2VXTN0BmdqT3HQFGHME9C1Sn5MMt/EECRcAoc9hc23b7f+X1ge6xNjFgT4qBQvgP
 vrTR4H6doaOFapam1uChBUItERsO6Tlv+oJ/VSdY0Uzp2I1LJtsI7uRMyBokETN2Ci7V
 eQZdcQRnKABoNJnEna3COj+2pWvh+yp1VTW9JCoicR590hdjQSUGGFT70UatJd6UOblr
 InsFA9dgAxcjfX8jQyXlfEFTSKS32klyEPkD8Lp6VIXl2gWRg6JLewPLAFq9YsCUqS7g
 uEbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b/ud2iNCzzfUQWkTRBupAyrbtSyjxPAlpvmlQzKE/M8=;
 b=jhvdfsBUseQTP4opU1I391p8D3HpH9trrzl7Cvr8melVaF0KfJcMd5M9xGZecmMO/A
 FKcsuFNPBrRSEDLd78aaUqJ35F5pTb1c7hQMH7hTXN+rGqLwHOwNIxh8cU8bs8j0krPw
 4dq2LUTrxSyz8oorCOLpu5ZgMdTn0ACCR5yk7FFrOsjxCEHul0Fz6aAaNukpvyQR4xb+
 Bn8s3lYaICB93oYwDbgIa7H3R+zW1UYOWwCM4mz2HKmHoeJaWMmMN8HvFgyV6081xnLI
 ayZnuVpvvWLh/MkNEc0vRv2hhZUGzoB8lAZUvZcnpirtePGji2meUAitqfmFtWiyni1t
 5teg==
X-Gm-Message-State: AOAM532id6bqPbo7Zb7fbc/01VyOJzdKakYizrEv4AmIvfzt7XHnpQGe
 +YsAjyT+u5zGOt8Dx0wiHAs=
X-Google-Smtp-Source: ABdhPJw98uyBFK8XEAC3DjOAnK67bOy1RiJufbug7vvO/yieL4pz7/m9oka73Gid+XbR56+o4MbdqA==
X-Received: by 2002:a1c:3b43:: with SMTP id i64mr3515565wma.112.1592315734143; 
 Tue, 16 Jun 2020 06:55:34 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id g82sm4221734wmf.1.2020.06.16.06.55.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:55:33 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 71/73] arm64: tegra: Sort nodes by unit-address on Jetson Nano
Date: Tue, 16 Jun 2020 15:52:36 +0200
Message-Id: <20200616135238.3001888-72-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065535_875793_B13DCD15 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

Move the usb@700d0000 node to the correct place in the device tree,
ordered by unit-address.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 .../boot/dts/nvidia/tegra210-p3450-0000.dts      | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts b/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
index beec6aab2157..4eb51e5eef3a 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
@@ -545,14 +545,6 @@ mmc@700b0000 {
 		vmmc-supply = <&vdd_3v3_sd>;
 	};
 
-	usb@700d0000 {
-		status = "okay";
-		phys = <&micro_b>;
-		phy-names = "usb2-0";
-		avddio-usb-supply = <&vdd_3v3_sys>;
-		hvdd-usb-supply = <&vdd_1v8>;
-	};
-
 	mmc@700b0400 {
 		status = "okay";
 		bus-width = <4>;
@@ -566,6 +558,14 @@ mmc@700b0400 {
 		wakeup-source;
 	};
 
+	usb@700d0000 {
+		status = "okay";
+		phys = <&micro_b>;
+		phy-names = "usb2-0";
+		avddio-usb-supply = <&vdd_3v3_sys>;
+		hvdd-usb-supply = <&vdd_1v8>;
+	};
+
 	clk32k_in: clock@0 {
 		compatible = "fixed-clock";
 		clock-frequency = <32768>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
