Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A741B03F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 10:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=laKD7oEbOn8Mio7RoEv1edXy476Ztsf4v7ZLtJdqZCw=; b=HYH
	iat8fiH5+OB9f7GuW3erIPNyndDVQYkl3yxscGHiO1Ll9NqOiquB6yWVcKFK2ChOwoOeApGq/Uywy
	/6fBAW6EL/XBC4aW9A0UAZw9dd8++K+Dfn96W4srwFrQbqOlfVmxgtyCUAyD+JQrULnWpobcZjfop
	Hh9p4MUJRQiQ5M2utjJmKF5R+ur6HZ26kAlfdXCZZgqq01JSCzJb86paV6fiUXvx+osVJFkX0jyby
	ByeW913PhZFpGcsZkC4p4Ko3Uk6JC5MnycPSHmx0WxSkIcp4EhYemzdIiw/NpRQCLYHesNwE6Ax5t
	C3jyoa+bKxQ2PBrJcq6DCvkFqc5UP9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQRWr-0007mw-QB; Mon, 20 Apr 2020 08:11:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQRWj-0007mb-U4
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 08:11:39 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D3E320A8B;
 Mon, 20 Apr 2020 08:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587370297;
 bh=z7HimAurwDR3lrdQ6oem6FxF/SwH+vDNz6rygcWxpxQ=;
 h=From:To:Cc:Subject:Date:From;
 b=fqeCK0wgi2aU5Kupe7LuDEmWEQPXPlbM26SWTyXAt61zJnlCOF7Q6QvovjM95cVYa
 CllOGZycz/aXP3lwbWBwQ/yCTnl1PtSFfZlIKLhmiGoKgHUgGNiDh5Ya+UprL1JM8N
 3DRgCuWkDnCvcu+M76vMzB0Mg0Bil/nxRq2UtVz8=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] acpi: arm64/iort: Ensure DMA mask does not exceed device limit
Date: Mon, 20 Apr 2020 10:11:31 +0200
Message-Id: <20200420081131.16822-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_011137_993854_A587CFB6 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ardb@kernel.org>, linux-acpi@vger.kernel.org,
 guohanjun@huawei.com, lorenzo.pieralisi@arm.com, sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When calculating the DMA mask from the address limit provided by the
firmware, we add one to the ilog2() of the end address, and pass the
result to DMA_BIT_MASK().

For an end address that is not a power-of-2 minus 1, this will result
in the mask to be wider than the limit, and cover memory that is not
addressable by the device. Instead, we should add 1 to 'end' before
taking the log, so that a limit of, say, 0x3fffffff gets translated
to a mask of 30, but any value below it gets translated to 29.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/acpi/arm64/iort.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 7d04424189df..aab2f51eff14 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -1162,7 +1162,7 @@ void iort_dma_setup(struct device *dev, u64 *dma_addr, u64 *dma_size)
 		 * firmware.
 		 */
 		end = dmaaddr + size - 1;
-		mask = DMA_BIT_MASK(ilog2(end) + 1);
+		mask = DMA_BIT_MASK(ilog2(end + 1));
 		dev->bus_dma_limit = end;
 		dev->coherent_dma_mask = mask;
 		*dev->dma_mask = mask;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
