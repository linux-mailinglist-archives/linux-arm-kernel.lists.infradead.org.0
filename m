Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 290AD10F8FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 08:39:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClPwiNDQPWc2e2mJC8SAI4EdPwrLG/twsgVQ6ygQNpk=; b=PhkzfUJsmZw12m
	PvIiopnGF7teDB8Vfe9vOs3UjL+Qrf4wKlQrFBHp2HbmFx+bnGinv+L+uYFqBrf9KSyafwVM0l0dF
	rPf22Hcc1nOW6VcHu6JcMdQXxu7pL7vkNuh3Kb2zeBDokb3cSq3klgEEUOrWKm0YUvLRm7uUe7SVJ
	VtXHI87TwOvXI3lTz0eHn2Q+8dRD6owcZRY/5pScCXXrqv9dTA4FI8nNPm+8LIifk1DN8kKr/eKPy
	zjc3hXujntl1oXLpX/20AM+YxpAGGxZMVfsQSHyQlc7U9NItbUhMWcXjojxvRukD94kCcwQiqYOXw
	UV6I6Qawfx4v2jrhmYvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2lr-0002ed-M8; Tue, 03 Dec 2019 07:38:55 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ic2jB-0000Kl-J6; Tue, 03 Dec 2019 07:36:12 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xB37Zu97014079,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xB37Zu97014079
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 3 Dec 2019 15:35:56 +0800
Received: from james-BS01.localdomain (172.21.190.33) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server id
 14.3.468.0; Tue, 3 Dec 2019 15:35:55 +0800
From: James Tai <james.tai@realtek.com>
To: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Subject: [PATCH 6/6] dt-bindings: clk: realtek: add rtd1619 clock controller
 bindings
Date: Tue, 3 Dec 2019 15:35:40 +0800
Message-ID: <20191203073540.9321-7-james.tai@realtek.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191203073540.9321-1-james.tai@realtek.com>
References: <20191203073540.9321-1-james.tai@realtek.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_233609_815488_C2C99757 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 cylee12 <cylee12@realtek.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: cylee12 <cylee12@realtek.com>

Signed-off-by: Cheng-Yu Lee <cylee12@realtek.com>
Signed-off-by: James Tai <james.tai@realtek.com>
---
 .../bindings/clock/realtek,clocks.txt         | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/realtek,clocks.txt

diff --git a/Documentation/devicetree/bindings/clock/realtek,clocks.txt b/Documentation/devicetree/bindings/clock/realtek,clocks.txt
new file mode 100644
index 000000000000..db101508ac6a
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/realtek,clocks.txt
@@ -0,0 +1,38 @@
+Realtek Clock/Reset Controller
+==============================
+
+Realtek CRT/ISO controller device-tree binding for Realtek Platforms.
+
+This binding uses the common clock binding[1].
+
+The controller node should be the child of a syscon node with the required
+propertise:
+
+- compatible :
+	should contain only one of the following:
+		"realtek,rtd1619-cc" for RTD1619 CRT clock controller,
+		"realtek,rtd1619-ic" for RTD1619 ISO clock controller,
+
+- #clock-cells : should be 1.
+
+- #reset-cells : should be 1.
+
+[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
+
+Example:
+
+	crt@98000000 {
+		compatible = "realtek,rtd1619-crt", "simple-mfd", "syscon";
+		reg = <0x98000000 0x1000>;
+
+		cc: cc@98000000 {
+			compatible = "realtek,rtd1619-cc";
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
+	};
+
+	consumer {
+		clocks = <&cc CC_CKE_GSPI>;
+	};
+
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
