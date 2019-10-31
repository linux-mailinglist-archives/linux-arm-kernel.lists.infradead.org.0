Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4265EEB6B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 19:14:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UM7FZ/tE7e6x8VtU6WyR876nacU511Npb/vAHQnW0ko=; b=EX4jgCiPR2eybO
	lcS1whkof1EYj89NsYSCG+ECi9ZG5bTAUqw1R5aqO3Wdz4cW7+9r5choYhrK4OG0Z5hB02z93yAKm
	Q0podaEbxNvtSHcEXg7IObkmV8KfIGDBbzxWDpv5P/BtGPbgOC3CKwIw5ug7T1t2PWTE+AVoLQsAf
	btsmIYYHx4hn8W3HBLFc+lTR+2Xh2PAW/Rzx7g4x1MRefPO2yh6VWa1zOkZqzzVVIG5iYQWW1wHOH
	61AGXqaezNXFbfBkky9PvhGSVT9qHTMsaZCGAmaAxMCTFllWP+UfdV4RyRfvNgd7CJ/Ws7DVbwSff
	Vwr0L5fGtLmPG8zYF3RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQExl-0006oL-Iu; Thu, 31 Oct 2019 18:14:25 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQExX-0006hq-Ex
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 18:14:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572545646; bh=+8+aVOF3iSqGvzL1N7hB/tIOgnCmWN7n8SmI/voLyuw=;
 h=From:To:Cc:Subject:Date:From;
 b=QbLwWY74HjtrueocUL8/R6dmMGmMTLGX3Dtb/snOuodi4/KJ9dq9X1jj4qf9QgnL7
 Ob52iOVQ/R+gj88YDgepIN76L1UZZbucbHXnbTQD/flG9XuTD2lC5Hr/uFx5h9P/Vm
 jaXcikK1Gat9slDGatNmvF4/K6ATPO5tww36z3PY=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com
Subject: [PATCH] cpufreq: sun50i: Fix CPU speed bin detection
Date: Thu, 31 Oct 2019 19:13:58 +0100
Message-Id: <20191031181359.282617-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_111411_749721_16B15F39 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ondrej Jirman <megous@megous.com>,
 "open list:ALLWINNER CPUFREQ DRIVER" <linux-pm@vger.kernel.org>,
 Yangtao Li <tiny.windzz@gmail.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I have failures to boot on Orange Pi 3, because this driver determined
that my SoC is from the normal bin, but my SoC only works reliably with
the OPP values for the slowest bin.

Looking at BSP code, I found that efuse values have following meanings
on H6:

- 0b000 invalid (interpreted in vendor's BSP as normal bin)
- 0b001 slowest bin
- 0b011 normal bin
- 0b111 fastest bin

Let's play it safe and interpret 0 as the slowest bin, but fix detection
of other bins to match vendor code.

Fixes: f328584f7bff ("cpufreq: Add sun50i nvmem based CPU scaling driver")
Signed-off-by: Ondrej Jirman <megous@megous.com>
---

See https://megous.com/git/linux/tree/drivers/soc/sunxi/sunxi-sid.c?h=h6-4.9-bsp#n484
and https://megous.com/git/linux/tree/drivers/cpufreq/sunxi-cpufreq.c?h=h6-4.9-bsp#n428
(1 is substracted from soc_bin number here!)

 drivers/cpufreq/sun50i-cpufreq-nvmem.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/cpufreq/sun50i-cpufreq-nvmem.c b/drivers/cpufreq/sun50i-cpufreq-nvmem.c
index df35ef3ef567..41dad03e245c 100644
--- a/drivers/cpufreq/sun50i-cpufreq-nvmem.c
+++ b/drivers/cpufreq/sun50i-cpufreq-nvmem.c
@@ -71,9 +71,12 @@ static int sun50i_cpufreq_get_efuse(u32 *versions)
 	efuse_value = (*speedbin >> NVMEM_SHIFT) & NVMEM_MASK;
 	switch (efuse_value) {
 	case 0b0001:
-		*versions = 1;
+		*versions = 0;
 		break;
 	case 0b0011:
+		*versions = 1;
+		break;
+	case 0b0111:
 		*versions = 2;
 		break;
 	default:
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
