Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AAF51F3F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 01:49:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lyA9ntYfi6M+H8sRLtUVRJReSOEzGh08j+h9+5oPx6M=; b=iQ/ZfLd9KTu9ug
	sHsfWF+8VWDrTNhB/1bh3ytZuJ73Yo3gCog450+D3HJKm6nitaiWSx3hRKIvXhvU4Dr4HoCSrNEXI
	tFX06Q0B2j2q9HzBk+Mau6z9RE+Jpgf3Y9utVqjSwF/uuMJAYEtrln0rcam650c5hFThi1IDFT7vo
	Zf/lBA8v7zplVpTuVThWot7os7pQir7h6AaYrz8McZzmPCbvmq3CHcYC/5LbTv1a32Ha321SCzbE2
	nXD6Ef8LszsvS0vUvpA0RyqXq7x8iTJyhoZdeLtjt6W36VoCgLHl/d6j1FlE1qrSvbkOmw8Jvm2S+
	fG2i8zSDtBe4oDCRBQqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfYi9-0006Gx-MQ; Mon, 24 Jun 2019 23:49:21 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfYi0-0006G8-T8
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 23:49:14 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id E8D0E8365D;
 Tue, 25 Jun 2019 11:49:04 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1561420144;
 bh=OTmIYkEMR+S9pCM2R9+uUUu4V4fSWg1VfSccvDaNcKY=;
 h=From:To:Cc:Subject:Date;
 b=PZenlf7xqqyyFi+uAxTuUmE6yzNaFak/JJ2fML6HQ7B0M+qKN42sDnEBVf0Ty//5K
 ZI8MzJqd8Uw8eIKa01abX8Y1t9wDOWPmLjlPnC1e9uuTZAwwQQNF5DlB2YxL6bSScu
 LPDrPSK6KXvchNQvOjWu/G9mi1hRR1A0KMMXx13clHIUbkFiT5xaNSGaDve0fhLZmZ
 6DwZAtqw3E5o4IvMcsz0QVUsMn/gXLMuRArHqaPdWumDzFTv2m50Jwn8oCBgRXwcIl
 EBbcoF5k3E/acUS5EPRd8GQWAnKCwp66Nk/xjFWxAeLf9KBHDwc1h73myknW6oCPML
 WiJiNJh06yZSQ==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d11616f0000>; Tue, 25 Jun 2019 11:49:03 +1200
Received: from joshuas-dl.ws.atlnz.lc (joshuas-dl.ws.atlnz.lc [10.33.13.27])
 by smtp (Postfix) with ESMTP id 1CAA813EEFB;
 Tue, 25 Jun 2019 11:49:06 +1200 (NZST)
Received: by joshuas-dl.ws.atlnz.lc (Postfix, from userid 1634)
 id B4C831A03A1; Tue, 25 Jun 2019 11:49:04 +1200 (NZST)
From: Joshua Scott <joshua.scott@alliedtelesis.co.nz>
To: linux-arm-kernel@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: [PATCH v2] serial: prevent armada-xp-98DX SOC uart buffer loss
Date: Tue, 25 Jun 2019 11:49:00 +1200
Message-Id: <20190624234900.7315-1-joshua.scott@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_164913_318526_542E7250 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Joshua Scott <joshua.scott@alliedtelesis.co.nz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch to the "marvell,armada-38x-uart" driver variant to empty
the UART buffer before writing to the UART_LCR register.

Signed-off-by: Joshua Scott <joshua.scott@alliedtelesis.co.nz>
---
Changes in v2:

Andrew Lunn was able to test on a Marvell 370RD reference design, and
the character loss issue did not occur.

The fix has now been changed to only affect the following SOCs:
 * 98DX323x
 * 98DX3333
 * 98DX4251

Cheers,
Joshua Scott
---
 arch/arm/boot/dts/armada-xp-98dx3236.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/armada-xp-98dx3236.dtsi b/arch/arm/boot/dts/armada-xp-98dx3236.dtsi
index 59753470cd34..267d0c178e55 100644
--- a/arch/arm/boot/dts/armada-xp-98dx3236.dtsi
+++ b/arch/arm/boot/dts/armada-xp-98dx3236.dtsi
@@ -336,3 +336,11 @@
 	status = "disabled";
 };
 
+&uart0 {
+	compatible = "marvell,armada-38x-uart";
+};
+
+&uart1 {
+	compatible = "marvell,armada-38x-uart";
+};
+
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
