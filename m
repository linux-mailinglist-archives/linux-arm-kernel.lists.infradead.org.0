Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A67D0165DDC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 13:49:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CcFrBzoLqwcxNedICqFtqSxFO6+kxRUQWL84O1YngG0=; b=u9rD2zuvsPhHKzl49jCP5ibxWk
	gagQfqgIgzyH1QQTV5OsTaSrX169/iluG6ePubfXLCmToAS1P9mNtNlPxb7NKnCd91yVn30s6DiSe
	FY+wrmmcEaXgYakI0h9unO8nSVuUtt0qbMiOPjAjzKu/vbG+zL2C9vEzk9pgnWA2gTaMm2g9TG1Ms
	RS3ra+7jIUcrCmykhyx6gWsniBPDAYtekS/LsKxoWguNjszpCxR7VU1GcsXmHaaU26zpvu8D5RALY
	h5B3hVvF9t0hZBaP6LWn5dB5hVRF2RNNhC4n2r11VNhQqpcudQr611TrDaddNXBgzs9/VLqufu7xA
	RUeqXaFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4lHA-0002z2-PA; Thu, 20 Feb 2020 12:49:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4lGm-0002pM-K1
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 12:49:34 +0000
Received: from localhost (unknown [137.135.114.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2556F24676;
 Thu, 20 Feb 2020 12:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582202972;
 bh=sf393Ur18JUY47Tp3l34sWfJziow9+sqH5KZ9OPz4VI=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=sUcsHRM428P6QHbnHIceo6f2XqDZRrLnT1w2BbVz+k3XfHMobVHzUxaKeAx6KyWP4
 0+KsuPb8CsVOcFvJZx26AUCTTGBD2CTPbDB7snU8ivr10TAK0yKOw6Mliy/SzKkv2Q
 /0W2XXxb0cMYDEu+UhkjzPG4vK+hVxJe8vXiCwus=
Date: Thu, 20 Feb 2020 12:49:31 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Esben Haabendal <esben@geanix.com>
To: netdev@vger.kernel.org
Subject: Re: [PATCH 3/8] net: ll_temac: Fix RX buffer descriptor handling on
 GFP_ATOMIC pressure
In-Reply-To: <20200218082642.7288-1-esben@geanix.com>
References: <20200218082642.7288-1-esben@geanix.com>
Message-Id: <20200220124932.2556F24676@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_044932_697399_C884AB5C 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: , stable@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.5.4, v5.4.20, v4.19.104, v4.14.171, v4.9.214, v4.4.214.

v5.5.4: Build OK!
v5.4.20: Build OK!
v4.19.104: Failed to apply! Possible dependencies:
    73f7375d3ed6 ("net: ll_temac: Enable DMA when ready, not before")
    7e97a194aca0 ("net: ll_temac: Allow configuration of IRQ coalescing")
    8425c41d1ef7 ("net: ll_temac: Extend support to non-device-tree platforms")
    a3246dc41aa3 ("net: ll_temac: Add support for non-native register endianness")
    a63625d2a0e7 ("net: ll_temac: Fix and simplify error handling by using devres functions")
    a8c9bd3ba840 ("net: ll_temac: Fix iommu/swiotlb leak")
    d1441d4782f2 ("net: xilinx: replace dev_kfree_skb_irq by dev_consume_skb_irq for drop profiles")
    d84aec42151b ("net: ll_temac: Fix support for 64-bit platforms")
    f14f5c11f051 ("net: ll_temac: Support indirect_mutex share within TEMAC IP")
    fdd7454ecb29 ("net: ll_temac: Fix support for little-endian platforms")

v4.14.171: Failed to apply! Possible dependencies:
    73f7375d3ed6 ("net: ll_temac: Enable DMA when ready, not before")
    7e97a194aca0 ("net: ll_temac: Allow configuration of IRQ coalescing")
    8425c41d1ef7 ("net: ll_temac: Extend support to non-device-tree platforms")
    a3246dc41aa3 ("net: ll_temac: Add support for non-native register endianness")
    a63625d2a0e7 ("net: ll_temac: Fix and simplify error handling by using devres functions")
    a8c9bd3ba840 ("net: ll_temac: Fix iommu/swiotlb leak")
    aa5848bc4043 ("net: emaclite: Simplify if-else statements")
    d1441d4782f2 ("net: xilinx: replace dev_kfree_skb_irq by dev_consume_skb_irq for drop profiles")
    d84aec42151b ("net: ll_temac: Fix support for 64-bit platforms")
    f14f5c11f051 ("net: ll_temac: Support indirect_mutex share within TEMAC IP")
    fdd7454ecb29 ("net: ll_temac: Fix support for little-endian platforms")

v4.9.214: Failed to apply! Possible dependencies:
    062054727654 ("net: ll_temac: Utilize of_get_mac_address()")
    30c57f073449 ("net: ethernet: ti: cpsw: fix race condition during open()")
    342fa1964439 ("mdio: mux: make child bus walking more permissive and errors more verbose")
    7e97a194aca0 ("net: ll_temac: Allow configuration of IRQ coalescing")
    8425c41d1ef7 ("net: ll_temac: Extend support to non-device-tree platforms")
    9ad1a3749333 ("dpaa_eth: add support for DPAA Ethernet")
    a3246dc41aa3 ("net: ll_temac: Add support for non-native register endianness")
    a63625d2a0e7 ("net: ll_temac: Fix and simplify error handling by using devres functions")
    f14f5c11f051 ("net: ll_temac: Support indirect_mutex share within TEMAC IP")
    f7ce91038d52 ("net: Convert to using %pOF instead of full_name")

v4.4.214: Failed to apply! Possible dependencies:
    062054727654 ("net: ll_temac: Utilize of_get_mac_address()")
    158bc065f29c ("net: dsa: mv88e6xxx: replace ds with ps where possible")
    31abbe34e0f0 ("net: ethernet: ll_temac: use phydev from struct net_device")
    48ace4ef4c3f ("dsa: mv88e6xxx: Kill the REG_READ and REG_WRITE macros")
    7543a6d5359e ("net: dsa: Have the switch driver allocate there own private memory")
    7e97a194aca0 ("net: ll_temac: Allow configuration of IRQ coalescing")
    8425c41d1ef7 ("net: ll_temac: Extend support to non-device-tree platforms")
    893f83e6bcc3 ("ARM: mvebu: Reenable DSA in mvebu_v5_defconfig")
    a1a6a4d1f76a ("net: dsa: mv88e6xxx: factorize switch setup")
    a63625d2a0e7 ("net: ll_temac: Fix and simplify error handling by using devres functions")
    a6cbc340d1e1 ("ARM: config: Reenable DSA in multi_v5_defconfig")
    a77d43f1e9d5 ("net: dsa: Keep the mii bus and address in the private structure")
    b516d4532395 ("net: dsa: mv88e6xxx: Refactor MDIO so driver registers mdio bus")
    bbb8d793994c ("net: dsa: Pass the dsa device to the switch drivers")
    ca3dfa51e67c ("dsa: Rename mv88e6123_61_65 to mv88e6123 to be consistent")
    f7ce91038d52 ("net: Convert to using %pOF instead of full_name")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
