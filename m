Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2D4B3A72
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 14:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5cdvAMENkret+03m+t0M/xwPgVfFP4XuzdtZ8kHxJqw=; b=nSKA55XZvVxQx2
	ZysV4DX/XSZXEndanOKp5/QtfVXNPRlVgEKvyFdBAAjVQmuTg6/pP7MTWXyX4XytghzoqqlfcoFJi
	hysn/TJQq6C9/K19znXA0KT1fTvHqorRLJf8vCsGeKFdDsXDdUj/Wkk2YVLOS0lnl5DbeIi+gJ3lL
	xz3uXFBC0x4RLChd1ZzJiKDjpdBGxFB1BtRns7eKbwW+F0VQ1OAoidnI5cJvzvJDk7re8XnedSFmn
	bwd9PWgDgzPgq2nI2BS5TsdcT+s/zdKineKxJGKBEfP+8gcTxpvwo4JpXNiemsGFxVzMzZvEkdj/6
	Z83X9hwNgA/JgkLK0iMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qFa-0004cv-NT; Mon, 16 Sep 2019 12:37:02 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qFI-0004cX-Ht
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 12:36:46 +0000
Received: by mail-ed1-x541.google.com with SMTP id g12so7253397eds.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 05:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+vob9lcdcRaSmKVh/xs3npgI8r4WLNXKNo0lU+m6q5w=;
 b=fMQgF9XPpNyXc4gjg9fCSZ+oZZ5PNtQnhOYhDaGFAbZX621eAz60KTANyp/cx3ZBJX
 g9LXZ5XCe8qK0CtrzAm7SY+sfDAMUfBJN/uMuUWyZ+Koe3COpShG1JVpjBGahGgUD9n7
 rQwcyti9OPI5v9BsRU8rvj4ds/P2zkzXqXrlQU+Pcjuc1HGGu6PIvhlYp5eR/QmETIMH
 SaT4ov0rVghON8IyWTmCdJbQ9DAwniAYkMYct8uSkKWRjs6oIDNYwdSAReXtNMdJAD2H
 rugo0ts6JN3lxD/2JIZRzl8L9vpZzUttXeCtWtVCDoZL6lqOXyJo3cnVbvNv6Y6J/C3r
 Oa+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+vob9lcdcRaSmKVh/xs3npgI8r4WLNXKNo0lU+m6q5w=;
 b=pI4mXP0jn+5LiUGg9RumVr9OGI8gzOptf/XQX0Ky9v9w4cGcpoPyKL5dYzqALn6efT
 ppNACFv7Rp4C5lauYuiUwJ0F0AEfYDueOTYtZXrCB8xr3D7No06D1lLjqEMMzbGFr0An
 4qsMp0r9H+8yby3PL3KZbt/yfvtRURFXcW3sJzsj2hgANYEVYZRMvdxsrdsZ1lTXah6J
 wY5+WMq4+0JEr3y6wkqEpAkK1/r0cbmaKo8uh3wJogUK2V0raPNK3ENNt6dY+nw5uuzY
 7gmx/xHfWfBKU7N9ck036xg1au4e1KFZcSe1Vaj/DwtXLx+XUx5JkRqmpwSlrQiZXYA6
 C8lw==
X-Gm-Message-State: APjAAAUeoPAljixgkpNhHn/Ouxb3zkYfve4Zbrbn5A/M/2ofqyydHHYz
 5I9a8J1+/UdEgC6rds2TCB8=
X-Google-Smtp-Source: APXvYqwyH5Gz6kelr/FZmOwvinKWGrHhFfqtHx2klJWKxQu7X0iz+AiJiqGWU/y3jMP6ngaLYG+KgQ==
X-Received: by 2002:a17:906:2ec8:: with SMTP id
 s8mr1773950eji.275.1568637402597; 
 Mon, 16 Sep 2019 05:36:42 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id w26sm4335677ejn.66.2019.09.16.05.36.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 05:36:41 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH] arm64: tegra: Add CPU and cache topology for Tegra194
Date: Mon, 16 Sep 2019 14:36:40 +0200
Message-Id: <20190916123640.1894-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_053644_623516_83152B01 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 148 +++++++++++++++++++++--
 1 file changed, 140 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index dc2e3cc71558..177e1240c081 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -1583,60 +1583,192 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		cpu@0 {
+		cpu0_0: cpu@0 {
 			compatible = "nvidia,tegra194-carmel";
 			device_type = "cpu";
 			reg = <0x10000>;
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
 			reg = <0x10001>;
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
+		cpu1_0: cpu@2 {
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
+		cpu1_1: cpu@3 {
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
+		cpu2_0: cpu@4 {
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
+		cpu2_1: cpu@5 {
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
+		cpu3_0: cpu@6 {
 			compatible = "nvidia,tegra194-carmel";
 			device_type = "cpu";
 			reg = <0x10300>;
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
+		cpu3_1: cpu@7 {
 			compatible = "nvidia,tegra194-carmel";
 			device_type = "cpu";
 			reg = <0x10301>;
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
