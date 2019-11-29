Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D6510D50A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 12:40:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uT4DssZP59V3gj27jZ9y6iZW9fOT4hQZUfQAQqy3AH4=; b=i+D
	lqHXR6px9qpBuzlXEjADFP2tFa4kkRE16zQyUdv4gzvHJo2FKBP5MgYls8d1IXLDUKlGGn4jVE3KZ
	YJkFMcPyim5wdlCBXdD4Z47FlxaMyWUbI51ehBP9dDIY7LYcVBpbR0/VdIhf/etbu14UjOZfBPh6O
	uqS7K3XChzhQhqDxixBLI7IeosHSx9rHH39IlqvRt0+HkEAat441Z8k2dNnpnFAPjGt29RObHp1FE
	9zsUrc7aaat7bU2duYbufJYvzLsErZ/Q6VLoxLchHXxZzGBb1dQC83Q9ybLeTFPgzdVC1laCRki1A
	cJ5M0NRaSLKMJ35+TpUFZJLG1Rz86Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaedM-0006cL-PC; Fri, 29 Nov 2019 11:40:24 +0000
Received: from olimex.com ([184.105.72.32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaedB-0006ag-JX
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 11:40:14 +0000
Received: from localhost.localdomain ([94.155.250.134])
 by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 29 Nov 2019 03:39:54 -0800
From: Stefan Mavrodiev <stefan@olimex.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Allwinner sunXi SoC
 support), 
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2 0/3] arm64: dts: allwinner: a64: olinuxino: Update
 regulators
Date: Fri, 29 Nov 2019 13:39:38 +0200
Message-Id: <20191129113941.20170-1-stefan@olimex.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_034013_644661_30E87354 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-sunxi@googlegroups.com, Stefan Mavrodiev <stefan@olimex.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch serie updates bank regulators for A64-OLinuXino and 
A64-OLinuXino-eMMC.

Also, eMMC supply is changed to ELDO1, which is the actual one. The same is
done for the SDIO card - ALDO2 is changed to DCDC1.

Changes for v2:
 - Restore the original eMMC vmmc-supply property
 - Add fixes and kernel tags

Stefan Mavrodiev (3):
  arm64: dts: allwinner: a64: olinuxino: Fix eMMC supply regulator
  arm64: dts: allwinner: a64: olinuxino: Add bank supply regulators
  arm64: dts: allwinner: a64: olinuxino: Fix SDIO supply regulator

 .../allwinner/sun50i-a64-olinuxino-emmc.dts    |  6 +++++-
 .../dts/allwinner/sun50i-a64-olinuxino.dts     | 18 +++++++++++++++++-
 2 files changed, 22 insertions(+), 2 deletions(-)

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
