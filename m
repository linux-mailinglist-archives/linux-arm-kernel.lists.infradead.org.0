Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F353C268
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 06:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TgywndCsF09cQ+KkbacpD1uiRSGwuIOZfgu+lcJe5+0=; b=l6GnlZbtvJpLKx
	4iI2DPKtb0W0i658Bp9PjGJ38L1YKHp7gXfLriZGKDDzAcxz/KqsHyC4fS9LXNTtH43ExyOv8oEWa
	dUh65eF1x4fOnVCtcnbRVCp1STGylA4CYdpHzu5Lz2RQTvby4xs8kmBCtC635fIgfWP3xaZp3meFR
	4DKKwbDereIvAP9ui5FYUOnbIBLOZUt6Ek2faT4zElVIjO/kXZNnZ9iZ8Q0dqK/50wtalfODe0DKy
	GrysgwAde+Enf1RNxjijZRmPM9GE/PS4nw16F29xL0CMdRitDTlz0APMOuKwYiuwpjvQjfGhu3yW4
	uciEjIhLyoQjZ/+OnDrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haYac-0002zq-P4; Tue, 11 Jun 2019 04:40:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haYaQ-0002zP-FN
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 04:40:43 +0000
Received: from localhost (unknown [171.76.113.157])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FE6420679;
 Tue, 11 Jun 2019 04:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560228041;
 bh=J+Fxwsu/pcO3dKxlhALAnqXUVlSrG6+hNYmkU8z96/k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BvIvIzbhIKxLViV93wTgAmxFPFW53sBYOXcFngdkrZKFycty0CqODbe9uLLv1n0eb
 kkV29qHCkdug7QO0tqDin/Nn2fjCrAeYpWNFNaVY2I0sWznaCrZnWT920pLt8eU9ns
 gqvHcC7n/PLIvlx0dETE9mz9TFJS1vT/sUp4E+Co=
Date: Tue, 11 Jun 2019 10:07:31 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v5 15/15] dmaengine: imx-sdma: add uart rom script
Message-ID: <20190611043731.GS9160@vkoul-mobl.Dlink>
References: <20190610081753.11422-1-yibin.gong@nxp.com>
 <20190610081753.11422-16-yibin.gong@nxp.com>
 <20190610125534.GQ9160@vkoul-mobl.Dlink>
 <1560251269.9731.41.camel@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560251269.9731.41.camel@nxp.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_214042_540885_AC89775C 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11-06-19, 03:04, Robin Gong wrote:
> On 2019-06-10 at 12:55 +0000, Vinod Koul wrote:
> > On 10-06-19, 16:17, yibin.gong@nxp.com wrote:
> > > 
> > > From: Robin Gong <yibin.gong@nxp.com>
> > > 
> > > For the compatibility of NXP internal legacy kernel before 4.19
> > > which
> > > is based on uart ram script and upstreaming kernel based on uart
> > > rom
> > > script, add both uart ram/rom script in latest sdma firmware. By
> > > default
> > > uart rom script used.
> > > Besides, add two multi-fifo scripts for SAI/PDM on i.mx8m/8mm and
> > > add
> > > back qspi script miss for v4(i.mx7d/8m/8mm family, but v3 is for
> > > i.mx6).
> > > 
> > > rom script:
> > > 	uart_2_mcu_addr
> > > 	uartsh_2_mcu_addr /* through spba bus */
> > > ram script:
> > > 	uart_2_mcu_ram_addr
> > > 	uartsh_2_mcu_ram_addr /* through spba bus */
> > > 
> > > Please get latest sdma firmware from the below and put them into
> > > the path
> > > (/lib/firmware/imx/sdma/):
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fg
> > > it.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Ffirmware%2Flinux
> > > -firmware.git&amp;data=02%7C01%7Cyibin.gong%40nxp.com%7C6a7833e8a09
> > > 344d9951e08d6eda35fc5%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C
> > > 636957683278190279&amp;sdata=RHeypEOREiPGmKveg6gYPy%2FMg8Dzz4JpcHsm
> > > %2Bbdxlzo%3D&amp;reserved=0
> > > /tree/imx/sdma
> > How does this work with folks have older firmware?
> The older SDMA RAM script(firmware) will break the uart driver of
> upstreaming kernel for these years, this is why Lucas raise uart driver
> patch (commit 905c0decad28) to use ROM script instead. There are two
> ways to fix uart issue: one is checking 'Idle Condition
> Detection'/'Aging timer' in RAM script and enable 'IDLE' in uart
> driver, another is only checking 'Aging timer' in ROM script and
> adjusting RX FIFO burst length one word less to ensure at least one
> word left forever in RX FIFO which is the trigger requirement of 'Aging
> timer'(So no need 'IDLE', 'Aging time' is enough) . FSL/NXP internal
> kernel go with the first option, while upstreaming kernel go with the
> second. Since Lucas's patch assume ROM script used in kernel and
> disable 'IDLE', upstreaming kernel broken in uart driver with older
> firmware for these years. So this patch is just for fix this
> compatibility issue with the ram script(older firmware) updated in
> linux-firmware(done already.), thus both RAM script and ROM script can
> work in kernel. Besides, kernel with the latest RAM firmware and this
> patch set can workaround ecspi issue without any function break which
> Lucas concerned about.

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
