Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9F8517BC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 17:55:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l+ZneJbq82c/ibcdyJHYYbB6pApRtfHv2st79M6QKh4=; b=g6IiqkOLV1DSNN
	UcGxeYa41+0Qr5MGRebXMFUpyS/lrJqNmBGDtRbwMaHxbGswy8WSQICwwCpNAyRAXb6xg+6vdOW7q
	oSsoJlmTe4pzfzFhmF7I3JCmbhKH1RjEYes/pdBYdl7DjTZJTylEyzhxbfGqflcBvdSo35iJh0Q8D
	jKeYr3iCrnvlSnxPcLHI6LNfReoNKbA4dBzUkk9g0DMeaJ8XYvhvyYPSKxRlyZK7lDEHAjiB/DerO
	9Y/NBH2uNW2W3pxnjQ67d5FJezvozg5lfrDWOXXOts8gWL6BTaXgO42oT75dVWk9TkZpDtzEOKO3w
	lAIPKv6NTCb3ThQBKymA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfRJM-0007MD-Vj; Mon, 24 Jun 2019 15:55:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfRJD-00076K-J7
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 15:55:08 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F3BF320663;
 Mon, 24 Jun 2019 15:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561391706;
 bh=nj7bRPb15L/qkOSEZwMEO7ceiq2iL+0rUoitbZZAxtc=;
 h=From:To:Cc:Subject:Date:From;
 b=LmXOEnRtX+0Ciea5kPax/pmf8bc8pI4KRt9ZUHY63OwJb1QsgWeeL/NUjqMDQlhs9
 N7vpVnZlm/6owKYo2A4IeX3EY6BSR7I87WKr73zdxqCTSOBK2PzQ5MgscTO75psAPR
 FOVKTfB6WsyMIo82X5tQyRLI0p4PaXbKAM2J8FYo=
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh+dt@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH] ARM: dts: socfpga: add the QSPI OCP reset property on arria10
Date: Mon, 24 Jun 2019 10:45:58 -0500
Message-Id: <20190624154558.5354-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_085507_655722_6CD7D9FF 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The QSPI module needs the OCP reset bit deasserted as well.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/socfpga_arria10.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
index a0a6d8507265..20af1543819a 100644
--- a/arch/arm/boot/dts/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
@@ -753,7 +753,8 @@
 			cdns,fifo-width = <4>;
 			cdns,trigger-address = <0x00000000>;
 			clocks = <&qspi_clk>;
-			resets = <&rst QSPI_RESET>;
+			resets = <&rst QSPI_RESET>, <&rst QSPI_OCP_RESET>;
+			reset-names = "qspi", "qspi-ocp";
 			status = "disabled";
 		};
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
