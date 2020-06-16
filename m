Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E593B1FB37A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:07:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQP2sToKMV8PWR349Zi4r2LGhFqxr2xcFsVTEOL5trM=; b=NyTT5frjZaQCXv
	QwpHfOJJD8zG7knV3/UKlZksH4kLEoZeZ3F9055wJ9UzSlGgssA/fJUl39jle8DMeOjgaSgBNSVpp
	gjWSBWqmr/OveBLRTTpeZhIsL6b1Xc5mY0m0ejR42uBQcJrvvDlSv+aoYal4AYWAtUsTw9SIhbtiG
	9kPI31bdvt6WYgLwlStfdaxXiFVVNPLV7frqSqmv/dTBe+9fmh6052cNfVvUvxHTcYuW4ENOu8Szq
	20JMtUPB7g/XMsksEwcadapIYBJD9eNIi9tDugbZa6MoTfg1GXP/0AdHTrlzMW6S3rh1aHfY8i9uS
	xq/N/O8q+fsmFPONVjEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCFP-0001XC-Gs; Tue, 16 Jun 2020 14:07:31 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC2f-000262-A3
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:23 +0000
Received: by mail-wr1-x444.google.com with SMTP id c3so20834293wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q+qDaBmogzp3rENt1OG4yOphWjq8JVCDpGzP7ggeRUE=;
 b=F15k2Y0dRr1PfVU0cOR9rJidj02ntjM5osYJpN1Q7522vgCLGYIGRxfbeEwbV0q5GB
 cjPcGPv4miJk8NnsLhCCmG94vfL18zhaZhCjMCY/vLQsm3W420ihgVWEQilPZOibZ2gA
 cc/IHIl/t/DHIo0CEJ/9WZf53ogMVgrNsAez4qBfZpN8NuPvoK4p93V0pn5Ne4lIPCw9
 9lXy6+p/EupWYWkm93HIWQaif+nb+zH5UeGrdVY7jTe7vKEl+O9iG+C5Ut2aAxYMY69R
 q3zKH0B3Vknk+jHT1QmNw4fLjtuYXgRy+tRES60GGshE0MAl296P5qamEdVe+8PZRzPm
 bQwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q+qDaBmogzp3rENt1OG4yOphWjq8JVCDpGzP7ggeRUE=;
 b=TGuX+rHTTxIsmDUSa2sjEDsONroqiDr6fOpmOZ6sJNbDyAHTzb+qcVOlCc377DfCTU
 1rfNU7k21tU8IrNczAuxljVaj2VaNsEYnKd9/XPq10s0MJ5+Nt9tfgSxWejykNDAn1pB
 RFrHwpB08MICbLWGKrfyq2hFP/9toDSMXp1eCCttRpm6kUFBkHGYEUROu47hz8L0njd7
 LqvFT0Zy2ESgq2kLJv0cuycdmqB6GRV/ZRmQi0bccHY1kMYrXhbmgA9HK3YXYBgRkzHP
 0iRYzGJFWvv0fGfGbGCDLLUxDF+ghG0Vy4In9gIovMQ2OwdpkaAnXw029HNDrKYwL1Sl
 n9JA==
X-Gm-Message-State: AOAM5304o161br8XjKSp9IYcw6Lmo5Bu3HKxZstROSG9hqt5tFDE+eNC
 C9kr9q+m93OsVSZ+ejyMDsA=
X-Google-Smtp-Source: ABdhPJw85hnj9ARPHTZVDw2ajb6UG35sRgBJqf2472xqfKzPrPrvL70ttg/oUH2a/S5dRw7iS/zsfw==
X-Received: by 2002:adf:9b9e:: with SMTP id d30mr3280508wrc.345.1592315659931; 
 Tue, 16 Jun 2020 06:54:19 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id b81sm4430697wmc.5.2020.06.16.06.54.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:18 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 37/73] arm64: tegra: Fix #address-cells/#size-cells for SRAM
 on Tegra186
Date: Tue, 16 Jun 2020 15:52:02 +0200
Message-Id: <20200616135238.3001888-38-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065421_520043_4486A925 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

The standard mmio-sram bindings require the #address- and #size-cells
properties to be 1.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index 58100fb9cd8b..373f575b8678 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -1216,20 +1216,20 @@ gpu@17000000 {
 	sysram@30000000 {
 		compatible = "nvidia,tegra186-sysram", "mmio-sram";
 		reg = <0x0 0x30000000 0x0 0x50000>;
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges = <0 0x0 0x0 0x30000000 0x0 0x50000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x0 0x30000000 0x50000>;
 
 		cpu_bpmp_tx: shmem@4e000 {
 			compatible = "nvidia,tegra186-bpmp-shmem";
-			reg = <0x0 0x4e000 0x0 0x1000>;
+			reg = <0x4e000 0x1000>;
 			label = "cpu-bpmp-tx";
 			pool;
 		};
 
 		cpu_bpmp_rx: shmem@4f000 {
 			compatible = "nvidia,tegra186-bpmp-shmem";
-			reg = <0x0 0x4f000 0x0 0x1000>;
+			reg = <0x4f000 0x1000>;
 			label = "cpu-bpmp-rx";
 			pool;
 		};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
