Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0062F98D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 11:36:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9gcAQseW+LDcVrWeWjbVxmJI+esqRYjTjtaQ2QnyIbI=; b=Fs+LHBajwcPFe6
	d1+LzO0AnJtguxPUGEqaFdF2UlQ8jZGlkFiGtIaupAgBXE8bCSuvVPf/SMIlC7sVfBou0q0NoovkE
	2bzCxC8zatW3riNQOPhjnPLmoF5OTb2Ne2EihSZcyRGUXx+Im/hi4d+DFrhOw7R6fJteMzS/7rHzq
	Hs5T+cFypo1gq+QfabnzmjlPdEb0YVJ0ybtbgEfbm4PXd0bfEpdPuEpbquG8E/loxo6diy08UiIZu
	qTc9Afb7cntpBlqXztQOruUnkpZ+YGnivCKdTPqRr0AxE3l/kcg1QUcMgmKUsvmbx53y+tP/RZnmJ
	PAXsuPk1cPKSXesMyxYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWHU7-0005u7-5x; Thu, 30 May 2019 09:36:31 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWHU0-0005tp-Qg
 for linux-arm-kernel@bombadil.infradead.org; Thu, 30 May 2019 09:36:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8EEGV5j7su7x+U41KAtZHoCVmGA2+he42t2ihupsqQY=; b=bpctEQYkxIE2uCZ3x70vVmNe/8
 RiNWlH7vXDKVnhGW+b88NSWhjpqclXxJxAeNiKB8Vtbd3kd8h10mU1FOlhru5IfsUZ1IWbLbtOf9V
 3ToCMiStSHWTrbV/RBNWUTB7U31vE20lNA6WUcPEUuqu1bmt7Nk0AKZ9QvC9rBpwOukvSrgx1HJUu
 46JB0r3lZj61Umj0iSTYOnlehrp2WZekZ6iCNkIrMaOgxKxViDPKkEq9Ae7OjTamEeDJTjjTtBjDM
 oALF+r1BTF5HOp4VXuJlDLOy2w45vhol6Plte1iATxbzAqHbCA5WCaAnX7xjEZhqUoPMkfe0cYT4D
 WZH12eBQ==;
Received: from mta-01.yadro.com ([89.207.88.251])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWHTx-0005pR-OC
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 09:36:22 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id EC249418F9;
 Thu, 30 May 2019 09:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 content-type:content-type:content-transfer-encoding:mime-version
 :x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mta-01; t=1559208964; x=
 1561023365; bh=Mu95EKtaQY/5ic5LnPWzPshc+PWDAixLkJ5r9QM+Pyc=; b=b
 WNTUJM6n2crg9ginmn/IUSerVWkjHc3SF6QEgcxBUSgaosf8n7a5q4sZPd7qrC0d
 Q0DsL2cwsLDC7PKJznfTHYRrmfeVY9poUu4RSQYaLD8oAzvYqKaFMANDJ0bqkBz5
 wxDG+2id/R2wRVVeJFkTjlRWwptRV5lMTgjIcas8Wc=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hLO47OulB66Z; Thu, 30 May 2019 12:36:04 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 6FBF341860;
 Thu, 30 May 2019 12:36:04 +0300 (MSK)
Received: from bbwork.com (172.17.14.115) by T-EXCH-02.corp.yadro.com
 (172.17.10.102) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Thu, 30
 May 2019 12:36:04 +0300
From: Alexander Filippov <a.filippov@yadro.com>
To: <linux-aspeed@lists.ozlabs.org>
Subject: [PATCH v2] ARM: dts: aspeed: g4: add video engine support
Date: Thu, 30 May 2019 12:35:44 +0300
Message-ID: <20190530093544.12215-1-a.filippov@yadro.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [172.17.14.115]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_053621_914264_FD4E0673 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [89.207.88.251 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 Alexander Filippov <a.filippov@yadro.com>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a node to describe the video engine on AST2400.

These changes were copied from aspeed-g5.dtsi

Signed-off-by: Alexander Filippov <a.filippov@yadro.com>
---
 arch/arm/boot/dts/aspeed-g4.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
index 6011692df15a..5a9e3f684359 100644
--- a/arch/arm/boot/dts/aspeed-g4.dtsi
+++ b/arch/arm/boot/dts/aspeed-g4.dtsi
@@ -195,6 +195,16 @@
 				reg = <0x1e720000 0x8000>;	// 32K
 			};
 
+			video: video@1e700000 {
+				compatible = "aspeed,ast2400-video-engine";
+				reg = <0x1e700000 0x1000>;
+				clocks = <&syscon ASPEED_CLK_GATE_VCLK>,
+					 <&syscon ASPEED_CLK_GATE_ECLK>;
+				clock-names = "vclk", "eclk";
+				interrupts = <7>;
+				status = "disabled";
+			};
+
 			gpio: gpio@1e780000 {
 				#gpio-cells = <2>;
 				gpio-controller;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
