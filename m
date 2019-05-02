Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A2911A45
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 15:34:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cJMw5jT1hEpFXgPifqJvlfhcfMlp0w36yhAZBalJq0E=; b=Pmo
	9BzgO3/A6PeCA6DljahVO1FRO3PlIczNdYoDKL07L3d8TfbvxLOhJzI6qBNoPheqizHcoaxs4Mncn
	6cEugRtwjsR7hFwpmdUAS/7L/I0dnkK+A9usk9mtRN1rqL0LyIOHHNPk/0WrH+9bpagBhJcaUfHgm
	QztiZTBwxAyF8U7et0qwhVN+WpeSjHnqUFhhgC7HKOMBq1+ACBVmuQGFQQhimor+ZC2Q3U1CnpCGC
	YtZrK11cPReWSZdS4IUwjbVslNZjrsd0cOgIo9SeJkZSftrVofLR5krT8QTtlarYZfi20w4BvkcZ0
	eMsMUuM+rexowaJklMsxezL4vHIE9kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMBqv-0001RR-A1; Thu, 02 May 2019 13:34:21 +0000
Received: from mail2.sp2max.com.br ([138.185.4.9])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMBqe-0001JK-KW
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 13:34:06 +0000
Received: from pgsop.sopnet.com.ar (unknown [179.40.38.12])
 (Authenticated sender: pablo@fliagreco.com.ar)
 by mail2.sp2max.com.br (Postfix) with ESMTPA id A0E767B05A2;
 Thu,  2 May 2019 10:33:59 -0300 (-03)
From: Pablo Greco <pgreco@centosproject.org>
To: linux-sunxi@googlegroups.com
Subject: [PATCH v6 0/5] ARM: dts: sun8i: v40 Rewrite BPi M2 Berry DTS based on
 BPi M2 Ultra
Date: Thu,  2 May 2019 10:33:44 -0300
Message-Id: <1556804030-25291-1-git-send-email-pgreco@centosproject.org>
X-Mailer: git-send-email 1.8.3.1
X-SP2Max-MailScanner-Information: Please contact the ISP for more information
X-SP2Max-MailScanner-ID: A0E767B05A2.A27CA
X-SP2Max-MailScanner: Sem Virus encontrado
X-SP2Max-MailScanner-SpamCheck: nao spam, SpamAssassin (not cached,
 escore=-2.9, requerido 6, autolearn=not spam, ALL_TRUSTED -1.00,
 BAYES_00 -1.90)
X-SP2Max-MailScanner-From: pgreco@centosproject.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_063404_895560_A1AD2C76 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Pablo Greco <pgreco@centosproject.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

BPi M2 Berry is a trimmed down version of the BPi M2 Ultra, completely
software compatible.

Changes include:
- 2GiB -> 1GiB
- no eMMC
- no onboard microphone
- no IR
- no blue LED
- no charging (and power jack to USB)
- dropped USB2 and connect USB1 to a 4-port HUB.

Changes in v6:
- Removed patch already queued for 5.3
- Reworked which nodes are added according to the new patch order
- Squashed bt and wifi patches

Changes in v5:
- Changed commit order
- Removed regulator-always-on from gpio regulators
- Copied commit log for the bluetooth node from the m2-ultra

Changes in v4:
- Went back to v2
- Added GPIO pin-bank regulators (both m2-ultra and m2-berry)

Changes in v3:
- Removed "Sort device node dereferences" (already applied)
- Added basic pio node
- Tied GMAC regulators to the pio (both m2-ultra and m2-berry)

Changes in v2:
- Split into smaller patches

Pablo Greco (5):
  ARM: dts: sun8i: v40: bananapi-m2-berry: Add GPIO pin-bank regulator  
      supplies
  ARM: dts: sun8i: v40: bananapi-m2-berry: Enable GMAC ethernet
    controller
  ARM: dts: sun8i: v40: bananapi-m2-berry: Enable HDMI output
  ARM: dts: sun8i: v40: bananapi-m2-berry: Enable AHCI
  ARM: dts: sun8i: v40: bananapi-m2-berry: Add Bluetooth device node

 arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts | 123 ++++++++++++++++++++++
 1 file changed, 123 insertions(+)

-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
