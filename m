Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D321F7C4A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 19:14:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lNch6QOa9YBP9N0djXR9iZWvxtv1AgVCs0IhfbH2dyc=; b=RBGagwgu54cWPV
	HuYawdQaZmKRzN3ttwMtAgpvTbV7R8JjcKKcCE17/KNmSvjyNfwCfcHWofEqz1Q2vd8hZGiUSRyFV
	3m99D7W5RL9WyZB1Qp5Ls/FxzFPp4VTsboIESoskvUjepX/Cidm/7dCadNdKI++LLcA+ez4xxYUBp
	dXHHCyrhfe3P0oQgkTo2HR/FKPP7eDCwJsN2fSuUXymi22eHieuBRVTyqflbIoVdWsaphaRTCc5bg
	WTWD0TSb4c23nfu5HGrrVQKIUNQUvAbMAuwSY2kHhRHWd1XG5F/I9jBQOgaPnllr8CKyJAIZcmnEo
	l8BVrSNLDUyhkKMe2JrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjnGP-0001si-Vq; Fri, 12 Jun 2020 17:14:46 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjnFV-0001Fr-S7; Fri, 12 Jun 2020 17:13:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E04C2AEE5;
 Fri, 12 Jun 2020 17:13:49 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: f.fainelli@gmail.com, gregkh@linuxfoundation.org, wahrenst@gmx.net,
 p.zabel@pengutronix.de, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 3/9] ARM: dts: bcm2711: Add firmware usb reset node
Date: Fri, 12 Jun 2020 19:13:27 +0200
Message-Id: <20200612171334.26385-4-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200612171334.26385-1-nsaenzjulienne@suse.de>
References: <20200612171334.26385-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_101350_056168_92D31A54 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, tim.gover@raspberrypi.org,
 mathias.nyman@linux.intel.com, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org, andy.shevchenko@gmail.com,
 lorenzo.pieralisi@arm.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, helgaas@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the reset driver exposing Raspberry Pi 4's firmware based USB
reset routine is available, let's add the device tree node exposing it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

---

Changes since v1:
 - Update cell nr to match new bindings

 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index c7f1d97e69bb..0cef95058fb0 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -83,6 +83,11 @@ expgpio: gpio {
 				  "";
 		status = "okay";
 	};
+
+	reset: reset {
+		compatible = "raspberrypi,firmware-reset";
+		#reset-cells = <1>;
+	};
 };
 
 &gpio {
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
