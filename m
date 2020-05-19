Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B16161DA2D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 22:37:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8rV8Ov7rNf/FfEb887/FF26KnRYCt3f9V2cb7+dY9nk=; b=KSvExVS7xFUiD7n/rMZMjztNlt
	tDAgugTAmvISj5xlPEf+VfO01HZx2+kHmvWGYk3YRnfi6+7JvSeMq3xbX72iC8oiZ/8sxn/Q8lILn
	/DGse4QVOog8hdMXZtHMAxRGOPl7u7+25cKS7glgUFVSFtzC7Ps/FIax5I+cntIZxfv4Iq01gkx5T
	4W+LUVjhqSIaLFPKqUW4SzPj/wmsO2lnfytbW5S8XjIJVZkdyEYgenh+AaI4IRdswj1371+bWCX5r
	K65vUkNTc0qK434R8ycGYqMpFSf2ZQjnqdvpAov3svlyuSb12afKQIcSTig1RhBywMLvdgEsdg6hf
	P6FEgeMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb8z0-0003S1-1q; Tue, 19 May 2020 20:37:02 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb8xA-0008VV-7m
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 20:35:10 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 8D33630D83D;
 Tue, 19 May 2020 13:33:41 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 8D33630D83D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1589920421;
 bh=VpnotEhiNEPSL/h1q0ZC3ux+vegZ1N4bcsFwvtQO+FE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tD8NW3F1ADu3W5qZO8tm5cZkY83a5YfdW7Pok6YJk0J1MpyyryIIm/cxU9CkPMVTc
 +5gYtA0NGWpyE8xH+allbbIhLgRkOvpoHf8j6wb1JOVgEqSXswIoctk4C48jTkUBfI
 5cTjhW6JJKAbljyC57848rTE07nHe9qnVK5NhHxY=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id 29C5D140239;
 Tue, 19 May 2020 13:35:02 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: james.quinlan@broadcom.com, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH 11/15] arm: dma-mapping: Invoke dma offset func if needed
Date: Tue, 19 May 2020 16:34:09 -0400
Message-Id: <20200519203419.12369-12-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200519203419.12369-1-james.quinlan@broadcom.com>
References: <20200519203419.12369-1-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_133508_767268_19F64D7B 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Russell King <linux@armlinux.org.uk>, open list <linux-kernel@vger.kernel.org>,
 Julien Grall <julien.grall@arm.com>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Just like dma_pfn_offset, another offset is added to
the dma/phys translation if there happen to be multiple
regions that have different mapping offsets.

Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
---
 arch/arm/include/asm/dma-mapping.h | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/arch/arm/include/asm/dma-mapping.h b/arch/arm/include/asm/dma-mapping.h
index bdd80ddbca34..f0c0a1fa9ac0 100644
--- a/arch/arm/include/asm/dma-mapping.h
+++ b/arch/arm/include/asm/dma-mapping.h
@@ -35,8 +35,14 @@ static inline const struct dma_map_ops *get_arch_dma_ops(struct bus_type *bus)
 #ifndef __arch_pfn_to_dma
 static inline dma_addr_t pfn_to_dma(struct device *dev, unsigned long pfn)
 {
-	if (dev)
+	if (dev) {
+#ifdef CONFIG_DMA_PFN_OFFSET_MAP
+		if (unlikely(dev->dma_offset_map))
+			pfn -= dma_pfn_offset_frm_phys_addr(
+				dev->dma_offset_map, PFN_PHYS(pfn));
+#endif
 		pfn -= dev->dma_pfn_offset;
+	}
 	return (dma_addr_t)__pfn_to_bus(pfn);
 }
 
@@ -44,9 +50,14 @@ static inline unsigned long dma_to_pfn(struct device *dev, dma_addr_t addr)
 {
 	unsigned long pfn = __bus_to_pfn(addr);
 
-	if (dev)
+	if (dev) {
+#ifdef CONFIG_DMA_PFN_OFFSET_MAP
+		if (unlikely(dev->dma_offset_map))
+			pfn += dma_pfn_offset_frm_dma_addr(
+				dev->dma_offset_map, addr);
+#endif
 		pfn += dev->dma_pfn_offset;
-
+	}
 	return pfn;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
