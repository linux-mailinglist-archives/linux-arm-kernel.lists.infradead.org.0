Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A927FEA68F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 23:46:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wJwAXxOub7iY4qmeOROcfKJUxrKphNtNsanFPuvWjjk=; b=W8ilCA0YCjlImO
	SsC0TNksqozxv+dHKmrFg857yUh1zXAnjGNL/qDeK0edKXYCjgdzJ8vDrybLaW9WIIDP8zKKP7qPY
	ciAybU++YZNLwgCzKmvRdLJVEjB7ruxrPtJNk6mTWL5jWPv4YNga+sjAZLHmRQZs/kDIp0nvbkTPB
	EmtgkEwPleMXWMYGTQ8DbCV0oOUOMl0wtu8zkqxDJoXiv71rIOlEJfLQ+SNBbLb0FAyXem45ZyvYL
	71T04sGhMdFnaB8foWpp8HcotcD/0LGATnftzW4kOti6Jfshf+O3oMtKwAnUASQ1rWYS0Y+sy5fG9
	7It6ZUuqAqrFG67EVLHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPwj4-0002N1-0U; Wed, 30 Oct 2019 22:46:02 +0000
Received: from vault.bonstra.fr.eu.org ([51.158.68.104])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPwhn-0000HF-0I
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 22:44:44 +0000
Received: from val.bonstra.fr.eu.org (unknown [192.168.128.2])
 by vault.bonstra.fr.eu.org (Postfix) with ESMTP id 34C35BFA6F;
 Wed, 30 Oct 2019 22:44:23 +0000 (UTC)
Received: from bonstra.fr.eu.org (vlad.gr1 [IPv6:fd7b:45cc:aa3d::3])
 by val.bonstra.fr.eu.org (Postfix) with ESMTPSA id 2BA0D60867;
 Wed, 30 Oct 2019 23:44:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bonstra.fr.eu.org;
 s=dkim1; t=1572475462; x=1573685062;
 bh=hN7gHaVUK5ZMbPRnceGRaiMn7uHg7Ow1mQRtIL7MrsQ=;
 h=From:To:Cc:Subject:Date;
 b=D65+CVGdG9IlQOz2tzLZSK4bVuFiUCkab7bNtQjNIuQv2YmF9StKDt4pApeBzII8N
 E81+y+3XGxpcGM7nRVxQZBq9piaWdA5l3tlnFFLHdnOA7x5TdOyFnRjC+jutKvSjV7
 8dLQ5rclcINvhGGE2Dx4D7eUsqJ80wioIf+AwbbdFhLfQVQFM1n/jutNgCKwOp/V1J
 NbA9J0cqtJ1LFcw/YD1iJ273wYbAqeHVpdYTbFoaIBqdH8p+UXojsazoT7YVUF3nmH
 33+u4mMd067yaKyruNiwu9jiP2gC9AUXWplFflW7wxlZ6Zl2fMJtRGMzUo68HG0bYV
 U6S5piU8DMZpw==
From: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 0/3] Add Bluetooth support to Teres A64 I
Date: Wed, 30 Oct 2019 23:43:30 +0100
Message-Id: <20191030224333.70241-1-bonstra@bonstra.fr.eu.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_154443_189890_1AA51364 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>,
 linux-arm-kernel@lists.infradead.org, linux-bluetooth@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Teres A64 I laptop comes equipped with a serial-attached Realtek
rtl8723bs Bluetooth controller. This series creates the DT binding for
the the Realtek vendor extension of the HCI H5 driver, for which ACPI
bindings already exist, and enable support for the Teres A64 I board.

The first patch adds the DT binding documentation.
The second one implements such binding in the HCI H5 driver.
The last patch adds the appropriate device node to the Teres A64 I dts
file to enable Bluetooth.

Changes since v1:
- Adjusted driver code following advice from Marcel Holtmann (thanks for
  your time!)
- The DT bindings are documented for all serial attached Realtek controllers
  instead of juste the rtl8723bs
- Made the "config-name" property generic by removing the vendor prefix
- Kconfig change to make BT_HCIUART_RTL depend on either ACPI or OF

Hugo Grostabussiat (3):
  dt-bindings: net: bluetooth: add DT binding for Realtek controllers
  Bluetooth: hci_h5: Add DT support for rtl8723bs
  arm64: dts: allwinner: a64: Enable Bluetooth on Teres-I

 .../bindings/net/realtek-bluetooth.txt        | 25 ++++++++++++
 .../boot/dts/allwinner/sun50i-a64-teres-i.dts | 13 ++++++
 drivers/bluetooth/Kconfig                     |  2 +-
 drivers/bluetooth/hci_h5.c                    | 40 ++++++++++++++++---
 4 files changed, 74 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/realtek-bluetooth.txt

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
