Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5393AD569
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 11:11:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FSm2MdbDObsnv+4yn8knlAASLKJM50VpQMBilASQ4c=; b=VtfaeVnIsUrDft
	8PEIg8lsnBT9POzlSdnkqzvckUUEm8Va+/7R0vBsbrhua+Umz5bfm+LBXR7mtPiMKGvL3DBrSKiSp
	knahrs+9z09UB7rgnjmYIenyjNvXpwDDziPO84nMrfutKT1mAHhKD9AvKFagMexhMFrWADzqd29eE
	xPQPWZOqjqTOrekMbc1cPGkW2tquedQX0389y94XNTcLrdGwMBa8ZcSeZL/kcIIZ7+6Kcy0S0ECBV
	Q4yR6TPlMzOCXl/FZQu2MsHSo6fiR2GXaHE/L66yIRUMzgWRjA833UsMj5WzM8li+B4oC6//6jgEQ
	lNMcCH/PI6yAo7gUZOJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Fhn-0002Ij-RX; Mon, 09 Sep 2019 09:11:27 +0000
Received: from smtp-fw-2101.amazon.com ([72.21.196.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7FhV-0002Ff-6P
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 09:11:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1568020269; x=1599556269;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=Pwyi2LvRvU2P6PihSn1GXJczaDqXg7KVNUJ3MtlBRvI=;
 b=cQqQdyXC7LLpVYO2nOFq5oFfKqFP/ztPiIKEnpxpyf70i21r/WNfTgx/
 2Z3b+5aAiSF3dTVPLrWjaE7goa76eIMPMsqEOZZQZ4MkIkdgBP9MDr8DL
 GSnOmj5Vg8IGn/vts77Y/26JVRkl3HHoF15AoAaInXLwBYn2ziARoM894 U=;
X-IronPort-AV: E=Sophos;i="5.64,484,1559520000"; d="scan'208";a="749722385"
Received: from iad6-co-svc-p1-lb1-vlan2.amazon.com (HELO
 email-inbound-relay-2a-90c42d1d.us-west-2.amazon.com) ([10.124.125.2])
 by smtp-border-fw-out-2101.iad2.amazon.com with ESMTP;
 09 Sep 2019 09:11:02 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2a-90c42d1d.us-west-2.amazon.com (Postfix) with ESMTPS
 id 4EBAAA07A9; Mon,  9 Sep 2019 09:11:01 +0000 (UTC)
Received: from EX13D01EUB001.ant.amazon.com (10.43.166.194) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.82) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 9 Sep 2019 09:11:00 +0000
Received: from udc4a3e82dbc15a031435.hfa15.amazon.com (10.43.161.176) by
 EX13D01EUB001.ant.amazon.com (10.43.166.194) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 9 Sep 2019 09:10:47 +0000
From: Talel Shenhar <talel@amazon.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mchehab+samsung@kernel.org>, <davem@davemloft.net>,
 <gregkh@linuxfoundation.org>, <nicolas.ferre@microchip.com>,
 <tglx@linutronix.de>, <arnd@arndb.de>, <venture@google.com>,
 <linus.walleij@linaro.org>, <olof@lixom.net>, <mripard@kernel.org>,
 <ssantosh@kernel.org>, <paul.kocialkowski@bootlin.com>,
 <mjourdan@baylibre.com>, <catalin.marinas@arm.com>, <will@kernel.org>,
 <talel@amazon.com>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 1/3] dt-bindings: soc: al-pos: Amazon's Annapurna Labs POS
Date: Mon, 9 Sep 2019 12:10:18 +0300
Message-ID: <1568020220-7758-2-git-send-email-talel@amazon.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568020220-7758-1-git-send-email-talel@amazon.com>
References: <1568020220-7758-1-git-send-email-talel@amazon.com>
MIME-Version: 1.0
X-Originating-IP: [10.43.161.176]
X-ClientProxiedBy: EX13D23UWA001.ant.amazon.com (10.43.160.68) To
 EX13D01EUB001.ant.amazon.com (10.43.166.194)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_021109_604975_90E2B373 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.196.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: barakw@amazon.com, hhhawa@amazon.com, benh@kernel.crashing.org,
 jonnyc@amazon.com, ronenk@amazon.com, hanochu@amazon.com, dwmw@amazon.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document Amazon's Annapurna Labs POS SoC binding.

Signed-off-by: Talel Shenhar <talel@amazon.com>
---
 .../devicetree/bindings/soc/amazon/amazon,al-pos.txt   | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/amazon/amazon,al-pos.txt

diff --git a/Documentation/devicetree/bindings/soc/amazon/amazon,al-pos.txt b/Documentation/devicetree/bindings/soc/amazon/amazon,al-pos.txt
new file mode 100644
index 00000000..035cc571
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/amazon/amazon,al-pos.txt
@@ -0,0 +1,18 @@
+Amazon's Annapurna Labs POS
+
+POS node is defined to describe the Point Of Serialization (POS) logger
+unit.
+
+Required properties:
+- compatible:	Shall be "amazon,al-pos".
+- reg:		POS logger resources.
+- interrupts:	should contain the interrupt for pos error event.
+
+Example:
+
+al_pos {
+	compatible = "amazon,al-pos";
+	reg = <0x0 0xf0070084 0x0 0x00000008>;
+	interrupt-parent = <&amazon_system_fabric>;
+	interrupts = <24 IRQ_TYPE_LEVEL_HIGH>;
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
