Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E49D62B349
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 13:36:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KuZbe0+m7+fSD2J1K5ZrsUsqPAPP+EPIZNqvGSgePLc=; b=dVipBnm/JlIsVu
	GWqtY4gJhaEDfvDZpR0wvlJV6n6WlAiv4daRPTyHKtmdCQx+yEr/uWzEkuyvJQsoom5DthdJdyI3V
	AiDdc1VuCMtGvP5tdpOt876cLU7unDzG7oGVinH0PBAuw6aw4pEP9jadPL/iCcklD3J6whzlNWqkd
	L4FSWMzvTnncnPDBNiwpgBpaOLJaI5FF4ZqaCR5ONAIL7TR2J+j6WB6c+oVulE6rzUIFbt2WMQFqt
	Zuzw09zG96Cw+/nF9q4rc7lMCXE6+rqJJpmYVaL1vEfJ0f2VrXizTDu/DijdYhEg3cCFRdKhbxMM3
	DyBriMue68BLNhptevEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVDv7-0002lr-Rz; Mon, 27 May 2019 11:36:01 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVDv1-0002lN-LI
 for linux-arm-kernel@bombadil.infradead.org; Mon, 27 May 2019 11:35:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Rf5s6WEICkkFHLrtUYJ7YWle5dxIeidKGZ/147uq3tE=; b=KkhpVUH+6lGnkbgH2vArcgDDBZ
 nGLfOj6qP16QEeShZuDfUR7NtgIe8QXutJQJ7/3ezSJ4NR5nSKwqjWq0ATVJ5HJ713hl/3QS6poBz
 L53HnHI5572yqHSdF8xPn+jZwMcFxQeaqenC6g6jgobM9AkMGIegLesyJfrJGmYZJj1ZEQXA6dkVj
 bZ+6l1q1dJzoMi4h9v/h4cQiKw+E/O7ixc7+lP+JUByfZU2QnSz6vIgJGiH4m1EeD6gvv0g99gkQy
 Za95kymgX1U1LePvK+ixGjHnE0htsGlErpPCZHLQyVoZlTSfMek2vwTGN9irUSKfMO4jxVP06gXy+
 /3P1W3jg==;
Received: from mta-01.yadro.com ([89.207.88.251])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVDuy-0002kj-IU
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 11:35:53 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id 82E4841911;
 Mon, 27 May 2019 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 content-type:content-type:content-transfer-encoding:mime-version
 :x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mta-01; t=1558956495; x=
 1560770896; bh=hXOGDL4taCvP1ithY6ztG6O+TLXxq3fYLx4Y5rx99Wc=; b=I
 FxJuXuZ3B761O2ZaPsK9sTEUtpSCGEkqp35iClcQ67KEZaJjPncOeUJLHnSnwTI4
 gcK60qmn8gFJd8h0QB5PYt+qat+QlSHvj7UjX+P+n95cwb78YRkmtaaCK0CzJT/V
 TSOhH4hY++ZiQXWBFu360g08/WCWv+5U5PmlGMy2Xc=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mzR7FsWWSxkt; Mon, 27 May 2019 14:28:15 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 8B78A404CB;
 Mon, 27 May 2019 14:28:13 +0300 (MSK)
Received: from bbwork.com (172.17.14.115) by T-EXCH-02.corp.yadro.com
 (172.17.10.102) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Mon, 27
 May 2019 14:28:13 +0300
From: Alexander Filippov <a.filippov@yadro.com>
To: <linux-aspeed@lists.ozlabs.org>
Subject: [PATCH] ARM: dts: aspeed: g4: add video engine support
Date: Mon, 27 May 2019 14:27:53 +0300
Message-ID: <20190527112753.1681-1-a.filippov@yadro.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [172.17.14.115]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_073552_875463_ADD2D696 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Add a node to describe the video engine and VGA scratch registers on
AST2400.

These changes were copied from aspeed-g5.dtsi

Signed-off-by: Alexander Filippov <a.filippov@yadro.com>
---
 arch/arm/boot/dts/aspeed-g4.dtsi | 62 ++++++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
index 6011692df15a..adc1804918df 100644
--- a/arch/arm/boot/dts/aspeed-g4.dtsi
+++ b/arch/arm/boot/dts/aspeed-g4.dtsi
@@ -168,6 +168,10 @@
 					compatible = "aspeed,g4-pinctrl";
 				};
 
+				vga_scratch: scratch {
+					compatible = "aspeed,bmc-misc";
+				};
+
 				p2a: p2a-control {
 					compatible = "aspeed,ast2400-p2a-ctrl";
 					status = "disabled";
@@ -195,6 +199,16 @@
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
@@ -1408,6 +1422,54 @@
 	};
 };
 
+&vga_scratch {
+	dac_mux {
+		offset = <0x2c>;
+		bit-mask = <0x3>;
+		bit-shift = <16>;
+	};
+	vga0 {
+		offset = <0x50>;
+		bit-mask = <0xffffffff>;
+		bit-shift = <0>;
+	};
+	vga1 {
+		offset = <0x54>;
+		bit-mask = <0xffffffff>;
+		bit-shift = <0>;
+	};
+	vga2 {
+		offset = <0x58>;
+		bit-mask = <0xffffffff>;
+		bit-shift = <0>;
+	};
+	vga3 {
+		offset = <0x5c>;
+		bit-mask = <0xffffffff>;
+		bit-shift = <0>;
+	};
+	vga4 {
+		offset = <0x60>;
+		bit-mask = <0xffffffff>;
+		bit-shift = <0>;
+	};
+	vga5 {
+		offset = <0x64>;
+		bit-mask = <0xffffffff>;
+		bit-shift = <0>;
+	};
+	vga6 {
+		offset = <0x68>;
+		bit-mask = <0xffffffff>;
+		bit-shift = <0>;
+	};
+	vga7 {
+		offset = <0x6c>;
+		bit-mask = <0xffffffff>;
+		bit-shift = <0>;
+	};
+};
+
 &sio_regs {
 	sio_2b {
 		offset = <0xf0>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
