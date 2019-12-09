Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BB211714F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 17:15:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1aTBQcIXgSY2yl0b1qimLhOQ+KWjBfieUaFG/Z2MZ8s=; b=h4XgwTA9ouOQr8
	OrRDYCB2b/tc59H4wUFt7kiWAi/BPPWdZHQJOKD1n0p2/AVKc0xmc9NDcT6l/oQP5JabxoNQh+WEa
	ZpKV6VI8I8tglDC5mCXchjWScqlMwRokbXQ/1CdKo+WJ3zVoLf44l22vYPitgoo7ZOerks28f7P0X
	SBvnBMJZvRo+h5t01A+QgPWTDGLeisebu1SouCtsSlV6oBt6Irut0oH/ZD6CHdTh/tFRv015+t4dh
	gPMkZeHwDR0LdAd7rA4F9mrcPLaxg9BRRqnT8keHCviu/adFVmssugFsEMglCBKzNYHV8ug112ghL
	UpXr+wNOJkT07omUcXuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieLhG-0007r0-GR; Mon, 09 Dec 2019 16:15:42 +0000
Received: from smtp-fw-2101.amazon.com ([72.21.196.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieLgY-0006Fp-DY
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 16:15:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1575908099; x=1607444099;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=et8DBA9iGSNYn794W2po2FRwgqVLEvj/odctMfNiqiM=;
 b=XiX8ptOmJfihA/Cbw0sv6BIHGMjrBoL+419E2EkxZ3Ioj7XNUboquyZB
 TxMHGoRjfZHev+uYj0p2FE3j8iDtLm22h6P/oOeJko7VXB/N7+OMh9UMP
 t/GPFsdBJ6KkL0F7lWVSFmwqHVAf3ytCPTo9rBtKo292TpovbsFjTfQNc w=;
IronPort-SDR: CJmDO2Q8poFkWWuGm/GhYyvwBJ/x7i4ts4IVlfSezi2H+lnNYRK8Adu9gbHaw1ULIO0zG8X3gT
 uuCpQQA/zMhQ==
X-IronPort-AV: E=Sophos;i="5.69,296,1571702400"; 
   d="scan'208";a="7762567"
Received: from iad6-co-svc-p1-lb1-vlan2.amazon.com (HELO
 email-inbound-relay-1d-9ec21598.us-east-1.amazon.com) ([10.124.125.2])
 by smtp-border-fw-out-2101.iad2.amazon.com with ESMTP;
 09 Dec 2019 16:14:54 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1d-9ec21598.us-east-1.amazon.com (Postfix) with ESMTPS
 id 614CBA19F1; Mon,  9 Dec 2019 16:14:49 +0000 (UTC)
Received: from EX13D19EUB003.ant.amazon.com (10.43.166.69) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.243) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 9 Dec 2019 16:14:48 +0000
Received: from ua9e4f3715fbc5f.ant.amazon.com (10.43.162.249) by
 EX13D19EUB003.ant.amazon.com (10.43.166.69) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 9 Dec 2019 16:14:38 +0000
From: Hanna Hawa <hhhawa@amazon.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <tsahee@annapurnalabs.com>, 
 <antoine.tenart@bootlin.com>, <hhhawa@amazon.com>,
 <mchehab+samsung@kernel.org>, <davem@davemloft.net>,
 <gregkh@linuxfoundation.org>, <Jonathan.Cameron@huawei.com>,
 <tglx@linutronix.de>, <khilman@baylibre.com>, <chanho.min@lge.com>,
 <heiko@sntech.de>, <nm@ti.com>
Subject: [PATCH v2 4/6] dt-bindings: arm: amazon: add missing alpine-v2 DT
 binding
Date: Mon, 9 Dec 2019 16:13:39 +0000
Message-ID: <20191209161341.29607-5-hhhawa@amazon.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209161341.29607-1-hhhawa@amazon.com>
References: <20191209161341.29607-1-hhhawa@amazon.com>
MIME-Version: 1.0
X-Originating-IP: [10.43.162.249]
X-ClientProxiedBy: EX13D14UWB003.ant.amazon.com (10.43.161.162) To
 EX13D19EUB003.ant.amazon.com (10.43.166.69)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_081458_706387_7EA1B2B6 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.196.25 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
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
Cc: devicetree@vger.kernel.org, barakw@amazon.com, benh@amazon.com,
 linux-kernel@vger.kernel.org, hanochu@amazon.com, dwmw@amazon.co.uk,
 jonnyc@amazon.com, ronenk@amazon.com, talel@amazon.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Amazon Annapurna Labs Alpine family includes: Alpine-v1, Alpine-v2.

This patch adds the missing DT binding of Alpine-v2 in amazon,al.yaml.

Signed-off-by: Hanna Hawa <hhhawa@amazon.com>
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
