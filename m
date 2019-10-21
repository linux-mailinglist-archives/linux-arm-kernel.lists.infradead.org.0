Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45826DF11E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 17:19:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TxkEgBtpV/40b0xHbTXeTCJoF6RnTJRE8qgoGXHrjxc=; b=Pk6
	VTdDFuaZgE1oF5uvxk5b06Xmvr4TkvpHH3/tNNpWcrehdAKoGW1eLn4m6NFkPq2FZibXxTsqY3U21
	HhFvRo4hkMLDP5PdtzQLPAo6DKiZP6BpngrW1spd76zugUowwzSOq6pfqf1fdJjdanwpqcIqkjnF8
	3x4UGHyztgniZmHKTA7vrQaAgw09yWl27ok2HgZo4r4xv4VFoBIU0afYf4DkxvfghEuKSS3LdYVmm
	TLURHVl2bpETvGq4/pGLtWbxUfIKDXZYnbr61cRDerNZI3I6I/jeXzU7RUKRDQ8VYmHmJxC/0JVHs
	Wh/CtTaW/k+9+/Q4j6ThJB8vT0aBvBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMZSe-0007v2-0n; Mon, 21 Oct 2019 15:19:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMZSV-0007uQ-Ch
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 15:19:00 +0000
Received: from localhost.localdomain (unknown [194.230.155.217])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 630512084B;
 Mon, 21 Oct 2019 15:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571671139;
 bh=pZPt95h86j2DHhnebWftea1csHW0nl72tOQFiaF7e7s=;
 h=From:To:Cc:Subject:Date:From;
 b=B+V5q5QOX1c1zdAcO+okPLxM00nUGbUp/oXP1f+mDySsn0k+0Oj7M+RxFdLWyYgpI
 l0d6LFMNu9gjvDJarn1j3+DhSHNH0rV6RQmhvYtfi/9UtpTeac83PnxpulmStAiFE6
 kUjEzAZSQjPsWvX23l+UNISYTzMdxvnP40evQXJM=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: display: st,stm32-dsi: Fix white spaces
Date: Mon, 21 Oct 2019 17:18:47 +0200
Message-Id: <20191021151847.13891-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_081859_458908_D113EED5 
X-CRM114-Status: GOOD (  11.25  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove unneeded indentation in blank line and space at end of line.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 Documentation/devicetree/bindings/display/st,stm32-dsi.yaml  | 2 +-
 Documentation/devicetree/bindings/display/st,stm32-ltdc.yaml | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/st,stm32-dsi.yaml b/Documentation/devicetree/bindings/display/st,stm32-dsi.yaml
index de6c99198cbe..3be76d15bf6c 100644
--- a/Documentation/devicetree/bindings/display/st,stm32-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/st,stm32-dsi.yaml
@@ -108,7 +108,7 @@ examples:
         resets = <&rcc DSI_R>;
         reset-names = "apb";
         phy-dsi-supply = <&reg18>;
-        
+
         #address-cells = <1>;
         #size-cells = <0>;
 
diff --git a/Documentation/devicetree/bindings/display/st,stm32-ltdc.yaml b/Documentation/devicetree/bindings/display/st,stm32-ltdc.yaml
index a40197ab281e..bf8ad916e9b0 100644
--- a/Documentation/devicetree/bindings/display/st,stm32-ltdc.yaml
+++ b/Documentation/devicetree/bindings/display/st,stm32-ltdc.yaml
@@ -37,7 +37,7 @@ properties:
   port:
     type: object
     description:
-      "Video port for DPI RGB output. 
+      "Video port for DPI RGB output.
       ltdc has one video port with up to 2 endpoints:
       - for external dpi rgb panel or bridge, using gpios.
       - for internal dpi input of the MIPI DSI host controller.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
