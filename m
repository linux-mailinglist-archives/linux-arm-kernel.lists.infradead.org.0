Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 749A8751D8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M8OF+V4ao8kG/p6rVGsntKCQDwGdRDsrFez57HhrpFk=; b=VHGdQoXCaBozVf
	w9Ayoafg1f0cFFvu7YOW0J+d+N7ZIeu3SAwD2+fQ+e4JxFFCKA+ViyTJMdUU9xM1YeEVnP+rQP9jj
	jMz4TklPtMhkIvxi72jWZOBuWBhH5Gfm1HsgXG0jYkQkMTb7EUoDJRkNbQ77oLL/CKXK1TyECrR5s
	lu4XCSMV0NVY+HTOfEcSs6AWK+1m8L3GwmVS/Sr7W83wBa4LhVfbds5LeV9tjKPb5BuxWuwRLEYsQ
	X3hC6yMBBgbK08DhDUHIwNfvcN4N0b5sULdTVcVOsUH/pVXfxdnF7Y/ELd0E/t0I4pGB/gTHVA5Rf
	QagEFDDkgAEmHMmEZwXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqf7j-00017g-Ef; Thu, 25 Jul 2019 14:53:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqf7X-00017F-9l
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:53:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 136E728;
 Thu, 25 Jul 2019 07:53:24 -0700 (PDT)
Received: from e123572-lin.arm.com (e123572-lin.cambridge.arm.com
 [10.1.194.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B26E83F71F;
 Thu, 25 Jul 2019 07:53:22 -0700 (PDT)
From: Kevin Brodsky <kevin.brodsky@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: fast models: Increase clcd's max-memory-bandwidth
Date: Thu, 25 Jul 2019 15:50:40 +0100
Message-Id: <20190725145040.42182-1-kevin.brodsky@arm.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_075327_386366_4ACC1980 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Pawel Moll <pawel.moll@arm.com>,
 Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 dri-devel@lists.freedesktop.org, Sudeep Holla <sudeep.holla@arm.com>,
 Brian Starkey <brian.starkey@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It may be desirable on certain platforms, such as Android, to
use 32bpp buffers. Since there is no clear bandwidth limit for the
CLCD component on the fast model, let's increase
max-memory-bandwidth to allow using 32bpp buffers.

Reported-by: Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>
Signed-off-by: Kevin Brodsky <kevin.brodsky@arm.com>
---
 arch/arm64/boot/dts/arm/fvp-base-revc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 687707020ec1..3aee49ed6d88 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -269,7 +269,7 @@
 		motherboard {
 			iofpga@3,00000000 {
 				clcd@1f0000 {
-					max-memory-bandwidth = <130000000>; /* 16bpp @ 63.5MHz */
+					max-memory-bandwidth = <260000000>; /* 32bpp @ 63.5MHz */
 				};
 			};
 		};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
