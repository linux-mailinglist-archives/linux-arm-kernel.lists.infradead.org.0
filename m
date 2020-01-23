Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB717146016
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 01:48:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UW+FqRh0OHjqjE+Joq+WBHa3H19j12jFsLheaTQkG38=; b=MOw6/jDVAbH2Qw
	yTLubO+m/peOuV0Eevn/uNIo2d3k0rvMEkQZH2o2uTwW8JbzRtLENIpk9rvRusGlUUwlaOzo2bAs5
	IiKeb5HH97B2qwBhlu5rZHJfzvFFFfNdV6VHmqHAjMfyQQh8c9uUPS5MVqtM+DlgQbOSRiQilqLpd
	KlGEMrc9R3V54VcTi4pZjmXr3m+vSc94Phpe7Dszzbnbm0uw7BG0eyyGA0wx7nVgE4XXFpz7DkpqC
	teDZASzq2UsvIgnf6fgY92AVKcweAg+5TL//FpXycbbhQ6PGYRQbVeVRfOZH/iCr4ULMc2P4WinDd
	AFghAbsewaBXszVzYpKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuQfW-00076b-JG; Thu, 23 Jan 2020 00:48:22 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuQfP-00076F-EJ; Thu, 23 Jan 2020 00:48:16 +0000
Received: from [82.43.126.140] (helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1iuQfN-0006ib-2P; Thu, 23 Jan 2020 00:48:13 +0000
From: Colin King <colin.king@canonical.com>
To: Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH] ARM: rockchip: fix spelling mistake "to" -> "too"
Date: Thu, 23 Jan 2020 00:48:07 +0000
Message-Id: <20200123004807.2833556-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_164815_618244_29420C9A 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

There is a spelling mistake in a pr_err message. Fix it.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 arch/arm/mach-rockchip/platsmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockchip/platsmp.c
index 649e0a54784c..d60856898d97 100644
--- a/arch/arm/mach-rockchip/platsmp.c
+++ b/arch/arm/mach-rockchip/platsmp.c
@@ -180,7 +180,7 @@ static int __init rockchip_smp_prepare_sram(struct device_node *node)
 
 	rsize = resource_size(&res);
 	if (rsize < trampoline_sz) {
-		pr_err("%s: reserved block with size 0x%x is to small for trampoline size 0x%x\n",
+		pr_err("%s: reserved block with size 0x%x is too small for trampoline size 0x%x\n",
 		       __func__, rsize, trampoline_sz);
 		return -EINVAL;
 	}
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
