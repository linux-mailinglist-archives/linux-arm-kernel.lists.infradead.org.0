Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 894381A5FAA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 20:10:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ejyxoPjPSSdWgHxupggwTLKYvQlg2s5yBGmPBQDEZwY=; b=CGtFrxFU9zsvE56LE0h7wHjWTk
	nObh+Gv/N9Q9xU1fjdeQr98uOXwpDvpfU+wEapYL3NU2CeTXJbJW+skUqFSb41q/dly30QJFPxcvC
	gxPxu/hU6Gs89HD6YcQYgYOK0D3Qq3+yJmA3nWuKUn6uxfpG8OYD6wxErB4ghhD5Wnx6Bg/1OGk7G
	IQepjj6rcNAwoFEfQOfi1TnXT5NrJDvDWI5ZB6OGYwFjfW7V7qtX7pfbX9L5R6Cp4BjMKydXDRMay
	JSPE13n37z61l4E8Jbx3u3RRH9lxHMyDWPD9sRhpIRqonxJYjivrcE9OnxPDldc7CkgFker+U99rK
	Yt2mpvrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNh3o-0008KI-Vh; Sun, 12 Apr 2020 18:10:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNh3O-0007QF-Rw
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 18:10:00 +0000
Received: from localhost.localdomain (unknown [157.50.0.25])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E80E4206E9;
 Sun, 12 Apr 2020 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586714998;
 bh=BUxT5IqaNvB9TgDMR7VN/qHcX2xgt0z3BHmRoAVi8ac=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tKZgTR5H9n/+i9uvei5y+H4cpl7/P9LBuQV/mbHcvLwYjnhiUvBzUgKziqmln0BMf
 WMtSvMLCAXeyZryxOSU5YTztOHiOm75PVTsi6C8yxESQTxhFRuDVfYk9Uf0/68c/DM
 B+ujRUPVFg89VKeOKHTM6wPiy+vAQohRPyOCk3b0=
From: mani@kernel.org
To: gregkh@linuxfoundation.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH 1/2] dt-bindings: serial: Add binding for software flow
 control in STM32 UART
Date: Sun, 12 Apr 2020 23:39:22 +0530
Message-Id: <20200412180923.30774-2-mani@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200412180923.30774-1-mani@kernel.org>
References: <20200412180923.30774-1-mani@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_110958_938842_18D4CF11 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Manivannan Sadhasivam <mani@kernel.org>

Add devicetree binding for software flow control in STM32 UART
controller. While at it, let's also fix one schema error reported by
`make dtbs_check`.

Signed-off-by: Manivannan Sadhasivam <mani@kernel.org>
---

Rob: Still the `dtbs_check` validation fails. This is due to the
`linux,rs485-enabled-at-boot-time` property. I don't have any idea on how
to fix this.

 .../devicetree/bindings/serial/st,stm32-uart.yaml | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/serial/st,stm32-uart.yaml b/Documentation/devicetree/bindings/serial/st,stm32-uart.yaml
index 238c44192d31..ea5797a1b403 100644
--- a/Documentation/devicetree/bindings/serial/st,stm32-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/st,stm32-uart.yaml
@@ -38,13 +38,26 @@ properties:
     description: enable hardware flow control
     $ref: /schemas/types.yaml#/definitions/flag
 
+  st,sw-flow-ctrl:
+    description: enable software flow control
+    $ref: /schemas/types.yaml#/definitions/flag
+
+  rts-gpios:
+    description: RTS pin used if st,sw-flow-ctrl is true
+    maxItems: 1
+
+  cts-gpios:
+    description: CTS pin used if st,sw-flow-ctrl is true
+    maxItems: 1
+
   dmas:
     minItems: 1
     maxItems: 2
 
   dma-names:
     items:
-      enum: [ rx, tx ]
+      - const: rx
+      - const: tx
     minItems: 1
     maxItems: 2
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
