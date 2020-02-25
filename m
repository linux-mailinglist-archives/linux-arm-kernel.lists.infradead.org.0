Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BBF16BFAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 12:31:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkXAUAL2udws31aNvVGokewJi+lHL9aOJlOPmGJHEfA=; b=D+j1aOeIbRkvfJ
	BmTOvBwNGJ/9SgV0Y0n85rZETVWmMtBqEqOZZLQUGPRmDJhIQdBNFK+7q3WgDg5KLxHF2xlMQrnsI
	x5jJ9umomi6FzrmUhKWal7bMI6/HWX3xzmou5PUQHkndvjEn0xCR9DY/4PG2QCWv4Qz8QzuhWW9Wr
	LaFFzV8EPeXxBHXL0hM0Qphbwu7/2ZB0N+Dr0mh5i5Cjg3dMjYXfMbBNeeLMuBLGDqU58j0+3L0fi
	ZLAH92xnh2H+xuVf1Eehs9pXjSbC2L7UbvCyek6Z6ee1rwuviZFpVfqxGnIfmk0FMYpmsxWqZrJLM
	UlzsvT7jTzybMxialz3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6YQt-0001T9-Le; Tue, 25 Feb 2020 11:31:23 +0000
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6YQ7-0000s1-9p
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 11:30:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1582630235; x=1614166235;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=SL6BZmD4jmjWbjXl8N+TY5rCn4h74dxErtWXusGgkjc=;
 b=Q3IsnhHrEJmkNGGRVp688Sdkv6dcgiyvTUWv5kRJoalvpTSm6gVrfzs+
 io8FNM2DkSToAK3JGkmM0SN5JZCv+dQn4QuRpn+uNbzXNEuWDg7x2+h0U
 fyG6XKHuc78cPq9Z/8JEW3QcZVRnQjNkgp6oyJK2eVF26selmiPlyo0mS 8=;
IronPort-SDR: +uXldnfRzV9/NuIJkbFk3QIO1oCSf1ZHrY5CPSwWnC91IiXmaX9TEPIJFCfkiYD8+4ptqL0k34
 OwsB3hN5Syfw==
X-IronPort-AV: E=Sophos;i="5.70,483,1574121600"; d="scan'208";a="28702654"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1d-f273de60.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP;
 25 Feb 2020 11:30:32 +0000
Received: from EX13MTAUEA002.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1d-f273de60.us-east-1.amazon.com (Postfix) with ESMTPS
 id B6C43A29F5; Tue, 25 Feb 2020 11:30:30 +0000 (UTC)
Received: from EX13D19EUB003.ant.amazon.com (10.43.166.69) by
 EX13MTAUEA002.ant.amazon.com (10.43.61.77) with Microsoft SMTP Server (TLS)
 id 15.0.1236.3; Tue, 25 Feb 2020 11:30:30 +0000
Received: from u8a88181e7b2355.ant.amazon.com (10.43.162.50) by
 EX13D19EUB003.ant.amazon.com (10.43.166.69) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 25 Feb 2020 11:30:20 +0000
From: Hanna Hawa <hhhawa@amazon.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <tsahee@annapurnalabs.com>, 
 <antoine.tenart@bootlin.com>, <hhhawa@amazon.com>,
 <mchehab+samsung@kernel.org>, <davem@davemloft.net>,
 <gregkh@linuxfoundation.org>, <Jonathan.Cameron@huawei.com>,
 <tglx@linutronix.de>
Subject: [PATCH v4 4/6] dt-bindings: arm: amazon: add missing alpine-v2 DT
 binding
Date: Tue, 25 Feb 2020 13:29:24 +0200
Message-ID: <20200225112926.16518-5-hhhawa@amazon.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200225112926.16518-1-hhhawa@amazon.com>
References: <20200225112926.16518-1-hhhawa@amazon.com>
MIME-Version: 1.0
X-Originating-IP: [10.43.162.50]
X-ClientProxiedBy: EX13D02UWB002.ant.amazon.com (10.43.161.160) To
 EX13D19EUB003.ant.amazon.com (10.43.166.69)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_033035_450808_6ADB1DCC 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.171.190.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, benh@amazon.com, linux-kernel@vger.kernel.org,
 hanochu@amazon.com, dwmw@amazon.co.uk, jonnyc@amazon.com, ronenk@amazon.com,
 eitan@amazon.com, talel@amazon.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Amazon Annapurna Labs Alpine family includes: Alpine-v1, Alpine-v2.

This patch adds the missing DT binding of Alpine-v2 in amazon,al.yaml.

Signed-off-by: Hanna Hawa <hhhawa@amazon.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/amazon,al.yaml        | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/amazon,al.yaml b/Documentation/devicetree/bindings/arm/amazon,al.yaml
index 19ee489396f9..7de3a8c6e740 100644
--- a/Documentation/devicetree/bindings/arm/amazon,al.yaml
+++ b/Documentation/devicetree/bindings/arm/amazon,al.yaml
@@ -13,10 +13,15 @@ maintainers:
 
 properties:
   compatible:
-    items:
-      - const: al,alpine
-  model:
-    items:
-      - const: "Annapurna Labs Alpine Dev Board"
+    oneOf:
+      - description: Boards with Alpine V1 SoC
+        items:
+          - const: al,alpine
+
+      - description: Boards with Alpine V2 SoC
+        items:
+          - enum:
+              - al,alpine-v2-evp
+          - const: al,alpine-v2
 
 ...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
