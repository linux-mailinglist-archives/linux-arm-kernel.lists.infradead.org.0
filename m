Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC17213E2C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:58:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GsIWGPgwrvyRy3MrD3fa6hhUy+zoJVswqHeieNvHDfo=; b=uaOhEJW5OAaObV
	sPmYcHuqIU6rnN1tueFAr0iwU2wwlxwWO9yCmj5QGcQc3iYVSbF75pzjGYscgyfGlz1KrVrORg23d
	kF3W0Z/fJ+2f/72APgNqmdB2HZPFz08elya23/ELK0d1G7TCxomFfsHNO+j5dq5DriiZvMSvNdPX9
	zu4dAVAqqd6smPJo1x8Qi4jhkNNIPTyMYclYR+UddXorAwRcQGRsuDb7AOEhjCFyOPkvXzRQF7Yga
	fZ1i0Tkf2rRBHtgSj956YeW7nP62RHSTNHGihfhhomku8MBC/MGRkxTjHK9E6+PRa3EL2+qD51S31
	XPCdQtM936kZwRBozVcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8T8-0005eK-Pi; Thu, 16 Jan 2020 16:58:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8PO-0000rG-G6
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:54:20 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F4672464B;
 Thu, 16 Jan 2020 16:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193653;
 bh=xvHqfVT/E2GqwmWVQb2umdeJqV6UyBgQpfwGOvbEd3w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=n0UbG5JE/BWHBPhtR5H3+H7bvvmReUWx8HE1n7Jfo7BXUD5SakYdZGkNVtlQ2R99S
 JIZkxS2MtKCtHm2JByIBBouiqHhDsdQZkjbffslkHOcHNgM8N84HR0MMLYMqj49pHw
 UWzBVw3kL+by12NegW9Ulc/JFuAwQfEIA22EzxY8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 182/205] Revert "arm64: dts: juno: add dma-ranges
 property"
Date: Thu, 16 Jan 2020 11:42:37 -0500
Message-Id: <20200116164300.6705-182-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_085414_973208_A1549D16 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sudeep Holla <sudeep.holla@arm.com>

[ Upstream commit 54fb3fe0f211d4729a2551cf9497bd612189af9d ]

This reverts commit 193d00a2b35ee3353813b4006a18131122087205.

Commit 951d48855d86 ("of: Make of_dma_get_range() work on bus nodes")
reworked the logic such that of_dma_get_range() works correctly
starting from a bus node containing "dma-ranges".

Since on Juno we don't have a SoC level bus node and "dma-ranges" is
present only in the root node, we get the following error:

OF: translation of DMA address(0) to CPU address failed node(/sram@2e000000)
OF: translation of DMA address(0) to CPU address failed node(/uart@7ff80000)
...
OF: translation of DMA address(0) to CPU address failed node(/mhu@2b1f0000)
OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)

So let's fix it by dropping the "dma-ranges" property for now. This
should be fine since it doesn't represent any kind of device-visible
restriction; it was only there for completeness, and we've since given
in to the assumption that missing "dma-ranges" implies a 1:1 mapping
anyway.

We can add it later with a proper SoC bus node and moving all the
devices that belong there along with the "dma-ranges" if required.

Fixes: 193d00a2b35e ("arm64: dts: juno: add dma-ranges property")
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Acked-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/arm/juno-base.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 26a039a028b8..8c11660bbe40 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -6,7 +6,6 @@
 	/*
 	 *  Devices shared by all Juno boards
 	 */
-	dma-ranges = <0 0 0 0 0x100 0>;
 
 	memtimer: timer@2a810000 {
 		compatible = "arm,armv7-timer-mem";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
