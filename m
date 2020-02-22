Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67539168CF5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 07:45:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QgoYzpYC+G6zh0XSIEefnytqL8f6lLMH3mtmgikS9fU=; b=nE9izqKXHl0YyoovFLVeZCCMGX
	9XkUWCwoTSkN3D2dMwSjfIhKew1o9m9jgBxiXKYtZDEZYjBhwUK3hsz5+GJ/Gj5T2ZU6nZXGOIse0
	v6hImNMOyvhSvlM+MGyWGo85/vSuhAs12qKD+PuXhYG5Bszv5cq0uWT4cdUdbll7qQQ8NjPF5QiKm
	O/h9mqKDIUTRgnCRsJCJkmFggUa3plw9BK/jIxSK6dTaNTrKXIgcFb3uMTqy1OK+H6au8dRxVC7jg
	0DWJBGrwTZrAiXDG8Tg3b4bfBZh3PFzl6VFaECFlxCRR9I5y46RfzGvKe/Kh9IaIVukLDEjAn0R2+
	Siw+KQcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5OXc-0000OX-1P; Sat, 22 Feb 2020 06:45:32 +0000
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5OXQ-0000NO-WA
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 06:45:25 +0000
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-07.nifty.com with ESMTP id 01M6ik5S005982;
 Sat, 22 Feb 2020 15:44:49 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 01M6ik5S005982
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582353889;
 bh=QqGyHAeO/ubqw+w/CGTT6IeJ8TCbUiUiGrqEMAfnxi0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LTJLxviy0//6PBFHicl9ayUMniCHU2eba/TlzDSH/zXskm74nbSi1qOoY6VLNBwC5
 PFSgmku0BNeEYOan3HeY85X6gzU5RDQB+r8yI9WhgOWObiAduIm0p2aTzccXu2iQaJ
 ycyLpUJU3lX2eCWq8USB9t8glHCDvU1QzoMusnYu27k8Vzqjr5YmGCET9prTxaNIqy
 75X2fETzshvUHcqwFzPtZH82kORGdkSnWztOoc4FLiYIAD26PuhtI2ioQ9MePOb+9T
 NzL/ryQ88XD7hI2j5Ug4sC7QRRfhfNrCCBjg4d2534VNax99fPk+DJFKrnVKR1Ltzq
 Wcne4+TPzZ2bA==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/4] arm64: dts: uniphier: rename aidet node names to follow
 json-schema
Date: Sat, 22 Feb 2020 15:44:45 +0900
Message-Id: <20200222064445.14903-4-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200222064445.14903-1-yamada.masahiro@socionext.com>
References: <20200222064445.14903-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_224521_249725_B6523AEA 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.74 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 masahiroy@kernel.org, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Follow the standard nodename pattern "^interrupt-controller(@[0-9a-f,]+)*$"
defined in schemas/interrupt-controller.yaml of dt-schema.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi | 2 +-
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 2 +-
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
index 7510db465f33..2e53daca9f5c 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
@@ -566,7 +566,7 @@
 			};
 		};
 
-		aidet: aidet@5fc20000 {
+		aidet: interrupt-controller@5fc20000 {
 			compatible = "socionext,uniphier-ld11-aidet";
 			reg = <0x5fc20000 0x200>;
 			interrupt-controller;
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
index 8d360c5cc32b..be984200a70e 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
@@ -664,7 +664,7 @@
 			};
 		};
 
-		aidet: aidet@5fc20000 {
+		aidet: interrupt-controller@5fc20000 {
 			compatible = "socionext,uniphier-ld20-aidet";
 			reg = <0x5fc20000 0x200>;
 			interrupt-controller;
diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
index d51b0735917c..994fea7b12c1 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
@@ -462,7 +462,7 @@
 			};
 		};
 
-		aidet: aidet@5fc20000 {
+		aidet: interrupt-controller@5fc20000 {
 			compatible = "socionext,uniphier-pxs3-aidet";
 			reg = <0x5fc20000 0x200>;
 			interrupt-controller;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
