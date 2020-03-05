Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 651CF17B113
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 23:00:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JmJE5Z4F0sQ7obJHsv9HESXmownykuz3a6nChst1c8A=; b=mSvynD0QgHtLsD
	8VswW5J/vFI9lsJ1Wn/gs74QTjsI7tET7ZG/5pFnvIIvLM0w8djamOCRr3yL7VjXAulZpOL0V6deg
	htzqFidR/Srwy1R5VAsgBwpHeNaw19hN8IM6HFCgNtkIdpCUuk/zXivw2ejX5WRtBb8EaO6yDDrul
	LtMKPwQ/eg+nwJYOfEqnPPFSh+9cscisSamIxBwoG391h0ZrG8F3wLfhkcMbCKMGwHTEddl8XTFdn
	SHZtedvNbAAsYLa4txEK7sVj5VDhDVSO1LwNh90+XeFn4NItE5OivqyTjwg0ZgOiXHHisRK++kMsg
	9BUZQZeCgHtKSntHUPJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9yXw-0000ip-Oe; Thu, 05 Mar 2020 22:00:48 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9yXm-0000fg-On
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 22:00:41 +0000
Received: by mail-pl1-x643.google.com with SMTP id t14so3213345plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 14:00:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eWqPL9ibbKXWR51v31XcIk5pftgYa/pcecnYKmVCJAo=;
 b=vgs6VA4Ql2ehQpGwP8xBKZROXMa5jcdTZK1TIb0ab24I+jDsExL8ZmDvNIuybugniE
 DZcAJu/WO4PgnreJF8GnmOkpBHHf/2MgEqTfLExY/ma4eeX5bMGhbZGvsSTAqQ41fT6J
 jXAuss2M3riFwEDM2rF3CmGX6LgsuqZh5SgJ1xG/Pmgz/ZZ6HaQ4eFy05e2vkCkjv4Yq
 dTXBQaMix+Bp8sO8jX9pQjP8FbCbvP51flZytpVczO3yy/3YfKogoFSdWQH5VxcRsrHH
 55Y/gtMYmsHXp69C6xUFVRulATIXdQQpWz5dU2DSUtvaOV5EjN2qb1u9JyioW5B0VQ5n
 vmZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eWqPL9ibbKXWR51v31XcIk5pftgYa/pcecnYKmVCJAo=;
 b=CeZO56fhqVetx2smvfMQ14ZkENEhAiATG29fPpv9C6d3MB8EGUaIHfWx94x5UXQowt
 qVhsW4HFR2qNa1c5FQOp2KpTyTRno6Ndsr4fVa5z/5DDySM3lkt/vfo1e411xwr61Z1c
 rR56cgmYy9EC2lNwf/wN39T4ApBJAsfYnRc3DuJwpGQ/+zERxVGNDK8lFwV3I7qivMNc
 72UOTriNn71GXgpSR6QyG5hQ+Lvhx26nZlBcEE9HGDLnhZnyXoEbG/pbPQgZgerJ+ejI
 9R/R+EmHnkXIzkgnyNrUeMgOlyexlCuu8kzjFeocj5E2kYPcKgF2uaKzE6T4E1TuZRSo
 doDg==
X-Gm-Message-State: ANhLgQ3gQWS/QwpgKwW1UiBwlkD/Hz9ZCY83Rz+K8t2KMyjMZSJW11UR
 Gd34c44iCeDybrEWFQeveJzBIrX9EbM=
X-Google-Smtp-Source: ADFU+vvVpe3cKKDK1pzFwqfUyVxO1sV0ARtSLXgu+fL4G8UfhprencLvX4yTQkw0MS1d4TaZgJF8HA==
X-Received: by 2002:a17:902:868d:: with SMTP id
 g13mr192450plo.36.1583445637762; 
 Thu, 05 Mar 2020 14:00:37 -0800 (PST)
Received: from localhost ([103.195.202.232])
 by smtp.gmail.com with ESMTPSA id g11sm4755331pfo.184.2020.03.05.14.00.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 14:00:36 -0800 (PST)
From: Amit Kucheria <amit.kucheria@linaro.org>
To: linux-kernel@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: [PATCH v1 4/4] arm64: dts: marvell: Fix cpu compatible for AP807-quad
Date: Fri,  6 Mar 2020 03:30:15 +0530
Message-Id: <2f56a89b8f88583b60446050efc523a781556e3a.1583445235.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1583445235.git.amit.kucheria@linaro.org>
References: <cover.1583445235.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_140038_809133_2903CE0C 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

make -k ARCH=arm64 dtbs_check shows the following errors. Fix them by
removing the "arm,armv8" compatible.

/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9130-db.dt.yaml:
cpu@0: compatible: Additional items are not allowed ('arm,armv8' was
unexpected)
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9130-db.dt.yaml:
cpu@0: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long CHECK
arch/arm64/boot/dts/renesas/r8a774a1-hihope-rzg2m-ex.dt.yaml
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9130-db.dt.yaml:
cpu@1: compatible: Additional items are not allowed ('arm,armv8' was
unexpected)
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9130-db.dt.yaml:
cpu@1: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9130-db.dt.yaml:
cpu@100: compatible: Additional items are not allowed ('arm,armv8' was
unexpected)
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9130-db.dt.yaml:
cpu@100: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9130-db.dt.yaml:
cpu@101: compatible: Additional items are not allowed ('arm,armv8' was
unexpected)
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9130-db.dt.yaml:
cpu@101: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long

/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9131-db.dt.yaml:
cpu@0: compatible: Additional items are not allowed ('arm,armv8' was
unexpected)
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9131-db.dt.yaml:
cpu@0: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9131-db.dt.yaml:
cpu@1: compatible: Additional items are not allowed ('arm,armv8' was
unexpected)
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9131-db.dt.yaml:
cpu@1: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9131-db.dt.yaml:
cpu@100: compatible: Additional items are not allowed ('arm,armv8' was
unexpected)
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9131-db.dt.yaml:
cpu@100: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9131-db.dt.yaml:
cpu@101: compatible: Additional items are not allowed ('arm,armv8' was
unexpected)
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9131-db.dt.yaml:
cpu@101: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long

/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9132-db.dt.yaml:
cpu@0: compatible: Additional items are not allowed ('arm,armv8' was
unexpected)
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9132-db.dt.yaml:
cpu@0: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9132-db.dt.yaml:
cpu@1: compatible: Additional items are not allowed ('arm,armv8' was
unexpected)
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9132-db.dt.yaml:
cpu@1: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9132-db.dt.yaml:
cpu@100: compatible: Additional items are not allowed ('arm,armv8' was
unexpected)
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9132-db.dt.yaml:
cpu@100: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9132-db.dt.yaml:
cpu@101: compatible: Additional items are not allowed ('arm,armv8' was
unexpected)
/home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9132-db.dt.yaml:
cpu@101: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi b/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi
index 840466e143b47..68782f161f122 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi
@@ -17,7 +17,7 @@
 
 		cpu0: cpu@0 {
 			device_type = "cpu";
-			compatible = "arm,cortex-a72", "arm,armv8";
+			compatible = "arm,cortex-a72";
 			reg = <0x000>;
 			enable-method = "psci";
 			#cooling-cells = <2>;
@@ -32,7 +32,7 @@
 		};
 		cpu1: cpu@1 {
 			device_type = "cpu";
-			compatible = "arm,cortex-a72", "arm,armv8";
+			compatible = "arm,cortex-a72";
 			reg = <0x001>;
 			enable-method = "psci";
 			#cooling-cells = <2>;
@@ -47,7 +47,7 @@
 		};
 		cpu2: cpu@100 {
 			device_type = "cpu";
-			compatible = "arm,cortex-a72", "arm,armv8";
+			compatible = "arm,cortex-a72";
 			reg = <0x100>;
 			enable-method = "psci";
 			#cooling-cells = <2>;
@@ -62,7 +62,7 @@
 		};
 		cpu3: cpu@101 {
 			device_type = "cpu";
-			compatible = "arm,cortex-a72", "arm,armv8";
+			compatible = "arm,cortex-a72";
 			reg = <0x101>;
 			enable-method = "psci";
 			#cooling-cells = <2>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
