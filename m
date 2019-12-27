Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 162D912B697
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 18:43:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZ2N+8FDqBDQcKWWG3ljtvHkiIH+PKZnOXYzEYBVqOM=; b=fO1RD8c5WNo806
	JudnQsWIo4/Ied3GPYoKJvoAw7qpILcT9lyynlIlFEoAs7KeJ6mxDjxSH0OpqP9+1YiEppFy4sPkT
	slAk2bTqSQbQoz4AJmvu3BCkusBWqc1Y5TQft4synliZ68lB/n+wMFGa+nt0LsCBfNiQGrcJeHSIN
	EQ3yL9yBKbDBOCeb6Ea2AKIVaM6aLWAIB/VjpOn9nnFXhyV7JDgMgTJ2a5THHidiwno7UuQv1mhUp
	DHNbhcLA3lbtBnPqEahEGTG4ncd2xg8RqdchxHXrMQlACJ+c3srueFv57rb42hyKJJaQ83yA63Y0Q
	0FaBrvjymuOs41hf9nlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikteP-0000ne-QR; Fri, 27 Dec 2019 17:43:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iktd0-0008Dk-G4
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 17:42:25 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 50C2A222C3;
 Fri, 27 Dec 2019 17:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577468541;
 bh=Qf+Lke/xZRTcVCvZC0012unFzCPQGzOZY/o5doau+BU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=L+IwSrXxzggoZKnoBNBGvM09Li3dGNxONPZGZ6DJycHxunIc0+ZLAIAZnei52zlW0
 hZtQQEJbxJLj1qptWTH3quoH9xDX2m+dXopcpm1xNihbGvrqH/fW5TtBnQ0b6AZvuz
 m9D7Sk1uSUJHJQvr1nXN6yZicN3HR44YBeMfdxbI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 070/187] arm64: dts: ls1028a: fix typo in TMU
 calibration data
Date: Fri, 27 Dec 2019 12:38:58 -0500
Message-Id: <20191227174055.4923-70-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191227174055.4923-1-sashal@kernel.org>
References: <20191227174055.4923-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_094222_650250_0CF41DE2 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Tang Yuantian <andy.tang@nxp.com>, Michael Walle <michael@walle.cc>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Michael Walle <michael@walle.cc>

[ Upstream commit 961f8209c8d5ef5d33da42e6656d7c8179899da0 ]

The temperature sensor may jump backwards because there is a wrong
calibration value. Both values have to be monotonically increasing.
Fix it.

This was tested on a custom board.

Fixes: 571cebfe8e2b ("arm64: dts: ls1028a: Add Thermal Monitor Unit node")
Signed-off-by: Michael Walle <michael@walle.cc>
Acked-by: Tang Yuantian <andy.tang@nxp.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 72b9a75976a1..c7dae9ec17da 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -567,7 +567,7 @@
 					       0x00010004 0x0000003d
 					       0x00010005 0x00000045
 					       0x00010006 0x0000004d
-					       0x00010007 0x00000045
+					       0x00010007 0x00000055
 					       0x00010008 0x0000005e
 					       0x00010009 0x00000066
 					       0x0001000a 0x0000006e
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
