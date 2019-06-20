Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DA84D24B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:38:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Aj2AsPjdY9i5Vv/7odqZcm3Vnnk2ekCdRcW8iDsHqzw=; b=FCZ11vG3mWCDpa
	/aNaFYvswLiqJ8lA9tfKPqq5FWJWEZzhQ0rIB7rB6kO3duxrf4C/qrbgBxhTRvlAHYteYifl9He+E
	dT5ShPHxZtpj7qw1tDa57ZewnY5WnaaBx/X9hYJhJA+vO/vKYBQ00x3xyi+jQRmZnBl55TXkgngfs
	h2jd+zGeUq4UCVhc41ipMdpo/1Hs1RyQoQ5rcAUz5E98MvAAAA8MHcHEjS+pWfSzNZfa4JwNggwsw
	S/bVpVE8ey0nlIxOnRcseoz81wauyg9feyG0x5NMszGboC2NGp6i1sv8gwbHA9nzhAASAhuuArqXc
	33AFaEwbU2mdUNB7E1nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdz8b-0006xs-AL; Thu, 20 Jun 2019 15:38:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdz8N-0006vK-Kl
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:37:56 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 405DA20673;
 Thu, 20 Jun 2019 15:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561045073;
 bh=5S55eD9KThwVmvDK4f2MHwvW8jbRfVsr+zLTJS228J0=;
 h=From:To:Cc:Subject:Date:From;
 b=cCDs5tMDNnzi3+3r36shIabf+VzxQS2wMJF1zf8tjQckhI3pLn0/z5gkNKzUdKgBu
 iJfwsT98qZqP0Nu4fbhQgpc+CM9umjyXdAC4ESFVjyvLFeXsGEZKvD72Ls14NEcn2G
 5Lo2jL7nSvIHe0MmsrRdxyprFdbpxfQbRi6tdGtY=
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh+dt@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH 1/2] ARM: dts: socfpga: add reset properties for DMA
Date: Thu, 20 Jun 2019 10:37:31 -0500
Message-Id: <20190620153732.26738-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_083755_704741_396082B4 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dinguyen@kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add both the reset and reset-ocp properties for the DMA node on Arria10.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/socfpga_arria10.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
index 20af1543819a..26c157b91189 100644
--- a/arch/arm/boot/dts/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
@@ -68,6 +68,8 @@
 				#dma-requests = <32>;
 				clocks = <&l4_main_clk>;
 				clock-names = "apb_pclk";
+				resets = <&rst DMA_RESET>, <&rst DMA_OCP_RESET>;
+				reset-names = "dma", "dma-ocp";
 			};
 		};
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
