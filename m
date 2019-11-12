Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1633F90AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:31:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=deXQ+OTNzFplMY2MDqgWrDGSzZX0MVmHCUpydhkvoNA=; b=r1EFWH7g1NNEjB
	b00FvvOMweN0CGNPSVk7/MfsKvO7joyZRH1gNqO6Jybb0uwl/x3FRRkOmppDCa8J81E2gYe3b01l8
	S/NXdcpg6an46VWLrisfoqRvg+DKGJo7stSRoeY8tayG6M/avw22oH499PIvT0dxqEIyxlJox7zt2
	0ArnlkjOVwhOormR52MiO4GTsBUasb1fxDita/ZjIUx5sQprxZTsleholzDVMAZBKNn2WSZ7IfuAz
	Ythi+pGUaaS+yTy3hWldsd9YH0Mj550AWSBJ+hgv/8H4cMcW6gFjQIgq2oENHimknord88MpfLbWC
	I8Ckt5gaUypJ6pGLmVtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUWGM-0007RT-Q6; Tue, 12 Nov 2019 13:31:18 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUWGF-0007Qv-1q; Tue, 12 Nov 2019 13:31:12 +0000
X-UUID: 6a700a19ae2546f4a36bbe1c9aad8a50-20191112
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=hT9QBdG+LtUKaBpt4OHfKg/vmDyoLlBwacPEIY+C38w=; 
 b=l/h8OgTbd9GX8WRcOrFoOu5PNXuzU9akznAB+2X9v2vhclOHI9JXoWV22TJ2xaskjLvfXHqDOvFOha6ZswtjU59oB6GJh6f7GDMPSp1nD/0RQZCMZ13ZIdpChBvf1tyNva4W7ugamIWh8uZOj1w8SV4/VNqGUjqWuIflcZddpZQ=;
X-UUID: 6a700a19ae2546f4a36bbe1c9aad8a50-20191112
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <mark-pk.tsai@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1381528894; Tue, 12 Nov 2019 05:31:04 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 12 Nov 2019 05:31:02 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 12 Nov 2019 21:31:00 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 12 Nov 2019 21:31:00 +0800
From: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
To: <linux@armlinux.org.uk>
Subject: [PATCH] ARM: fix race in for_each_frame
Date: Tue, 12 Nov 2019 21:29:38 +0800
Message-ID: <20191112132937.19335-1-mark-pk.tsai@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 323926A5FB2DE832EA31753876BD697D6E80BA9E1623AE50FC1C3E17F6D5373C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_053111_102990_A72ABDFB 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kstewart@linuxfoundation.org, mike-sl.lin@mediatek.com,
 alix.wu@mediatek.com, eddy.lin@mediatek.com, gregkh@linuxfoundation.org,
 yj.chiang@mediatek.com, phil.chang@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 mark-pk.tsai@mediatek.com, matthias.bgg@gmail.com, tglx@linutronix.de,
 info@metux.net, lvqiang.huang@unisoc.com, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The sv_pc, which is saved in the stack, may be an invalid address
if the target thread is running on another processor in the meantime.
It will cause kernel crash at `ldr r2, [sv_pc, #-4]`.

Check if sv_pc is valid before use it like unwind_frame in
arch/arm/kernel/unwind.c.

Signed-off-by: Mike-SL Lin <mike-sl.lin@mediatek.com>
Signed-off-by: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
---
 arch/arm/lib/backtrace.S | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/lib/backtrace.S b/arch/arm/lib/backtrace.S
index 582925238d65..84f06381bbfb 100644
--- a/arch/arm/lib/backtrace.S
+++ b/arch/arm/lib/backtrace.S
@@ -64,6 +64,11 @@ for_each_frame:	tst	frame, mask		@ Check for address exceptions
 		sub	sv_pc, sv_pc, offset	@ Correct PC for prefetching
 		bic	sv_pc, sv_pc, mask	@ mask PC/LR for the mode
 
+		mov	r0, sv_pc
+		bl	kernel_text_address	@ check if sv_pc is valid
+		cmp	r0, #0			@ if sv_pc is not kernel text
+		beq	1006f			@ address, abort backtrace
+
 1003:		ldr	r2, [sv_pc, #-4]	@ if stmfd sp!, {args} exists,
 		ldr	r3, .Ldsi+4		@ adjust saved 'pc' back one
 		teq	r3, r2, lsr #11		@ instruction
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
