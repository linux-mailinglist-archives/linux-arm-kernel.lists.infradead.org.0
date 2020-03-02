Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA7E176133
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 18:39:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c3mA0r+3ySThNuR5jMNfLEQqap9ljKdpHNwpF5U+T48=; b=YMqi82YMsqAC9O
	L32tz9Q6nph1VLieUnIxHjeaa5k6htFlnaxSHKP1pLl25vh3PnZcuAIP0JXROa/iwxgvaGrSKAGbT
	Elv1OawhbnGDWSD/4gB9nwiYrm8crfV8b/yfYgSJhHQmPHVbif5/H1anIDbycU5kJ7DdGQWzn5oQI
	p3Iw8LE7kICj4Kc/txdsMBLf3XvZR1fEhezI/i1z1KztQbE74/fLIUWopEGKZ6bgKUfNXLBbVhV5e
	8XctzAJd8rcX9YZm2nXzK8T2bvFRU375l4+R2tFi4PknZBJh3+S74QF9pqNG60yoRrBPl553vB3yx
	nnweQ/WH3dh0N2u4BVFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8p2V-0006AL-Gz; Mon, 02 Mar 2020 17:39:35 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8p2P-00069t-Gy
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 17:39:30 +0000
Received: by mail-oi1-f195.google.com with SMTP id 2so42041oiz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 09:39:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=X9zcIcdoADWttD9sf5DAldLHlzVytCHULye58nSjDHs=;
 b=YbLSknI9uQK+C11rhKYLhETs5vwhetDl/dLuT/b9mxwg4bNdhTb8p4CiXsr/wZc49/
 TVA2nUsUo5OmV7aLobQo1BrbASI7CRbdd74qxnpcJe7spKvVlJIeZ20jH+ETz2RSq2FP
 oPHfjVVnFuQ3h5q2kt1ryfjVgF7p8GoQ6cA6kIcPHHC7ronOzBkZk5Uj87ZOuNMDY6Bx
 A/uavZL/Rxe1rohax5qvbShFC8gM3vkdAynV4qQpy0Xc3GuZNSyAZ1mNv/bLgJ7xr3nX
 AcpF+3V77BJs9qbDU3q05ihwOFMxPRBxhzyowJtIJXuKzBOtySlprPZrlMSNG0rfjUUL
 3C0Q==
X-Gm-Message-State: ANhLgQ0JR0I2gBbWDEsAwtLwwG6gAPx8ysal2dCrz6ydgM5ye9pJvmyU
 SmOMNpySEVJpG12dB0Y3mQ==
X-Google-Smtp-Source: ADFU+vsmrD8kEzsGB4EHLM139fJ5gq3JFiz5uA3T+lSUhISodybv0ChcJ9PEO2muhmNL8JzBlhF98Q==
X-Received: by 2002:aca:abd6:: with SMTP id u205mr176435oie.12.1583170768009; 
 Mon, 02 Mar 2020 09:39:28 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id n16sm6757577otk.25.2020.03.02.09.39.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 09:39:26 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: bus: Drop empty compatible string in example
Date: Mon,  2 Mar 2020 11:39:25 -0600
Message-Id: <20200302173925.24261-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_093929_560786_425D75A2 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arm-kernel@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation to add generic checks of compatible strings, drop
the compatible as '...' is not a valid compatible string.

Cc: Maxime Ripard <mripard@kernel.org>
Cc: Chen-Yu Tsai <wens@csie.org>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml         | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml b/Documentation/devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml
index 9fe11ceecdba..80973619342d 100644
--- a/Documentation/devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml
+++ b/Documentation/devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml
@@ -70,7 +70,6 @@ examples:
         #size-cells = <0>;
 
         pmic@3e3 {
-            compatible = "...";
             reg = <0x3e3>;
 
             /* ... */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
