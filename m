Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D83985903
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 06:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZkqcH0EfMnhB+14uMJ4hpnBD1AkCsP9YKMPEcGsAluA=; b=YLatMKYnXAN1Ue
	gfXQy3iScPzJkcvD1t53DoLTVWnLsxSoschY3Z6xawU0CQj7xXblrEiUFevFa79UuSZZh+Bp/saed
	j6215UqPaq1aQ2/KOK/zGo3fc3AkVru/S4/iAvX7HEwbYyj9A/2Xn2DE3Ac0ZGD7dJT13zsSaS9QP
	aynVrHXwtw1KAycwTVsDYujGLP26lgL48NDDEc7JN7o+4KLatT+Zdm9vHqJTSKnjS2KYD+KC2SgEm
	t0XzcTKUIZwByI38kMEjONLlyXKsiIKTt8CmTZAJaARPbRllFwn8fasoTOQOF6Hu5h+Ob26GMVwSD
	qR19FJ6lo7TAVUzgaFXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvZym-0006Gr-Tt; Thu, 08 Aug 2019 04:24:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvZy6-00060l-Jo; Thu, 08 Aug 2019 04:24:04 +0000
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net
 [71.197.186.152])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 453E221873;
 Thu,  8 Aug 2019 04:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565238242;
 bh=b/37VZhb7KhBpMC7Sb2HOSR7wSybN+U8MyNjuHCYizc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tW2K1z6aO7YUMZT5LD8LTxDb/BxTyr/IgsoeGLmXLt2MLg9qiMRBRnXp037Wy1PFU
 vulZN3s7bTj5JKnuTHzHPRnIUtX/pW8/64SKXu196q/r3lRH6v9882rfalDMc8uD3s
 w+NuthU+oUry9ReZ3y4MuCC6zclI59BITOxHXtq4=
From: Kevin Hilman <khilman@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-rtc@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: rtc: new binding for Amlogic VRTC
Date: Wed,  7 Aug 2019 21:23:56 -0700
Message-Id: <20190808042357.4663-2-khilman@kernel.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808042357.4663-1-khilman@kernel.org>
References: <20190808042357.4663-1-khilman@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_212402_669896_DC78CB14 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-amlogic@lists.infradead.org, Kevin Hilman <khilman@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kevin Hilman <khilman@baylibre.com>

Add binding fo the new VRTC driver for Amlogic SoCs.  The 64-bit
family of SoCs only has an RTC managed by firmware, and this VRTC
driver provides the simple, one-register firmware interface.

Signed-off-by: Kevin Hilman <khilman@baylibre.com>
---
 .../bindings/rtc/rtc-meson-vrtc.txt           | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rtc/rtc-meson-vrtc.txt

diff --git a/Documentation/devicetree/bindings/rtc/rtc-meson-vrtc.txt b/Documentation/devicetree/bindings/rtc/rtc-meson-vrtc.txt
new file mode 100644
index 000000000000..c014f54a9853
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/rtc-meson-vrtc.txt
@@ -0,0 +1,22 @@
+* Amlogic Virtual RTC (VRTC)
+
+This is a Linux interface to an RTC managed by firmware, hence it's
+virtual from a Linux perspective.  The interface is 1 register where
+an alarm time (in seconds) is to be written.
+
+Required properties:
+- compatible: should be "amlogic,meson-vrtc"
+- reg: physical address for the alarm register
+
+The alarm register is a simple scratch register shared between the
+application processors (AP) and the secure co-processor (SCP.)  When
+the AP suspends, the SCP will use the value of this register to
+program an always-on timer before going sleep. When the timer expires,
+the SCP will wake up and will then wake the AP.
+
+Example:
+
+	vrtc: rtc@0a8 {
+		compatible = "amlogic,meson-vrtc";
+		reg = <0x0 0x000a8 0x0 0x4>;
+	};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
