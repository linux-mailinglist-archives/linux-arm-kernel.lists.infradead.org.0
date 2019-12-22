Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BC5128E79
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 15:14:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kBhLf1MsqxT5BjwQ0SC0IgUO+aCkFL0AWMzOegX6D4U=; b=N0qaEy09K0UQha
	1COiq4+BlYqph/d0vsM0YeupPstVXfh4knod0/+Beo8blfKst8tlCM7DrXaA78Y/2r9WqFBhtmauD
	23zbDLYfygCfQNkgM4kNuEsOFlpDd2AW0LlltouEIA0OihVvYZEtnBrh17XwKV+zuw+0hjY6rxPeR
	y+gcT3XU19Dz1fZoMCKxH/5wkJvXp2VeKGiSTOQPqo46BcCMkP55OXbMSSd/Itx4lLyuH66eJmBM7
	EUjKObMfIKOb6VtwFC89i2Cr5P8ZUWE3gzzAFH5LLXiGCF2r0DyXoX+dIsZdrjK6Zue9qmA88d+nt
	GOd6uRvVdo5r4svDQIEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij1zx-0004Ne-Ll; Sun, 22 Dec 2019 14:14:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij1wh-0001kR-Ry
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 14:11:03 +0000
Received: by mail-wr1-x444.google.com with SMTP id q6so13900652wro.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 06:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9NLd2mHZgSanSF4J79TwmNol8PZQ1XjUStKYPMmwtKY=;
 b=pHezw3KgOalhagOA8ELZM/hrh4fQ8lAGOKSnJXcC1LfySeZAeMTRvGB02qX6RwTjIi
 LgPx2hiGAxsNdsvD52YPPI50k3Q2OO0xrZRSpZgDqHN61SkaI94lyaMh3r0dQiylmSmn
 /XS47KLgP83xghibqMP0a0ASi3mWcjeRvpvBCK4LVemxShy+qYSafIiALVnaDj6rXJBv
 1CErmlegu57ZvPDSY9A4e9eY47urKn2fM7mgHnfUAJEar7/qCPpfBQ892bkbYTSeCa0L
 YckvpvcqKpqeiX9fY/4OSOOCRne4KZobZRnrvmuEojjGsys7LF3KE9+2l3jYEeOY9/Z3
 1LfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9NLd2mHZgSanSF4J79TwmNol8PZQ1XjUStKYPMmwtKY=;
 b=UFx5/rVCdshO8uHsOW2Plrn63qS+2UsHABieyXLi0G23jValv1Kqjzk1m6gMvsnrbX
 pXoJVE8UfyK7GC6iqNtg0jbyd7BFu2Mw1zMeDYWa8wuyPUx7Z7ol2l5C85+KOvU2lFrQ
 e3nSONvCaRL1nEOZ40k6aNSHstF9mNp1Q4DH8VUUB+34SgXVtGWuth+rH+2ZBLITx+oF
 dC3XznZyadLBkDyUPMsQ8RNpQE4wpi2RQPNKUa9afV2ljm33UAviR2t1dS9ufeRMx11m
 n7r3/uNytrf0zQko8JcuOnjf7WFcVJku9Tedbx2jE7waLg1boGbGIqvNVBtEQFZa1E4P
 4sZw==
X-Gm-Message-State: APjAAAW+kBXCrgU/bG/DiVPfVw8rpsrj9c2P8WV4lJMLiEn+16es93s6
 D+7EFR1Pc/GQPq7D/7kSeHo=
X-Google-Smtp-Source: APXvYqxRYGHgLZemcl/o8PPZd4p2Lzq1fSAv3l9MR1in32eLNeV1VqBcGboJgv2+yaSFlVoDnWG8vA==
X-Received: by 2002:adf:f70b:: with SMTP id r11mr27216079wrp.388.1577023857414; 
 Sun, 22 Dec 2019 06:10:57 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id f16sm17271848wrm.65.2019.12.22.06.10.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 06:10:56 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 12/13] arm64: tegra: Add external memory controller on Tegra186
Date: Sun, 22 Dec 2019 15:10:34 +0100
Message-Id: <20191222141035.1649937-13-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191222141035.1649937-1-thierry.reding@gmail.com>
References: <20191222141035.1649937-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_061059_914309_ADEF8440 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Add the external memory controller as a child device of the memory
controller on Tegra186. The memory controller really represents the
memory subsystem that encompasses both the memory and external memory
controllers. The external memory controller uses the BPMP to obtain the
list of supported EMC frequencies and set the EMC frequency.

Also set up the dma-ranges property to describe that all memory clients
can address up to 40 bits using the memory controller client interface
(MCCIF), unless otherwise limited by the DMA engines of the hardware.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index 584498a999d4..dba7f57469c5 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -144,6 +144,27 @@ memory-controller@2c00000 {
 		reg = <0x0 0x02c00000 0x0 0xb0000>;
 		interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
 		status = "disabled";
+
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		ranges = <0x0 0x02c00000 0x0 0x02c00000 0x0 0xb0000>;
+
+		/*
+		 * Memory clients have access to all 40 bits that the memory
+		 * controller can address.
+		 */
+		dma-ranges = <0x0 0x0 0x0 0x0 0x100 0x0>;
+
+		emc: external-memory-controller@2c60000 {
+			compatible = "nvidia,tegra186-emc";
+			reg = <0x0 0x02c60000 0x0 0x50000>;
+			interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&bpmp TEGRA186_CLK_EMC>;
+			clock-names = "emc";
+
+			nvidia,bpmp = <&bpmp>;
+		};
 	};
 
 	timer@3010000 {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
