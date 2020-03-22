Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B0218E88B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 13:12:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Z+nlRq/osVJZfeRs0S5lpCCLFaTBTiRKc9TJMLtXO1E=; b=hVS
	Wu4ySLIRaHe06ffPU9N0vEUNTKWT0gSqwqILYzAxXHNx9wXzlrDANfCF7mnAayOW/jHKgtZ+ItJj0
	zwJPbDgL4C4CPQciyssbfmFibfLwbORqGOQoxiVlA7EAaBN4mUvTJ0S5P9OK2yvxQg++JqosUsKCK
	VUCRlvB1CmaEaLN9CqNrBsO0z7SfaufrTqVhwKuttTGk1hY+TA8PSRMhqQnr2w9r2pOU58qRHghH7
	DOZsnH4eAuOMOaCAIPSh0tv2bA0cVMhjiWSOtSwidv4oS2L+oBq05JRRiAF9NdZM40HzLugFDhboS
	R2oY9rsyZslbBUlm8JIjZ8SD9GqYlDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFzSl-0007ry-Ft; Sun, 22 Mar 2020 12:12:19 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFzSc-0007rX-4I
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 12:12:11 +0000
Received: by mail-pl1-x644.google.com with SMTP id h11so4640370plk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Mar 2020 05:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=FvY0YKKCnsrLLlr9trBfCh6Rrrghhq8OHSokm6+VTcI=;
 b=N7m8NTJKmhFmzHgmnnmrcnC0b1DNueYZ8TZJeIqI/YSQ0HxpPb8q8iltHbef4ESEWV
 o5O4fQjgcpIwlCH+T68QK1xVKIaSL/Ijr2APeKFVOOdW+yeuG6gfBjbCAyx8hQnVJ0lv
 AB+StnvqK23tbHLsJnjRgBrcEb5K4wcVMlBs1M1OGrZW0Zw+Ag3FZBCSBPB9FNpPQ/qR
 m4W3vtORIog+Vf2cTO1I2DBxXW1Ka5DAcBAD66ZWDZI1D/u6pZpP7XinVUmaegg7HRv6
 wWTBLVI6RAubb9EqCwpNyyvy9X9fAobAQAXRz00Fh21aK7J8StlrcwGI/i4uvSk+FJ5o
 zjcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=FvY0YKKCnsrLLlr9trBfCh6Rrrghhq8OHSokm6+VTcI=;
 b=SKsNVYp+Gkz1leHbjU5TjAKQyxmAubHKtVyyXkDsOlZ0+Djn10XHlZZwY1Xc56QAl8
 1TSamJ1Hmrokdaf7DK8IpX3bB29+hasJWyXK9gPIDTyyhj5vH2zmqecqaGpV1sdQvV5R
 0nEAzPm/Q2BepVfkvK1OHuPPj92DeTyagkVPeVdsGh4stFntbA8+BBhR6j4oXxdsMget
 1FNxybTtAwjL1RAwhPMxngCe3FlNetDINV1SrgaEhYIofOMxARqcKPETf0QGjjlqEwb/
 0J/bVe4Pu+f64TLy/QgnQ2pUSZe9s4szIilbUn1zuUin79qgkkb1JDtVdF6njrd7W3jr
 IhFQ==
X-Gm-Message-State: ANhLgQ28xw7pvShTR4QBb8ANcFdziJGvDFUiS2AkuNzhQL0dCLENpmm3
 AndoOwLQ5oa+6PrtTMps/PA8hOXflhU=
X-Google-Smtp-Source: ADFU+vt4iQK3kCgBt7aFvRB5DjR/GAG7IMVpphTJsXiohifoP306KYhcs/C7FxZMNa3IcGvIjXwUtQ==
X-Received: by 2002:a17:90a:36e5:: with SMTP id
 t92mr5721243pjb.51.1584879128254; 
 Sun, 22 Mar 2020 05:12:08 -0700 (PDT)
Received: from localhost.localdomain ([223.233.79.39])
 by smtp.gmail.com with ESMTPSA id i2sm10503301pfr.151.2020.03.22.05.12.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 22 Mar 2020 05:12:07 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] dt-bindings: clock: Use "CLK_ETHERNET" for the Ethernet clock
Date: Sun, 22 Mar 2020 17:41:29 +0530
Message-Id: <1584879089-12123-1-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_051210_172293_8CBBD972 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: robh@kernel.org, manivannan.sadhasivam@linaro.org, afaerber@suse.de,
 Amit Singh Tomar <amittomer25@gmail.com>, andre.przywara@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Right now, dt clock binding for ethernet uses different names CLK_ETH_MAC for S900
and CLK_ETHERNET for S700, while dt clock binding for most of the other devices uses
same name(for instance, the UART clock binding that uses CLK_UARTx).

Let's use same name CLK_ETHERNET for both S700 and S900.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Noticed it while working on U-BOOT Ethernet support for S700 where we have common clock driver used
by S700 and S900. Patch[1] was initially sent to U-BOOT list.

[1]: https://patchwork.ozlabs.org/patch/1229219/
---
 drivers/clk/actions/owl-s900.c               | 2 +-
 include/dt-bindings/clock/actions,s900-cmu.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/actions/owl-s900.c b/drivers/clk/actions/owl-s900.c
index 7908909..5293086 100644
--- a/drivers/clk/actions/owl-s900.c
+++ b/drivers/clk/actions/owl-s900.c
@@ -648,7 +648,7 @@ static struct clk_hw_onecell_data s900_hw_clks = {
 		[CLK_DE0]		= &de_clk.common.hw,
 		[CLK_DMM]		= &dmm_clk.common.hw,
 		[CLK_EDP]		= &edp_clk.common.hw,
-		[CLK_ETH_MAC]		= &eth_mac_clk.common.hw,
+		[CLK_ETHERNET]		= &eth_mac_clk.common.hw,
 		[CLK_GPU_CORE]		= &gpu_core_clk.common.hw,
 		[CLK_GPU_MEM]		= &gpu_mem_clk.common.hw,
 		[CLK_GPU_SYS]		= &gpu_sys_clk.common.hw,
diff --git a/include/dt-bindings/clock/actions,s900-cmu.h b/include/dt-bindings/clock/actions,s900-cmu.h
index 7c12515..2247f1c 100644
--- a/include/dt-bindings/clock/actions,s900-cmu.h
+++ b/include/dt-bindings/clock/actions,s900-cmu.h
@@ -121,7 +121,7 @@
 #define CLK_DDR1			97
 #define CLK_DMM				98
 
-#define CLK_ETH_MAC			99
+#define CLK_ETHERNET			99
 #define CLK_RMII_REF			100
 
 #define CLK_NR_CLKS			(CLK_RMII_REF + 1)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
