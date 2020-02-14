Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E7E15E153
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:18:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fasITRR85lXKW3Zb9Ml3QXezkUI0W1+ip2esAmQTpac=; b=B1whVMdM8Vd3pJ
	EfMbp+e/C9a2pEzHpfysQCMqCzoQnGn5OevT1mMLnb+QvZJA9GoNPCWQuO1bSV9WlI0Q9rdff93YN
	/ChytZuylvO++50E+Wis1gmtrLSlqIPnmMt+jejJUJYBw4p4iXpTkyQ4exJiHllYx/cRArX+mxVFj
	hSrUOH4bKgkGyosxFY1CM6q2NILQtalqa7J3iz6Hp6KWI8VrImvM4n/vip7UOjwvAdfJ0Yt6uK7FP
	9WnkhIcoAQT57OBcQvee6xqgTTg+AdRc+p6f1oPz89Is5GBGAUbkBKgEUcPC+Vbk3DuPrNsFwbXxW
	th0e9bestdBkeT+NG3YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dfj-0001dM-Dn; Fri, 14 Feb 2020 16:18:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dPy-0000NE-W7; Fri, 14 Feb 2020 16:02:17 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D57682467C;
 Fri, 14 Feb 2020 16:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696134;
 bh=dxyccyigJhbpHPCQ2eWhVt7tV6C/oCPf9Cj4BDUW/vo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DFGGGBoTXpWw60PwXzvqDw0aJFdu5iYiR3JyVCvGp2zxyMi+UDzlQarQgyO/4+MJ9
 +eHPi4Mnx3uNUwaNoQAtfXdxTNTbwTQc0/HUoH96OeUNZb7A5e96TiPDBlGKTYmZjE
 gi7IA5n4NjMVVkcNKzkknWhIGeKhJTQqYHTxe8qM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 017/459] clk: meson: pll: Fix by 0 division in
 __pll_params_to_rate()
Date: Fri, 14 Feb 2020 10:54:27 -0500
Message-Id: <20200214160149.11681-17-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_080215_113461_F0CC98E7 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Remi Pommarel <repk@triplefau.lt>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Remi Pommarel <repk@triplefau.lt>

[ Upstream commit d8488a41800d9f5c80bc0d17b9cc2c91b4841464 ]

Some meson pll registers can be initialized with 0 as N value, introducing
the following division by 0 when computing rate :

  UBSAN: Undefined behaviour in drivers/clk/meson/clk-pll.c:75:9
  division by zero
  CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.4.0-rc3-608075-g86c9af8630e1-dirty #400
  Call trace:
   dump_backtrace+0x0/0x1c0
   show_stack+0x14/0x20
   dump_stack+0xc4/0x100
   ubsan_epilogue+0x14/0x68
   __ubsan_handle_divrem_overflow+0x98/0xb8
   __pll_params_to_rate+0xdc/0x140
   meson_clk_pll_recalc_rate+0x278/0x3a0
   __clk_register+0x7c8/0xbb0
   devm_clk_hw_register+0x54/0xc0
   meson_eeclkc_probe+0xf4/0x1a0
   platform_drv_probe+0x54/0xd8
   really_probe+0x16c/0x438
   driver_probe_device+0xb0/0xf0
   device_driver_attach+0x94/0xa0
   __driver_attach+0x70/0x108
   bus_for_each_dev+0xd8/0x128
   driver_attach+0x30/0x40
   bus_add_driver+0x1b0/0x2d8
   driver_register+0xbc/0x1d0
   __platform_driver_register+0x78/0x88
   axg_driver_init+0x18/0x20
   do_one_initcall+0xc8/0x24c
   kernel_init_freeable+0x2b0/0x344
   kernel_init+0x10/0x128
   ret_from_fork+0x10/0x18

This checks if N is null before doing the division.

Fixes: 7a29a869434e ("clk: meson: Add support for Meson clock controller")
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Remi Pommarel <repk@triplefau.lt>
[jbrunet@baylibre.com: update the comment in above the fix]
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/meson/clk-pll.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/clk/meson/clk-pll.c b/drivers/clk/meson/clk-pll.c
index ddb1e56347395..3a5853ca98c6c 100644
--- a/drivers/clk/meson/clk-pll.c
+++ b/drivers/clk/meson/clk-pll.c
@@ -77,6 +77,15 @@ static unsigned long meson_clk_pll_recalc_rate(struct clk_hw *hw,
 	unsigned int m, n, frac;
 
 	n = meson_parm_read(clk->map, &pll->n);
+
+	/*
+	 * On some HW, N is set to zero on init. This value is invalid as
+	 * it would result in a division by zero. The rate can't be
+	 * calculated in this case
+	 */
+	if (n == 0)
+		return 0;
+
 	m = meson_parm_read(clk->map, &pll->m);
 
 	frac = MESON_PARM_APPLICABLE(&pll->frac) ?
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
