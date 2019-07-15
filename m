Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A7F69F06
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 00:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bEtsB/C0ZvF9A7nxjwmEBjzXVvBFxRgucTCWZ5u3M24=; b=tihjiTgf6JzRH4
	CyqQ9NopzvoKrhmd1tQz2o1ycodCy7oHf6G9ySwoDairxDbDsFitit4qqbMzMFKSjRT8keLqC2Uug
	CUyHTz7cob7O0NLQTFFRL0SzdZMYV1VOXH1TCFNHThsDsxPuMoFr4WwZaR0sKfIpns4zf3bNlUREq
	MztMZ/lSYkcm5kjlQSZk0hicU7JrDqNnQHr+yb2ZaEDAHorQLMLahRnj8CgfUMTLGnDEn9/qfmPFf
	STYClx/2DXNuOp67JPwGjLBXNJEGjICvJ1KNol83cBliXJmeLXeB0/EmwyL8yndhKANAMQ8g1Pnxw
	hL8JqfOBhmPbZJnjwwxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn9bI-00082g-Qw; Mon, 15 Jul 2019 22:37:40 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn9b8-000826-9s
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 22:37:31 +0000
Received: by mail-io1-f67.google.com with SMTP id e20so6465873iob.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 15:37:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WXbxpjTO0OeI6MuUUKX3Eklg6COj9IISlKB84zUoyLo=;
 b=egDVUePH2nyudGbGnx0colpIJCrCFxtfIXMDXaJPGvBiEP1tmHqhcTq5pFRjnyEJdU
 bafXC+OvAZhc6h4ZY0A87O9Uec6xCBKdPsTD+9zfz/SuWO/ro4tu9IzrqZ0ATrBXvIZk
 hw2tDJw7lnwPBWmxX0rygT6Lm7uIu2vsO3CsuzI1jL26vpOz+/sWO4N/QyrCdq48l+T6
 VGzATKsrTAvgt/bzyPw2pRX8tOvIBBW1vbFk7ioWik0kakfwuSowgQ0keUz2aezvX1g8
 mQxRPxflFeIDBMurk1Rj8M9FMUBzfrGHREmmADKdt7S8UtqndYCAS7nDUIwMt92Uox/m
 Mp+A==
X-Gm-Message-State: APjAAAX76/mQitnJRUqqMo4K4T6b+eiDQpbZ8dLX20t2d7MkCjZYcb8/
 7BFiU/X1w4H5evqO9fpHlcpQKjk=
X-Google-Smtp-Source: APXvYqxpaPu9UCGLAK8cqFKFRAwnJVxKaxtB+Ov7U8QDlsE1ae268Oy/Kl1oMN//CPx5c9hmTs3slw==
X-Received: by 2002:a5d:9d90:: with SMTP id 16mr27939554ion.132.1563230247894; 
 Mon, 15 Jul 2019 15:37:27 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.249])
 by smtp.googlemail.com with ESMTPSA id e26sm15751180iod.10.2019.07.15.15.37.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 15:37:26 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Andrew Jeffery <andrew@aj.id.au>
Subject: [PATCH] dt-bindings: pinctrl: aspeed: Fix 'compatible' schema errors
Date: Mon, 15 Jul 2019 16:37:25 -0600
Message-Id: <20190715223725.12924-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_153730_347482_990C92B5 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 Joel Stanley <joel@jms.id.au>, linux-aspeed@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Aspeed pinctl schema have errors in the 'compatible' schema:

Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml: \
properties:compatible:enum: ['aspeed', 'ast2400-pinctrl', 'aspeed', 'g4-pinctrl'] has non-unique elements
Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml: \
properties:compatible:enum: ['aspeed', 'ast2500-pinctrl', 'aspeed', 'g5-pinctrl'] has non-unique elements

Flow style sequences have to be quoted if the vales contain ','. Fix
this by using the more common one line per entry formatting.

Fixes: 0a617de16730 ("dt-bindings: pinctrl: aspeed: Convert AST2500 bindings to json-schema")
Fixes: 07457937bb5c ("dt-bindings: pinctrl: aspeed: Convert AST2400 bindings to json-schema")
Cc: Andrew Jeffery <andrew@aj.id.au>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Joel Stanley <joel@jms.id.au>
Cc: linux-aspeed@lists.ozlabs.org
Cc: linux-gpio@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml   | 4 +++-
 .../devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml   | 4 +++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
index 61a110a7db8a..125599a2dc5e 100644
--- a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
@@ -22,7 +22,9 @@ description: |+
 
 properties:
   compatible:
-    enum: [ aspeed,ast2400-pinctrl, aspeed,g4-pinctrl ]
+    enum:
+      - aspeed,ast2400-pinctrl
+      - aspeed,g4-pinctrl
 
 patternProperties:
   '^.*$':
diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
index cf561bd55128..a464cfa0cba3 100644
--- a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
@@ -22,7 +22,9 @@ description: |+
 
 properties:
   compatible:
-    enum: [ aspeed,ast2500-pinctrl, aspeed,g5-pinctrl ]
+    enum:
+      - aspeed,ast2500-pinctrl
+      - aspeed,g5-pinctrl
   aspeed,external-nodes:
     minItems: 2
     maxItems: 2
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
