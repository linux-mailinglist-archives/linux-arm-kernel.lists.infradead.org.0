Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2715C1B939
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 16:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QZC0TRxg8VSPABNAQ+y8x+CRxhCCTiNZjLvBk3LJh8M=; b=eI0W9lURod6ITDo71an2mIwuqA
	I4+yQuFMdmxG3XAnF2mRsVsfYDmf11/tlP4XqB4C8PCN1qsN/GC2bSbCTnBHub9a913LV9jnFl0xd
	GTDSY10d6yichBNM9iZpzmnlYeTdUNKAPZl3/6d4upj+b76VpW1Rh7bhWGgJBhr7f52NhgQqIPxRe
	9PkvswrtccZC0PwGfR9x0r9moyDYLO1aYHkF4IF1twywLjbuxqmy9k/kuK7WN86DvIpr9mFVNI+pd
	GUJHinfSiihi5I/YsnUTJigAdY6cdauGHzeLyfwXS1YbglhlXmYA3DoyqAXifsYpc3UXaq3pcRDYX
	Pv5A8r5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCMz-0005Af-8K; Mon, 13 May 2019 14:56:01 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCMr-00059b-Us
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 14:55:55 +0000
Received: from localhost (localhost [127.0.0.1])
 by node.akkea.ca (Postfix) with ESMTP id 30FC34E2056;
 Mon, 13 May 2019 14:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1557759351; bh=bLmus07ZtGpPjQkmnxTr8q/vrmMNTrER0QBD1MkZdFs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=pYueQYhQez3a3zZx3FrdP1ct4Qzsi9I4uWWG6jAj9e5iH7Yz51zVola6zs3SfgMua
 st352YipTLbIA97fTmoK9VhUvjwCI00EaM6VQwNnmPbvv9qiyeoQZaqJC1UjO3Qy33
 UherZFQLMCbbkktb9Ml1xMN7VYXILG7b+hT4ekFA=
X-Virus-Scanned: Debian amavisd-new at mail.akkea.ca
Received: from node.akkea.ca ([127.0.0.1])
 by localhost (mail.akkea.ca [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y-sBEl55RqOx; Mon, 13 May 2019 14:55:50 +0000 (UTC)
Received: from midas.localdomain (S0106788a2041785e.gv.shawcable.net
 [70.66.86.75])
 by node.akkea.ca (Postfix) with ESMTPSA id 6141C4E204E;
 Mon, 13 May 2019 14:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1557759350; bh=bLmus07ZtGpPjQkmnxTr8q/vrmMNTrER0QBD1MkZdFs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=r2ILyR5PXhf8LdH1G55cK+Djg+pciuIxATmy3ED5XTs6nCNM42zF0RBXj+Ms7JjZ6
 DAw2OH9Lib4d+zobzG2K/MNMBDwkmdmQlC6PeUzBOU+NqaK68beG/uLfYNjAKGAhaN
 mWeKLrCT/djC0JiPC2pcpfDuAW67AeEmcRtFHPFM=
From: "Angus Ainslie (Purism)" <angus@akkea.ca>
To: angus.ainslie@puri.sm
Subject: [PATCH v9 2/3] dt-bindings: Add an entry for Purism SPC
Date: Mon, 13 May 2019 07:55:38 -0700
Message-Id: <20190513145539.28174-3-angus@akkea.ca>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513145539.28174-1-angus@akkea.ca>
References: <20190513145539.28174-1-angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_075554_044493_E935C20F 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an entry for Purism, SPC

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.txt b/Documentation/devicetree/bindings/vendor-prefixes.txt
index e9034a6c003a..64bb1fa1a4d5 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.txt
+++ b/Documentation/devicetree/bindings/vendor-prefixes.txt
@@ -333,6 +333,7 @@ poslab	Poslab Technology Co., Ltd.
 powervr	PowerVR (deprecated, use img)
 probox2	PROBOX2 (by W2COMP Co., Ltd.)
 pulsedlight	PulsedLight, Inc
+purism	Purism, SPC
 qca	Qualcomm Atheros, Inc.
 qcom	Qualcomm Technologies, Inc
 qemu	QEMU, a generic and open source machine emulator and virtualizer
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
