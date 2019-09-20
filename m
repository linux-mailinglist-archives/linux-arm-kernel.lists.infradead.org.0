Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 002D9B9383
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 16:56:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fdZPY0IV8o0tlphw69JJEa9skIRTscHqvtZ6dt8WZ8A=; b=X8yQ9XxRglp43R
	q2bjye0k68CGfcOxorIJog5jr4lwLAkWPKttQTBho3uBxkCpF9FmczfJOEFYUV74E/Unwn7zBp02T
	+2cfi79qm8bT8lVgyQmf41ZSdMrSYy/P+k1rpLH2ibTtkzEhGPtX2M2gcoJH6rUhjkWs8A8pZHSYb
	dp3XS/g34dpvz4+/O6VvuuXhrNYkqqIws2Oh2w/81VQX+qO6spHySz/iDMTksA+43FjEC79CPmBwF
	X1lyeBNv8+AkQZ52dry68rZmQ7+VKRe7snUGk6wM+1dWOH4hSADqB7Pzc9Ow/ispxtkIbbS530T0Y
	BlTPasFQ2lqhj0brbm/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBKKm-0000do-5f; Fri, 20 Sep 2019 14:56:32 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBKKg-0000dS-3v
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 14:56:27 +0000
Received: by mail-wm1-x32a.google.com with SMTP id f16so2581618wmb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 07:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aU0z+hVMkgc1yYEfSV2tujiKTM9NHwFgDr72hAtaZng=;
 b=N2gojDcyOylCYEFUPtUNp53P65Yn+FGUYdFE7J4i8AY9bLT7yskXhVoX15hwXiP1Pt
 LRnmguaOaOBnK3VjdMlW9B7Yj6JV01wHeN6h3A1Zc2r+eUOx18VQZsOBxLl+TmuRh3fq
 YyRWaht89M4dlqy3C4wYbVu8iamwQByd7zeo74vZdti/8yOEtkw1LeKeXL4IdIgJygpm
 4+Sr2XMok05FoP5/HnpFb6IMpZtkqs4aj2iizHCNxUk7WUZbtBJVim44JjDjy0MExfjg
 9b9caLR5uA3c+sRZCZ4osphdzreYRj+TrxpL1Bfu3rfB2iny3/v7kN214GuaTbQoh+83
 lDtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aU0z+hVMkgc1yYEfSV2tujiKTM9NHwFgDr72hAtaZng=;
 b=cxXk/TI4ZCRMwks2lfwTcGdPCu5jQKL227AXK13jxzue7xL9ttYQrYARiHa1W6UcBs
 u6PzIaJsHytHXzUWGVduFXEgHVPV98hELwkJThAJJspXc8s8AtcFECZ5Dai+1uxxz4w3
 KnxY1vbRxoO+HeMuYowYldC4229enQicaG2udABGffLyU3ZOc43O8Il0OJM09c/vVF0L
 zrt3hmxUxIIUBG0b/seHh67mLmj9mEGwdKtBeCCwmbkq4jtgcucziuufbitmYETZ2c9r
 vRSEL1CnkIy+02sEGju5Q+011o6kFqXxxV1keFCorPNzdYZhKhKwGuv9JGQDyy7fWJ0p
 cvww==
X-Gm-Message-State: APjAAAUBURAb08yZ3NGkKztfF35hPDNyjQPkpDeCP8s6vBnWsdzGlG+n
 yGnZtGeDqg5BPzFo/yKC2yNPuu5f
X-Google-Smtp-Source: APXvYqwU3IyibrsNr/lVlhmE1NmKj2Klw+JUR9QQ5IM2nYJv3ZJQ65XH3s6yv5c5W+DZ1jh0v2wrfw==
X-Received: by 2002:a1c:a404:: with SMTP id n4mr3828121wme.41.1568991383811;
 Fri, 20 Sep 2019 07:56:23 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id x129sm3065115wmg.8.2019.09.20.07.56.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Sep 2019 07:56:22 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v2] arm64: tegra: Add CPU and cache topology for Tegra194
Date: Fri, 20 Sep 2019 16:56:21 +0200
Message-Id: <20190920145621.12527-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_075626_187098_08137E9C 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, Joseph Lo <josephl@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Tegra194 has four CPU clusters, each with their own cache hierarchy.
This patch creates the CPU map for these clusters and adds the second-
and third-level caches and associates them with the CPUs.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
Changes in v2:
- fix reg properties for CPU nodes and update unit-address to match

 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 156 +++++++++++++++++++++--
 1 file changed, 144 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index adebbbf36bd0..27bf0b7c3f6b 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -1442,60 +1442,192 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		cpu@0 {
+		cpu0_0: cpu@0 {
 			compatible = "nvidia,tegra194-carmel";
 			device_type = "cpu";
-			reg = <0x10000>;
+			reg = <0x000>;
 			enable-method = "psci";
+			i-cache-size = <131072>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <512>;
+			d-cache-size = <65536>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&l2c_0>;
 		};
 
-		cpu@1 {
+		cpu0_1: cpu@1 {
 			compatible = "nvidia,tegra194-carmel";
 			device_type = "cpu";
-			reg = <0x10001>;
+			reg = <0x001>;
 			enable-method = "psci";
+			i-cache-size = <131072>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <512>;
+			d-cache-size = <65536>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&l2c_0>;
 		};
 
-		cpu@2 {
+		cpu1_0: cpu@100 {
 			compatible = "nvidia,tegra194-carmel";
 			device_type = "cpu";
 			reg = <0x100>;
 			enable-method = "psci";
+			i-cache-size = <131072>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <512>;
+			d-cache-size = <65536>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&l2c_1>;
 		};
 
-		cpu@3 {
+		cpu1_1: cpu@101 {
 			compatible = "nvidia,tegra194-carmel";
 			device_type = "cpu";
 			reg = <0x101>;
 			enable-method = "psci";
+			i-cache-size = <131072>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <512>;
+			d-cache-size = <65536>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&l2c_1>;
 		};
 
-		cpu@4 {
+		cpu2_0: cpu@200 {
 			compatible = "nvidia,tegra194-carmel";
 			device_type = "cpu";
 			reg = <0x200>;
 			enable-method = "psci";
+			i-cache-size = <131072>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <512>;
+			d-cache-size = <65536>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&l2c_2>;
 		};
 
-		cpu@5 {
+		cpu2_1: cpu@201 {
 			compatible = "nvidia,tegra194-carmel";
 			device_type = "cpu";
 			reg = <0x201>;
 			enable-method = "psci";
+			i-cache-size = <131072>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <512>;
+			d-cache-size = <65536>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&l2c_2>;
 		};
 
-		cpu@6 {
+		cpu3_0: cpu@300 {
 			compatible = "nvidia,tegra194-carmel";
 			device_type = "cpu";
-			reg = <0x10300>;
+			reg = <0x300>;
 			enable-method = "psci";
+			i-cache-size = <131072>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <512>;
+			d-cache-size = <65536>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&l2c_3>;
 		};
 
-		cpu@7 {
+		cpu3_1: cpu@301 {
 			compatible = "nvidia,tegra194-carmel";
 			device_type = "cpu";
-			reg = <0x10301>;
+			reg = <0x301>;
 			enable-method = "psci";
+			i-cache-size = <131072>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <512>;
+			d-cache-size = <65536>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&l2c_3>;
+		};
+
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu = <&cpu0_0>;
+				};
+
+				core1 {
+					cpu = <&cpu0_1>;
+				};
+			};
+
+			cluster1 {
+				core0 {
+					cpu = <&cpu1_0>;
+				};
+
+				core1 {
+					cpu = <&cpu1_1>;
+				};
+			};
+
+			cluster2 {
+				core0 {
+					cpu = <&cpu2_0>;
+				};
+
+				core1 {
+					cpu = <&cpu2_1>;
+				};
+			};
+
+			cluster3 {
+				core0 {
+					cpu = <&cpu3_0>;
+				};
+
+				core1 {
+					cpu = <&cpu3_1>;
+				};
+			};
+		};
+
+		l2c_0: l2-cache0 {
+			cache-size = <2097152>;
+			cache-line-size = <64>;
+			cache-sets = <2048>;
+			next-level-cache = <&l3c>;
+		};
+
+		l2c_1: l2-cache1 {
+			cache-size = <2097152>;
+			cache-line-size = <64>;
+			cache-sets = <2048>;
+			next-level-cache = <&l3c>;
+		};
+
+		l2c_2: l2-cache2 {
+			cache-size = <2097152>;
+			cache-line-size = <64>;
+			cache-sets = <2048>;
+			next-level-cache = <&l3c>;
+		};
+
+		l2c_3: l2-cache3 {
+			cache-size = <2097152>;
+			cache-line-size = <64>;
+			cache-sets = <2048>;
+			next-level-cache = <&l3c>;
+		};
+
+		l3c: l3-cache {
+			cache-size = <4194304>;
+			cache-line-size = <64>;
+			cache-sets = <4096>;
 		};
 	};
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
