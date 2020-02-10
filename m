Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD9F158062
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 18:02:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y/fVIslepjKR8oOicJ3KwxMD5rgCwu2x7rZJxTIppww=; b=md8+yZ+sq3r8eELiuWmoIru0GO
	gtCdNKrODqgD2OL0P4cKvtQZkv6KdkHvTuGHdIRta5n3tRVRdDCRh7PLkalOgAibYJsoZyqiCOW9R
	yyKqPmFcTElkoBVxnj/Yvx8BVMMuM7LnsQwmTEQJKTggP+njeAe1DUZjU03qJyhQuUpzQaAvCaxqv
	qmYTHH4SqaIT+VP6gxCPckG1seQM9855EeznGZNVqKRVtzy6oq2hLYF19XJRHgTaq+z8TplVQ40fl
	EGjA8hnZTt16fr5ItwhRh8czQCFb1cofHIu+S9IFJWfikn7lVol8UIg0LheVgfaVPl3hIfc1E1aLe
	k7u+djqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1CRg-0006Z1-3m; Mon, 10 Feb 2020 17:02:04 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1CRW-0006XV-IQ
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 17:01:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9D5A9AE3D;
 Mon, 10 Feb 2020 17:01:46 +0000 (UTC)
From: Nikolay Borisov <nborisov@suse.com>
To: bjorn.andersson@linaro.org
Subject: [PATCH 2/3] arm64: dts: allwinner: a64: Add hwspinlock node
Date: Mon, 10 Feb 2020 19:01:42 +0200
Message-Id: <20200210170143.20007-3-nborisov@suse.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200210170143.20007-1-nborisov@suse.com>
References: <20200210170143.20007-1-nborisov@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_090154_962720_D27C22AC 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Nikolay Borisov <nborisov@suse.com>, linux-arm-kernel@lists.infradead.org,
 mripard@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a node describing the hwspinlock on A64.

Signed-off-by: Nikolay Borisov <nborisov@suse.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 27e48234f1c2..01de89fc09cc 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -1182,5 +1182,14 @@
 			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&osc24M>;
 		};
+
+		hwspinlock: spinlock@1c18000 {
+			compatible = "allwinner,sun50i-a64-hwspinlock";
+			reg = <0x01c18000 0x1000>;
+			clocks = <&ccu CLK_BUS_SPINLOCK>;
+			resets = <&ccu RST_BUS_SPINLOCK>;
+			#hwlock-cells = <1>;
+			status = "disabled";
+		};
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
