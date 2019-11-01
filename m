Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B3EEBEC3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 08:58:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jv7B7m1q5fF1vG1i4g27S8HQevsnb0RdV3iTqE7pVKE=; b=G5xSLpUrSp4uui
	LSruRSS/RsXlB6RiWLlTgg/fmFujN6FJn7txUjh82qcf8i7Nkbx2X6ciYFKC9nNa2MXc7xR6isOLi
	bTrDfE5bWAIovqoG3h0lIL9EGL9PZ40X5ozCeTDlCsYVk6vf/PwjDVozC41JDh1he4acBELzCFmoa
	oYxEgX3++0cQlz1d6FT5DLpdovOMITxZWqgJb7VFOAF/q+A/ZIdbs4BYtnjtjN8Y6rSbYFDnTJkcq
	8bP8f3gQsVaLDc041Zgx7C/CIq5FS5H1yl7EJxdJ3CqsIj6wmkbh4jodt4FbtQO6J5r15iqmCZhJK
	B3fNJXlVkE4RlLq67eBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQRol-0005aP-Ka; Fri, 01 Nov 2019 07:57:59 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQRoe-0005Zr-W4
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 07:57:54 +0000
Received: from localhost (unknown [IPv6:2001:bb8:4008:20:21a:64ff:fe97:f60])
 by plaes.org (Postfix) with ESMTPSA id 980E74025B;
 Fri,  1 Nov 2019 07:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1572595038; bh=i+ZqLGUS44ULpCRaPbBqLE0eAwbLrZ4yMyEiWtjqn6U=;
 h=From:To:Cc:Subject:Date:From;
 b=Fs5VzKQ7WptAn+lRGlvPRXhyyFRwSVYe2MsQuPTOdt7fCcMqQsNclIDAMQJdLBmCk
 Flc85f5M2TF7zJfPsFR6xAhPPdJ9JY3W08QPay6lDLpxQGWkTB/d5bs1aNxFkZsHkm
 j4QRL3eQF7g8XHxQZMMGME93qZ74+DItlRlSfKqXQaCcnkTTeC0ZKX6xtCDl4U7xm2
 luV/VdEhLlp/Ehz11o8/rq+Ll0uZoNChaE/lowuyfn/hHhN0XJhDnaH1T/MBzYFwc6
 AZVYINkUTaB/G7I5dLY40mXhXWYgoeoECLywNEQOsCI9fQtiBIZjL6wDohZvdB3uGD
 FuK2wLF8M8Z/Q==
From: Priit Laes <plaes@plaes.org>
To: Russell King <linux@armlinux.org.uk>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Priit Laes <plaes@plaes.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: sunxi_defconfig: Enable MICREL_PHY
Date: Fri,  1 Nov 2019 09:57:09 +0200
Message-Id: <20191101075712.3058-1-plaes@plaes.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_005753_172791_68D3FAD9 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: igor.pecovnik@gmail.com, priit.laes@paf.com, usunov@olimex.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Include support for Micrel KSZ9031 PHY driver in sunxi_defconfig,
which fixes issues of link not coming up at boot time with
certain link partners.

Micrel KSZ9031 PHY chip is used on Olimex A20-OLinuXino-LIME2
boards.

The errata fix itself has been implemented in commit
"3aed3e2a143c96: net: phy: micrel: add Asym Pause workaround"

Signed-off-by: Priit Laes <plaes@plaes.org>
---
 arch/arm/configs/sunxi_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/sunxi_defconfig b/arch/arm/configs/sunxi_defconfig
index df433abfcb02..eb7efa2639d1 100644
--- a/arch/arm/configs/sunxi_defconfig
+++ b/arch/arm/configs/sunxi_defconfig
@@ -56,6 +56,7 @@ CONFIG_SUN4I_EMAC=y
 CONFIG_STMMAC_ETH=y
 # CONFIG_NET_VENDOR_VIA is not set
 # CONFIG_NET_VENDOR_WIZNET is not set
+CONFIG_MICREL_PHY=y
 # CONFIG_WLAN is not set
 CONFIG_INPUT_EVDEV=y
 CONFIG_KEYBOARD_SUN4I_LRADC=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
