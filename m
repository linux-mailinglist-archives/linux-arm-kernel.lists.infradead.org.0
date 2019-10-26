Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1909FE5FA8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 22:49:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qzsyv/Y3lBwKVpsaoDgf2A9+KFmW9qhI5wHuluzDDMc=; b=IYjmItCsUkcBPx
	Q9TmsriHS4Ahug+NybJv/QMYhxcmhmUBNFsUYMPHlvYopEYAr/nfkj32k25r2h++qiu9K+z+LXtQd
	DkbmuB0aiFucH36qwP7mcW5hr+UByjWVj03jGdpIXtzs4n3JNYGKSwCtrQ0DTPEg2WdFnOqYJwmas
	gBk+tRqXQ1tk+e01B0RvnoaXkXEPCXkcYogUheXnOOkZPdJ4e7CjewiwwWFnJK4KUBsTiz07uGIoy
	Vuqi+c1KVq6pxfGuTnU84kw3ueOK+c0q7wD4C23VBNcnvF7CbwrWZ2Wozn1rakOS0j4YuKtGYndqS
	/s/83SfDadfXAqFVtPcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOT0K-00025u-Iz; Sat, 26 Oct 2019 20:49:44 +0000
Received: from vault.bonstra.fr.eu.org ([51.158.68.104])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOSzT-0001WK-LG
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 20:48:53 +0000
Received: from val.bonstra.fr.eu.org (unknown [192.168.128.2])
 by vault.bonstra.fr.eu.org (Postfix) with ESMTP id 191D7BFB41;
 Sat, 26 Oct 2019 20:41:47 +0000 (UTC)
Received: from bonstra.fr.eu.org (vlad.gr1 [IPv6:fd7b:45cc:aa3d::3])
 by val.bonstra.fr.eu.org (Postfix) with ESMTPSA id 3716D6086E;
 Sat, 26 Oct 2019 22:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bonstra.fr.eu.org;
 s=dkim1; t=1572122506; x=1573332106;
 bh=gvjqgmyM6VpYYfnUpsZRKeggNshVkGNMAOiusppf46w=;
 h=From:To:Cc:Subject:Date;
 b=uEs56XPhlioXD792dC59KX4V1Y0ydsgmshAbLCVJCDWDn4mEoMy+GSVRj9AJivYjl
 lultWVqd3JyWtVOXsRrw2r5GZUPUgKL2dvGOwT0rIW+r3cYQOPf+jDqDjuBRBxJgpf
 fIePuQj/E3AKqbPaf5kDoUG6vhj6Mm/xfDYwG5A5m7uzTjgPJYuE1o+e/fEjZYbLLD
 IuMYHARTwI9P6rSV2K5e1Y9N0BWsycgZ4h8iui99u1kJZvcC2D67yoPSU9ny7WYKHq
 LhSqF8s74YJ3qxJXbc9dpWYnfpJv4VBW7Zzi9pDc66yQKXgm+stFiTCeb6Vv7BW0A8
 gViiuwO2mKlFA==
From: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 0/3] Add Bluetooth support to Teres A64 I
Date: Sat, 26 Oct 2019 22:41:13 +0200
Message-Id: <20191026204116.95119-1-bonstra@bonstra.fr.eu.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_134851_829359_68257CD6 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hugo Grostabussiat (3):
  dt-bindings: net: bluetooth: add DT binding for rtl8723bs
  Bluetooth: hci_h5: Add DT support for rtl8723bs
  arm64: dts: allwinner: a64: Enable Bluetooth on Teres-I

 .../bindings/net/realtek,rtl8723bs-bt.txt     | 25 ++++++++++++
 .../boot/dts/allwinner/sun50i-a64-teres-i.dts | 13 ++++++
 drivers/bluetooth/hci_h5.c                    | 40 ++++++++++++++++---
 3 files changed, 73 insertions(+), 5 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.txt

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
