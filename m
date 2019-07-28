Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D84678252
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 01:19:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QE7solg1LtoBtApdCkT8Glpz5zLn4v4UCVeX7/MPRV0=; b=JmBU6/PvtDKujS
	8dTVXH9UCSKcQKrW2hi7VVknwxadxiYpJEuiFtyJLU5loDCNOoNufgx9miWutGQs3dckg7KmPhmCa
	XWfWh9rk5WR2XC+DqBH3Rk3ZYShRco/2eqjuOewLPlHjkXWd+SRCW+LDz9/XeOQza+BHyut63RG+M
	EBkYWsluEmnin6gGojtjJNqoObG92a5CcIcp2SVHIpx/mfoL7+s5e2NY+0qs1JcEuwPuyVZeoVtbX
	LaFECKJV1SL5zGLNEQDSgPvIy16zzxGGk1MiPHAmp6r/A6EocNgejwOlaNp6vmM2co1nI2aavosxs
	x19BLx6JJALmkuOLvnrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrsRy-0008JD-AF; Sun, 28 Jul 2019 23:19:34 +0000
Received: from gateway24.websitewelcome.com ([192.185.50.93])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrsRn-0008Is-9e
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 23:19:24 +0000
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
 by gateway24.websitewelcome.com (Postfix) with ESMTP id 31424A68D
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 18:19:22 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id rsRmhE9jDiQerrsRmhdPer; Sun, 28 Jul 2019 18:19:22 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PY6E13tVfIgBq9qTq9qmjg7C5IhkGMS1k4wt9WQOgBg=; b=UIbI760Cqp3d3ijjcmuaqmwDtN
 kyrvcLfNZF4clUbxV+4FTx7Mak7xcRTjZsTWsnlo9CfF0ahFDUsML2mQDkCqLcJClVkNS+GWRjWbe
 X5MdRtFHZJcebXg7ocKkwPJyJSCfTmQMHwH8sjxayXUiZbTQWRcGLMXVqEs0W24Y6IepyptAzDdC3
 sQE8X+gLM4VseJflhpewJhF4OPJLigjqiJC1cNCmdqVKleFtgxa44iLdWvP5Q43Hkz93pJw4NTHsk
 bDV0rPCJs84J5vPbLA4I67uK9urFp268W0EFB3m2WodxyEcb2cg5CQY30ZcsYhy7jl567pkV5H40E
 wg0swe8Q==;
Received: from [187.192.11.120] (port=39058 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hrsRl-003XoU-2P; Sun, 28 Jul 2019 18:19:21 -0500
Date: Sun, 28 Jul 2019 18:19:20 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: alignment: Mark expected switch fall-throughs
Message-ID: <20190728231920.GA22247@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.192.11.120
X-Source-L: No
X-Exim-ID: 1hrsRl-003XoU-2P
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [187.192.11.120]:39058
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 17
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_161923_422123_A671003F 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.50.93 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mark switch cases where we are expecting to fall through.

This patch fixes the following warnings:

arch/arm/mm/alignment.c: In function 'thumb2arm':
arch/arm/mm/alignment.c:688:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
   if ((tinstr & (3 << 9)) == 0x0400) {
      ^
arch/arm/mm/alignment.c:700:2: note: here
  default:
  ^~~~~~~
arch/arm/mm/alignment.c: In function 'do_alignment_t32_to_handler':
arch/arm/mm/alignment.c:753:15: warning: this statement may fall through [-Wimplicit-fallthrough=]
   poffset->un = (tinst2 & 0xff) << 2;
   ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
arch/arm/mm/alignment.c:754:2: note: here
  case 0xe940:
  ^~~~

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 arch/arm/mm/alignment.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mm/alignment.c b/arch/arm/mm/alignment.c
index 8cdb78642e93..04b36436cbc0 100644
--- a/arch/arm/mm/alignment.c
+++ b/arch/arm/mm/alignment.c
@@ -695,7 +695,7 @@ thumb2arm(u16 tinstr)
 			return subset[(L<<1) | ((tinstr & (1<<8)) >> 8)] |
 			    (tinstr & 255);		/* register_list */
 		}
-		/* Else fall through for illegal instruction case */
+		/* Else, fall through - for illegal instruction case */
 
 	default:
 		return BAD_INSTR;
@@ -751,6 +751,8 @@ do_alignment_t32_to_handler(unsigned long *pinstr, struct pt_regs *regs,
 	case 0xe8e0:
 	case 0xe9e0:
 		poffset->un = (tinst2 & 0xff) << 2;
+		/* Fall through */
+
 	case 0xe940:
 	case 0xe9c0:
 		return do_alignment_ldrdstrd;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
