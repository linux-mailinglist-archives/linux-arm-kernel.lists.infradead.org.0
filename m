Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 605D9E64AF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 18:47:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HeGhHKnuMGR7wH6SeCze8ldmpmpeljMZcTv/k33bu7A=; b=PdgMpc8TYNWe8s
	OI/I4gLRxrs6cnlqHM1CIW9p1FoKUhKHPYgCBlUVcAWtUryN/VVUN4l3zz2Djn7gfFlAn9XzTQqms
	X6ECXOY4Omd5GbWXOwZy6VWu9PbQAzaAbacYxxxXWwbyXwk8EEj7krTgC2O9Cf8KNY+h0l1RqxVBV
	hJ6L84JPQQieLxaS2a2M2wauhw+BS3v2A/CDnQ7BmQ4rVFTRi3RwEnQfV4hjkIA1HgWfTqHFV3AS3
	4jxmsu/I/WhoT4Xgn9E4GYOQ+mF6CM2VUZM9r8bo90mds4LmwWeyeKZt6t4aHk8hhK/tPmgcbjwnF
	voSSPx/KDVfoxDjSHm8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOmdN-0006K3-KG; Sun, 27 Oct 2019 17:47:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOmc8-0004us-AM; Sun, 27 Oct 2019 17:46:05 +0000
Received: from [46.218.74.72] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iOmc4-00089Z-Uy; Sun, 27 Oct 2019 18:46:01 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 2/4] arm64: dts: rockchip: Add core dts for RK3308 SOC
Date: Sun, 27 Oct 2019 18:45:59 +0100
Message-ID: <12893370.vt1eeOlM6n@phil>
In-Reply-To: <20191021084616.28431-1-andy.yan@rock-chips.com>
References: <20191021084437.28279-1-andy.yan@rock-chips.com>
 <20191021084616.28431-1-andy.yan@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_104604_524663_7F09C78F 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, kever.yang@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 21. Oktober 2019, 10:46:16 CET schrieb Andy Yan:
> RK3308 is a quad Cortex A35 based SOC with rich audio
> interfaces(I2S/PCM/TDM/PDM/SPDIF/VAD/HDMI ARC), which
> designed for intelligent voice interaction and audio
> input/output processing.
> 
> This patch add basic core dtsi file for it.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

applied for 5.5 with changes:

- dropped spi high_speed pinctrl, as it's not part of the spi binding
- dropped peripherals-req-type-burst as it's not part of the dma binding
- dropped sdmmc_gpio pinctrl
- removed a number of unneeded empty lines
- reordered things to better match our alphabetical sorting

Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
