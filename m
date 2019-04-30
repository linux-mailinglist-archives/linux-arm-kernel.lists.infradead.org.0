Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38319F43F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 12:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JH9Ygqx+58deRh3RXGaBb8QrkOKhNwkeyMbslf+Yb4M=; b=vDosp/O3ab/k1G1BDL437YWwgm
	w6VX5FdBLWI7GjbmNFRwa7eb11qNMHvxb61VEAgEK45cqb5gJZc54Ifj5f/nEMqcL/ShkXVOTaoj+
	38FLMSzp33efrlCmC1pJCFRQOoPcCkzgz4f++jZoaZ0SJs7GSV4c1uedI56bI7Stavo3ybHOHBEdf
	Ghn7cmqd1olbxFTi+R+HLVBUYzQvX6zNZXeo4ckoNNfmFVzlAAlmFZ1zi7Q2+n7L3yhBkr0RmPwtP
	151LRfZa9kByVzo2nI+CSC4Wr0Fo5qTtK8RQHTijhyA2JoMRu+V77WiMUJADZ46fl4qFAbne+quKz
	M4XRlQ3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLQ3Y-0008Fe-G8; Tue, 30 Apr 2019 10:32:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLQ3R-0008Em-DV
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 10:32:06 +0000
Received: from localhost (unknown [23.100.24.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0856721707;
 Tue, 30 Apr 2019 10:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556620323;
 bh=DCJD7M/y7UEQSRCHXPDN8nZ9A/qIefHCJRZ4Ls32bJE=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=wR1D9mv9Vxr47BkM5kf5ENdlCVec0GDvaNk31QMYwnxJfuElZ5a3aoGH854MgOl4u
 /wvNQxVZoCv/901wV/EQ5cYgZ/ME+czRK6jPMfrcYq+GrvC/lIQZXmfn9NCeORJkfu
 w2+v0Ee0jjfYAp2N+Rzl8wABSuJyKJC5Kbk+omPM=
Date: Tue, 30 Apr 2019 10:32:02 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Dinh Nguyen <dinguyen@kernel.org>
To: robh+dt@kernel.org, mark.rutland@arm.com
Subject: Re: [PATCH] ARM: dts: arria10: Add EMAC OCP reset property
In-Reply-To: <20190429204314.21220-1-dinguyen@kernel.org>
References: <20190429204314.21220-1-dinguyen@kernel.org>
Message-Id: <20190430103203.0856721707@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_033205_495416_1110D267 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: , dinguyen@kernel.org, stable@vger.kernel.org,
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

The bot has tested the following trees: v5.0.10, v4.19.37, v4.14.114, v4.9.171, v4.4.179, v3.18.139.

v5.0.10: Failed to apply! Possible dependencies:
    37f7453a4b7a ("ARM: dts: socfpga: update missing reset property peripherals")

v4.19.37: Failed to apply! Possible dependencies:
    0ffc5df823dd ("ARM: dts: socfpga: update NAND clocking for c5/a5")
    12b2982a1f72 ("ARM: dts: arria10: update NAND clocking")
    37f7453a4b7a ("ARM: dts: socfpga: update missing reset property peripherals")

v4.14.114: Failed to apply! Possible dependencies:
    0ffc5df823dd ("ARM: dts: socfpga: update NAND clocking for c5/a5")
    12b2982a1f72 ("ARM: dts: arria10: update NAND clocking")
    37f7453a4b7a ("ARM: dts: socfpga: update missing reset property peripherals")
    84f95684d950 ("ARM: dts: Add SPI0 node for Arria10")

v4.9.171: Failed to apply! Possible dependencies:
    0ffc5df823dd ("ARM: dts: socfpga: update NAND clocking for c5/a5")
    12b2982a1f72 ("ARM: dts: arria10: update NAND clocking")
    1df99da8953a ("ARM: dts: socfpga: Enable QSPI in Arria10 devkit")
    37f7453a4b7a ("ARM: dts: socfpga: update missing reset property peripherals")
    4eda9b766b04 ("ARM: dts: socfpga: Fix NAND controller clock supply")
    5d662bf15dcb ("ARM: dts: socfpga: Add QSPI node for the Arria10")
    84f95684d950 ("ARM: dts: Add SPI0 node for Arria10")
    c6deff00b904 ("ARM: dts: socfpga: add qspi node")
    cda1ade6a25c ("ARM: dts: Add EMAC AXI settings for Arria10")
    d837a80d1950 ("ARM: dts: socfpga: add nand controller nodes")
    f2d6f8f81781 ("ARM: dts: socfpga: Add SPI Master1 for Arria10 SR chip")
    f549af06e9b6 ("ARM: dts: socfpga: Add NAND device tree for Arria10")

v4.4.179: Failed to apply! Possible dependencies:
    0ffc5df823dd ("ARM: dts: socfpga: update NAND clocking for c5/a5")
    12b2982a1f72 ("ARM: dts: arria10: update NAND clocking")
    1df99da8953a ("ARM: dts: socfpga: Enable QSPI in Arria10 devkit")
    34a315883f60 ("ARM: socfpga: Add support for DENX MCV SoM and MCVEVK baseboard")
    37f7453a4b7a ("ARM: dts: socfpga: update missing reset property peripherals")
    4eda9b766b04 ("ARM: dts: socfpga: Fix NAND controller clock supply")
    5d662bf15dcb ("ARM: dts: socfpga: Add QSPI node for the Arria10")
    64ded09d2939 ("ARM: dts: socfpga: Add Altera Arria10 L2 Cache EDAC devicetree entry")
    84f95684d950 ("ARM: dts: Add SPI0 node for Arria10")
    91f69147d681 ("ARM: socfpga: dts: Enable MMC support at correct place in the DT")
    c6deff00b904 ("ARM: dts: socfpga: add qspi node")
    cda1ade6a25c ("ARM: dts: Add EMAC AXI settings for Arria10")
    d837a80d1950 ("ARM: dts: socfpga: add nand controller nodes")
    dfd35b779d6c ("ARM: socfpga: Repair incorrectly applied MCV patch")
    f2d6f8f81781 ("ARM: dts: socfpga: Add SPI Master1 for Arria10 SR chip")
    f549af06e9b6 ("ARM: dts: socfpga: Add NAND device tree for Arria10")

v3.18.139: Failed to apply! Possible dependencies:
    034c4411f5f9 ("ARM: dts: Add initial LS1021A TWR board dts support")
    112cadfd4365 ("ARM: socfpga: dts: enable ethernet for Arria10 devkit")
    302a5ef29d49 ("ARM: BCM5301X: Add DT for Netgear R6300 V2")
    34a315883f60 ("ARM: socfpga: Add support for DENX MCV SoM and MCVEVK baseboard")
    37f7453a4b7a ("ARM: dts: socfpga: update missing reset property peripherals")
    388c44a379f7 ("Documentation: devicetree: Add Exynos-based boards compatible string")
    41de6f981216 ("ARM: dts: Add initial LS1021A QDS board dts support")
    475dc86d08de ("arm: dts: socfpga: Add a base DTSI for Altera's Arria10 SOC")
    51454eb46c02 ("arm: mmp: Make all the dts file to be compiled by Makefile")
    57c0f8c9c453 ("ARM: dts: socfpga: Add support of Terasic DE0 Atlas board")
    6855e5b70903 ("ARM: socfpga: dts: Add resets for EMACs on Arria10")
    74568da48f69 ("ARM: socfpga: dts: enable UART1 for the debug uart")
    8872fc22c267 ("ARM: dts: Enable Broadcom Cygnus SoC")
    88c8e4c2648c ("ARM: socfpga: dts: rename socdk board file to socdk_sdmmc")
    91f69147d681 ("ARM: socfpga: dts: Enable MMC support at correct place in the DT")
    ae2ed35a4000 ("ARM: BCM5301X: Add DT for Asus RT-N18U")
    ba2a1d6959ac ("ARM: bcm2835: Add device tree for Raspberry Pi model B+")
    be9863cac24b ("ARM: socfpga: dts: Add multicast bins and unicast filter entries")
    c01e8cdb7bf5 ("ARM: socfpga: dts: Add tx-fifo-depth and rx-fifo-depth properties")
    c9ad7bc5fe3c ("ARM: dts: Enable Broadcom Cygnus SoC")
    cb612390e546 ("ARM: dts: Only build dtb if associated Arch and/or SoC is enabled")
    cda1ade6a25c ("ARM: dts: Add EMAC AXI settings for Arria10")
    dd7733da69f1 ("ARM: BCM5301X: Add DT for Buffalo WZR-600DHP2")
    dfd35b779d6c ("ARM: socfpga: Repair incorrectly applied MCV patch")
    e0cefb3f79d3 ("ARM: dts: add board dts file for Exynos3250-based Monk board")
    e1bf86ace4d2 ("ARM: dts: vf500-colibri: add Colibri VF50 support")
    e9f9fe35f894 ("ARM: socfpga: dts: Fix gpio dts entry for the correct clock")
    faaf348ef468 ("ARM: dts: Add board dts file for exynos3250-rinato")


How should we proceed with this patch?

--
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
