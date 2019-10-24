Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D004E2F13
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 12:32:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zFKajqTmozFHSyGWyHYRtu/nQPV7KLBitjYjqvVzxhA=; b=NtUUZhAUSvCgs9
	6BkMutT2heZOFwnp7pf+AvXnmgfmNC9UDyVCN+UpHSyHKLSRsuZ/he/f1knuY4Bv5PkOsT68QTkGN
	h8LPKjUE9lQDYJHnss4CS/s+Rsse/3+cXk+3XJXSZCLjHfYeqxbqY1f6iQfOEb1DglY50TC8zfx0P
	BbDbRSifMi1TJI7ZBG2BCa1j8LA7EvW94x4wcYr6GN3wm2pfBOgwBhigeXbNap/DHCwWyYt2I/iYg
	SA8A4OQmfqQrDAUEtWLqgUhVypgUpfE+9pRS4LXgs5KMfi/vKfiJDBsditBDkObyvIWARIx/rQKb4
	1slTkcIKFhAmJKJHjmtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNaPj-0000Mp-6c; Thu, 24 Oct 2019 10:32:19 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNaPD-00008k-KJ
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 10:31:48 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id 5B0EF3F25B;
 Thu, 24 Oct 2019 10:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1571913105;
 bh=0PQxYq2jCdswV9xIvHJF+/W+GWlE+ha9RuMZB12R9dY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bZ/lmAPKYuR1uR+nja/k0YA7gVTt4jS65c7cNPXJL6FETz2pBV8W8UN1PjhcfAIZT
 hmDiulSrlfythn1NLj7ubAcpNi+vQHNKZg+SLoLWy9ndIJFxosmB0EdK74SSlbC3N5
 lT1XDpz83M68vhx/YH5ONYpJ3p3XwkyVaKOhiShc=
From: Brian Masney <masneyb@onstation.org>
To: agross@kernel.org,
	bjorn.andersson@linaro.org
Subject: [PATCH v2 3/4] ARM: dts: qcom: msm8974: add ocmem node
Date: Thu, 24 Oct 2019 06:31:39 -0400
Message-Id: <20191024103140.10077-4-masneyb@onstation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191024103140.10077-1-masneyb@onstation.org>
References: <20191024103140.10077-1-masneyb@onstation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_033147_745024_403F075B 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add ocmem node that is needed in order to support the GPU upstream.

Signed-off-by: Brian Masney <masneyb@onstation.org>
---
Changes since v1:
- None

 arch/arm/boot/dts/qcom-msm8974.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 39a3a1d63889..bdbde5125a56 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -1087,6 +1087,25 @@
 			};
 		};
 
+		ocmem@fdd00000 {
+			compatible = "qcom,msm8974-ocmem";
+			reg = <0xfdd00000 0x2000>,
+			      <0xfec00000 0x180000>;
+			reg-names = "ctrl",
+			            "mem";
+			clocks = <&rpmcc RPM_SMD_OCMEMGX_CLK>,
+			         <&mmcc OCMEMCX_OCMEMNOC_CLK>;
+			clock-names = "core",
+			              "iface";
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			gmu_sram: gmu-sram@0 {
+				reg = <0x0 0x100000>;
+			};
+		};
+
 		mdss: mdss@fd900000 {
 			status = "disabled";
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
