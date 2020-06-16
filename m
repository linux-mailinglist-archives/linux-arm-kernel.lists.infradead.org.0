Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BB91FB36C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:05:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sMbS0+P78Sfrplq3OXlOairpYdNaTpBjuANmf0GiXw0=; b=r1s9wBSk8m2rI6
	1jhQsYcBPdFzySbA/faMmv+xDipVcjFJsH+CT1YmqlS4BzJrgnXQtV/sye6bEczznkX8Y0ZYG8lF/
	GhIdC1mM+XHIglMG3q/VxGNWb6GpZF8trBFwRAv20TgYHicOYjEhGAfu4VunP+rlj8ip+y40/Dj3v
	o6a/B84O5j3fuA4s8FymmVq4dNDpMzd5Oer38GDTl433Yo9baezBSDDaXHBNAEequhlCik1pTPmfo
	ap7yW/Zqpq8GRoI248ebhykdSlo3zMTw9gDwVspT4BuizBdwViUcN8pciQns1bnAppa6oWG++urI9
	UzZj8cehTaTmpb0yFMhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCDI-0005cO-4K; Tue, 16 Jun 2020 14:05:20 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC2N-0001wO-UL
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:07 +0000
Received: by mail-wm1-x341.google.com with SMTP id t194so3162806wmt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tMYaQdji6zR5lZgb0sKLhTaK1Jb/52l/cl/I/Gv3TlY=;
 b=dpTouy5lnSQNwoKZkllwZ8r+NnHAugELmJre2azRgCaQxs5E5VP/CHt559N+CRRAJc
 r38la9JiGOAAgaAbB4vgHn+YjfN9gnaC3acHsy1NP8dTezZirBLxLUQpPdHuTPRFqOG6
 S/AnbWdTVqfJcTl0VQqCI9NANyHEI28uZL7ZyzAlo2eYP5bqNOgCgU+FKfI+Xnii9Bbg
 AVDO1YqUWkb5H3vQo780+pJd7AufKtya7nEGgp02RK73QzU5T2LRbs9KalwYtmjpeuVz
 12+6gsGppT6hPxq5VrxH0ZUY0Ari+gnw2Uir6EdF8yQ2es93YWReAj1dubVuk0ZAPKZw
 kNRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tMYaQdji6zR5lZgb0sKLhTaK1Jb/52l/cl/I/Gv3TlY=;
 b=Sd732Ektm+aVwcV006QKf7tHeqro77tFXvmsaurCt9mo+mf0LDCvltBFkleY/SimRd
 nR/hrodXTHIeUE1gd2mlCv8krTVFS0wg9P0exqQteB8KdIiBG35XZj0QX4sbqH+TqXUB
 QJr/lsbkobm8VimjS16YYdpmh7ilVhylu/M8m6Yd/NDrfN/muh1wD4kTXB/0Fx9Og170
 A4QDpQRJKytUhOTAhWWPWbLmJXKd4SzIY/ePeRZEBkn+HFnaSYBCZY1vIO80KBVx6+97
 rOvJgkIKMVyvJv9y6yKMka1YTVA1KEfphX8+RxgaDE0cpftYx/9GtEKQTNMTr++zA7Vu
 kWgA==
X-Gm-Message-State: AOAM532kJwc3IKThUC0VeQVNbK/0kQrLLvhbLpf/3Cxs/o++FlYIzMLg
 94jYcY3Azp1G/g06WhejeDShbMCY
X-Google-Smtp-Source: ABdhPJyqXi3fI4wDpzEil4M7ad15F2TY4dvEOrQvYWH6fnTkBq/azOgr+vucDNV5uc/ts6EfAesU6g==
X-Received: by 2002:a7b:cb18:: with SMTP id u24mr3441539wmj.67.1592315642652; 
 Tue, 16 Jun 2020 06:54:02 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id 67sm30302842wrk.49.2020.06.16.06.54.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:01 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 30/73] ARM: tegra: Use standard names for SRAM nodes
Date: Tue, 16 Jun 2020 15:51:55 +0200
Message-Id: <20200616135238.3001888-31-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065404_002885_F98DE3CA 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

SRAM nodes should be named sram@<unit-address> to match the bindings.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra20.dtsi | 4 ++--
 arch/arm/boot/dts/tegra30.dtsi | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/tegra20.dtsi b/arch/arm/boot/dts/tegra20.dtsi
index ccd2995aef83..2568236284ad 100644
--- a/arch/arm/boot/dts/tegra20.dtsi
+++ b/arch/arm/boot/dts/tegra20.dtsi
@@ -17,14 +17,14 @@ memory@0 {
 		reg = <0 0>;
 	};
 
-	iram@40000000 {
+	sram@40000000 {
 		compatible = "mmio-sram";
 		reg = <0x40000000 0x40000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
 		ranges = <0 0x40000000 0x40000>;
 
-		vde_pool: vde@400 {
+		vde_pool: sram@400 {
 			reg = <0x400 0x3fc00>;
 			pool;
 		};
diff --git a/arch/arm/boot/dts/tegra30.dtsi b/arch/arm/boot/dts/tegra30.dtsi
index f838e4775cf6..690e1628860f 100644
--- a/arch/arm/boot/dts/tegra30.dtsi
+++ b/arch/arm/boot/dts/tegra30.dtsi
@@ -97,14 +97,14 @@ pci@3,0 {
 		};
 	};
 
-	iram@40000000 {
+	sram@40000000 {
 		compatible = "mmio-sram";
 		reg = <0x40000000 0x40000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
 		ranges = <0 0x40000000 0x40000>;
 
-		vde_pool: vde@400 {
+		vde_pool: sram@400 {
 			reg = <0x400 0x3fc00>;
 			pool;
 		};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
