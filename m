Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B51C217D20E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 07:35:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HRcQ1rUUnjchqCg8tR0Q5xMqyFlLLa8ZRylabmSSjR8=; b=Qj7d4fMk8RnQmc
	iZWSc7cZMErsXkvMsnDECQumyJAva4+LqFycphZCatvZzaTHM7JP2+UGPp9yhOWdnXsz3pTlKrKSB
	sNqdSUl1sas8r9DCsc+gWDmFTaTWzeuNql13117kaGJZKXfR5nr4WcrZ7tgsBYVfVwAsFzfDgKTRF
	W14gORRlEzpeQ5iEl1IvgtEOtO8+x7ahhd73VBliGJUahzCAD3jajlvMwT4NnVmVtY59MFFo+HLN9
	mi7WRdvFHBsg13EYWn+cUJ5lIPlefdQCks7m8dYVhzqBi03ibE3BdWTlI5pfC/e5OiFiQLC8juxiX
	G/YCPqdabqzI9PXeMx3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jApWc-0002pv-R4; Sun, 08 Mar 2020 06:34:58 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jApWW-0002pO-8v; Sun, 08 Mar 2020 06:34:53 +0000
X-UUID: 17983672a028440f8395a694e8eef122-20200307
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=amPnNjmjefQsyk5bkPNYdHvxBnqS5HcVAeBUw7OCcuY=; 
 b=Ax2DXZTx9qOU0YVK64+DxYjQUgqiu5d8juThM7utccukdRnzfKT5jkACsIE29Qds6UArdWVk6pp3vnSEXP7yMJpWMVVWTms67vHtrtw+G0lKPZ8K+ldmZFyqQPUfowkrzvaj7sYtWYCxy9GCILk22PXWx9clUO591cAknpOev7U=;
X-UUID: 17983672a028440f8395a694e8eef122-20200307
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 862519836; Sat, 07 Mar 2020 22:34:41 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 7 Mar 2020 22:34:40 -0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sun, 8 Mar 2020 14:34:38 +0800
From: <sean.wang@mediatek.com>
To: <robh+dt@kernel.org>, <matthias.bgg@gmail.com>, <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH] arm: dts: mt7623: add phy-mode property for gmac2
Date: Sun, 8 Mar 2020 14:34:37 +0800
Message-ID: <70e3eff31ecd500ed4862d9de28325a4dbd15105.1583648927.git.sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_223452_324776_1C66B0FD 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, john@phrozen.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Wang <sean.wang@mediatek.com>

Add phy-mode property required by phylink on gmac2

Fixes: b8fc9f30821e ("net: ethernet: mediatek: Add basic PHYLINK support")
Signed-off-by: Sean Wang <sean.wang@mediatek.com>
---
 arch/arm/boot/dts/mt7623n-rfb-emmc.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/mt7623n-rfb-emmc.dts b/arch/arm/boot/dts/mt7623n-rfb-emmc.dts
index b7606130ade9..0447748f9fa0 100644
--- a/arch/arm/boot/dts/mt7623n-rfb-emmc.dts
+++ b/arch/arm/boot/dts/mt7623n-rfb-emmc.dts
@@ -138,6 +138,7 @@ fixed-link {
 	mac@1 {
 		compatible = "mediatek,eth-mac";
 		reg = <1>;
+		phy-mode = "rgmii";
 		phy-handle = <&phy5>;
 	};
 
-- 
2.25.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
