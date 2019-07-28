Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 159ED7824E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 01:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZPF+Q6eSzuVCUtL8Ku8cTbL/cwFjNU3EzXTnrzh2c98=; b=iso414ChnFLfRp
	qrbM6ZWWCbIniWHWUy7xe+KTP5pDQZ9bf+f0tpsdUG5KwbI9RN1ffJpHzAf4mbnXkhvJzjT3NSunm
	LF87PafbKJlkt8XlF4kQ3soKgrR9pbYZI0xMqSi0oJB1weQnh0HLZemVjdOZujYrVavYOIyWOCcqy
	CGZE+y307JcE3nOtVbToHFDRHb9zy/g+Bou2x5VZVAzPRx3XoL+EtKdKKxLfOMVaR+K5ieOlJQKkC
	9W+GwbbftR166kxQfs7deIoE0wrVcKv1P2Pltx66sd9fd0fssa+BMEL/jyuMem8pVnS+pUO7uqPXe
	NM0MNXROmjv5nRszaDFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrsOS-0007mN-NA; Sun, 28 Jul 2019 23:15:56 +0000
Received: from gateway30.websitewelcome.com ([192.185.148.2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrsOE-0007lS-I7
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 23:15:43 +0000
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
 by gateway30.websitewelcome.com (Postfix) with ESMTP id 8BEEA4992
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 18:15:29 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id rsO1hE8AriQerrsO1hdO8C; Sun, 28 Jul 2019 18:15:29 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8eM1ZD0P81hvxEH0zPMrHc1dSmyP7SXOYbdNw95fElQ=; b=v7fk5m+NtnGmmK+v9Cc8LiDioR
 Oj7xM8zlr1Ph9+Ns7nNtgf7udDx8FmlZgTIhbHIHThOHq81zqh60YOFA4JfVVYwTiF88h5Wj3RnAZ
 76uP6jA613mMpMSG8+1PZmd0Q93IphVbzHrQgOvZpWvq34IWqiWHpMT8LnnJcKXDqyVHhDyMjSBq9
 XmxqEFeuNnWHDJ07nRnVFXgNxzNFW6WtGPyBc6sSvRZmR9KH92IweC0WldC3/HzDXgEcH2PjypvIZ
 8pYU5CQXFMxxsLbbX1pwLonxSqjM4e1fzObGf8GXzhmK+1JYwoFhE2rTYV4nrPLJwQsL0MpGJbzEw
 GMGYJMCg==;
Received: from [187.192.11.120] (port=39040 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hrsO0-003VsI-Bx; Sun, 28 Jul 2019 18:15:28 -0500
Date: Sun, 28 Jul 2019 18:15:26 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Russell King <linux@armlinux.org.uk>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>
Subject: [PATCH] ARM: tegra: Mark expected switch fall-through
Message-ID: <20190728231526.GA22066@embeddedor>
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
X-Exim-ID: 1hrsO0-003VsI-Bx
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [187.192.11.120]:39040
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_161542_639899_9F28D4E3 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.148.2 listed in list.dnswl.org]
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, linux-kernel@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mark switch cases where we are expecting to fall through.

This patch fixes the following warning:

arch/arm/mach-tegra/reset.c: In function 'tegra_cpu_reset_handler_enable':
arch/arm/mach-tegra/reset.c:72:3: warning: this statement may fall through [-Wimplicit-fallthrough=]
   tegra_cpu_reset_handler_set(reset_address);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/arm/mach-tegra/reset.c:74:2: note: here
  case 0:
  ^~~~

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 arch/arm/mach-tegra/reset.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-tegra/reset.c b/arch/arm/mach-tegra/reset.c
index 5a67a71f80cc..76a65df42d10 100644
--- a/arch/arm/mach-tegra/reset.c
+++ b/arch/arm/mach-tegra/reset.c
@@ -70,7 +70,7 @@ static void __init tegra_cpu_reset_handler_enable(void)
 	switch (err) {
 	case -ENOSYS:
 		tegra_cpu_reset_handler_set(reset_address);
-		/* pass-through */
+		/* fall through */
 	case 0:
 		is_enabled = true;
 		break;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
