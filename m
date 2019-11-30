Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB55A10DF41
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 21:24:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=puDB3HNpPmz7mOjhrZAQ88hIummezniv+9ZU68hPx+0=; b=pNeVRiD6PqMoJP
	kw/pO5mtUBsg5iKmAVRbpjK/9ymywwZjBxrB4BZmGXF2gMJ1xNF1oKy7myybbr7l6YZQD20FFscHY
	J1SJX+Z0YFuUaCmqi4Zq5temqJ48b9PRnwyEbAC41UKM9roHVK17pU0hqYsScmDqNUjyS3IZYBLro
	RYpu8/C7ki7UndAgiUk/ZV9yTlEDsKGM2mvelXnJzQe8jaGDtu0yHs4DLxZ1cxQv6CWfLccUhpaiC
	5jS+/glzHiAuo9nkSW1x2wfLH3LJHtgwddTBQXoHo/lyV5LstUumrbhugWvqUHtelxhbRLXghhlZe
	D4+pzuGZgYaYoDq8WTpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib9IF-0000uU-Qn; Sat, 30 Nov 2019 20:24:39 +0000
Received: from vault.bonstra.fr.eu.org ([51.158.68.104])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib9HP-0000N8-OR
 for linux-arm-kernel@lists.infradead.org; Sat, 30 Nov 2019 20:23:49 +0000
Received: from val.bonstra.fr.eu.org (unknown [192.168.128.2])
 by vault.bonstra.fr.eu.org (Postfix) with ESMTP id 7AE5FBFAD5;
 Sat, 30 Nov 2019 20:23:36 +0000 (UTC)
Received: from localhost.localdomain (vlad.gr1 [IPv6:fd7b:45cc:aa3d::3])
 by val.bonstra.fr.eu.org (Postfix) with ESMTPSA id A3C916087F;
 Sat, 30 Nov 2019 21:23:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bonstra.fr.eu.org;
 s=dkim1; t=1575145415; x=1576355015;
 bh=EkYZVheVtj6JdQcHQTJq2AeD/CfG6Cz8/zhSSf21WOQ=;
 h=From:To:Cc:Subject:Date;
 b=fK81ndsbMjfHEgAnkO0a/Gi8j+LBHvShdbga4f8REdVqI5o/X86UXVqcY7TuTjPhq
 +GhW9p4eDr2Suq58dj0nbI7os1rDyhKnL7IGWUi1xrrR0eQnDvdQesW8zHEp9+04jz
 SnPsY3r8PfF/aGOhlAfw4YhHydY+g4SIR6GuBzbur/2vMrEumHkvzAGLa2tjs0VE/e
 T+nwBlFftMsP3gthvf2GX9BTFXvLPtrHsx0D7ji0T3Ky7Vs0CBRAWq3lG5idBF9ngF
 RtLqJAg0TQOCVQVfm5gyf/FNGE4vmycTr1NpX4qVuGeSsyBy+D0cmBI2DVwylb4Y8e
 xNvFOqyOxRVlg==
From: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 0/3] Add Bluetooth support to Teres A64 I
Date: Sat, 30 Nov 2019 21:23:11 +0100
Message-Id: <20191130202314.142096-1-bonstra@bonstra.fr.eu.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_122347_928081_D8A50F67 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Changes since v3:
- Rebase on v5.4 (sorry for the noise :/ )

Changes since v2:
- Convert bindings to dt-schema
- Update GPIO property names
- Rename "enable-gpios" to "powerdown-gpios", and invert the logic in the
  driver code
- Use the "firmware-file" property instead of "config-name", and adjust
  driver code to accept a full file name instead of a postfix

Hugo Grostabussiat (3):
  dt-bindings: net: bluetooth: add DT bindings for Realtek controllers
  Bluetooth: hci_h5: Add DT support for rtl8723bs
  arm64: dts: allwinner: a64: Enable Bluetooth on Teres-I

 .../bindings/net/realtek-bluetooth.yaml       | 52 +++++++++++++
 .../boot/dts/allwinner/sun50i-a64-teres-i.dts | 14 ++++
 drivers/bluetooth/Kconfig                     |  2 +-
 drivers/bluetooth/btrtl.c                     | 75 ++++++++++---------
 drivers/bluetooth/btrtl.h                     |  3 +-
 drivers/bluetooth/hci_h5.c                    | 65 ++++++++++++----
 6 files changed, 161 insertions(+), 50 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/realtek-bluetooth.yaml

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
