Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4499AD40
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 12:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LOPlA7x1wOieNDy4CCL87Z46wfBwZv8ve3B8x6Gusas=; b=cAmopSoy+bybG9
	AzW9nfjcsvG0cjpiMNR6U154fv4Urkx//cB6BcmXSGyvt4IX7Yo6OYOrR7LhjvMcQIhvX0yoXcv5s
	LDZjtPIOva8clWAqWw9ohrFuCpOs+/GO09mgWhbXddC3Sc2xruaNGTuoR4eeyesW5qzTEtW+taiFj
	V8iA6E8mxPHV2T6LFxFAwRGJ9zmgCOUSndW0uWPOySamhuyZgzGMaDzwBAf0IPbqMYnCiwbZZQDDo
	KxukBhTeO1mFOwCsOYjC7ULcuhauQefIjsv8epuyLu4jD9as6XBBvl00i/dnzXPh8biQ08E95+S2B
	I65HPNP4MjiXAz6k/G1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16rV-0003Gz-Vt; Fri, 23 Aug 2019 10:32:06 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16rE-00036E-6W
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 10:31:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566556306; bh=m2aKtRbkPTkJVuTP8zfANK/QWGiSc2Jdal4+JCozxGg=;
 h=From:To:Cc:Subject:Date:References:From;
 b=L06V5E+mkypAmZdneB6hYyjjUgHu1laLiD9Wh+yKZ0GS6HqU85zz3VnR2U5Yqh8Cs
 wQLUPAQ/M5iElTZD+whjM+wQATeeHAFO7fXvdYhIHPm6F8VcsCcB0Upvp7zNkXFcqX
 fDbww4+L2ojZKXMHD7vkME/9BukKozBvzSOCNKMk=
From: megous@megous.com
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>
Subject: [RESEND PATCH 1/5] dt-bindings: net: Add compatible for BCM4345C5
 bluetooth device
Date: Fri, 23 Aug 2019 12:31:35 +0200
Message-Id: <20190823103139.17687-2-megous@megous.com>
In-Reply-To: <20190823103139.17687-1-megous@megous.com>
References: <20190823103139.17687-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_033148_399522_BA623623 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ondrej Jirman <megous@megous.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

This is present in the AP6526 WiFi/Bluetooth 5.0 module.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 Documentation/devicetree/bindings/net/broadcom-bluetooth.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt b/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt
index c26f4e11037c..4fa00e2eafcf 100644
--- a/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt
+++ b/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt
@@ -13,6 +13,7 @@ Required properties:
    * "brcm,bcm20702a1"
    * "brcm,bcm4330-bt"
    * "brcm,bcm43438-bt"
+   * "brcm,bcm4345c5"
 
 Optional properties:
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
