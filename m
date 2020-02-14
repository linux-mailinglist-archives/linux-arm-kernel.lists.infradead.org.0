Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CB515E492
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:36:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Byx3ZPBmu2WIIaRCCowxUEJNXk08uQ2ePRdYT6WAbU4=; b=ayRISdXDBbiBLk
	p4zZavVcGcSUsLZzQrQ18ERoAqLgpo6bCQhDb8+799LhwXA8ud94jOJN9jZDsv2CHxY29ZiIxexdN
	OgpwFdH4FIfZ4qDNFNwaIkApT4Z7b4gUud6a93n0iLSYLcKrdUGh6jnSyS6U7dMilLD6Kp839SE8x
	c0q8rks4m6gmTzuQcgwE3pYebgg3+bA+2bITIT5cezcPT166CXoScGzoa3joiahnPOgPQpKy+hnpF
	CHPFqwcOU6kJzBg/tcEOQzb+AwqtFcU6gZCfOro3bQ4Sp/leF+3iy83pJxLh3tDixpLfiGBr9rcF3
	DOsyq3ULR0UeAp1jlYFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dxR-0005zM-AZ; Fri, 14 Feb 2020 16:36:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dWg-0000G2-7r
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:09:11 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 988AD24681;
 Fri, 14 Feb 2020 16:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696549;
 bh=JisXudK13Jk6Kspb8myNxbaBJxcABpU3ZxO3USpbX0w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=P2Ry/xdDrIas9EIQFjWqwaivTqr4jLFRNEbauVx4khClXSiL7ubtnUgha2OnPDFuF
 u/jS8/WwYWM1KrJqyyfVUOdGrfB5xKbuFaTg7U7LkCKL29a0TDgqK5nWKIn+2hPXTp
 8Wkw0iqbYAe8nh7OJCLzq5tOmCHCTIgRtV6jPU9M=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 342/459] arm64: dts: ti: k3-j721e-main: Add
 missing power-domains for smmu
Date: Fri, 14 Feb 2020 10:59:52 -0500
Message-Id: <20200214160149.11681-342-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_080910_326924_508670EA 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Lokesh Vutla <lokeshvutla@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lokesh Vutla <lokeshvutla@ti.com>

[ Upstream commit 3f03a58b25753843ce9e4511e9e246c51bd11011 ]

Add power-domains entry for smmu, so that the it is accessible as long
as the driver is active. Without this device shutdown is throwing the
below warning:
"[   44.736348] arm-smmu-v3 36600000.smmu: failed to clear cr0"

Reported-by: Suman Anna <s-anna@ti.com>
Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
Signed-off-by: Tero Kristo <t-kristo@ti.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 698ef9a1d5b75..96445111e3985 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -43,6 +43,7 @@
 	smmu0: smmu@36600000 {
 		compatible = "arm,smmu-v3";
 		reg = <0x0 0x36600000 0x0 0x100000>;
+		power-domains = <&k3_pds 229 TI_SCI_PD_EXCLUSIVE>;
 		interrupt-parent = <&gic500>;
 		interrupts = <GIC_SPI 772 IRQ_TYPE_EDGE_RISING>,
 			     <GIC_SPI 768 IRQ_TYPE_EDGE_RISING>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
