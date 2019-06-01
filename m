Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C43318F0
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 04:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L3Hej+y02MF++io3sCXVA1wIbnlWt5f/MO2156FJckE=; b=lqbLGWr3/i1iba
	rjlVeq1dwtDI86gTLsf55yXMzOQ4h3knN8mCbGI3RG7BV3WpJTKpDPacX0Ppj8Y8lLhpqv4T5XVPY
	/cw3qXj/sL8BtapkTPBejs5lHh4ebydjiJtxQhqQQdiBuIDCmhAg0PuXPaOK2u27vgwpuYl3cxHTo
	+IE6qW0qANdp7E7ik6Tgc1v1PPyyltFS89nH8S1al2XTvYJg3BItd2wlg2P+G+a7t0M7l8M7hAYJs
	k0u9xThS4y7M19DyAyCdnKJZ9+GAVKI/OL8SFHlyxzC9VSL4MDt1H34tLWnRZjvrf1yA4B1/h6Syf
	zxnpTozCIdH3tLUw7A2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWtRc-0002dS-AL; Sat, 01 Jun 2019 02:08:28 +0000
Received: from out30-38.freemail.mail.aliyun.com ([115.124.30.38])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWtRV-0002cr-71
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 02:08:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aliyun.com; s=s1024;
 t=1559354896; h=From:To:Subject:Date:Message-Id:MIME-Version;
 bh=S95rpAoAZoZQAtMaIsGsRXvLlYrSFJkcbZX9qF9dCdY=;
 b=Qxtvr1kmMQ/dcQsu3FvjmyBV3FNcmT5B7nQJoY/+dr+ZNT6JJ2X3rfg47pl1pYCMSVf5NGUBD+XDCi2ia3tYgToPND58qLX/Md2aSXemhIiKn1aoKntwmi0z8nB69naEWKUKAmkhzExvnTus1BkUwOmGnmE+T/SVN1XfLVxbhBs=
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.1382167|-1; CH=green; DM=||false|;
 FP=0|0|0|0|0|-1|-1|-1; HT=e01e04395; MF=fishland@aliyun.com; NM=1; PH=DS; RN=5;
 RT=5; SR=0; TI=SMTPD_---0TT7FIKX_1559354890; 
Received: from 192.168.42.134(mailfrom:fishland@aliyun.com
 fp:SMTPD_---0TT7FIKX_1559354890) by smtp.aliyun-inc.com(127.0.0.1);
 Sat, 01 Jun 2019 10:08:15 +0800
From: Liu Song <fishland@aliyun.com>
To: catalin.marinas@arm.com,
	will.deacon@arm.com
Subject: [PATCH] arm64: kernel: use aff3 instead of aff2 in comment
Date: Sat,  1 Jun 2019 10:08:08 +0800
Message-Id: <20190601020808.3091-1-fishland@aliyun.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_190821_426037_0915A973 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.38 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fishland[at]aliyun.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 liu.song11@zte.com.cn
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Liu Song <liu.song11@zte.com.cn>

Should use aff3 instead of aff2 in comment.

Signed-off-by: Liu Song <liu.song11@zte.com.cn>
---
 arch/arm64/kernel/sleep.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/sleep.S b/arch/arm64/kernel/sleep.S
index 3e53ffa07994..f5b04dd8a710 100644
--- a/arch/arm64/kernel/sleep.S
+++ b/arch/arm64/kernel/sleep.S
@@ -27,7 +27,7 @@
  *	aff0 = mpidr_masked & 0xff;
  *	aff1 = mpidr_masked & 0xff00;
  *	aff2 = mpidr_masked & 0xff0000;
- *	aff2 = mpidr_masked & 0xff00000000;
+ *	aff3 = mpidr_masked & 0xff00000000;
  *	dst = (aff0 >> rs0 | aff1 >> rs1 | aff2 >> rs2 | aff3 >> rs3);
  *}
  * Input registers: rs0, rs1, rs2, rs3, mpidr, mask
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
