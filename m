Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 514A415B88D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 05:25:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F7bfbDv9+5eaALmWucsFwNSZGLYtz++4QIN4tUZ/JYU=; b=bspMg/fnnfGC3T
	XBIhbSKRS+nToYlrY5uzoqkG46KOt9JAvw3vIEDFft4BOkZr7pb5Sg2EhCulnt8XuAlxRxHbw9mgl
	hNJws3vTizZahRELP2vC7HZWlnaifbQbriUgZL8uT7Jk4ibDG8cF8GCuRtrhXmrh2zeX/LXmQ3B+g
	Km+ld2GEqmJYNlcapRlCLJsHUks6uihAgaLdSqI4w06gAk8HOD5hpRnhTSOErnd3ojKbSyY3w7eAM
	GP98Xsu06ud80aHaESLH6ELMLvzG4NMJuFSqADwiv0fTrhMgnA9Zrlc9LPiE+HwdgWTGEw1hT7Mz1
	oGVkcsgAD0Dts12JnTQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j263u-0006hg-FW; Thu, 13 Feb 2020 04:25:14 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j263i-00069a-9F
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 04:25:03 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 4D68F21ED6;
 Wed, 12 Feb 2020 23:24:59 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Wed, 12 Feb 2020 23:24:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=iZubnMrBjXEk8g508J0BHfR8oe
 p9plnUPmPYucbo4Ws=; b=GJZQGNDodRtGD0R9q1c0WPj71h5Fo9pKqeQDjU3jkt
 dCB6oUFV4uW+CAV09y5toD/+Qxd3FLNXrujTsyyLSiXESMCkCqPPmESktoR6MXNC
 0uEwiLf/6uM1h3RjUDLMk6LqpTfFag18ZWQ+Gv6l+U/m9K2xi7zB2bdfxRmx/sk7
 7FTSRInu+hM6hMdrefJ2cCSkyucYjWzFebm/WbzV1t/cXYe88SQp8qDZ05WorLqb
 a3skqJ9cZSbbwoB6CpYRm4sOOoP7C0vRaf+0E24CPf/2AdDW0dI15S4JBl+qaja5
 Ob257cozmP0b21CtZaPO5jfA/7Wh6FVZhCN5N4OBLBNA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=iZubnMrBjXEk8g508
 J0BHfR8oep9plnUPmPYucbo4Ws=; b=cLlgoPPa8ER6SDyy0/9fTB/89XLbO4fQJ
 cseOwzv5A1C1/uqGs42nwyYNG7n60KV/pmeu/N5FAfWH1iHsWlhdwQ0hSbbIo5oC
 BPUgG0CazWxv9b9sgMmWdCqcJVbYShID6D+MhgwIGJZHMXQovTIsGCMkVoV+Wy+k
 o/rgm7hb4EFCWLrzJjUfC6GPIl1fX6padzv8O6sCVQazYlLUAVk85PlnIYDzYMDj
 a+kHnygs9sFwqUYToomMXywcPvtQTwSivF1N1B0TE2vWhzp360OW7d66yqSKfMLK
 kgrY74R08b2iMNnQR7ift7we0GOYF9pIfo+ZAPn3Tbwv+NCYDPKBg==
X-ME-Sender: <xms:m89EXijq7Nxiibf0W93WlOyLaOEb7rZ80Ih5vHjiuRSj72AISQHVcQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieejgdejvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghlucfj
 ohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppeejtd
 drudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhep
 mhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:m89EXnSYRBmHkrAJ04UPFZ5QlLLC6VnsMAb-R9JoBE91RHGv-ZRJyw>
 <xmx:m89EXlEOyEe68ycGUL3uGzV2QoEKNRw21Hg9vy6Pu1U6msjDp4XZFQ>
 <xmx:m89EXvnntcwwE0iaTWfCtcRu7WL2FFvYJLYQYy7yxYh0i7BO5OOV-Q>
 <xmx:m89EXtwFakvAb95eHuEP8MaRhe0XK8VvEizd7mEnb4_cPhpDke9CTg>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id B147230607B0;
 Wed, 12 Feb 2020 23:24:58 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Brown <broonie@kernel.org>
Subject: [PATCH] arm64: kaslr: Fix build failure with CONFIG_ARCH_RANDOM=n
Date: Wed, 12 Feb 2020 22:24:57 -0600
Message-Id: <20200213042457.17842-1-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_202502_663477_6161AFA5 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 2e8e1ea88cbc ("arm64: Use v8.5-RNG entropy for KASLR seed")
introduced unconditional use of arm64-specific functions exported by
asm/archrandom.h. With CONFIG_ARCH_RANDOM=y, this header is transitively
included through linux/random.h. However, with CONFIG_ARCH_RANDOM=n,
this header is not included, and the kernel fails to build.

Explicitly include asm/archrandom.h so __early_cpu_has_rndr() and
__arm64_rndr() are always available, even when they are just stubs.

Fixes: 2e8e1ea88cbc ("arm64: Use v8.5-RNG entropy for KASLR seed")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/kernel/kaslr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
index 53b8a4ee64ff..91a83104c6e8 100644
--- a/arch/arm64/kernel/kaslr.c
+++ b/arch/arm64/kernel/kaslr.c
@@ -11,6 +11,7 @@
 #include <linux/sched.h>
 #include <linux/types.h>
 
+#include <asm/archrandom.h>
 #include <asm/cacheflush.h>
 #include <asm/fixmap.h>
 #include <asm/kernel-pgtable.h>
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
