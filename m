Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0711A3D86
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 02:48:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3ILdKmNnWlQ/s3bNtRe+3JTT7sE12Gex/UdKYzUdGk=; b=G5GVLWnG9/CHa3
	UdZf2YfkGhZqTtEXvK7gxGrPAiGD2G0RffneU1Pf9SqdIHparPGNzHHiEigCOuEQxabuzNPi5KBKe
	oWBAWmci3RbL5cdNw76AHGp2IpcaB4GdTz+FcKsiphCC9wCK0Rxm5ZL87UPd8FfkpDMJrttmOsn2H
	4oar8DExbrmUSGBuNTgAWREafVUwJsRU6+k+UStfC7LPVsiNXRx79HQ5J3SU52Y8xpwNK2ND1sUdq
	YAuQo8dTXxmRixBtekPsSaLP0kAdVlD5YzdiT9YAm9HmDBgxAPuM0s7mC67U9O+ELYhNa+OpGJRdO
	gg01nl++QHwWeyr2ujPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMhqU-0002sT-Ob; Fri, 10 Apr 2020 00:48:34 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMhpp-0002Pv-Vi
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 00:47:55 +0000
Received: by mail-ed1-x544.google.com with SMTP id p6so518938edu.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 17:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Aeb6WaCv9+BqBEPfkzxDMWuTT6GpZmxwwCdelm77Gbc=;
 b=GAo1LCkscF+/t0GiJq5CqFhSJsAXoQCLXRI5K8wZlBDeenlGWbDDYRzgLHCR6NkbvL
 FOG8Jfcted4yeKOiTk+PjwUn16uZbLtfT7AAkLNkaYiQ9cIX+yQJx9Fq5TNKkwd8Yz4z
 OWvEaDD4aHUYV8/2bMW4HIyKtekvS5cDUdT801CK04XSzh8ddz3eDq8PzmpO1+Xv2w41
 sYrSN9KHWYWg1bU7Y3pGrvdW1V+KlI2KUW1QxKGZcMNuyMi3jeGCWhFP8aBTAMTyHpO4
 ETcztWRl11jYuTq4HqeYvSBhSjZQgwZau5fpgXnAn77d/+JMHRxDSMUiav8i/GfQejlm
 staA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Aeb6WaCv9+BqBEPfkzxDMWuTT6GpZmxwwCdelm77Gbc=;
 b=NR7nWiqxgai+IEESv+3vTMAQWmSUh7G8NYgukKSTyOaohPStSwMZCT2SvWMxEDd7Tw
 qEMsCUFrCvkf6tOWQS9aZubjAZbsgN22jszy3f98ct533QHKF7un2RXb0xDFA+u9tMTw
 aY9LXprqv6lRTElXtSlKHqxs+E7cN0sodhfTYRD3DnfHe4axjbp5IZBoPeBMt+oA5+w6
 VABNzyeNyFWzxMypqJaB7YS35p24WONQ4Vt4hSkn5bDBi/nazPKpMouoU5AAG1G/oaqb
 fw5FzrH+rnFMKS5TY+wDbvDzCPgrm7PSA9ltE2w7zmEoOxrH52iBdp5nSXAhUSQgdZW/
 ax4Q==
X-Gm-Message-State: AGi0PuaY3Hrq0WJBUVht/OS0XvcgAK1Fw7iTiqsC0/SNm0Nk1Crec1NL
 14Unm7upjLFq6qQw1N8h6+c=
X-Google-Smtp-Source: APiQypIdEyfEOx5q5eI9Aq9XOBio5duIss+ITVGGn0sW+sZmX/FPNCSsU+kshlb3ePbWwBuwIagx3Q==
X-Received: by 2002:aa7:c559:: with SMTP id s25mr2671184edr.2.1586479669036;
 Thu, 09 Apr 2020 17:47:49 -0700 (PDT)
Received: from Ansuel-XPS.localdomain
 (host117-205-dynamic.180-80-r.retail.telecomitalia.it. [80.180.205.117])
 by smtp.googlemail.com with ESMTPSA id z16sm30523edm.52.2020.04.09.17.47.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 17:47:48 -0700 (PDT)
From: Ansuel Smith <ansuelsmth@gmail.com>
To: devicetree@vger.kernel.org
Subject: [PATCH 1/4] devicetree: bindings: pci: document tx-deempth tx swing
 and rx-eq property
Date: Fri, 10 Apr 2020 02:47:35 +0200
Message-Id: <20200410004738.19668-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200410004738.19668-1-ansuelsmth@gmail.com>
References: <20200410004738.19668-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_174754_022754_FF7DD03F 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ansuelsmth[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>, Shawn Guo <shawnguo@kernel.org>,
 Ansuel Smith <ansuelsmth@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document tx-deempth, tx swing and rx-eq property property used on some
device (qcom ipq806x or imx6q) to tune and fix init error of the pci
bridge.

Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
---
 Documentation/devicetree/bindings/pci/pci.txt | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/pci.txt b/Documentation/devicetree/bindings/pci/pci.txt
index 29bcbd88f457..df37486f1853 100644
--- a/Documentation/devicetree/bindings/pci/pci.txt
+++ b/Documentation/devicetree/bindings/pci/pci.txt
@@ -24,6 +24,24 @@ driver implementation may support the following properties:
    unsupported link speed, for instance, trying to do training for
    unsupported link speed, etc.  Must be '4' for gen4, '3' for gen3, '2'
    for gen2, and '1' for gen1. Any other values are invalid.
+- tx-deemph-gen1
+   If present this property will tune the Transmit De-Emphasis level for GEN1 if
+   supported by the driver.
+- tx-deemph-gen2-3p5db
+   If present this property will tune the Transmit De-Emphasis level for GEN2 in
+   3.5db band if supported by the driver.
+- tx-deempth-gen2-6db
+   If present this property will tune the Transmit De-Emphasis level for GEN2 in
+   6db band if supported by the driver.
+- tx-swing-full
+   If present this property will tune the Tx Swing Full value if supported by the
+   driver.
+- tx-swing-low
+   If present this property will tune the Tx Swing Low value if supported by the
+   driver.
+- rx-equalization
+   If present this property will tune the Rx equalization value if supported by
+   the driver.
 - reset-gpios:
    If present this property specifies PERST# GPIO. Host drivers can parse the
    GPIO and apply fundamental reset to endpoints.
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
